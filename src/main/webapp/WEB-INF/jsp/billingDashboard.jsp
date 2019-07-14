<%@ include file="common/header.jspf" %>
<html>
<head>
<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.searchText.value;  
var url="searchProductCode?searchText="+v;  
console.log("ur");
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
console.log("request is");
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
console.log("active x object");
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
console.log("after send");
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
console.log("hi");
if(request.readyState==4){  
	console.log("gi");
var val=request.responseText;  
console.log(val)
document.getElementById('amit').innerHTML=val;  
}  
}  
  
</script>  
</head>
<body>
<h1>hello</h1>

 <marquee><h1>This is an example of ajax</h1></marquee>  
<form name="vinform">  
Enter id:<input type="text" name="searchText" onkeyup="sendInfo()">  
</form>  
  
<span id="amit"> </span>  
<div class="container">	
	<c:forEach items="${products}" var="product">
			<div>${product.id}</div>
			<div>${product.brand_name}</div>
			<div>${product.product_code}</div>
	</c:forEach>
</div>
</body>
</html>