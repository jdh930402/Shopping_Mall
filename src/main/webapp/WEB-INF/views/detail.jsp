<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>상품 상세보기 - 대경에프앤씨</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">

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
    .board{
	width: 100%;
	text-align: center;
	border: hidden;
	border-top: 1px solid;
	border-bottom: 0.5px solid;
	}
	
	.board > thead tr th{
		text-align: center;
		background-color: #f8f8f8;
	}
	
	.board > thead tr th{
		text-align: center;
		height: 40px;
	}
	
	.board > tbody tr td{
		height: 30px;
	}
    </style>
    
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">

        <!-- Start of header area -->
        <%@include file="inc/header.jsp"%>
        <!-- End of header area -->
        <!-- Start Breadcrumbs Area -->
        <!-- End Of Breadcrumbs Area -->
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">
            <!-- Start Shop Full Grid View -->
            <div class="product-details-area section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="single-product-image">
                                <div id="product-img-content">
                                    <div id="my-tab-content" class="tab-content mb-30">
                                        <div class="tab-pane b-img active" id="view1">
                                           <img src="resources/images/product/${product.img_header}" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-7">
                        	<div class="product-details-content">
                       	<form name="frm" action="insertcart" method="get">
                       	<input type="hidden" name="prd_group" value="${product.prd_group}">
                                <div class="product-content text-uppercase">
                                   <p><strong>${product.prd_name}</strong></p>
                                    <div class="rating-icon pb-30 mt-10">
  
                                    </div>
                                    <div class="product-price pb-30">
                                        <span class="new-price"><fmt:formatNumber value="${product.prd_price}" pattern="#,###"/> 원</span>
                                    </div>
                                </div>
                                
                                <div class="product-view pb-30">
                                
                                </div>
                                 <div class="product-attributes clearfix">
                                    <div class="product-color text-uppercase pb-40">
                                        <h4 class="product-details-tilte text-uppercase pb-10">판매단위</h4>
                                        <p>${product.prd_msr}</p>
                                    </div> 
                                    <div id="quantity-wanted" class="pull-left" style="margin-left: 40px;">
                                        <h4 class="product-details-tilte text-uppercase pb-10">1롤 기본 수량</h4>
                                        <p>${product.prd_quantity}</p>   
                                    </div>
                                </div>
                                <div class="product-attributes clearfix">
                                    <div class="product-color text-uppercase pb-40">
                                        <h4 class="product-details-tilte text-uppercase pb-10">상품번호</h4>
                                  		<select name="prd_num" style="height: 23px; width: auto">
                                  		<c:forEach var="prd" items="${prdNum}" varStatus="status">
                                  			<option value="${prd.prd_num}">${prd.prd_num}</option>
                                  		</c:forEach>
                                  		</select>
                                  		                                  		
                                    </div> 
                                    <div id="quantity-wanted" class="pull-left" style="margin-left: 40px;">
                                        <h4 class="product-details-tilte text-uppercase pb-10">수량</h4>
                                        <input name="cart_quantity" type="number"  class="cart-plus-minus-box" value="1">    
                                    </div>
                                </div>
                                <div class="product-action-shop text-center mb-40">
                                    <a id="insertCart" title="Add to cart" href="#">
                                        <i class="zmdi zmdi-shopping-cart"></i>
                                    </a>
                                </div>
                            </form>
                                <div class="socialsharing-product">
                                    <h4 class="product-details-tilte text-uppercase pb-10">상품 공유하기</h4>
                                    <button type="button"><i class="zmdi zmdi-facebook"></i></button>
                                    <button type="button"><i class="zmdi zmdi-instagram"></i></button>
                                    <button type="button"><i class="zmdi zmdi-rss"></i></button>
                                    <button type="button"><i class="zmdi zmdi-twitter"></i></button>
                                    <button type="button"><i class="zmdi zmdi-pinterest"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-details-content pt-90">
                                <div class="p-details-tab">
                                    <ul class="nav nav-tabs text-uppercase mb-20" role="tablist">
                                        <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">Description</a></li>
                                        <li role="presentation"><a href="#option" aria-controls="option" role="tab" data-toggle="tab">option</a></li>
                                        <li role="presentation"><a href="#qna" aria-controls="qna" role="tab" data-toggle="tab">Q&A</a></li>
                                    </ul>                             
                                </div>
                                <div class="clearfix"></div>
                                <div class="tab-content review">
                                    <div role="tabpanel" class="tab-pane active" id="description">
                                    	<img src="resources/images/product/${product.img_description}">
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="option">
                                        <img src="resources/images/product/${product.img_option}">
                                    </div>
                                    <div role="tabpanel" class="tab-pane qnaAjax" id="qna">
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
												
												<c:forEach var="q" items="${qnaList}" varStatus="status">
													<tr class="xans-record-">
															<c:set var="qnaNumber" value="${count - (paging.page-1)*paging.length - status.index}"/>
														    <td>${qnaNumber}</td>
								                            <td class="subject"><a href="qnadetail?qna_no=${q.qna_no}&prd_group=${product_group}&page=${paging.page}&qnaNumber=${qnaNumber}">${q.qna_title}</a></td>
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
							                                    <li><a href="javascript:currentBlock(${paging.startPage-1}, ${product.prd_group})"><i class="zmdi zmdi-chevron-left"></i></a></li>
							                                    </c:if>
							                                    <c:forEach var="pageNum" begin="${paging.startPage}" end="${paging.endPage}" varStatus="status">
						                                    	<li id="page-elements${status.count}" class="active-pagebutton"><a id="page-element${status.count}" class="page-element" href="javascript:pageLoad(${product.prd_group},${pageNum});">${pageNum}</a></li>
						                                    	</c:forEach>
						                                    	<c:if test="${paging.currentBlock != paging.totalBlock }">
							                                    <li><a href="javascript:currentBlock(${paging.endPage+1}, ${product.prd_group})"><i class="zmdi zmdi-chevron-right"></i></a></li>
							                                    </c:if>
							                                </ul>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<a href="qnawrite?prd_group=${product.prd_group}&page=${paging.page}"><input type="button" value="문의하기" style="float: right; width: 80px; margin-top: 20px;"></a>
	                                 
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Of Shop Full Grid View -->
            <!-- Start Related Product Area -->
        
            <!-- End Of Related Product Area -->

            <!-- Start Brand Area -->
            <!-- End Of Brand Area -->
            <!-- Start Newsletter Area -->
            
            <!-- End Of Newsletter Area -->
        </section>
        <!-- End page content -->
        <!-- Start footer area -->
        <%@include file="inc/footer.jsp"%>
        <!-- End footer area -->
    </div>
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
    <script src="resources/js/detail.js"></script>
	
</body>

</html>