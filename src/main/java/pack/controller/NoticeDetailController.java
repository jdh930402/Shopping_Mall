package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.NoticeInter;

@Controller
public class NoticeDetailController {
	@Autowired
	private NoticeInter noticeInter;
	
	@RequestMapping(value = "noticedetail", method = RequestMethod.GET)
	public Model getDetailProcess(Model model, @RequestParam("no") String no, @RequestParam("page") String page) {
		// 조회 수 증가
		noticeInter.updateReadCnt(no);
		
		// 해당 레코드 읽기
		model.addAttribute("data", noticeInter.getDetail(no));
		model.addAttribute("page", page);
		
		return model;
	}
}