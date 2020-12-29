package VO;

public class OrderDetail {
	private int i_code;
	private String i_name;
	private int det_count;
	private int i_price;
	private String det_color;
	private String det_size;
	private int order_code;
	
	public OrderDetail() {}

	public OrderDetail(int i_code, String i_name, int det_count, int i_price, String det_color, String det_size,
			int order_code) {
		super();
		this.i_code = i_code;
		this.i_name = i_name;
		this.det_count = det_count;
		this.i_price = i_price;
		this.det_color = det_color;
		this.det_size = det_size;
		this.order_code = order_code;
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

	public int getDet_count() {
		return det_count;
	}

	public void setDet_count(int det_count) {
		this.det_count = det_count;
	}

	public int getI_price() {
		return i_price;
	}

	public void setI_price(int i_price) {
		this.i_price = i_price;
	}

	public String getDet_color() {
		return det_color;
	}

	public void setDet_color(String det_color) {
		this.det_color = det_color;
	}

	public String getDet_size() {
		return det_size;
	}

	public void setDet_size(String det_size) {
		this.det_size = det_size;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	@Override
	public String toString() {
		return "OrderDetail [i_code=" + i_code + ", i_name=" + i_name + ", det_count=" + det_count + ", i_price="
				+ i_price + ", det_color=" + det_color + ", det_size=" + det_size + ", order_code=" + order_code + "]";
	}
	
	
}
