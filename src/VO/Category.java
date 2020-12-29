package VO;

public class Category {
	private String c_id;
	private String c_name;
	private String c_parent_id;
	
	public Category() {}

	public Category(String c_id, String c_name, String c_parent_id) {
		super();
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_parent_id = c_parent_id;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_parent_id() {
		return c_parent_id;
	}

	public void setC_parent_id(String c_parent_id) {
		this.c_parent_id = c_parent_id;
	}

	@Override
	public String toString() {
		return "Category [c_id=" + c_id + ", c_name=" + c_name + ", c_parent_id=" + c_parent_id + "]";
	}
	
	
}
