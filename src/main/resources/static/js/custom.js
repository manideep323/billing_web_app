
jQuery(document).ready(function($){
	  $('#inputGroupSelect01').on('click',function(){
	    var val = JSON.parse( $(this).val() );
	    debugger
	    console.log(val);
	  });
	});
function setProductValues(value){
	console.log("hi");
	var val = JSON.parse(value);
$('#product-description').val(val["brand"])
	
} 
