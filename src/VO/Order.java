package VO;

import java.util.Date;

public class Order {
	private int order_code;
	private String m_id;
	private Date order_date;
	private int total_price;
	
	public Order() {}

	public Order(int order_code, String m_id, Date order_date, int total_price) {
		super();
		this.order_code = order_code;
		this.m_id = m_id;
		this.order_date = order_date;
		this.total_price = total_price;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	@Override
	public String toString() {
		return "Order [order_code=" + order_code + ", m_id=" + m_id + ", order_date=" + order_date + ", total_price="
				+ total_price + "]";
	}
	
	
}
