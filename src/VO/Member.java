package VO;

import java.util.Date;

public class Member {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private Date m_birth;
	private String m_gender;
	private int m_tel;
	private String m_addr;
	
	public Member() {}

	public Member(String m_id, String m_pw, String m_name, String m_email, String m_gender, int m_tel,
			String m_addr) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_email = m_email;
		//this.m_birth = m_birth;
		this.m_gender = m_gender;
		this.m_tel = m_tel;
		this.m_addr = m_addr;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public Date getM_birth() {
		return m_birth;
	}

	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public int getM_tel() {
		return m_tel;
	}

	public void setM_tel(int m_tel) {
		this.m_tel = m_tel;
	}

	public String getM_addr() {
		return m_addr;
	}

	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}

	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_email=" + m_email + ", m_birth="
				+ m_birth + ", m_gender=" + m_gender + ", m_tel=" + m_tel + ", m_addr=" + m_addr + "]";
	}
	
	
}
