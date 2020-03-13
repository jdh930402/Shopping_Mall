<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>합성피혁- 대경에프앤씨 || Freak</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="./resources/images/favicon.ico">

    <!-- All css files are included here -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="./resources/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="./resources/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="./resources/css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="./resources/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="./resources/css/custom.css">


    <!-- Modernizr JS -->
    <script src="./resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">

        <!-- Start of header area -->
        <%@include file="inc/header.jsp" %>
        <!-- End of header area -->
        <!-- Start Breadcrumbs Area -->
        <!-- End Of Breadcrumbs Area -->
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">
            <!-- Start Shop Full Grid View -->
            <div class="shop-view-area pt-90 mb-40">
                <div class="container">
                <h3>PU LEATHER</h3>
                <hr>
                </div>
            </div>
            <!-- End Of Shop Full Grid View -->
            <!-- Start Product List -->
            <div class="product-list-tab">
                <div class="container">
                    <div class="row">
                        <div class="product-list tab-content">
                            <!-- 상품리스트 구간 시작 -->
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                    <!-- 상품리스트 1개 시작위치 -->
                                <c:forEach var="l" items="${list}">
                              <div class="col-md-3 col-sm-4 col-xs-12">
                                  
                                    <div class="single-product mb-40">
                                        <div class="product-img-content mb-20">
                                            <div class="product-img">
                                                <a href="detail?prd_group=${l.prd_group}&page=1">
                                                    <img src="./resources/images/product/${l.img_header}" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center text-uppercase">
                                            <a href="detail?prd_group=${l.prd_group}&page=1" title="${l.prd_name}">${l.prd_name}</a>
                                            <div class="rating-icon">
                                                <span>판매단위 : ${l.prd_msr}</span>
                                            </div>
                                            <div class="rating-icon">
                                                <span>1롤 기본 수량 : ${l.prd_quantity}</span>
                                            </div>
                                            <div class="product-price">
                                                <span class="new-price"><fmt:formatNumber value="${l.prd_price}" pattern="#,###"/> 원</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                                <!-- 끝위치 for문 돌리기-->
                            </div>
                                <!-- 상품리스트 구간 끝 -->
                            <div role="tabpanel" class="tab-pane fade" id="menu1">
                              
                              <!-- 쇼핑리스트 시작위치 -->
                                <c:forEach var="l" items="${list}">
                                <div class="single-product mb-30">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-5 col-md-4">
                                            <div class="product-img">
                                                <a href="detail?prd_group=${l.prd_group}&page=1">
                                                    <img src="./resources/images/product/${l.img_header}" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-8">
                                            <div class="product-content text-uppercase mt-120">
                                                <a title="Men’s Blue Short T-Shirt" href="detail?prd_group=${l.prd_group}&page=1">${l.prd_name}</a>
                                                <div class="rating-icon">
                                                	<span>판매단위 : ${l.prd_msr}</span>
	                                            </div>
	                                            <div class="rating-icon">
	                                                <span>1롤 기본 수량 : ${l.prd_quantity}</span>
	                                            </div>
                                                <div class="product-price pb-10">
                                                     <span class="new-price"><fmt:formatNumber value="${l.prd_price}" pattern="#,###"/> 원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                              <!-- 쇼핑리스트 끝위치 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start Shop Full Grid View -->
            <div class="shop-view-area pb-90">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-2 col-xs-4">
                            <div class="shop-tab-pill">
                                <ul>
                                    <li class="active"><a data-toggle="pill" href="#home"><i class="zmdi zmdi-apps"></i><span></span></a></li>
                                    <li><a data-toggle="pill" href="#menu1"><i class="zmdi zmdi-view-list"></i><span></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-8">

                        </div>
                        <div class="col-sm-3 hidden-xs">
                            <div class="shop-pagination">
                                <ul>
                                        <c:if test="${paging.currentBlock != 1 }">
	                                    <li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
	                                    </c:if>
	                                    <c:forEach var="pageNum" begin="${paging.startPage}" end="${paging.endPage}" varStatus="status">
                                    	<li id="page-elements+${status.count}" class="active-pagebutton"><a id="page-element+${status.count}" class="page-element" href="javascript:pageLoad('#page-elements+${status.count}',${pageNum});">${pageNum}</a></li>
                                    	</c:forEach>
                                    	<c:if test="${paging.currentBlock != paging.totalBlock }">
	                                    <li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
	                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Of Shop Full Grid View -->

            <!-- Start Brand Area -->
            <!-- End Of Brand Area -->
            
        </section>
        <!-- End page content -->
        <!-- Start footer area -->
        <%@include file="inc/footer.jsp" %>
        
        <!-- End footer area -->
        
    </div>
    <!-- Body main wrapper end -->


    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="./resources/js/vendor/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="./resources/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="./resources/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="./resources/js/main.js"></script>

</body>

</html>