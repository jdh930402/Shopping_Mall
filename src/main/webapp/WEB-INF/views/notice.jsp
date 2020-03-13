<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>공지사항 - 대경에프앤씨</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">

    <!-- All css files are included here -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="resources/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="resources/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="resources/css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="resources/css/custom.css">


    <!-- Modernizr JS -->
    <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
    
    <style type="text/css">
    	.searchbox{
    		margin: 0px 40%;
    	}
    </style>
    

</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <%@include file="inc/header.jsp" %>

        <!-- Start of header area -->
 
        <!-- End of header area -->
        <!-- Start Breadcrumbs Area -->

        <!-- End Of Breadcrumbs Area -->
        <!-- Start page content -->
            <!-- 회사 이미지 -->
               <div class="product-list-tab pb-150">
                <div class="container">
         	          <table border="1" summary="" class="board notice" >
						<caption><h4>공지사항</h4></caption>
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
						<c:forEach var="n" items="${data }">
							<tr class="xans-record-">
								    <td>${n.notice_no }</td>
		                            <td class="subject"><a href="noticedetail?no=${n.notice_no}&page=${page }">${n.notice_title }</a></td>
		                            <td>${n.notice_writer }</td>
		                            <td class="txtLess">${n.notice_regdate }</td>
		                            <td class="txtLess">${n.notice_readcnt }</td>
		                    </tr>
						</c:forEach>
			<!-- Paging Process -->
						<tr style="text-align: center;">
							<td colspan="5">
								<div class="shop-pagination">
									<li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
											<c:forEach var="i" begin="1" end="${pageNum }">
										<li>
												<c:if test="${i == page }">
													<b>${i }</b>
												</c:if>
												<c:if test="${i != page }">
													<a href="notice?page=${i }">${i }</a>
												</c:if>
										</li>
											</c:forEach>
							 		<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
								</div>
							</td>
						</tr>
						</tbody>
					</table>
					<!-- Search Process -->
					<div class="searchbox">
					<table style="text-align: center;">
						<tr>
							<td colspan="5">
								<form action="search" method="get">
									<select name="searchName">
										<option value="notice_writer">작성자</option>
										<option value="notice_title">제목</option>
									</select>
									<input type="text" name="searchValue">
									<input type="submit" value="검색">
								</form>
							</td>
						</tr>
					</table>
					</div>
                </div>
              </div>
              
            <!-- End Of Wishlist Area -->

            <!-- Start Brand Area -->
           
            <!-- End Of Brand Area -->
            <!-- Start Newsletter Area -->
            <!-- End Of Newsletter Area -->

        <!-- End page content -->
        <!-- Start footer area -->
        <!-- End footer area --> 
    <%@include file="inc/footer.jsp" %>
    <!-- Body main wrapper end -->


    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="resources/js/vendor/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="resources/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="resources/js/main.js"></script>

</body>

</html>