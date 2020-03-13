$(document).ready(function() {
	$('#insertCart').on('click', function(event) {
		frm.submit();
	});
});

$(window).on('popstate', function() {
	let url = location.search;
	let page = new URLSearchParams(url).get("page");
	let prd_group = new URLSearchParams(url).get("prd_group");
	$.ajax({
		type : 'GET',
		dataType : 'html',
		url : 'qnaAjax?prd_group=' + prd_group + '&page=' + page,
		error : function() {
			alter('페이지 에러');
		},
		success : function(html) {
			$('.qnaAjax').children().remove();
			$('.qnaAjax').html(html);
		}
	});
});

const pageLoad = function(prd_group, page) {
	let url = 'http://localhost:8080/shop/detail?prd_group=' + prd_group
			+ '&page=' + page;
	history.pushState(null, null, url);
	$.ajax({
		type : 'GET',
		url : 'qnaAjax?prd_group=' + prd_group + '&page=' + page,
		dataType : 'html',
		success : function(html) {
			$('.qnaAjax').children().remove();
			$('.qnaAjax').html(html);
		},
		error : function() {

		}
	});
}