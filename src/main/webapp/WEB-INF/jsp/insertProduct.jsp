<!DOCTYPE html>
<html>
<head>
<title></title>
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
			<div class="col-md-6 margin-auto">
				<div class="entryform-parent">
					<div class="entry-form-head">
						<h3 class="entry-head-text">Products Entry</h3>
					</div>
					<div class="product-enty-form">
						<form:form method="post" commandName="product"
							class="product-form">
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Product
									Code</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="product_code" type="text"
										class="form-control"/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Manufacturer
									Company</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="manufacturer_company" class="form-control"
										type="text"  placeholder="Manufacturer Company..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Brand
									Name</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="brand_name" type="text" class="form-control" placeholder="Brand Name..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">class
									Type</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="class_type" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Division</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="division" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Unit</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="unit" type="text" class="form-control" placeholder="Unit..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Rate</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="rate" type="text" class="form-control" placeholder="Rate..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">HSN
									Code</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="hsn_code" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">SME</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="sme" type="text" class="form-control" placeholder="sme..."/>
								</div>
							</div>
							<div class="form-group form-cont-custom">
								<label for="name"
									class="col-lg-4 col-md-4 col-sm-12 control-label">Safe
									Dist</label>
								<div class="col-lg-8 col-md-8 col-sm-12">
									<form:input path="safe_dist" type="text" class="form-control" placeholder="Safe Dist..."/>
								</div>
							</div>

							<div class="form-group form-cont-custom">
								<div class="col-lg-4 col-md-4"></div>
								<div class="col-lg-8 col-md-8">
									<button type="submit" class="insert-add-btn">Add Product</button>
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
<!-- <form:form method="post" commandName="product">
<div>${error}</div>
<form:label path="product_code">product_code</form:label>
<form:input path="product_code" type="text" />
<form:errors path="product_code" />
<form:label path="manufacturer_company">manufacturer_company</form:label>
<form:input path="manufacturer_company" type="text" />
<form:label path="brand_name">brand_name</form:label>
<form:input path="brand_name" type="text" />
<form:label path="class_type">class_type</form:label>
<form:input path="class_type" type="text" />
<form:label path="division">division</form:label>
<form:input path="division" type="text" />


<form:label path="unit">unit</form:label>
<form:input path="unit" type="text" />
<form:label path="rate">rate</form:label>
<form:input path="rate" type="text" />
<form:label path="hsn_code">hsn_code</form:label>
<form:input path="hsn_code" type="text" />
<form:label path="sme">sme</form:label>
<form:input path="sme" type="text" />
<form:label path="safe_dist">safe_dist</form:label>
<form:input path="safe_dist" type="text" />
<button type="submit" >Add</button>
</form:form>
 -->