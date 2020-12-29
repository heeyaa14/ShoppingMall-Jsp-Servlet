package Controll;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import DAO.AdminDao;
import DAO.ItemDao;
import VO.Item;
import VO.Administrator;


/**
 * Servlet implementation class ShoppingServlet
 */
@WebServlet("*.do")
public class ShoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String FILE_REPO="C:\\src\\jsp_pro\\ShoppingMall\\WebContent\\images\\temp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String requestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String action=requestURI.substring(contextPath.length());
		if(action.equals("/main.do")) {
			request.getRequestDispatcher("page/main.jsp")
			.forward(request, response);
	}else if(action.equals("/loginForm.do")) {
				request.getRequestDispatcher("member/Login.jsp").forward(request, response);
	}else if(action.equals("/login.do")) {
		
	}else if(action.equals("/admin_index.do")) {
		request.getRequestDispatcher("page/admin_index.jsp").forward(request, response);
	}else if(action.equals("/admin_loginForm.do")) {
		request.getRequestDispatcher("admin/admin_login.jsp").forward(request, response);
	}else if(action.equals("/admin_login.do")) {
		String admin_id = request.getParameter("admin_id");
		String admin_pass = request.getParameter("admin_pass");
		System.out.println(admin_id+admin_pass);

		int n = AdminDao.getInstance().admin_login(admin_id, admin_pass);
		
		if(n==1) {
			HttpSession session = request.getSession();
			session.setAttribute("session_id", admin_id);
			out.print("<script>alert('관리자님 로그인 되었습니다.');location.href='admin_index.do';</script>");
		} else if(n==0) {
			out.print("password error");
		} else {
			out.print("id error");
		}
	}else if (action.equals("/logout.do")) {
		HttpSession session = request.getSession();
		session.removeAttribute("session_id");
		out.print("<script>alert('로그아웃되었습니다.');location.href='main.do';</script>");
	}else if(action.equals("/admin_main.do")) {
		request.getRequestDispatcher("admin/admin_main.jsp").forward(request, response);
	}else if(action.equals("/join.do")) {
		request.getRequestDispatcher("member/JoinForm.jsp").forward(request, response);
	}else if(action.equals("/category.do")) {
		request.getRequestDispatcher("page/category.jsp").forward(request, response);
	}else if(action.equals("/mypage.do")) {
		request.getRequestDispatcher("page/Mypage.jsp").forward(request, response);
	}else if(action.equals("/cart.do")) {
		request.getRequestDispatcher("page/Cart.jsp").forward(request, response);
	}else if(action.equals("/top.do")) {
		request.getRequestDispatcher("page/top.jsp").forward(request, response);
	}else if(action.equals("/bottom.do")) {
		request.getRequestDispatcher("page/bottom.jsp").forward(request, response);
	}else if(action.equals("/swimwear.do")) {
		request.getRequestDispatcher("page/swimwear.jsp").forward(request, response);
	}else if(action.equals("/ac.do")) {
		request.getRequestDispatcher("page/ac.jsp").forward(request, response);
	}else if(action.equals("/oneplus.do")) {
		request.getRequestDispatcher("page/oneplus.jsp").forward(request, response);
	}else if(action.equals("/register.do")) {
		request.getRequestDispatcher("page/register.jsp").forward(request, response);
		Map<String, String> ItemMap=upload(request,response);
		String name = ItemMap.get("i_name");
		String price=ItemMap.get("i_price");
		String desc = ItemMap.get("i_desc");
		String image_name=ItemMap.get("filename");
		String c_parent_id=ItemMap.get("c_parent_id");
		String c_id=ItemMap.get("c_id");
		boolean flag = ItemDao.getInstance().insertItem(new Item(name, price, desc, image_name,c_parent_id,c_id));
		if(flag) {
			out.print("<script>alert('새 글을 추가했습니다.');location.href='main.do';</script>");
		}else {
			out.print("<script>alert('새 글을 추가하지 못했습니다.');location.href='register.do';</script>");
		}
	}

	
	}
	
	private Map<String, String> upload(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	Map<String, String> itemMap = new HashMap<String, String>();
    	String encoding="utf-8";
    	File currentDirPath=new File(FILE_REPO);
    	DiskFileItemFactory factory = new DiskFileItemFactory();
    	factory.setRepository(currentDirPath);
    	factory.setSizeThreshold(5*1024*1024);
    	factory.setDefaultCharset(encoding);
    	ServletFileUpload upload = new ServletFileUpload(factory);
    	
    	try {
    		List<FileItem> items = upload.parseRequest(request);
    		for(int i=0; i<items.size(); i++) {
    			FileItem item = (FileItem)items.get(i);
    			if(item.isFormField()) {
    				System.out.println(item.getFieldName());
    				itemMap.put(item.getFieldName(), item.getString());
    			}else {
    				System.out.println("파라미터 명 : "+item.getFieldName());
    				System.out.println("파일명 : "+item.getName());
    				System.out.println("파일 크기 :"+item.getSize());
    				
    				if(item.getSize()>0) {
    					int idx = item.getName().lastIndexOf("\\");
    					if(idx==-1){//-1은 못찾았다는 뜻
    						idx=item.getName().lastIndexOf("/");
    				}
    					String fileName=item.getName().substring(idx+1);
    					File uploadFile = new File(currentDirPath+"\\"+fileName);
    					itemMap.put(item.getFieldName(), fileName);
    					item.write(uploadFile);
    			}
    		}
    	}
    	}catch(Exception ex) {
    		ex.printStackTrace();
    	}
    	return itemMap;
    }
}
