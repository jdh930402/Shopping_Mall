<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>메인 - 대경에프앤씨</title>
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
    
    <style type="text/css">
    .header-top-down{
    	margin-top: -20px;
    }
    </style>
    
</head>
	<body>
        <header>
            <div class="header-top-bar white-bg ptb-20">
                <div class="container">
                    <div class="row">
                      <div class="col-sm-4">
                            <div class="header-top"> </div>
                      </div>
                        <div class="col-sm-4">
                            <div class="header-logo text-center">
                                <a href="index">
                                    <img alt="" src="./resources/images/logo/logo.jpg" style="width: auto;">
                              </a>
                          </div>
                      </div>
                        <div class="col-sm-4">
                            <div class="header-top header-top-right">
                                <ul>
                                	<!-- 로그인 한 경우 -->
                                	<c:if test="${id != null}">
                                    <li class="lh-50">
                                        <a href="mypage" class="pr-20 text-uppercase">${id}</a>
                                        <div class="header-top-down header-top-hover pl-15 lh-35">
                                            <ul>
                                                <li><a href="mypage">마이페이지</a></li>
                                                <li><a href="order">주문내역</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="lh-50">
                                        <a href="logout" class="prl-20 text-uppercase">로그아웃</a>
                                    </li>
                                    <li class="cart-link lh-50">
                                        <a href="cart" class="pl-20">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </a>
                                    </li>
                                   	</c:if>
                                   	
                                   	<!-- 로그인 안한 경우 -->
                                   	<c:if test="${id == null}">
                                    <li class="lh-50">
                                        <a href="login" class="pr-20 text-uppercase">로그인</a>
                                    </li>
                                    <li class="lh-50">
                                        <a href="login" class="prl-20 text-uppercase">회원가입</a>
                                    </li>
                                   	</c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 메뉴바 -->
            <div id="sticky-header" class="header-area header-wrapper transparent-header">
                <div class="header-middle-area black-bg">
                    <div class="container">
                        <div class="full-width-mega-dropdown">
                            <div class="row">
                                <div class="col-md-12">
                                    <nav id="primary-menu">
                                        <ul class="main-menu text-center">
                                            <li><a href="company">COMPANY</a></li>
                                            <li><a href="notice">NOTICE</a></li>			
                                            <li><a href="chamude">CHAMUDE</a></li>
                                            <li><a href="suede">SUEDE</a></li>
											<li><a href="pu">PU LEATHER</a></li>
                                            <li><a href="tassel">CHAMUDE TASSEL</a></li>           
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 모바일 환경 -->
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="mobile-menu">
                                <nav id="dropdown">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="shop-full.html">men</a></li>
                                            <li><a href="blog.html">Blog</a>
                                                <ul class="dropdown header-top-hover ptb-10">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="my-account">my Acoount</a></li>
                                            <li><a href="login.html">Register</a></li>
                                            <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>      
            <!-- Mobile Menu End -->            
        </header>
</body>
</html>