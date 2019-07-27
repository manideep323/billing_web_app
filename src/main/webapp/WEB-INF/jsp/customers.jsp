<!DOCTYPE html>
<html>
	<head>
		<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	
	
	
	<body>
		<%@ include file="common/header.jspf" %>
			
				<div class="container">
						  <strong>${message}</strong>
						
						  <strong>${result}</strong>
						<h3 class="enter"><b>Customers Data</b></h3>
				
				<div class="row">
					<div class="col-md-2">
						<input type="text" id="customer_data_search" onkeyup="myFunction()" placeholder="Search" title="Type" class="pull-right form-control">	
					</div>
					<div class="col-md-10">
						<div class="pull-right">
						<a class="button btn btn-primary" href="/insertCustomer">Add a customer</a>
					</div>
					</div>
				</div>					
					<table class="table table-striped " id="customer_data">
						<thead>
							<tr>
								<th>Code</th>
								<th>Licence No</th>
								<th>Customer Name</th>
								<th>Tin No</th>
								<th>GST No</th>
								<th>Valid Date</th>
								<th>State Code</th>
								<th>Doc No</th>
								
								</tr>
						</thead>
						<tbody>
							<c:forEach items="${customers}" var="customer">
								<tr>
									<td>${customer.code}</td>
									<td>${customer.licNo}</td>
									<td>${customer.custName}</td>
									<td>${customer.tinNo}</td>
									<td>${customer.gstNo}</td>
									<td>${customer.validDt}</td>
									<td>${customer.stateCode}</td>
									<td>${customer.docNo}</td>
									
									<td class="btn-box"><a type="button" 
										href="/updateCustomer?id=${customer.id}" onclick="return confirm('Are you sure you want to update this item?');" class="update-btn">Update</a></td>
									<td class="btn-box"><a type="button" 
										href="/deleteCustomer?id=${customer.id}" onclick="return confirm('Are you sure you want to delete this item?');" class="delete-btn">Delete</a></td>
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
			var $rows = $('#customer_data tr');
			$('#customer_data_search').keyup(function() {
			    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
			    
			    $rows.show().filter(function() {
			        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
			        return !~text.indexOf(val);
			    }).hide();
			});
			</script>
</html>
