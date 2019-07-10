<%@ include file="common/header.jspf" %>
<div>${message}</div>
	<div class="container">
		<table class="table table-striped">
			<caption>Your vehicles are</caption>
			<thead>
				<tr>
					<th>vehicleNo</th>
					<th>licence</th>
					<th>validDate</th>
					<th>capacity</th>
					<th>ownName</th>
					<th>noCases</th>
					<th>edCases</th>
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
						
						<td><a type="button" 
							href="/updateVehicle?id=${vehicle.id}">Update</a></td>
						<td><a type="button" 
							href="/deleteVehicle?id=${vehicle.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/insertVehicle">Add a vehicle</a>
		</div>
	</div>
