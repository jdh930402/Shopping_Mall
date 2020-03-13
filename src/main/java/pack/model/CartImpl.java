package pack.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.CartBean;

@Repository
public class CartImpl implements CartInter {

	@Autowired
	CartAnnoInter cartAnnoInter;

	// 카드에 해당유저가 추가한 중복된 상품이 있는지 검색하는 메서드
	@Override
	public CartDto selectExistProduct(CartBean bean) {
		return cartAnnoInter.selectExistProduct(bean);
	}

	// 카트에 물품을 저장하는 메서드
	@Override
	public int insertCart(CartBean bean) {
		return cartAnnoInter.InsertCart(bean);
	}

	// 이미 존재하는 물품의 수량을 업데이트하는 메서드
	@Override
	public int UpdateQuantity(CartBean bean) {
		return cartAnnoInter.UpdateQuantity(bean);
	}

	// 카트에 물픔을 출력하는 메서드
	@Override
	public ArrayList<CartDto> selectCartAll(String id) {
		return cartAnnoInter.selectCartAll(id);
	}
	
	// 카트에서 물품을 삭제하는 메서드
	@Override
	public int deleteCart(String cart_no) {
		return cartAnnoInter.deleteCart(cart_no);
	}
	
	@Override
	public CartDto selectUpdateCart(CartBean bean) {
		return cartAnnoInter.selectUpdateCart(bean);
	}
	
	@Override
	public int deleteMemberCart(String user_id) {
		return cartAnnoInter.deleteMemberCart(user_id);
	}
	

}
