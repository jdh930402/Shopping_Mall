<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>로그인- 대경에프앤씨</title>
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
            <!-- Start Wishlist Area -->
            <div class="login-section section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="registered-customers">
                                <div class="section-title text-uppercase mb-40">
                                    <h4>Login</h4>
                                </div>
                                <form action="login" method="post">
                                    <div class="login-account p-30 box-shadow">
                                        <input type="text" placeholder="ID" name="user_id">
                                        <input type="password" placeholder="Password" name="user_pwd">
                                        <p><small><a href="#">Forgot our password?</a></small></p>
                                        <button type="submit" class="submit-btn">login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="registered-customers">
                                <div class="section-title text-uppercase mb-40">
                                    <h4>Register</h4>
                                </div>
                                <form action="insertMember" name="frm" method="post">
                                    <div class="login-account p-30 box-shadow">
		                                        <div class="row">
		                                        	<div class="col-sm-12">
			                                            <input id="id" type="text" name="user_id" placeholder="아이디">
			                                            <p id="idMessage" class="MessageBox"></p>
		                                            </div>
		                                            
		                                            <div class="col-sm-12">
				                                        <input id="pwd" type="password" name="user_pwd" placeholder="비밀번호">
				                                        <p id = "pwdMessage" class="MessageBox"></p>
			                                        </div>
			                                        
			                                        <div class="col-sm-12">
				                                        <input id="repwd" type="password" placeholder="비밀번호 확인">
				                                        <p id="repwdMessage" class="MessageBox"></p>
			                                        </div>
			                                        
			                                        <div class="col-sm-12"> 
				                                        <input id="name" type="text" name="user_name" placeholder="이름">
				                                        <p id="nameMessage" class="MessageBox"></p>
			                                        </div>
			                                        
			                                        <div class="col-sm-12"> 
			                                        <input id="email" type="text" name="user_email" placeholder="이메일">
			                                        <p id="emailMessage" class="MessageBox"></p>
			                                        </div> 

			                                        <div class="col-sm-12"> 
				                                          <input id="zipcode" name="user_zipcode" type="text" value="" placeholder="우편번호" readonly="readonly">
			                                        </div>
			                                        
			                                        <div class="col-sm-12"> 
				                                        <input id="loc" type="text" name="user_loc" placeholder="기본주소" readonly="readonly">
			                                        </div>
			                                        
			                                        <div class="col-sm-12"> 
				                                        <input id="detail-loc" name="user_loc_detail" type="text" placeholder="상세주소">
				                                        <p id="detail-loc-Message" class="MessageBox"></p>    
			                                        </div>
			                                        <div class="col-sm-12"> 
				                                        <input id="tel" type="text" name="user_tel" placeholder="일반전화 (휴대전화)">
				                                        <p id="telMessage" class="MessageBox"></p>  
			                                        </div>  
			                                        
			                                        
			                                        <div class="col-sm-12">
			                                        <input id="utilizer" type="text" name="user_utilizer" placeholder="사용처(의류,신발,가방,악세서리,가구,기타)">
			                                        <p id="utilizerMessage" class="MessageBox"></p>
			                                        </div> 
		                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button id="btnRegister" value="register" type="submit" class="submit-btn mt-20">회원가입</button>
                                            </div>
                                            <div class="col-md-6">
                                                <button type="reset" class="submit-btn mt-20">지우기</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Of Wishlist Area -->

        </section>
        <!-- End page content -->
        <!-- Start footer area -->
        <%@include file="inc/footer.jsp"%>
        <!-- End footer area -->
    </div>
    <!-- Body main wrapper end -->


    <!-- Placed js at the end of the document so the pages load faster -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- jquery latest version -->
    <script src="resources/js/vendor/jquery-3.1.1.min.js"></script>
    <!-- jquery latest version -->
    <!-- Bootstrap framework js -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="resources/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="resources/js/main.js"></script>
    <!-- Customer js -->
    <script type="text/javascript"  src="resources/js/register.js"></script>
    <script src="resources/js/zipcode.js"></script>
	<script type="text/javascript">
		jQuery('#zipcode').on('focus',zipcode);
	</script>

</body>
</html>
