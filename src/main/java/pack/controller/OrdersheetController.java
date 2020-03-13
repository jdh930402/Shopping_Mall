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

import pack.model.CartDto;
import pack.model.CartInter;
import pack.model.UserDto;
import pack.model.UserInter;

@Controller
public class OrdersheetController {
	@Autowired
	@Qualifier("cartImpl")
	private CartInter cartInter;
	
	@Autowired
	@Qualifier("userImpl")
	private UserInter userInter;
	
	// 장바구니에서 결제버튼을 누른 경우
	@RequestMapping(value = "ordersheet", method = RequestMethod.GET)
	public ModelAndView memberOrderProcess(HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("ordersheet");
		String user_id = (String) session.getAttribute("id");

		// 해당 아이디를 가진 사람의 장바구니목록을 결제페이지로 이동하기
		ArrayList<CartDto> list = cartInter.selectCartAll(user_id);
		modelAndView.addObject("cartList", list);
		
		// 해당 유저의 정보를 배송지 입력란에 입력하기
		UserDto userDto = userInter.selectUserOne(user_id);
		modelAndView.addObject("user", userDto);
		return modelAndView;
	}

}
