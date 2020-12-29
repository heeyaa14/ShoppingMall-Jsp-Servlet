package VO;

public class Item {
	private int i_code;
	private String i_name;
	private String i_price;
	private String i_desc;
	private String i_image_name;
	private String c_parent_id;
	private String c_id;
	
	public Item() {}

	public Item(String i_name, String i_price, String i_desc, String i_image_name, String c_parent_id,
			String c_id) {
		super();
		this.i_name = i_name;
		this.i_price = i_price;
		this.i_desc = i_desc;
		this.i_image_name = i_image_name;
		this.c_parent_id = c_parent_id;
		this.c_id = c_id;
	}
	
	public Item(int i_code, String i_name, String i_price, String i_desc, String i_image_name, String c_parent_id,
			String c_id) {
		super();
		this.i_code = i_code;
		this.i_name = i_name;
		this.i_price = i_price;
		this.i_desc = i_desc;
		this.i_image_name = i_image_name;
		this.c_parent_id = c_parent_id;
		this.c_id = c_id;
	}

	public int getI_code() {
		return i_code;
	}

	public void setI_code(int i_code) {
		this.i_code = i_code;
	}

	public String getI_name() {
		return i_name;
	}

	public void setI_name(String i_name) {
		this.i_name = i_name;
	}

	public String getI_price() {
		return i_price;
	}

	public void setI_price(String i_price) {
		this.i_price = i_price;
	}

	public String getI_desc() {
		return i_desc;
	}

	public void setI_desc(String i_desc) {
		this.i_desc = i_desc;
	}

	public String getI_image_name() {
		return i_image_name;
	}

	public void setI_image_name(String i_image_name) {
		this.i_image_name = i_image_name;
	}

	public String getC_parent_id() {
		return c_parent_id;
	}

	public void setC_parent_id(String c_parent_id) {
		this.c_parent_id = c_parent_id;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	@Override
	public String toString() {
		return "Item [i_code=" + i_code + ", i_name=" + i_name + ", i_price=" + i_price + ", i_desc=" + i_desc
				+ ", i_image_name=" + i_image_name + ", c_parent_id=" + c_parent_id + ", c_id=" + c_id + "]";
	}
	
	

}