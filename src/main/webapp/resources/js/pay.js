//const cancelpay = function(count, pay_deli, pay_no, count) {
//	if (pay_deli < 10) {
//		if (confirm('구매를 취소하겠습니까?')) {
//			location.href = 'cancelpay?pay_deli=' + pay_deli + '&pay_no=' + pay_no;
//		}
//	}
//}

const cancelpay = function(getPay_no, getDelivery_num) {
	const pay_no = jQuery(getPay_no).val();
	const delivery_num = jQuery(getDelivery_num).val();
	
	jQuery('#pay_no').val(pay_no);
};

const paySubmit = function(event) {
	event.preventDefault();
	var pay_no = jQuery('#pay_no').val();
	location.href = 'cancelpay?pay_no=' + pay_no;
}