<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>결제리스트 - 대경에프앤씨</title>
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
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">

        <!-- Start of header area -->
        <%@include file="inc/header.jsp"%>           
        </header>
        <!-- End of header area -->
 
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">
            <!-- Start checkout Area -->
            <div class="checkout-area section-padding">
                <div class="container">
                    <div class="row">
                        <form name="frm" action="pay" method="post">
	                        <div class="col-md-6">
	                            <div class="billing-details-info azure-bg p-30">
	                                <div class="billing-title text-uppercase mb-30">
	                                    <h5><strong>배송지 정보</strong></h5>
	                                </div>
	                                <p class="form-row pb-20 m-0">
	                                	<label for="name">수령인</label>
	                                    <input id="name" name="pay_name" type="text" value="${user.user_name}" placeholder="수령인을 입력하세요.">
	                                    <span id="nameMessage" class="MessageBox"></span>
	                                </p>
	                                <p class="form-row pb-20 m-0">
	                                	<label for="loc">연락처</label>
	                                    <input id="tel" name="pay_tel" type="text" value="${user.user_tel}" placeholder="배송지명을 입력하세요.">
	                                </p>
	                                <p class="form-row pb-20 m-0">
	                                	<label for="zipcode">배송지 주소(변경시 우편번호 클릭)</label>
	                                    <input id="zipcode" name="pay_zipcode" type="text" value="${user.user_zipcode}" placeholder="우편번호" readonly="readonly">
	                                    <input id="loc" name="pay_loc" type="text" value="${user.user_loc}" placeholder="기본주소" readonly="readonly">
	                                    <input id="detail-loc" name="pay_loc_detail" type="text" value="${user.user_loc_detail}" placeholder="상세주소">
	                                    <span id="locMessage" class="MessageBox"></span>
	                                </p>
	                                <label for="require">배송 메모</label>
	                                <p class="form-row m-0">
	                                    <textarea id="require" name="pay_memo" placeholder="요청사항을 입력하세요."></textarea>
	                                </p>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="order-info azure-bg p-30">
	                                <div class="billing-title text-uppercase mb-15">
	                                    <h5><strong>결제금액</strong></h5>
	                                </div>  
	                                <table>
	                                    <tbody>
	                                    <c:forEach var="cart" items="${cartList}">
	                                        <tr>
	                                            <th>${cart.prd_name}<span>(</span>${cart.prd_num}<span>) ${cart.cart_quantity}개</span></th>
	                                            <td>${cart.prd_price * cart.cart_quantity}원</td>
	                                        </tr>
	                                    <c:set var="prd_num" value="${cart.prd_no}/${cart.prd_no}"></c:set>
	                                    <c:set var="totalPrice" value="${totalPrice + cart.prd_price * cart.cart_quantity}"/>
	                                    </c:forEach>
	                                        <tr class="total">
	                                            <th>총 결제금액</th>
	                                            <td>${totalPrice}원</td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                                <input type="hidden" name="prd_num" value="${prd_num}">
	                                <div class="billing-title text-uppercase mt-40 pb-30">
	                                    <h5><strong>결제방법</strong></h5>
	                                </div>
	                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                                    <div class="panel panel-default">
	                                        <div class="panel-heading" role="tab" id="headingOne">
	                                            <h4 class="panel-title text-uppercase">
	                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	                                                    direct bank transfer
	                                                </a>
	                                            </h4>
	                                        </div>
	                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
	                                            <div class="panel-body">
	                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt ut labore et dolore magna aliqua.
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="panel panel-default">
	                                        <div class="panel-heading" role="tab" id="headingTwo">
	                                            <h4 class="panel-title text-uppercase">
	                                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	                                                    cheque payment
	                                                </a>
	                                            </h4>
	                                        </div>
	                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
	                                            <div class="panel-body">
	                                                Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="panel panel-default">
	                                        <div class="panel-heading" role="tab" id="headingThree">
	                                            <h4 class="panel-title text-uppercase">
	                                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
	                                                    paypal
	                                                </a>
	                                            </h4>
	                                        </div>
	                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
	                                            <div class="panel-body">
	                                                Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <a id="orderBtn" title="결제하기" href="pay" class="button extra-small">
	                                    <span>결제하기</span>
	                                </a>                          
	                            </div>
	                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- End Of checkout Area -->
           
        </section>
        <!-- End page content -->
        <!-- Start footer area -->
        <%@include file="inc/footer.jsp"%>
        <!-- End footer area -->
    </div>
    <!-- Body main wrapper end -->


    <!-- Placed js at the end of the document so the pages load faster -->
	<!-- daum map api -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- jquery latest version -->
    <script src="resources/js/vendor/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="resources/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="resources/js/main.js"></script>
    <script src="resources/js/ordersheet.js"></script>
	<script src="resources/js/zipcode.js"></script>
	<script type="text/javascript">
		jQuery('#zipcode').on('focus',zipcode);
	</script>
</body>

</html>