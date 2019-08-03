<!DOCTYPE html>
<html>
<head>
	<title>Vehicle entry</title>
		<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
	<%@ include file="common/header.jspf" %>
	<%@ include file="common/navigation.jspf"%>

	<div class="container">
		<div class="row">
			<div>${error}</div>
			<div class="col-md-6 margin-auto">
				<div class="entryform-parent">
					<div class="entry-form-head">
						<h3 class="entry-head-text">Vehicle Entry</h3>
					</div>
				<div class="product-enty-form">
					<form:form method="post" commandName="vehicle" class="product-form">
					<div>${error}</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">Vehicle Number</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
						    	<form:input path="vehicleNo" type="text" class="form-control" />
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">Licence</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
						    	<form:input path="licence" class="form-control" type="text" />
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">Valid Date</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
								<form:input path="validDate" type="date" class="form-control"/>
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">Capacity</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
								<form:input path="capacity" type="text" class="form-control"/>
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">Owner Name</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
						    	<form:input path="ownName" type="text" class="form-control"/>
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">No Cases</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
						    	<form:input path="noCases" type="text" class="form-control"/>
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <label for="name" class="col-lg-4 col-md-4 col-sm-12 control-label">ED Cases</label>
						    <div class="col-lg-8 col-md-8 col-sm-12">
						    	<form:input path="edCases" type="text" class="form-control"/>
						    </div>
						</div>
						<div class="form-group form-cont-custom">
						    <div class="col-lg-4 col-md-4">
						    </div>
						    <div class="col-lg-8 col-md-8">
						    	<button type="submit" class="insert-add-btn">Add Vehicle</button>
						    </div>
						</div>
						

					</form:form>				
				</div>
			</div>
		</div>
	</div>
	</div>
	
	
	
	</body>
	<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
	<script src="webjars/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>
<!--  <form:form method="post" commandName="vehicle">
 <div>${error}</div>
<form:label path="vehicleNo">vehicleNo</form:label>
<form:input path="vehicleNo" type="text" />
<form:errors path="vehicleNo" />
<form:label path="licence">licence</form:label>
<form:input path="licence" type="text" />
<form:label path="validDate">validDate</form:label>
<form:input path="validDate" type="date" />

<form:label path="capacity">capacity</form:label>
<form:input path="capacity" type="text" />
<form:label path="ownName">ownName</form:label>
<form:input path="ownName" type="text"/>
<form:label path="noCases">noCases</form:label>
<form:input path="noCases" type="text" />
<form:label path="edCases">edCases</form:label>
<form:input path="edCases" type="text" />
<button type="submit">Add</button>
 </form:form> -->   
