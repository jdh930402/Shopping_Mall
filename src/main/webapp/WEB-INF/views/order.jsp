<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>주문내역 - 대경에프앤씨</title>
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
    .empty-order{
    	text-align: center;
    	font-size: 20px;
    }
    </style>

</head>

<body>

    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
    	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLongTitle">구매취소 요청</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			      	정말로 구매를 취소하시겠습니까?
			      </div>
			      <div class="modal-footer">
				      	<input type="hidden" name="pay_no" value="" id="pay_no"> 
				        <button type="button" class="btn btn-primary" id="btnOk">네</button>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">아니요</button>
			      </div>
			    </div>
			  </div>
			</div>	
        <!-- Start of header area -->
        <%@include file="inc/header.jsp" %>
        <!-- End of header area -->
        <!-- Start Breadcrumbs Area -->
		
        <!-- End Of Breadcrumbs Area -->
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">
            <!-- Start Wishlist Area -->
            <div class="wishlist-area section-padding">
                <div class="container">
                <h3>주문내역</h3>
	            <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="wishlist-content">
                                <form action="order" method="post">
                                    <div class="wishlist-table table-responsive p-30 text-uppercase">
                                   
                                        <table id="orderList-table">
                                            <thead>
                                                <tr>
                                                    <th class="product-thumbnail">주문번호</th>
                                                    <th class="product-thumbnail"></th>
                                                    <th class="product-name"><span class="nobr"> 상품정보</span></th>
                                                    <th class="product-prices"><span class="nobr"> 상품금액</span></th>
                                                    <th class="product-stock-stauts"><span class="nobr"> 상품수량</span></th>
                                                    <th class="product-remove"><span class="nobr">배송현황</span></th>
                                                    <th class="product-remove"><span class="nobr">구매취소</span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
	                                           <c:set var="payLength" value="${fn:length(payList)}"/>
	                                           <c:choose>
	                                           	<c:when test="${payLength == 0}">
	                                           		<tr class="empty-order">
	                                           			<td colspan="7"> <span>주문 물품이 없습니다.</span></td>
	                                           		</tr>
	                                           	</c:when>
	                                           </c:choose>
                                            
                                            	<!-- 쇼핑몰 카트 아이템 1개 for문으로 돌려쓰기 -->
                                            	<c:forEach var="pay" items="${payList}" varStatus="status">
                                            		
                                            		<input type="hidden" id="getPay_no${status.index}" value="${pay.pay_no}">
                                            		<input type="hidden" id="delivery_num${status.index}" value="delivery_num${status.index}" disabled="disabled">
	                                                
	                                                <tr>
	                                                <td class="product-name ">
	                                                        <p class="w-size m-0">
	                                                        ${pay.order_num}
	                                                        </p>
	                                                </td>
                                                	<td class="product-thumbnail"><a href="#" title="men’s black t-shirt"><img src="resources/images/wishlist/${pay.img_header}" alt="" /></a></td>
                                                      <td class="product-name pull-left mt-20">
                                                        <a id="prd_name" href="#" title="0.5mm 샤무드(5102)">0.5mm 샤무드<span>(</span>5102<span>)</span></a>
                                                        <p class="w-color m-0">
                                                            <label>판매단위</label>
                                                            1YD
                                                        </p>
                                                        <p class="w-size m-0">
                                                            <label>1롤 기본 수량</label>
                                                            33YD
                                                        </p>
                                                    </td>
                                                    <td class="product-prices"><span class="amount">${pay.prd_price}</span></td>
                                                    <td class="product-prices">
                                                        <span class="amount">${pay.pay_quantity}</span>
                                                    </td>
                                                    <c:choose>
                                                    <c:when test="${pay.pay_deli == 1}">
                                                    	<td  class="product-value"><span id="delivery_num${status.index}">주문접수</span></td>
                                                    </c:when>
                                                    <c:when test="${pay.pay_deli == 2}">
                                                    	<td  class="product-value"><span id="delivery_num${status.index}">결제확인</span></td>
                                                    </c:when>
                                                    <c:when test="${pay.pay_deli == 3}">
                                                    	<td class="product-value"><span id="delivery_num${status.index}">주문통보</span></td>
                                                    </c:when>
                                                    <c:when test="${pay.pay_deli == 4}">
                                                    	<td  class="product-value"><span id="delivery_num${status.index}">발송 준비중</span></td>
                                                    </c:when>
                                                    <c:when test="${pay.pay_deli == 5}">
                                                    	<td  class="product-value"><span id="delivery_num${status.index}">배송중</span></td>
                                                    </c:when>
                                                    <c:when test="${pay.pay_deli == 6}">
                                                    	<td  class="product-value"><span id="delivery_num${status.index}">배송완료</span></td>
                                                    </c:when>
                                                    
                                                    <c:when test="${pay.pay_deli == 10}">
                                                    	<td class="product-value"><span id="delivery_num${status.index}">취소중</span></td>
                                                    </c:when>
                                                    <c:when test="${pay.pay_deli == 11}">
                                                    	<td class="product-value"><span id="delivery_num${status.index}">취소완료</span></td>
                                                    </c:when>
                                                    </c:choose>
                                                    
                                                    <c:if test="${pay.pay_deli >= 1 && pay.pay_deli<=3}">
                                                    <td class="product-remove"><a data-toggle="modal" href="#exampleModalLong" onclick="cancelpay('#getPay_no${status.index}')">x</a><td>
                                                    </c:if>
                                                </tr>
      											</c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
           <!-- 쇼핑몰 카트 아이템 1개 끝위치 -->	
           
           

            <!-- End Of Wishlist Area -->

            <!-- Start Brand Area -->
           
            <!-- End Of Brand Area -->
            <!-- Start Newsletter Area -->
            <!-- End Of Newsletter Area -->
        </section>
        <!-- End page content -->
        <!-- Start footer area -->
        <%@include file="inc/footer.jsp" %>
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
    <script src="resources/js/pay.js"></script>
    <script type="text/javascript">
    	$('#btnOk').on('click', paySubmit);
    </script>
</body>

</html>