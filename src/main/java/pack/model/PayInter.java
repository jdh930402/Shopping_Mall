package pack.model;

import java.util.ArrayList;

import pack.controller.PayBean;

public interface PayInter {
	// 결제정보를 저장하는 메서드
	public int insertPay(PayBean bean);

	// 결제정보를 읽어오는 메서드
	public ArrayList<PayDto> selectPayAll(String user_id);
	
	public int updateDeli(PayBean bean);
	
	public int deleteMemberPay(String user_id);
}
