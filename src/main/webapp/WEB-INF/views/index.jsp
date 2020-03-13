<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>메인 - 대경에프앤씨</title>
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
	.product-list-tab{
		margin-top: 50px;
	}
	</style>
</head>

<body>
    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start of header area -->
        <%@include file="inc/header.jsp" %>
        <!-- End of header area -->
        
        <!-- Start of slider area -->
        <div class="slider-area">
            <div id="ensign-nivoslider" class="slides">   
                <a href=""><img src="resources/images/slider/slider1.png" alt="" title="#htmlcaption1"/></a>
                <img src="resources/images/slider/slider2.png" alt="" title="#htmlcaption2"/>
                <img src="resources/images/slider/slider3.png" alt="" title="#htmlcaption3"/>
                <img src="resources/images/slider/slider4.png" alt="" title="#htmlcaption4"/>
            </div>
            <!-- direction 1 -->
            <div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
                <div class="container slider-height">
                    <a href="chamude"><div class="row slider-height">
                        <div class="col-md-offset-5 col-md-7 slider-height">
                           
                        </div>
					</div></a>
                </div>  
            </div>
            <!-- direction 2 -->
            <div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
                <div class="container slider-height">
                    <a href="suede"><div class="row slider-height">
                        <div class="col-md-offset-5 col-md-7 slider-height">
                        </div>
                    </div></a>
                </div>  
            </div>
			    <!-- direction 3 -->
            <div id="htmlcaption3" class="nivo-html-caption slider-caption-3">
                <div class="container slider-height">
                     <a href="pu"><div class="row slider-height">
                        <div class="col-md-offset-5 col-md-7 slider-height">
                        </div>
                    </div></a>
                </div>  
            </div>
			    <!-- direction 4 -->
            <div id="htmlcaption4" class="nivo-html-caption slider-caption-4">
                <div class="container slider-height">
                    <a href="tassel"><div class="row slider-height">
                        <div class="col-md-offset-5 col-md-7 slider-height">
                        </div>
                    </div></a>
                </div>  
            </div>
        </div>     
        <!-- End of slider area -->
        
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">
    
			
            <!-- Start Product List -->
          <div class="product-list-tab pb-90">
              <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="tab-menu section-title section-title  mb-30">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">          
                                    <li role="presentation" class="first-item active">
                                        <a href="#arrival" aria-controls="arrival" role="tab" data-toggle="tab">Chamude</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#sale" aria-controls="sale" role="tab" data-toggle="tab">Suede</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#featured" aria-controls="featured" role="tab" data-toggle="tab">Pu Leather</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#tassel" aria-controls="tassel" role="tab" data-toggle="tab">Chamude Tassel</a>
                                    </li>
                                </ul>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="product-list tab-content">
                            
							<!-- NEW ARRIVAL 구간 시작-->
                            <div role="tabpanel" class="tab-pane fade in active" id="arrival">
								
								<c:forEach var="chamude" items="${chamudeList}">
								<!-- NEW ARRIVAL 1개 시작위치( 아이템 4개까지만 사용 가능 ) for문 이용-->
                                <div class="col-md-3 col-sm-4">
                                    <div class="single-product mb-40">
                                        <div class="product-img-content mb-20">
                                            <div class="product-img">
                                                <a href="detail?prd_group=${chamude.prd_group}&page=1">
                                                    <img src="resources/images/product/${chamude.img_header}" alt="">
                                                </a>
                                            </div>
                                            <div class="product-action text-center">
                                                
                                                <a href="insertcart?prd_no=${chamude.prd_no}&cart_quantity=1" title="Add to cart">
                                                    <i class="zmdi zmdi-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center text-uppercase">
                                            <a href="detail?prd_group=${chamude.prd_group}&page=1" title="Ripcurl Furry Fleece">${chamude.prd_name}(${chamude.prd_num})</a>
                                            <div class="rating-icon">
                                                <span>판매단위 : ${chamude.prd_msr}</span>
                                            </div>
                                            <div class="rating-icon">
                                                <span>1롤 기본 수량 : ${chamude.prd_quantity}</span>
                                            </div>
                                            
                                            <div class="product-price">
                                                <span class="new-price"><fmt:formatNumber value="${chamude.prd_price}" pattern="#,###"/> 원</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
							<!-- NEW ARRIVAL 1개 위치 끝 -->	
                        
                            </div>
                        <!--  NEW ARRIVAL 1개 구간 끝 -->
                                                   
                                                        
                        <!--  NEW ARRIVAL 1개 구간 시작 -->
                            <div role="tabpanel" class="tab-pane fade" id="sale">
                            
                            <c:forEach var="suede" items="${suedeList}">
                            <!-- BEST SELES 1개 위치 시작 for문 이용 -->
                                <div class="col-md-3 col-sm-4">
                                    <div class="single-product mb-40">
                                        <div class="product-img-content mb-20">
                                            <div class="product-img">
                                                <a href="detail?prd_group=${suede.prd_group}&page=1">
                                                    <img src="resources/images/product/${suede.img_header}" alt="">
                                                </a>
                                            </div>
											<div class="product-action text-center">
					                 
					                        <a href="insertcart?prd_no=${suede.prd_no}&cart_quantity=1" title="Add to cart">
					                            <i class="zmdi zmdi-shopping-cart"></i>
					                        </a>
		                      				</div>
	                                 	</div>
                                        <div class="product-content text-center text-uppercase">
                                            <a href="detail?prd_group=${suede.prd_group}&page=1" title="Slim Shirt With Stretch">${suede.prd_name}(${suede.prd_num})</a>
                                            <div class="rating-icon">
                                                <span>판매단위 : ${suede.prd_msr}</span>
                                            </div>
                                            <div class="rating-icon">
                                                <span>1롤 기본 수량 : ${suede.prd_quantity}</span>
                                            </div>
                                            <div class="product-price">
                                                <span class="new-price"><fmt:formatNumber value="${suede.prd_price}" pattern="#,###"/> 원</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product"> </div>
                                </div>
                                <!-- BEST SELES 아이템 1개 위치 끝-->
                                </c:forEach>
                            
                            </div>
                            <!-- BEST SELES 구간 끝 -->
                            
                            <!-- MOST WANTED 구간 시작 -->                            	
                            <div role="tabpanel" class="tab-pane fade" id="featured">
                            	<c:forEach var="pu" items="${puList}">
                            	<!-- MOST WANTED 아이템 1개 시작 for문 이용-->
    							  <div class="col-md-3 col-sm-4">
                                    <div class="single-product mb-40">
                                        <div class="product-img-content mb-20">
                                            <div class="product-img">
                                                <a href="detail?prd_group=${pu.prd_group}&page=1">
                                                    <img src="resources/images/product/${pu.img_header}" alt="">
                                                </a>
                                            </div>
											<div class="product-action text-center">
					                 
					                        <a href="insertcart?prd_no=${pu.prd_no}&cart_quantity=1" title="Add to cart">
					                            <i class="zmdi zmdi-shopping-cart"></i>
					                        </a>
		                      				</div>
	                                 	</div>
                                        <div class="product-content text-center text-uppercase">
                                            <a href="detail?prd_group=${pu.prd_group}&page=1" title="Slim Shirt With Stretch">${pu.prd_name}(${pu.prd_num})</a>
                                            <div class="rating-icon">
                                                <span>판매단위 : ${pu.prd_msr}</span>
                                            </div>
                                            <div class="rating-icon">
                                                <span>1롤 기본 수량 : ${pu.prd_quantity}</span>
                                            </div>
                                            <div class="product-price">
                                                <span class="new-price"><fmt:formatNumber value="${pu.prd_price}" pattern="#,###"/> 원</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product"> </div>
                                </div>
                                <!-- MOST WANTED 아이템 1개 끝 -->
                                </c:forEach>
                            </div>
                            <!-- MOST WANTED 구간 끝 -->
                            
                              <!-- MOST WANTED 구간 시작 -->                            	
                            <div role="tabpanel" class="tab-pane fade" id="tassel">
                            	<c:forEach var="tassel" items="${tasselList}">
                            	<!-- MOST WANTED 아이템 1개 시작 for문 이용-->
    							  <div class="col-md-3 col-sm-4">
                                    <div class="single-product mb-40">
                                        <div class="product-img-content mb-20">
                                            <div class="product-img">
                                                <a href="detail?prd_group=${tassel.prd_group}&page=1">
                                                    <img src="resources/images/product/${tassel.img_header}" alt="">
                                                </a>
                                            </div>
											<div class="product-action text-center">
					                 
					                        <a href="insertcart?prd_no=${tassel.prd_no}&cart_quantity=1" title="Add to cart">
					                            <i class="zmdi zmdi-shopping-cart"></i>
					                        </a>
		                      				</div>
	                                 	</div>
                                        <div class="product-content text-center text-uppercase">
                                            <a href="detail?prd_group=${tassel.prd_group}&page=1" title="Slim Shirt With Stretch">${tassel.prd_name}(${tassel.prd_num})</a>
                                            <div class="rating-icon">
                                                <span>판매단위 : ${tassel.prd_msr}</span>
                                            </div>
                                            <div class="rating-icon">
                                                <span>1롤 기본 수량 : ${tassel.prd_quantity}</span>
                                            </div>
                                            <div class="product-price">
                                                <span class="new-price"><fmt:formatNumber value="${tassel.prd_price}" pattern="#,###"/> 원</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product"> </div>
                                </div>
                                <!-- MOST WANTED 아이템 1개 끝 -->
                                </c:forEach>
                            </div>
                            <!-- MOST WANTED 구간 끝 -->
                        </div>
                    </div>
             	 </div>
            </div>
            
            <!-- Start Newsletter Area -->
            <div class="newsletter-area">
                <div class="container">
                    <div class="row"> </div>
                </div>
          </div>
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
    <!-- Particles js -->
    <script src="resources/js/particles.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="resources/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="resources/js/main.js"></script>  
</body>
</html>