package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompanyController {

	@RequestMapping(value = "company", method = RequestMethod.GET)
	public String getMoveProcess() {
		return "company";
	}

}
