<%@ include file="common/header.jspf" %>
<div>${message}</div>
<div>${result}</div>
	<div class="container">
		<table class="table table-striped">
			<caption>Your products are</caption>
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
							href="/updateProduct?id=${product.id}">Update</a></td>
						<td><a type="button" 
							href="/deleteProduct?id=${product.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/insertProduct">Add a product</a>
		</div>
	</div>
