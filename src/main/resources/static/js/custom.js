

function setProductValues(value){
	console.log("hi");
	var val = JSON.parse(value);
	
$('#product-description').each(function(ele){
	debugger
	//var prod = $(this).addClass('product-data_'+ele+'');
	
	$(this).val(val["brand"]);
})	

$('#hsn_code').val(val["hsncode"]);
$('#unit').text(val["unit"]);
$('#class_type').text(val["class"]);
$('#division').text(val["division"]);
} 


	

var qty;
console.log(qty)
	$(document).ready( function(){
		$("#qty_id").blur(function(){
			qty = document.getElementById('qty_id').value;
			console.log(qty)
			});
		
	})
	
