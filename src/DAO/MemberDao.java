package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import VO.Member;

public class MemberDao {
	private MemberDao() {}
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance() {
		return instance;
	}
	
	public boolean insert(Member member) {
		boolean flag=false;
		Connection conn=null;
		PreparedStatement ps=null;
		String sql="insert into s_member(m_id,m_pw,m_name,m_email,m_gender,m_tel,m_addr) "
				+ "values(?,?,?,?,?,?,?,?)";
		try {
			conn=DBConn.getConn();
			ps=conn.prepareStatement(sql);
			ps.setString(1, member.getM_id());
			ps.setNString(2, member.getM_pw());
			ps.setNString(3, member.getM_name());
			ps.setNString(4, member.getM_email());
			//ps.setDate(5, member.getM_birth());
			ps.setNString(6, member.getM_gender());
			ps.setInt(7, member.getM_tel());
			ps.setNString(8, member.getM_addr());
			int n=ps.executeUpdate();
			if(n==1) {
				flag=true;
				System.out.println("데이터가 저장되었습니다.");
			}else {
				System.out.println("데이터 저장에 실패하였습니다.");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			DBConn.close(conn, ps);
		}
		return flag;
	}
	
	public Member selectOne(String m_id){
		Member member=null;
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select * from s_member where m_id=?";
		try {
			conn=DBConn.getConn();
			ps=conn.prepareStatement(sql);
			ps.setString(1, m_id);
			rs=ps.executeQuery();
			if(rs.next()) {
				member=new Member();
				member.setM_id(rs.getNString("m_id"));
				member.setM_pw(rs.getNString("m_pw"));
				member.setM_name(rs.getNString("m_name"));
				member.setM_email(rs.getNString("m_email"));
				member.setM_birth(rs.getDate("m_birth"));
				member.setM_gender(rs.getNString("m_gender"));
				member.setM_tel(rs.getInt("m_tel"));
				member.setM_addr(rs.getNString("m_addr"));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			DBConn.close(conn, ps, rs);
		}
		return member;
	}
	
	public boolean overrappedId(String m_id) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from s_member where m_id=?";
		try {
			conn = DBConn.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, m_id);
			rs=ps.executeQuery();
			if(rs.next()) {
				flag=true;
				System.out.println("사용가능한 아이디 입니다.");
			}else {
				System.out.println("이미 존재하는 아이디 입니다.");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(conn, ps, rs);
		}
		return flag;
	}
	
	public int login(String m_id, String m_pw) {
		int n=-1;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select pw from s_member where m_id=?";
		try {
			conn = DBConn.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1,m_id);
			rs=ps.executeQuery();
			if(rs.next()) {
				if(m_pw.equals(rs.getString(1))) {
					n=1;
					System.out.println("로그인 성공");
				}else{
					n=0;
					System.out.println("�뙣�뒪�썙�뱶 �떎由�");
				}
			}else {
				System.out.println("�뾾�뒗 �븘�씠�뵒 �엯�땲�떎.");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(conn, ps, rs);
		}
		return n;
}

public boolean update(Member member){
	boolean flag=false;
	Connection conn=null;
	PreparedStatement ps=null;
	String sql="update s_member set m_pw=?,m_name=? where m_id=?";
	try {
		conn=DBConn.getConn();
		ps=conn.prepareStatement(sql);
		ps.setNString(1, member.getM_pw());
		ps.setNString(2, member.getM_name());
		ps.setNString(3, member.getM_id());
		int n=ps.executeUpdate();
		if(n==1) {
			flag=true;
			System.out.println("�뜲�씠�꽣 �닔�젙 �꽦怨�");
		}else {
			System.out.println("�뜲�씠�꽣 �닔�젙 �떎�뙣");
		}
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		DBConn.close(conn, ps);
	}
	return flag;
}

public boolean delete(String m_id){
	boolean flag=false;
	Connection conn=null;
	PreparedStatement ps=null;
	String sql="delete from s_member where m_id=?";
	try {
		conn=DBConn.getConn();
		ps=conn.prepareStatement(sql);
		ps.setString(1, m_id);
		int n=ps.executeUpdate();
		if(n==1) {
			flag=true;
			System.out.println("�뜲�씠�꽣 �궘�젣 �꽦怨�");
		}else {
			System.out.println("�뜲�씠�꽣 �궘�젣 �떎�뙣");
		}
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		DBConn.close(conn, ps);
	}
	return flag;
}

}
