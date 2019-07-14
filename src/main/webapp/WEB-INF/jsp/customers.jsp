<%@ include file="common/header.jspf" %>
<div>${message}</div>
<div>${result}</div>
	<div class="container">
		<table class="table table-striped">
			<caption>Your customers are</caption>
			<thead>
				<tr>
					<th>code</th>
					<th>licNo</th>
					<th>custName</th>
					<th>tinNo</th>
					<th>gstNo</th>
					<th>validDt</th>
					<th>stateCode</th>
					<th>docNo</th>
					
					</tr>
			</thead>
			<tbody>
				<c:forEach items="${customers}" var="cusromer">
					<tr>
						<td>${customer.code}</td>
						<td>${customer.licNo}</td>
						<td>${customer.custName}</td>
						<td>${customer.tinNo}</td>
						<td>${customer.gstNo}</td>
						<td>${customer.validDt}</td>
						<td>${customer.stateCode}</td>
						<td>${customer.docNo}</td>
					
						<td><a type="button" 
							href="/updateCustomer?id=${customer.id}">Update</a></td>
						<td><a type="button" 
							href="/deleteCustomer?id=${customer.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/insertCustomer">Add a customer</a>
		</div>
	</div>
