package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DAO.DBConn;

public class AdminDao {
	private AdminDao() {}
	private static AdminDao instance=new AdminDao();
	
	public static AdminDao getInstance() {
		return instance;
	}
	
	public int admin_login(String admin_id, String admin_pass) {
		int n=-1;
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select admin_pass from admin where admin_id=?";
		try {
			conn=DBConn.getConn();
			ps=conn.prepareStatement(sql);
			ps.setString(1,admin_id);
			rs=ps.executeQuery();
			if(rs.next()) {
				if(admin_pass.equals(rs.getString(1))) {
					n=1;
					System.out.println("관리자 로그인 성공");
				}else {
					n=0;
					System.out.println("패스워드 다름");
				}
			}else {
				System.out.println("아이디 없음");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			DBConn.close(conn, ps, rs);
		}
		return n;
	}
}
