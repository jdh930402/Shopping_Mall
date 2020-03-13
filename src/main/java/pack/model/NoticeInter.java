package pack.model;

import java.util.ArrayList;

import pack.controller.NoticeBean;

public interface NoticeInter {
	ArrayList<NoticeDto> getList();
	int totalCnt();
	int currentNum();
	ArrayList<NoticeDto> getSearch(NoticeBean bean);
	boolean updateReadCnt(String num);
	NoticeDto getDetail(String num);
}