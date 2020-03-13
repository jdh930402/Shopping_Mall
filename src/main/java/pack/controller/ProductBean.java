package pack.controller;

import org.springframework.stereotype.Component;

@Component
public class ProductBean {

	private String prd_no, prd_num, prd_name, prd_msr, prd_quantity, prd_price, prd_group;
	private String img_header, img_description, img_option;

	public String getPrd_no() {
		return prd_no;
	}

	public void setPrd_no(String prd_no) {
		this.prd_no = prd_no;
	}

	public String getPrd_num() {
		return prd_num;
	}

	public void setPrd_num(String prd_num) {
		this.prd_num = prd_num;
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

	public String getPrd_quantity() {
		return prd_quantity;
	}

	public void setPrd_quantity(String prd_quantity) {
		this.prd_quantity = prd_quantity;
	}

	public String getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(String prd_price) {
		this.prd_price = prd_price;
	}

	public String getPrd_group() {
		return prd_group;
	}

	public void setPrd_group(String prd_group) {
		this.prd_group = prd_group;
	}

	public String getImg_header() {
		return img_header;
	}

	public void setImg_header(String img_header) {
		this.img_header = img_header;
	}

	public String getImg_description() {
		return img_description;
	}

	public void setImg_description(String img_description) {
		this.img_description = img_description;
	}

	public String getImg_option() {
		return img_option;
	}

	public void setImg_option(String img_option) {
		this.img_option = img_option;
	}
}
