package pack.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.NoticeBean;

@Repository
public class NoticeImpl implements NoticeInter {
	@Autowired
	NoticeAnnoInter noticeAnnoInter;
	
	@Override
	public ArrayList<NoticeDto> getList() {
		return noticeAnnoInter.getList();
	}
	
	@Override
	public int totalCnt() {
		return noticeAnnoInter.totalCnt();
	}
	
	@Override
	public int currentNum() {
		if(noticeAnnoInter.currentNum() == 0) return 0;
		return noticeAnnoInter.currentNum();
	}
	
	@Override
	public ArrayList<NoticeDto> getSearch(NoticeBean bean) {
		return noticeAnnoInter.getSearch(bean);
	}
	
	@Override
	public boolean updateReadCnt(String num) {
		return (boolean)noticeAnnoInter.updateReadCnt(num);
	}
	
	@Override
	public NoticeDto getDetail(String num) {
		return noticeAnnoInter.getDetail(num);
	}
}