package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CartInter;
import pack.model.PayInter;
import pack.model.UserDto;
import pack.model.UserInter;

@Controller
public class MypageController {
	@Autowired
	@Qualifier("userImpl")
	private UserInter userInter;
	
	@Autowired
	@Qualifier("cartImpl")
	private CartInter cartInter;
	
	@Autowired
	@Qualifier("payImpl")
	private PayInter payInter;
	
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public ModelAndView memberMypageProcess(UserBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		bean.setUser_id((String) session.getAttribute("id"));
		UserDto userDto = userInter.mypage(bean);
		view.setViewName("mypage");
		view.addObject("mydata", userDto);

		return view;
	}

	@RequestMapping(value = "saveMember", method = RequestMethod.POST)
	public ModelAndView memberSaveMember(UserBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		// bean.setUser_id((String)session.getAttribute("id"));
		userInter.saveMember(bean);
		UserDto userDto = userInter.mypage(bean);
		view.setViewName("mypage");
		view.addObject("mydata", userDto);

		return view;
	}

	@RequestMapping(value = "deleteMember", method = RequestMethod.POST)
	public ModelAndView memberDeleteMember(UserBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		payInter.deleteMemberPay(bean.getUser_id());
		cartInter.deleteMemberCart(bean.getUser_id());
		boolean isTrue = userInter.deleteMember(bean);
		if (isTrue) {
			session.invalidate();
			view.setViewName("index");
			return view;
		} else {
			UserDto userDto = userInter.mypage(bean);
			view.addObject("mydata", userDto);
			view.setViewName("mypage");
			return view;
		}

	}
}
