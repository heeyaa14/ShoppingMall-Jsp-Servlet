package VO;

public class Cart {
	private int c_id;
	private String m_id;
	private int i_code;
	private int c_count;
	
	public Cart() {}

	public Cart(int c_id, String m_id, int i_code, int c_count) {
		super();
		this.c_id = c_id;
		this.m_id = m_id;
		this.i_code = i_code;
		this.c_count = c_count;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getI_code() {
		return i_code;
	}

	public void setI_code(int i_code) {
		this.i_code = i_code;
	}

	public int getC_count() {
		return c_count;
	}

	public void setC_count(int c_count) {
		this.c_count = c_count;
	}

	@Override
	public String toString() {
		return "Cart [c_id=" + c_id + ", m_id=" + m_id + ", i_code=" + i_code + ", c_count=" + c_count + "]";
	}
	
	
}
