package pack.model;

import java.util.ArrayList;

import pack.controller.QnaBean;
import pack.utility.Pagination;

public interface QnaInter {
	public ArrayList<QnaDto> selectDetailGroup(Pagination pagination);

	// detail그룹 개수
	public int countDetailGroup(String prd_group);
	
	// qna 등록
	public boolean insertQna(QnaBean bean);
	
	// qna번호 최대값
	public String currentNum();
	
	// 조회수 증가
	public boolean updateReadCnt(QnaBean bean);
	
	public QnaDto qnaDataAll(QnaBean bean);	
}