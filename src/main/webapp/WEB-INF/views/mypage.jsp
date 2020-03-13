<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>마이 페이지 - 대경에프앤씨</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/favicon.ico">

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
	<!-- popup -->
		<c:set var="p" value="${mydata}"></c:set>
    	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLongTitle">회원탈퇴 요청</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			      	회원탈퇴를 하시겠습니까?
			      </div>
			      <div class="modal-footer">
				      	<input type="hidden" name="user_id" value="${p.user_id}" > 
				        <button type="button" class="btn btn-primary" id="btnOk">네</button>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">아니요</button>
			      </div>
			    </div>
			  </div>
			</div>	
	
	
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
			<div class="my-account-page section-padding">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="procced-checkout">
								<h4 class="procced-title text-uppercase pb-15 mb-20">
									<strong>마이 페이지</strong>
								</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="addresses-lists">
							<div class="col-xs-4 col-sm-6 col-lg-12">
								<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
											<div class="panel-body">
												<div class="coupon-info">
													<h6 class="procced-title text-uppercase pb-15 mb-20">내 정보</h6>
														<form action="#" name="frm" method="post">
															<p class="form-row">
																<label for="id"><span class="required">*</span> 아이디</label> 
																<input id="id" name="user_id" type="text" value="${p.user_id}" readonly="readonly">
				                                       			<span id="idMessage" class="MessageBox"></span>
															</p>
															<p class="form-row">
																<label for="pwd"><span class="required">*</span> 비밀번호</label> 
																<input id="pwd" name="user_pwd" type="password" value="${p.user_pwd}" >
				                                       			<span id="pwdMessage" class="MessageBox"></span>
															</p>
															<p class="form-row">
																<label for="repwd"><span class="required">*</span> 비밀번호 확인</label> 
																<input id="repwd" type="password" value="${p.user_pwd}" >
				                                       			<span id = "repwdMessage" class="MessageBox"></span>
															</p>
															<p class="form-row">
																<label for="user_name"><span class="required">*</span> 이름</label> 
																<input id="name" name="user_name" type="text" value="${p.user_name}" >
				                                       			<span id="nameMessage" class="MessageBox"></span>
															</p>
															<p class="form-row">
																<label for="email"><span class="required">*</span> 이메일</label>
																<input id="email" name="user_email" type="text" value="${p.user_email}">
																<span id="emailMessage" class="MessageBox"></span>
															</p>
															
															<p class="form-row">
																<label for="zipcode"><span class="required">*</span>우편번호</label> 
																<input id="zipcode" name="user_zipcode" type="text" value="${p.user_zipcode}" readonly="readonly" >
																<span id="zipcodeMessage" class="MessageBox"></span>
															</p>
															
															<p class="form-row">
															<label for="loc"><span class="required">*</span>기본주소</label> 
															<input id="loc" name="user_loc" type="text" value="${p.user_loc}" readonly="readonly">
															<span id="locMessage" class="MessageBox"></span>
															</p>
															
															<p class="form-row">
															<label for="detail-loc"><span class="required">*</span>상세주소</label> 
															<input id="detail-loc" name="user_loc_detail" type="text" value="${p.user_loc_detail}" >
															<span id="detail-loc-Message" class="MessageBox"></span>    
															</p>

															<p class="form-row">
															<label for="tel"><span class="required">*</span>일반전화 (휴대전화)</label> 
															<input id="tel" name="user_tel" type="text" value="${p.user_tel}" >
															<span id="telMessage" class="MessageBox"></span> 
															</p>

															<p class="form-row">
															<label for="utilizer"><span class="required">*</span>사용처</label> 
															<input id="utilizer" name="user_utilizer" type="text" value="${p.user_utilizer}">
															<span id="utilizerMessage" class="MessageBox"></span>
															</p>

															<a id="saveBtn" href="saveMember" class="button extra-small"">
																<span>회원수정</span>
															</a>
															<a id="deleteBtn" href="#exampleModalLong" class="button extra-small" data-toggle="modal">
																<span>회원탈퇴</span>
															</a>
														</form>
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
		<%@include file="inc/footer.jsp"%>
		<!-- End footer area -->
	</div>
	<!-- Body main wrapper end -->


	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- jquery latest version -->
	<script src="resources/js/vendor/jquery-3.1.1.min.js"></script>
	<!-- Bootstrap framework js -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- All js plugins included in this file. -->
	<script src="resources/js/plugins.js"></script>
	<!-- Main js file that contents all jQuery plugins activation. -->
	<script src="resources/js/main.js"></script>
	<script src="resources/js/mypage.js"></script>
	<script src="resources/js/zipcode.js"></script>
	<script type="text/javascript">
		jQuery('#zipcode').on('focus',zipcode);
	</script>

</body>

</html>