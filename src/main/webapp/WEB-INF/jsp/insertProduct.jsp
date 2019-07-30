<!DOCTYPE html>
<html>
	<head>
		<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
	<%@ include file="common/header.jspf" %>
	<%@ include file="common/navigation.jspf"%>
	<form:form method="post" commandName="product">
		<div class="input-group">
			<label for="exampleInputEmail1">Product Code</label>
		  <form:input path="product_code" type="text" class="form-control" />	
		</div>
	</form:form>
	
	</body>
	<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
	<script src="webjars/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>
<form:form method="post" commandName="product">
<div>${error}</div>
<form:label path="product_code">product_code</form:label>
<form:input path="product_code" type="text" />
<form:errors path="product_code" />
<form:label path="manufacturer_company">manufacturer_company</form:label>
<form:input path="manufacturer_company" type="text" />
<form:label path="brand_name">brand_name</form:label>
<form:input path="brand_name" type="text" />
<form:label path="class_type">class_type</form:label>
<form:input path="class_type" type="text" />
<form:label path="division">division</form:label>
<form:input path="division" type="text" />
<form:label path="unit">unit</form:label>
<form:input path="unit" type="text" />
<form:label path="rate">rate</form:label>
<form:input path="rate" type="text" />
<form:label path="hsn_code">hsn_code</form:label>
<form:input path="hsn_code" type="text" />
<form:label path="sme">sme</form:label>
<form:input path="sme" type="text" />
<form:label path="safe_dist">safe_dist</form:label>
<form:input path="safe_dist" type="text" />
<button type="submit" >Add</button>
</form:form>
