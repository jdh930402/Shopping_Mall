package pack.model;

import java.util.ArrayList;

import pack.controller.CartBean;

public interface CartInter {
	// 카드에 해당유저가 추가한 중복된 상품이 있는지 검색하는 메서드
	CartDto selectExistProduct(CartBean bean);
	
	// 카트에 카트 정보를 저장하는 메서드
	public int insertCart(CartBean bean);
	
	// 카트에 카트 정보를 출력하는 메서드
	public ArrayList<CartDto> selectCartAll(String id);
	
	// 이미 존재하는 물품의 수량을 업데이트하는 메서드
	public int UpdateQuantity(CartBean bean);
	
	// 카트에서 물품을 삭제하는 메서드
	public int deleteCart(String cart_no);
	
	public CartDto selectUpdateCart(CartBean bean);
	
	public int deleteMemberCart(String user_id);
	
}
