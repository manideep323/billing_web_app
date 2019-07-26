

/*function setProductValues(value){
	console.log("hi");
	var val = JSON.parse(value);
	console.log(value)
	
$('#product-description').val(val["brand"]);
$('#hsn_code').val(val["hsncode"]);
$('#unit').text(val["unit"]);
$('#class_type').text(val["class"]);
$('#division').text(val["division"]);
} 


*/

function setVehicleValues(value){
	var val = JSON.parse(value);
	$('#vehicleNo').val(val["vehicle"])
} 
function setCustomerValues(value){
	var val = JSON.parse(value);
	$('#shippingAddress').val(val["shippingAddress"])
	$('#billingAddress').val(val["billingAddress"])
	$('.custName').val(val["custName"])
	$('.licNo').val(val["licNo"])
	$('.gstNo').val(val["gstNo"])
	$('.tinNo').val(val["tinNo"])
	$('.stateCode').val(val["stateCode"])
	
	
}	
	