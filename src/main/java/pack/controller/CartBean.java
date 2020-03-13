package pack.controller;

import org.springframework.stereotype.Component;

@Component
public class CartBean {
	private String cart_no, user_id, prd_num, cart_quantity;
	private String prd_no, prd_name, prd_msr, prd_price, prd_group;

	public String getPrd_group() {
		return prd_group;
	}

	public void setPrd_group(String prd_group) {
		this.prd_group = prd_group;
	}

	public String getPrd_no() {
		return prd_no;
	}

	public void setPrd_no(String prd_no) {
		this.prd_no = prd_no;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	public String getPrd_msr() {
		return prd_msr;
	}

	public void setPrd_msr(String prd_msr) {
		this.prd_msr = prd_msr;
	}

	public String getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(String prd_price) {
		this.prd_price = prd_price;
	}

	public String getCart_no() {
		return cart_no;
	}

	public void setCart_no(String cart_no) {
		this.cart_no = cart_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPrd_num() {
		return prd_num;
	}

	public void setPrd_num(String prd_num) {
		this.prd_num = prd_num;
	}

	public String getCart_quantity() {
		return cart_quantity;
	}

	public void setCart_quantity(String cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
}
