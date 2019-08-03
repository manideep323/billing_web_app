<!DOCTYPE html>
<html>
<head>
<title>Customer entry</title>
<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="common/header.jspf"%>
	<%@ include file="common/navigation.jspf"%>

	<div class="container">
		<div class="row">
			<div>${error}</div>
			<div class="col-md-10 margin-auto">
				<div class="entryform-parent">
					<div class="entry-form-head">
						<h3 class="entry-head-text">Customer Entry</h3>
					</div>
					<div class="product-enty-form">
						<form:form method="post" commandName="customer"
							class="product-form">
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Licence
									Number</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="licNo" type="text" class="form-control" placeholder="Licence number..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Code</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="code" type="text" class="form-control" placeholder="code..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Customer
									Name</label>
								<div class="col-lg-10 col-md-10 col-sm-12">
									<form:input path="custName" type="text" class="form-control"  placeholder="Customer Name"/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<div class="col-lg-2 col-md-2"></div>
								<div class="col-lg-5 col-md-5">
									<p class="billing-title">Billing Address</p>
								</div>
								<div class="col-lg-5 col-md-5">
									<p class="billing-title">Shipping Address</p>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Sy
									No.</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="billingAddress.syNo" type="text"
										class="form-control"  placeholder="Sy No..."/>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="shippingAddress.syNo" type="text"
										class="form-control"  placeholder="Sy No..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Town</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="billingAddress.town" type="text"
										class="form-control"  placeholder="Town..."/>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="shippingAddress.town" type="text"
										class="form-control"  placeholder="Town..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Mandal</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="billingAddress.mandal" type="text"
										class="form-control"  placeholder="Mandal..."/>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="shippingAddress.mandal" type="text"
										class="form-control"  placeholder="Mandal..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">District</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="billingAddress.district" type="text"
										class="form-control"  placeholder="District..."/>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="shippingAddress.district" type="text"
										class="form-control"  placeholder="District..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">State</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="billingAddress.state" type="text"
										class="form-control"  placeholder="State..."/>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="shippingAddress.state" type="text"
										class="form-control"  placeholder="State..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Phone</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="billingAddress.phone" type="text"
										class="form-control"  placeholder="Phone..."/>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="shippingAddress.phone" type="text"
										class="form-control"  placeholder="Phone..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">TIN
									Number</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="tinNo" type="text" class="form-control"  placeholder="TIN No..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">GST
									Number</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="gstNo" type="text" class="form-control"  placeholder="GST No..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Valid
									Date</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="validDt" type="date" class="form-control" />
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">State
									Code</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="stateCode" type="text" class="form-control"  placeholder="State Code..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-2 col-md-2 col-sm-12 control-label">Document
									No</label>
								<div class="col-lg-5 col-md-5 col-sm-12">
									<form:input path="docNo" type="text" class="form-control"  placeholder="Document No..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<div class="col-lg-2 col-md-2"></div>
								<div class="col-lg-10 col-md-10">
									<button type="submit" class="insert-add-btn">Add
										Customer</button>
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

