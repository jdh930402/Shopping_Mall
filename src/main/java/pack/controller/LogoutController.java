package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	
	@RequestMapping(value = "logout")
	public String memberLogoutProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();

		return "index";
	}
}
