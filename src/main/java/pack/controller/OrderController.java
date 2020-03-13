package pack.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.PayDto;
import pack.model.PayInter;

@Controller
public class OrderController {

	@Autowired
	@Qualifier("payImpl")
	private PayInter payInter;

	// 헤더에서 장바구니 버튼을 누른 경우
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public ModelAndView memberOrderProcess(HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		String user_id = (String) session.getAttribute("id");
		ModelAndView modelAndView = new ModelAndView();
		ArrayList<PayDto> payList = payInter.selectPayAll(user_id);
		modelAndView.addObject("payList", payList);
		modelAndView.setViewName("order");

		return modelAndView;
	}

}
