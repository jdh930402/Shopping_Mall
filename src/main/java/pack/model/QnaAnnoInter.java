package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.QnaBean;
import pack.utility.Pagination;

public interface QnaAnnoInter {
	// qna리스트를 detail에 출력하는 sql문
	@Select("select qna_no, prd_group, qna_title, qna_content, qna_writer, date_format(qna_regdate,'%Y-%m-%d') as qna_regdate, qna_readcnt, qna_gnum, qna_onum, qna_nested from qna where prd_group = #{prd_group} limit #{start}, #{length}")
	public ArrayList<QnaDto> selectDetailGroup(Pagination pagination);

	// 상품 그룹별 qna리스트를 detail페이지에 출력하는 sql문
	@Select("select count(prd_group) from qna where prd_group = #{prd_group}")
	public int countDetailGroup(String prd_group);
	
	@Insert("insert into qna(prd_group, qna_title, qna_content, qna_writer, qna_regdate, qna_readcnt, qna_gnum, qna_onum, qna_nested) values(#{prd_group}, #{qna_title}, #{qna_content}, #{qna_writer}, now(),0,#{qna_gnum},0,0)")
	public boolean insertQna(QnaBean bean);
	
	// qna번호 최대값
	@Select("select max(qna_no) from qna")
	public String currentNum(); 
	
	@Update("update qna set qna_readcnt = qna_readcnt+1 where qna_no=#{qna_no}")
	public boolean updateReadCnt(QnaBean bean);
	
	// qna내용을 출력하는 sql문
	@Select("select qna_no, prd_group, qna_title, qna_content, qna_writer, date_format(qna_regdate,'%Y-%m-%d') as qna_regdate, qna_readcnt, qna_gnum, qna_onum, qna_nested from qna where qna_no=#{qna_no}")
	public QnaDto qnaDataAll(QnaBean bean);	
	
	
}