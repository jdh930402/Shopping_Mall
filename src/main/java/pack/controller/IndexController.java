package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.ProductDto;
import pack.model.ProductInter;

@Controller
public class IndexController {
	
	@Autowired
	@Qualifier("productImpl")
	private ProductInter productInter;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView getMoveProcess() {
		ModelAndView modelAndView = new ModelAndView();
		ArrayList<ProductDto> chamudeList = productInter.selectRndChamude();
		ArrayList<ProductDto> suedeList = productInter.selectRndSuede();
		ArrayList<ProductDto> puList = productInter.selectRndPu();
		ArrayList<ProductDto> tasselList = productInter.selectRndTassel();
		
		modelAndView.addObject("chamudeList", chamudeList);
		modelAndView.addObject("suedeList", suedeList);
		modelAndView.addObject("puList",puList);
		modelAndView.addObject("tasselList",tasselList);
		modelAndView.setViewName("index");
		return modelAndView;
	}
}
