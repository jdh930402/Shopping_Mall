package pack.controller;

import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CartDto;
import pack.model.CartInter;
import pack.model.PayDto;
import pack.model.PayInter;

@Controller
public class PayController {

	@Autowired
	@Qualifier("cartImpl")
	private CartInter cartInter;

	@Autowired
	@Qualifier("payImpl")
	private PayInter payInter;

	// 결제하기 버튼을 눌렀을때 수행되는 메서드
	@RequestMapping(value = "pay", method = RequestMethod.POST)
	public ModelAndView memberInsertPayProcess(PayBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		String user_id = (String) session.getAttribute("id");
		Calendar cal = Calendar.getInstance();
		String date = String.valueOf(cal.get(Calendar.YEAR)) + String.valueOf(cal.get(Calendar.MONTH) + 1)
				+ String.valueOf(cal.get(Calendar.DATE));
		String time = String.valueOf(Math.abs((int) System.currentTimeMillis()));
		String orderNum = date + time;

		ArrayList<PayDto> payList = payInter.selectPayAll(user_id);
		ArrayList<CartDto> cartList = cartInter.selectCartAll(user_id);
		// 해당 유저의 장바구니에에 담겨있는 상품을 읽고 pay테이블에 저장한 후 장바구니 목록에서 제거한다.
		bean.setOrder_num(orderNum);
		if (bean.getPay_memo() == null) {
			bean.setPay_memo("요청사항 없음");
		}
		for (CartDto dto : cartList) {
			bean.setUser_id(user_id);
			bean.setPrd_num(dto.getPrd_no());
			bean.setPay_price(dto.getPrd_price());
			bean.setPay_quantity(dto.getCart_quantity());
			bean.setPay_deli("1");
			// 결제 정보를 저장하는 메서드
			payInter.insertPay(bean);
			// 장바구니에서 제거하는 메서드
			cartInter.deleteCart(dto.getCart_no());
		}
		// pay테이블과 상품정보를 읽어서 order페이지로 전송한다.
		payList = payInter.selectPayAll(user_id);
		PayDto dto = payList.get(0);
		System.out.println(dto.getImg_header());
		modelAndView.addObject("payList", payList);
		modelAndView.setViewName("order");
		return modelAndView;
	}
	
	@RequestMapping(value = "cancelpay", method = RequestMethod.GET)
	public String memberCancelPayProcess(PayBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		String user_id = (String) session.getAttribute("id");
		bean.setUser_id(user_id);
		payInter.updateDeli(bean);
		return "redirect:order";
	}

}
