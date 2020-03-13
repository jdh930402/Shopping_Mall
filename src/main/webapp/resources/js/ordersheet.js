// ordersheet
$(document).ready(function(){
	
	// 결제 버튼을 누른 경우
	$('#orderBtn').on('click',function(event){
		event.preventDefault();
		frm.action = "pay";
		frm.method = "post";	
		frm.submit();
		
	});
	
	
	// 이름 유효성 검사
	$('#name').on('focusout', function(){
		if( $.trim($('#name').val()).length == 0){
			$('#name').addClass('is-invalid');
			$('#nameMessage').html("<span class = 'text-danger'>필수 정보입니다.</span>");
		}
	});
	
});