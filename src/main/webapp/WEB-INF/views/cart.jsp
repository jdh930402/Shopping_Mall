	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>카트 - 대경에프앤씨</title>
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
    .empty-cart{
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
	                <h3>장바구니</h3>
	                <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="wishlist-content">
                                    <div class="wishlist-table table-responsive p-30 text-uppercase">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th class="product-thumbnail"></th>
                                                    <th class="product-name"><span class="nobr"> 상품정보</span></th>
                                                    <th class="product-prices"><span class="nobr"> 상품금액</span></th>
                                                    <th class="product-stock-stauts"><span class="nobr"> 상품수량</span></th>
                                                    <th class="product-remove"><span class="nobr">상품제거</span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <!-- 만약 카트리스트의 크기가 0일 경우 -->
                                            <c:set var="cartLength" value="${fn:length(cartList)}"/>
                                            <c:choose>
                                            	<c:when test="${cartLength == 0}">
                                            		<tr class="empty-cart">
                                            			<td colspan="5"> <span>장바구니에 물품이 없습니다.</span></td>
                                            		</tr>
                                            	</c:when>
                                            </c:choose>
                                            	<!-- 쇼핑몰 카트 아이템 1개 for문으로 돌려쓰기 -->
                                            	<c:forEach var="cart" items="${cartList}">
                                            	<c:set var="i" value="${1+i}"/>
                                                <tr>
                                                    <td class="product-thumbnail"><a href="detail?prd_group=${cart.prd_group}" title="${cart.prd_name}(${cart.prd_num})"><img src="resources/images/wishlist/${cart.img_header}" alt="" /></a></td>
                                                    <td class="product-name pull-left mt-20">
                                                        <a id="prd_name" href="detail?prd_group=${cart.prd_group}" title="${cart.prd_name}(${cart.prd_num})">${cart.prd_name}<span>(</span>${cart.prd_num}<span>)</span></a>
                                                        <p class="w-color m-0">
                                                            <label>판매단위</label>
                                                            ${cart.prd_msr}
                                                        </p>
                                                        <p class="w-size m-0">
                                                            <label>1롤 기본 수량</label>
                                                            ${cart.prd_quantity}
                                                        </p>
                                                    </td>
                                                    <td class="product-prices"><span class="amount">${cart.prd_price}원</span></td>
                                                    <td class="product-value">
                                                        <input min="1" step="1" id="cart_quantity-${i}" class="cart_quantity" type="number" name="cart_quantity-${i}" value="${cart.cart_quantity}">
	                                                    <input id="prd_no${i}" type="hidden" name="prd_num" value="${cart.prd_no}" >
                                                    </td>
                                                    <td class="product-remove"><a href="deletecart?cart_no=${cart.cart_no}">×</a></td>
                                                </tr>
                                                </c:forEach>
      											<!-- 쇼핑몰 카트 아이템 1개 끝위치 -->
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="cart-requerment mt-50 clearfix">
                                            <div class="col-md-4 col-sm-6 clearfix">
                                                <div class="cart-title text-uppercase">   
                                                </div>
                                                <div class="shopping-tax">
                                                    <div class="row">  
                                                    </div>
                                                </div>
                                            </div> 
                                            <div class="col-md-4 col-sm-6 clearfix">
                                                
                                            </div> 
                                            <div class="col-md-offset-0 col-md-4 col-sm-offset-3 col-sm-6 clearfix">
                                                <div class="counpon-total ml-35">
                                                    <table>
                                                    	<thead>
                                                    		<th colspan="2"><h5 class="mb-30"><strong>결제 금액 정보</strong></h5></th>
                                                    	</thead>
                                                        <tbody>
                                                        	<c:forEach var="cart" items="${cartList}">
                                                        	<c:set var="j" value="${1+j}"/>
                                                        	 <tr class="cart-subtotal">
                                                                <th>상품</th>
                                                                <td>${cart.prd_name}<span>(</span>${cart.prd_num}<span>)</span></a></td>
                                                            </tr>
                                                            <tr class="cart-subtotal">
                                                                <th>상품 금액</th>
                                                                <td><span id="sumPrice${j}">${cart.prd_price*cart.cart_quantity}</span>원</td>
                                                            </tr>
                                                            <c:set var="totalPrice" value="${totalPrice + cart.prd_price * cart.cart_quantity}"/>
                                                            </c:forEach>
                                                            <tr class="cart-shipping">
                                                                <th>배송비</th>
                                                                <td>Free Shipping</td>
                                                            </tr>
                                                            <tr class="cart-total">
                                                                <th>결제 금액</th>
                                                                <td><span id="totalPrice">${totalPrice}<c:choose><c:when test="${cartLength == 0}">0</c:when></c:choose></span> 원</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <c:choose><c:when test="${cartLength != 0}">
	                                                    <a class="button extra-small pull-right" href="ordersheet" title="주문하기">
	                                                        <span>주문하기</span>
	                                                    </a>                                                     
                                                    </c:when></c:choose>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </div>  
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
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
	<script type="text/javascript">
    jQuery(document).ready(function(){
    	
    	var cartList='<c:out value="${cartLength}"/>'
    	var oriSumPrice;
    	
    	jQuery('.cart_quantity').on('focusout',function(){
    		var name = jQuery(this).attr('name');
    		var num = parseInt(name.substring(name.lastIndexOf("-")+1));
    		var i=1
    		for(i=1 ; i<= cartList ; i++){
	    		if(num == i){
	    			i = num;
	    			break;
	    		}
    		}
		    oriSumPrice = jQuery('#sumPrice'+i).text();
    	});
    	
    	jQuery('.cart_quantity').on('focusout',function(){
    		var id = jQuery(this).attr('id');
    		var num = parseInt(id.substring(id.lastIndexOf("-")+1));
    		var i=1
    		for(i=1 ; i<= cartList ; i++){
	    		if(num == i){
	    			i = num;
	    			break;
	    		}
    		}
    		
    		var cart_quantity = jQuery('#cart_quantity-'+i).val();
    		var prd_no = jQuery('#prd_no'+i).val();
    		jQuery.ajax({
    			type : 'GET',
    			url : 'updatecart?prd_num=' + prd_no + '&cart_quantity=' + cart_quantity,
    			dataType : 'json',
    			error : function(){
    			},
    			success : function(data){
    				var sumPrice = data.prd_price * cart_quantity;
    				var totalPrice = parseInt(jQuery('#totalPrice').text()) + (sumPrice - oriSumPrice) ;
    				jQuery('#sumPrice'+i).text(sumPrice);
    				jQuery('#totalPrice').text(totalPrice);
    			}	
    		});			
    	});
    	
    	
    	jQuery('.cart_quantity').on('click',function(){
    		var name = jQuery(this).attr('name');
    		var num = parseInt(name.substring(name.lastIndexOf("-")+1));
    		var i=1
    		for(i=1 ; i<= cartList ; i++){
	    		if(num == i){
	    			i = num;
	    			break;
	    		}
    		}
		    oriSumPrice = jQuery('#sumPrice'+i).text();
    	});
    	
    	jQuery('.cart_quantity').on('click',function(){
    		var id = jQuery(this).attr('id');
    		var num = parseInt(id.substring(id.lastIndexOf("-")+1));
    		var i=1
    		for(i=1 ; i<= cartList ; i++){
	    		if(num == i){
	    			i = num;
	    			break;
	    		}
    		}
    		
    		var cart_quantity = jQuery('#cart_quantity-'+i).val();
    		var prd_no = jQuery('#prd_no'+i).val();
    		jQuery.ajax({
    			type : 'GET',
    			url : 'updatecart?prd_num=' + prd_no + '&cart_quantity=' + cart_quantity,
    			dataType : 'json',
    			error : function(){
    			},
    			success : function(data){
    				var sumPrice = data.prd_price * cart_quantity;
    				var totalPrice = parseInt(jQuery('#totalPrice').text()) + (sumPrice - oriSumPrice) ;
    				jQuery('#sumPrice'+i).text(sumPrice);
    				jQuery('#totalPrice').text(totalPrice);
    			}	
    		});			
    	});
    });

	</script>
    
</body>

</html>