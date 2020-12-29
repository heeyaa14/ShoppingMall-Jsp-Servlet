package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DAO.DBConn;
import VO.Item;


public class ItemDao {
	private ItemDao() {}
	private static ItemDao itemDao = new ItemDao();
	public static ItemDao getInstance() {
		return itemDao;
	}
	
	public boolean insertItem(Item item) {
		boolean flag=false;
		Connection conn=null;
		PreparedStatement ps=null;
		String sql="insert into item(i_code, i_name, i_price, i_desc, i_image_name,c_parent_id,c_id) "
				+ "values(code_seq.nextval,?,?,?,?,?,?)";
		try {
			conn=DBConn.getConn();
			ps=conn.prepareStatement(sql);
			ps.setString(1, item.getI_name());
			ps.setString(2,item.getI_price());
			ps.setString(3, item.getI_desc());
			ps.setString(4, item.getI_image_name());
			ps.setString(5, item.getC_parent_id());
			ps.setString(6, item.getC_id());
			int n=ps.executeUpdate();
			if(n==1) {
				flag=true;
				System.out.println("상품이 DB에 저장되었습니다.");
			}else {
				System.out.println("상품 저장 실패");
			}
		}catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
				DBConn.close(conn, ps);
		}
		return flag;
	}
}
