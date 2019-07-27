<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="common/header.jspf"%>
	<%@ include file="common/navigation.jspf"%>
	<div class="container">
		<strong>${message}</strong> <strong>${result}</strong>
		<h3 class="enter">
			<b>Products</b>
		</h3>
		<div class="row">
			<div class="col-md-2">
				<input type="text" id="product_data_search" onkeyup="myFunction()"
			placeholder="Search" title="Type" class="pull-right form-control">	
			</div>
			<div class="col-md-10">
				<div class="pull-right">
				<a class="button btn btn-primary" href="/insertProduct">Add a product</a>
			</div>
			</div>
		</div>
		<table class="table table-striped" id="product_data">
			<thead>
				<tr>
					<th>product_code</th>
					<th>manufacturer_company</th>
					<th>brand_name</th>
					<th>class_type</th>
					<th>division</th>
					<th>unit</th>
					<th>rate</th>
					<th>hsn_code</th>
					<th>sme</th>
					<th>safe_dist</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
					<tr>
						<td>${product.product_code}</td>
						<td>${product.manufacturer_company}</td>
						<td>${product.brand_name}</td>
						<td>${product.class_type}</td>
						<td>${product.division}</td>
						<td>${product.unit}</td>
						<td>${product.rate}</td>
						<td>${product.hsn_code}</td>
						<td>${product.sme}</td>
						<td>${product.safe_dist}</td>

						<td class="btn-box"><a type="button"
							href="/updateProduct?id=${product.id}"
							onclick="return confirm('Are you sure you want to update this item?');"
							class="update-btn">Update</a></td>
						<td class="btn-box"><a type="button"
							href="/deleteProduct?id=${product.id}"
							onclick="return confirm('Are you sure you want to update this item?');"
							class="delete-btn">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script src="webjars/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
			var $rows = $('#product_data tr');
			$('#product_data_search').keyup(function() {
			    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
			    
			    $rows.show().filter(function() {
			        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
			        return !~text.indexOf(val);
			    }).hide();
			});
			</script>
</html>
