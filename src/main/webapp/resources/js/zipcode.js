const zipcode = function(){
	jQuery('#detail-loc').focus();
	new daum.Postcode({
		oncomplete : function(data) {
			jQuery('#zipcode').val(data.zonecode);
			jQuery('#loc').val(data.address);
			jQuery('#detail-loc').val("");
		}
	}).open();
}