package VO;

public class HeartItem {
	private String m_id;
	private int i_code;
	
	public HeartItem() {}

	public HeartItem(String m_id, int i_code) {
		super();
		this.m_id = m_id;
		this.i_code = i_code;
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

	@Override
	public String toString() {
		return "HeartItem [m_id=" + m_id + ", i_code=" + i_code + "]";
	}
	
	
}
