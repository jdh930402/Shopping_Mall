package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.NoticeDto;
import pack.model.NoticeInter;

@Controller
public class NoticeSearchController {
	@Autowired
	private NoticeInter noticeInter;
	
	private int pageNum;
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public ModelAndView getSearchProcess(NoticeBean bean) {
		ArrayList<NoticeDto> list = noticeInter.getSearch(bean);
		
		ModelAndView modelAndView = new ModelAndView("notice", "data", list);
		modelAndView.addObject("page", "1");
		
		return modelAndView;
	}
}