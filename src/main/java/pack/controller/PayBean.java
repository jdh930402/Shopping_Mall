package pack.controller;

import org.springframework.stereotype.Component;

@Component
public class PayBean {
	private String  order_num, pay_no, user_id, prd_num, pay_name, pay_tel, pay_zipcode, pay_loc, pay_loc_detail, pay_price, pay_quantity,
			pay_regdate, pay_credit, pay_memo, pay_deli ;
	
	public String getOrder_num() {
		return order_num;
	}

	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}

	private int pay_group;

	public int getPay_group() {
		return pay_group;
	}

	public void setPay_group(int pay_group) {
		this.pay_group = pay_group;
	}

	public String getPay_name() {
		return pay_name;
	}

	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
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

	public String getPay_tel() {
		return pay_tel;
	}

	public void setPay_tel(String pay_tel) {
		this.pay_tel = pay_tel;
	}

	public String getPay_zipcode() {
		return pay_zipcode;
	}

	public void setPay_zipcode(String pay_zipcode) {
		this.pay_zipcode = pay_zipcode;
	}

	public String getPay_loc() {
		return pay_loc;
	}

	public void setPay_loc(String pay_loc) {
		this.pay_loc = pay_loc;
	}

	public String getPay_loc_detail() {
		return pay_loc_detail;
	}

	public void setPay_loc_detail(String pay_loc_detail) {
		this.pay_loc_detail = pay_loc_detail;
	}

	public String getPay_price() {
		return pay_price;
	}

	public void setPay_price(String pay_price) {
		this.pay_price = pay_price;
	}

	public String getPay_quantity() {
		return pay_quantity;
	}

	public void setPay_quantity(String pay_quantity) {
		this.pay_quantity = pay_quantity;
	}

	public String getPay_regdate() {
		return pay_regdate;
	}

	public void setPay_regdate(String pay_regdate) {
		this.pay_regdate = pay_regdate;
	}

	public String getPay_credit() {
		return pay_credit;
	}

	public void setPay_credit(String pay_credit) {
		this.pay_credit = pay_credit;
	}

	public String getPay_memo() {
		return pay_memo;
	}

	public void setPay_memo(String pay_memo) {
		this.pay_memo = pay_memo;
	}

	public String getPay_deli() {
		return pay_deli;
	}

	public void setPay_deli(String pay_deli) {
		this.pay_deli = pay_deli;
	}

}
