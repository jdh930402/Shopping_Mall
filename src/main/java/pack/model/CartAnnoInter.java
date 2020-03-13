package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.CartBean;

public interface CartAnnoInter {

	// 장바구니에 추가할 상품이 해당 유저가 기존에 등록한 상품이 있는지 검색하는 sql문
	@Select("select prd_num, cart_quantity from cart where user_id = #{user_id} and prd_num = #{prd_num}")
	public CartDto selectExistProduct(CartBean bean);
	
	// 장바구니에 유저아이디(유저테이블의 pk)와 상품번호(상품테이블의 pk) 저장하는 sql문
	@Insert("insert into cart(user_id, prd_num, cart_quantity) values(#{user_id}, #{prd_no}, #{cart_quantity}) ")
	public int InsertCart(CartBean bean);
	
	// 장바구니에 존재하는 상품의 수량만 변경하는  sql문
	@Update("update cart set cart_quantity=#{cart_quantity} where user_id = #{user_id} and prd_num = #{prd_num}")
	public int UpdateQuantity(CartBean bean);
	
	// 장바구니에 해당 유저가 등록한 상품의 정보를 모두 가져오는 sql문
	@Select("select cart_no,prd_no, product.prd_num, prd_name, prd_msr, prd_quantity, prd_price, prd_group, cart_quantity, img_header, img_description, img_option from product, cart where cart.prd_num = prd_no and user_id = #{user_id} order by cart_no desc")	
	public ArrayList<CartDto> selectCartAll(String id);
	
	// 장바구니에서 해당 물품을 삭제하는 sql문 
	@Delete("delete from cart where cart_no = #{cart_no}")
	public int deleteCart(String cart_no);
	
	// 장바구니에서 업데이트한 물품의 정보만 읽어오는 sql문
	@Select("select cart_no,prd_no, product.prd_num, prd_name, prd_msr, prd_quantity, prd_price, prd_group, cart_quantity from product, cart where cart.prd_num = prd_no and user_id = #{user_id} and prd_no = #{prd_num}")
	public CartDto selectUpdateCart(CartBean bean);
	
	@Delete("delete from cart where user_id = #{user_id}")
	public int deleteMemberCart(String user_id); 
	

}
