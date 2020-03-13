<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

  										 <table border="1" summary="" class="board ">
											<caption>상품 Q&A</caption>
											<colgroup>
												<col style="width:5%;">
												<col style="width:45%">
												<col style="width:15%;">
												<col style="width:15%;">
												<col style="width:15%;">
												<col style="width:5%;">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">번호</th>
						                            <th scope="col">제목</th>
						                            <th scope="col">작성자</th>
						                            <th scope="col">작성일</th>
						                            <th scope="col">조회</th>
						                        </tr>
						                    </thead>
											<tbody>
												<c:set var="qnaLength" value="${fn:length(qnaList)}"/>
												<c:if test="${fn:length(qnaList) == 0}">
													<tr class="xans-record-">
														    <td colspan="5">qna목록이 없습니다.</td>
								                    </tr>
												</c:if>
												
												<c:forEach var="q" items="${qnaList}" varStatus="status" >
													<tr class="xans-record-">
														    <td>${count - (paging.page-1)*paging.length - status.index}</td>
								                            <td class="subject"><a href="detaildetail?no=${q.qna_no}&page=${paging.page}">${q.qna_title}</a></td>
								                            <td>${q.qna_writer}</td>
								                            <td class="txtLess">${q.qna_regdate}</td>
								                            <td class="txtLess">${q.qna_readcnt}</td>
								                    </tr>
							                    </c:forEach>
            									
            									<!-- Paging Process -->
												<tr style="text-align: center;">
													<td colspan="5">
														<div class="shop-pagination">
							                                <ul>
						                                		<c:if test="${paging.currentBlock != 1 }">
							                                    <li><a href="javascript:currentBlock(${paging.startPage-1}, ${paging.prd_group})"><i class="zmdi zmdi-chevron-left"></i></a></li>
							                                    </c:if>
							                                    <c:forEach var="pageNum" begin="${paging.startPage}" end="${paging.endPage}" varStatus="status">
						                                    	<li id="page-elements${status.count}" class="active-pagebutton"><a id="page-element${status.count}" class="page-element" href="javascript:pageLoad(${paging.prd_group},${pageNum});">${pageNum}</a></li>
						                                    	</c:forEach>
						                                    	<c:if test="${paging.currentBlock != paging.totalBlock }">
							                                    <li><a href="javascript:currentBlock(${paging.endPage+1}, ${paging.prd_group})"><i class="zmdi zmdi-chevron-right"></i></a></li>
							                                    </c:if>
							                                </ul>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<a href="qnawrite?prd_group=${paging.prd_group}&page=${paging.page}"><input type="button" value="문의하기" style="float: right; width: 80px; margin-top: 20px;"></a>