package pack.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.QnaBean;
import pack.utility.Pagination;

@Repository
public class QnaImpl implements QnaInter {

	@Autowired
	private QnaAnnoInter qnaAnnoInter;

	// qna리스트를 detail페이지에 출력하는 메서드
	@Override
	public ArrayList<QnaDto> selectDetailGroup(Pagination pagination) {
		return qnaAnnoInter.selectDetailGroup(pagination);
	}

	// 그룹별 qna리스트 수
	@Override
	public int countDetailGroup(String prd_group) {
		return qnaAnnoInter.countDetailGroup(prd_group);
	}

	// qna등록
	@Override
	public boolean insertQna(QnaBean bean) {
		return qnaAnnoInter.insertQna(bean);
	}

	// qna최대값
	@Override
	public String currentNum() {
		return qnaAnnoInter.currentNum();
	}

	// 조회수 증가
	@Override
	public boolean updateReadCnt(QnaBean bean) {
		return qnaAnnoInter.updateReadCnt(bean);
	}

	@Override
	public QnaDto qnaDataAll(QnaBean bean) {
		return qnaAnnoInter.qnaDataAll(bean);
	}
}