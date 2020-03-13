package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.NoticeDto;
import pack.model.NoticeInter;

@Controller
public class NoticeController {
	@Autowired
	@Qualifier("noticeImpl")
	private NoticeInter noticeInter;
	
	private int total; // 전체 레코드 수
	private int pageList = 10; // 페이지 당 레코드 수
	private int pageNum; // 전체 페이지 수 
	
	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public Model getMoveProcess(Model model, @RequestParam(defaultValue = "1" ,name = "page") int page) {
		total = noticeInter.totalCnt(); // 전체 페이지 수 얻기
		
		ArrayList<NoticeDto> list = noticeInter.getList();
		ArrayList<NoticeDto> result = new ArrayList<NoticeDto>();
		result = getList(list, page);

		model.addAttribute("data", result); // 부분 JSP전송
		model.addAttribute("page", page);
		model.addAttribute("pageNum", getPageNum());
		
		return model;
	}
	
	public int getPageNum() { // 총 페이지 수
		pageNum = total / pageList;
		
		if(total % pageList > 0) pageNum += 1; // 나머지 페이지 계산
		return pageNum;
	}
	
	public ArrayList<NoticeDto> getList(ArrayList<NoticeDto> list, int page) {
		ArrayList<NoticeDto> result = new ArrayList<NoticeDto>();
		
		int start = (page - 1) * pageList; // 0, 5, 10, ...의 시작값
		int size = pageList <= list.size() - start ? pageList : list.size() - start;
		
		for(int i = 0; i < size; i++) result.add(i, list.get(start + i));
		
		return result;
	}
}