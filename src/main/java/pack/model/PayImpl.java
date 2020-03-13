package pack.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.PayBean;

@Repository
public class PayImpl implements PayInter {

	@Autowired
	PayAnnoInter payAnnoInter;

	// 장바구니의 물품을 옴겨담는 과정
	@Override
	public int insertPay(PayBean bean) {
		return payAnnoInter.insertPay(bean);
	}

	// 해당 유저가 결제한 목록을 모두 출력
	@Override
	public ArrayList<PayDto> selectPayAll(String user_id) {
		return payAnnoInter.selectPayAll(user_id);
	}

	@Override
	public int updateDeli(PayBean bean) {
		return payAnnoInter.updateDeli(bean);
	}

	@Override
	public int deleteMemberPay(String user_id) {
		return payAnnoInter.deleteMemberPay(user_id);
	}

}
