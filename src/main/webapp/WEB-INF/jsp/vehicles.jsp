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
		<strong>${message}</strong>
		<h3 class="enter">
			<b>Vehicles</b>
		</h3>
		<div class="row">
			<div class="col-md-2">
				<input type="text" id="vehicle_data_search" onkeyup="myFunction()"
			placeholder="Search" title="Type" class="pull-right form-control">	
			</div>
			<div class="col-md-10">
				<div class="pull-right">
				<a class="button add-product-btn" href="/insertVehicle">Add a Vehicles</a>
			</div>
			</div>
		</div>
		<table class="table table-striped" id="vehicle_data">
			<thead>
				<tr>
					<th>VehicleNo</th>
					<th>Licence</th>
					<th>ValidDate</th>
					<th>Capacity</th>
					<th>OwnName</th>
					<th>No Cases</th>
					<th>ED Cases</th>
					</tr>
			</thead>

			<tbody>
				<c:forEach items="${vehicles}" var="vehicle">
					<tr>
						<td>${vehicle.vehicleNo}</td>
						<td>${vehicle.licence}</td>
						<td>${vehicle.validDate}</td>
						<td>${vehicle.capacity}</td>
						<td>${vehicle.ownName}</td>
						<td>${vehicle.noCases}</td>
						<td>${vehicle.edCases}</td>
						
						<td class="btn-box"><a type="button" 
							href="/updateVehicle?id=${vehicle.id}" onclick="return confirm('Are you sure you want to update this item?');"
							class="update-btn">Update</a></td>
						<td class="btn-box"><a type="button" 
							href="/deleteVehicle?id=${vehicle.id}" onclick="return confirm('Are you sure you want to delete this item?');"
							class="update-btn">Delete</a></td>
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
			var $rows = $('#vehicle_data tr');
			$('#vehicle_data_search').keyup(function() {
			    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
			    
			    $rows.show().filter(function() {
			        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
			        return !~text.indexOf(val);
			    }).hide();
			});
			</script>
</html>
