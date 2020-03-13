package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.QnaDto;
import pack.model.QnaInter;

@Controller
public class QnaDetailController {
	@Autowired
	private QnaInter qnaInter;
	
	@RequestMapping(value = "qnadetail", method = RequestMethod.GET)
	public Model getDetailProcess(QnaBean bean, Model model, @RequestParam("page") String page, @RequestParam("qnaNumber") String qnaNumber) {
		// 조회 수 증가
		qnaInter.updateReadCnt(bean);
		QnaDto qnaDto = qnaInter.qnaDataAll(bean);
		
		// 해당 레코드 읽기
		model.addAttribute("QnaData", qnaDto);
		model.addAttribute("page", page);
		model.addAttribute("qnaNumber", qnaNumber);
		
		return model;
	}
}