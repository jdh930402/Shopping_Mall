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
import pack.model.QnaDto;
import pack.model.QnaInter;
import pack.utility.Pagination;

@Controller
public class DetailController {
	@Autowired
	@Qualifier("qnaImpl")
	private QnaInter qnaInter;
	
	@Autowired
	@Qualifier("productImpl")
	private ProductInter productInter;
	
	@Autowired
	private Pagination pagination;

	// 상품상세보기(detail) 페이지로 전송
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView getMovePrcess(ProductBean bean, @RequestParam(defaultValue = "1", name = "page") int page) {
		ModelAndView modelAndView = new ModelAndView();
		
		// 상품의 상세정보를 보는 메서드
		ProductDto detailList = productInter.productDetail(bean);
		ArrayList<ProductDto> detailPrdNum = productInter.productNum(bean);
		
		modelAndView.addObject("product", detailList);
		modelAndView.addObject("prdNum", detailPrdNum);
		
		// qna 페이지 리스트
		int count = qnaInter.countDetailGroup(bean.getPrd_group());
		pagination.setPrd_group(bean.getPrd_group());
		pagination.paginationSetting(page, 5, 5, qnaInter.countDetailGroup(bean.getPrd_group()));
		ArrayList<QnaDto> qnaList = qnaInter.selectDetailGroup(pagination);
		modelAndView.addObject("qnaList",qnaList);
		modelAndView.addObject("paging", pagination);
		modelAndView.addObject("count", count);
		
		return modelAndView;
	}
}