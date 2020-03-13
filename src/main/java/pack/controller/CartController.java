package pack.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CartDto;
import pack.model.CartInter;
import pack.model.ProductInter;

@Controller
public class CartController {

	@Autowired
	@Qualifier("cartImpl")
	private CartInter cartInter;
	
	@Autowired
	@Qualifier("productImpl")
	private ProductInter productInter;

	// index에서 장바구니 보기를 클릭한 경우
	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public ModelAndView memberMoveProcess(HttpSession session,HttpServletRequest request,HttpServletResponse response) {
		String user_id = (String) session.getAttribute("id");
		ModelAndView modelAndView = new ModelAndView("cart");
		List<CartDto> list = cartInter.selectCartAll(user_id);
		modelAndView.addObject("cartList", list);
		return modelAndView;
	}

	// 물품을 장바구니에 추가한 경우
	@RequestMapping(value = "insertcart", method = RequestMethod.GET)
	public ModelAndView memberInsertCart(CartBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		if(bean.getPrd_num()!=null) {
			String prd_no = productInter.numChangeNo(bean);
			bean.setPrd_no(prd_no);
		}

		ModelAndView modelAndView = new ModelAndView();
		String user_id = (String) session.getAttribute("id");
		bean.setUser_id(user_id);

		CartDto dto = cartInter.selectExistProduct(bean);

		if (dto == null) {
			// 기존에 카트에 상품이 없는 경우
			cartInter.insertCart(bean);
		} else {
			// 기존에 상품이 존재하는 경우

			// 수량을 int타입으로 변환하여 계산
			int updateQuentity = Integer.parseInt(dto.getCart_quantity()) + Integer.parseInt(bean.getCart_quantity());

			// 수량을 string타입으로 변환하여 저장
			bean.setCart_quantity(String.valueOf(updateQuentity));
			cartInter.UpdateQuantity(bean);
		}

		// 카트테이블에 아이디가 일치하는 사람의 상품정보를 읽고 상품정보와 수량을 반환해야한다.
		ArrayList<CartDto> list = cartInter.selectCartAll(user_id);
		modelAndView.addObject("cartList", list);

		modelAndView.setViewName("redirect:cart");
		return modelAndView;
	}

	// 물품을 장바구니에서 삭제하는 경우
	@RequestMapping(value = "deletecart", method = RequestMethod.GET)
	public String memberDeleteCart(String cart_no, HttpServletRequest request,HttpServletResponse response) {
		cartInter.deleteCart(cart_no);
		return "redirect:cart";
	}

	// cart페이지에서 물품 수량을 변경하는 경우
	@RequestMapping(value = "updatecart", method = RequestMethod.GET)
	@ResponseBody
	public CartDto memberUpdateCart(CartBean bean, HttpSession session,HttpServletRequest request,HttpServletResponse response) {
		String user_id = (String) session.getAttribute("id");
		bean.setUser_id(user_id);
		cartInter.UpdateQuantity(bean);
		CartDto dto = cartInter.selectUpdateCart(bean);
		return dto;
	}
}
