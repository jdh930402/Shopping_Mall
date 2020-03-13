package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.ProductDto;
import pack.model.ProductInter;
import pack.utility.Pagination;

@Controller
public class TasselController {
	
	@Autowired
	@Qualifier("productImpl")
	private ProductInter productInter;
	
	@Autowired
	private Pagination pagination;
	
	// tassel 페이지로 전송
	@RequestMapping(value = "tassel", method = RequestMethod.GET)
	public ModelAndView getMoveProcess(@RequestParam(defaultValue = "1", name = "page")int page) {
		ModelAndView modelAndView = new ModelAndView();
		pagination.paginationSetting(page, 12, 10, productInter.countTasselAll());
		ArrayList<ProductDto> list = productInter.tasselPaging(pagination);
		modelAndView.addObject("list", list);
		modelAndView.addObject("paging", pagination);
		return modelAndView;
	}
}
