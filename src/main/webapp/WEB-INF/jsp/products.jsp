<%@ include file="common/header.jspf" %>

	<div class="container">
		<table class="table table-striped">
			<caption>Your todos are</caption>
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
						
						<td><a type="button" 
							href="/update-product?id=${product.product_code}">Update</a></td>
						<td><a type="button" 
							href="/delete-product?id=${product.product_code}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/insertProduct">Add a product</a>
		</div>
	</div>
