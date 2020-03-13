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
    #content-box{
    	text-align: left;
    }
    #content{
    	margin : 30px 15px;  	
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
         	          <table border="1" summary="" class="board noticedetail" >
						<caption><h4>공지사항</h4></caption>
						<colgroup>
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th><td>${data.notice_no }</td>
	                            <th scope="col">작성자</th><td>${data.notice_writer }</td>
	                            <th scope="col">작성일</th><td>${data.notice_regdate }</td>
	                            <th scope="col">조회수</th><td>${data.notice_readcnt }</td>
	                        </tr>
	                        <tr>
								<th scope="col">제목</th><td id="content-box" colspan="7">${data.notice_title }</td>
                            </tr>
                            <tr>
								<td id="content-box" colspan="8"><p id="content">${data.notice_content }</p></td>
							</tr>
	                    </thead>
					</table>
					 <input type="button" value="돌아가기" style="float: right; width: 80px; margin-top: 20px;" onclick="history.back()">
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