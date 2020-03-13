package pack.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.QnaDto;
import pack.model.QnaInter;
import pack.utility.Pagination;

@Controller
public class QnaController {

	@Autowired
	@Qualifier("qnaImpl")
	private QnaInter qnaInter;
	
	@RequestMapping(value = "qnaAjax", method = RequestMethod.GET)
	public String qnaPagingProccess(Model model,Pagination pagination) {
			int count = qnaInter.countDetailGroup(pagination.getPrd_group());
			pagination.paginationSetting(pagination.getPage(), 5, 5, qnaInter.countDetailGroup(pagination.getPrd_group()));
			ArrayList<QnaDto> qnaList = qnaInter.selectDetailGroup(pagination);
			model.addAttribute("qnaList", qnaList);
			model.addAttribute("paging", pagination);
			model.addAttribute("count", count);
			return "qnaAjax";
	}
	
	@RequestMapping(value = "qnawrite", method = RequestMethod.GET)
	public ModelAndView memberQnaWriteProcess(QnaBean bean, HttpSession session, HttpServletRequest request,HttpServletResponse response) {
		String user_id = (String)session.getAttribute("id");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("user_id", user_id);
		modelAndView.addObject("page", bean.getPage());
		modelAndView.addObject("prd_group", bean.getPrd_group());
		return modelAndView;
	}
	
	@RequestMapping(value = "qnawrite", method = RequestMethod.POST)
	public String memberQnaWriteProcess(QnaBean bean, HttpServletRequest request,HttpServletResponse response) {
		int newNum = 0;
		if(qnaInter.currentNum() == null ) {
			newNum = 1;
		}else {
			newNum = Integer.parseInt(qnaInter.currentNum()) + 1 ;			
		}
		bean.setQna_gnum(String.valueOf(newNum));
		System.out.println(bean.getQna_gnum());
		qnaInter.insertQna(bean);
		return "redirect:detail?prd_group=" + bean.getPrd_group() + "page=" + bean.getPage();
	}
}