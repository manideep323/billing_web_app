<%@ include file="common/header.jspf" %>
	<div class="container">
	<c:forEach items="${products}" var="product">
			<div>${product.id}</div>
			<div>${product.brand_name}</div>
			<div>${product.product_code}</div>
	</c:forEach>
	</div>