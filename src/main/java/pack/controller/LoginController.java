package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.UserDto;
import pack.model.UserInter;

@Controller
public class LoginController {
	
	@Autowired
	@Qualifier("userImpl")
	private UserInter userInter;
	

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String getMoveProcess() {
		return "login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView postLoginProcess(UserBean bean,  HttpSession session, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		UserDto userDto = userInter.login(bean);
		
		// 로그인에 성공한 경우
		if(userDto != null) {
			modelAndView.setViewName("redirect:index");
			session.setAttribute("id", userDto.getUser_id());
			return modelAndView;
		// 로그인에 실패한 경우	
		}else {
			modelAndView.setViewName("login");
			return modelAndView;
		}
	}
	
}
