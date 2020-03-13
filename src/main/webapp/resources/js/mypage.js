$(document).ready(function(){
	var pwdSuccess = 0;
	var repwdSuccess = 0;
	var nameSuccess = 1;
	var emailSuccess = 1;
	var zipcodeSuccess = 1;
	var telSuccess = 1;
	var utilizerSuccess = 1;
     
	// 비밀번호 유효성 검사
	$('#pwd').on('focusout',function(){
		if( ($('#pwd').val().length < 8 ||  $('#pwd').val().length > 16) && $('#pwd').val().length != 0 ){
			$('#pwdMessage').html("<span class = 'text-danger'>비밀번호는 8~16자만 가능합니다.</span>");
			$('#repwd').addClass('is-invalid');
		} else if($('#pwd').val().length >= 8 && $('#pwd').val().length <= 16){
			$('#pwdMessage').html("");
		}else{
			$('#pwdMessage').html("<span class='text-danger'>필수 정보입니다.</span>");
		}
		pwdSuccess = 1;
	});
	
	$('#pwd').on('keyup',function(){
		if( $('#pwd').val().length != 0 ){
			$('#repwd').removeClass('is-invalid');
			$('#pwdMessage').html("");
		}
	});
	
	// 비밀번호 확인 유효성 검사
	$('#repwd').on('focusout',function(){
		if( $('#pwd').val() != $('#repwd').val() && $('#repwd').val().length != 0 ){
			$('#repwd').addClass('is-invalid');
			$('#repwdMessage').html("<span class='text-danger'>비밀번호가 일치하지 않습니다.</span>");
		} else if($('#repwd').val().length == 0){
			$('#repwdMessage').html("<span class='text-danger'>필수 정보입니다.</span>");       			
		}
		repwdSuccess = 1;
	});
	
	$('#repwd').on('keyup',function(){
		if( $('#repwd').val().length != 0 ){
			$('#repwd').removeClass('is-invalid');
			$('#repwdMessage').html("");
		}
	});
	
	// 이름 유효성 검사
	$('#name').on('focusout', function(){
		if( $.trim($('#name').val()).length == 0){
			$('#name').addClass('is-invalid');
			$('#nameMessage').html("<span class = 'text-danger'>필수 정보입니다.</span>");
			nameSuccess = 0;
		}
	});
	
	$('#name').on('keydown', function(){
		$('#name').removeClass('is-invalid');
		$('#nameMessage').html("");
	});
	
	// 이메일 유효성 검사
	let regEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	$('#email').on('focusout', function(){
		if( $.trim($('#email').val()).length == 0 ){
			$('#email').addClass('is-invalid');
			$('#emailMessage').html("<span class = 'text-danger'>필수 정보입니다.</span>");
			emailSuccess = 0;
		}else if(regEmail.test($.trim($('#email').val()))== false && $.trim($('#email').val()).length != 0){
			$('#email').addClass('is-invalid');
			$('#emailMessage').html("<span class = 'text-danger'>올바른 이메일 주소를 입력해주세요.</span>");
			emailSuccess = 0;
		}
	});
	
	$('#email').on('keyup',function(){
		if( $('#email').val().length != 0 ){
			$('#email').removeClass('is-invalid');
			$('#emailMessage').html("");
		}
	});
	
	// 휴대폰 유효성검사
	var regTel = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	$('#tel').on('focusout', function(){
		if( $.trim($('#tel').val()).length == 0 ){
			$('#telMessage').html("<span class = 'text-danger'>필수 정보입니다.</span>");
			telSuccess = 0;
		}else if(regTel.test($.trim($('#tel').val()))== false && $.trim($('#tel').val()).length != 0){
			$('#telMessage').html("<span class = 'text-danger'>올바른 전화번호를 입력해주세요.</span>");
			telSuccess = 0;
		}
	});
	
	$('#detail-loc').on('focusout', function(){
		if($('#detail-loc').val().length == 0 ){
			$('#zipcodeMessage').html("<span class = 'text-danger'>필수 정보입니다.</span>");
			zipcodeSuccess = 0;
		}
	}) 
	
	$('#tel').on('keyup',function(){
		if( $('#tel').val().length != 0 ){
			$('#telMessage').html("");
		}
	});
	
	$('#utilizer').on('focusout',function(){
		if($.trim($('#utilizer').val()).length == 0){
			$('#utilizerMessage').html("<span class = 'text-danger'>필수 정보입니다.</span>");				
			utilizerSuccess = 0;
		} else if( $.trim($('#utilizer').val()).length > 10){
			$('#utilizerMessage').html("<span class = 'text-danger'>10자 이내로 적어주세요.</span>");				
			utilizerSuccess = 0;
		}
	});
	
	$('#utilizer').on('keyup',function(){
		if( $('#utilizer').val().length != 0 ){
			$('#utilizerMessage').html("");
		}
	});
	
    // 회원정보 수정
    $('#saveBtn').on('click', function(event){
        event.preventDefault();
        if(pwdSuccess && repwdSuccess && nameSuccess && emailSuccess && zipcodeSuccess && telSuccess && utilizerSuccess){
        	frm.action = "saveMember";
        	frm.method = "post";
        	frm.submit();
		}
    });
     
    //회원탈퇴
    $('#btnOk').on('click', function(event){
    	event.preventDefault();
    	if(pwdSuccess && repwdSuccess){
    		frm.action = "deleteMember";
    		frm.method = "post";
    		frm.submit()
    		
    	}
    });
});
