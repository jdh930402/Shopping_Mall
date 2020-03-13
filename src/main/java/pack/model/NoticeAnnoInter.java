package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.NoticeBean;

public interface NoticeAnnoInter {
	// Notice 페이지에 불러오기
	@Select("SELECT notice_no, notice_title, notice_writer, DATE_FORMAT(notice_regdate, '%Y-%m-%d')notice_regdate, notice_readcnt FROM notice")
	public ArrayList<NoticeDto> getList();
	
	// Notice 총 갯수 구하기
	@Select("SELECT COUNT(*) FROM notice")
	public int totalCnt();
	
	// Notice의 제일 큰 숫자 가져오기
	@Select("SELECT MAX(notice_no) FROM notice")
	public int currentNum();
	
	// Notice 페이지 내 검색
	@Select("SELECT * FROM notice WHERE ${searchName} LIKE CONCAT('%', #{searchValue}, '%') ORDER BY notice_no DESC")
	public ArrayList<NoticeDto> getSearch(NoticeBean bean);
	
	// 조회 수 증가
	@Update("UPDATE notice SET notice_readcnt = notice_readcnt + 1 where notice_no = #{notice_no}")
	public boolean updateReadCnt(String num);
	
	// 상세내용 보기
	@Select("SELECT notice_no, notice_title, notice_content, notice_writer, DATE_FORMAT(notice_regdate, '%Y-%m-%d')notice_regdate, notice_readcnt FROM notice WHERE notice_no = #{notice_no}")
	public NoticeDto getDetail(String num);
}