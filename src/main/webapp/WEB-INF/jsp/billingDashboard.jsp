
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>



<%-- <c:forEach items="${products}" var="product">
			<div class="product">${product.product_code}</div>
			<div class="product">${product.brand_name}</div>
</c:forEach> --%>
<!DOCTYPE html>
<html>
<head>


<!-- <link href="css/style.css" rel="stylesheet"> -->
<link href="css/datatable.css" rel="stylesheet">
<!-- <link href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
	<link href="css/invoice.css" rel="stylesheet">
<link href="css/print.css" rel="stylesheet" media="print">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="invoice-generation">
					<table border="1" id="invoice_header">
						<tbody>
							<tr>
								<td class="logo"></td>
								<td align="center" class="tax-address">
									<p>TAX INCOICE</p>
									<h4>M/S SHIVARATHRI CHANDRAIAH</h4>
									<p>Sy No : 28 Patelgudem Village, Alair Mandal, Yadadri
										District, Telangana - 508101 GSTIN : 36ACKFS9028G1ZR Lic No.
										E/HQ/TG/21/540(E48910), E/HQ/TG/21/539(E48908),
										E/HQ/TG/21/624(E79971), E/HQ/TG/21/622(E79505).</p>
								</td>
								<td class="type-click" align="left"></td>
							</tr>
						</tbody>

					</table>
					<!--insert data-->


					<table id="insert_data" width="100%" class="table table-bordered">
						<tbody>
							<tr>
								<td>Invoice Number</td>
								<td><input type="text" class="form-control"></td>
								<td>Doc No.</td>
								<td><select onchange="setCustomerValues(value)"
									class="selectpicker" data-show-subtext="true"
									data-live-search="true">
										<option>Doc. NO...</option>
										<c:forEach var="customer" items="${customers}"
											varStatus="loop">
											<option
												value='{"index":"${loop.index}","code":"${customer.code}","licNo":"${customer.licNo}","custName":"${customer.custName}","tinNo":"${customer.tinNo}","gstNo":"${customer.gstNo}","validDt":"${customer.validDt}","stateCode":"${customer.stateCode}","billingAddress":"${customer.billingAddress}","shippingAddress":"${customer.shippingAddress}","docNo":"${customer.docNo}"}'>${customer.docNo}</option>
										</c:forEach>
								</select></td>
								<td>Vehicle No.</td>
								<td><select onchange="setVehicleValues(value)"
									class="selectpicker vehicle-data" data-show-subtext="true"
									data-live-search="true">
										<option>select vehicle..</option>
										<c:forEach var="vehicle" items="${vehicles}" varStatus="loop">
											<option
												value='{"index":"${loop.index}","vehicle":"${vehicle.vehicleNo}","licence":"${vehicle.licence}","validDate":"${vehicle.validDate}","capacity":"${vehicle.capacity}","ownName":"${vehicle.licence}","licence":"${vehicle.ownName}","noCases":"${vehicle.noCases}","edCases":"${vehicle.edCases}"}'>${vehicle.vehicleNo}</option>
										</c:forEach>
								</select></td>

							</tr>
							<tr>
								<td>Customer Name</td>
								<td colspan="3">
									<form>
										<div class="form-group">
											<input type="text" class="form-control custName" />
										</div>
									</form>
								</td>
								<td>Date of Invoice</td>
								<td><input id="date" name="date" class="form-control">
								</td>
							</tr>
							<tr>
								<td>Customer Address</td>
								<td colspan="3">
									<form>
										<div class="form-group">
											<textarea placeholder="address" id="billingAddress"
												class="form-control"></textarea>
										</div>
									</form>
								</td>
								<td>Place of Issue</td>
								<td>
									<form>
										<div class="form-group">
											<textarea placeholder=""
												class="form-control"></textarea>
										</div>
									</form>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- address table -->
					<table class="" border="1" width="100%" id="address_data">
						<tbody>
							<tr>
								<td width="60%">
									<table width="100%" border="1">
										<tr class="">
											<td width="25%">Invoice No.</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control"
															style="width: 35%; float: left" />
														<div class="side-lable">Date of Invoice :</div>
														<input id="dateInside" name="date" class="form-control"
															style="width: 25%; float: left" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="">
											<td>Name</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control"
															value="M/S SHIVARATHRI CHANDRAIAH" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Address</td>
											<td>
												<form>
													<div class="form-group">
														<textarea placeholder="address" value="">Patelgudem(Vil), Alair(Ml), Yadadri Bhongir(Dist).
									</textarea>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>GSTIN Number</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control"
															value="36ACKFS9028G1ZR" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>State</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control" value="Telangana"
															style="width: 40%; float: left" />
														<div class="side-lable">Code</div>
														<input type="text" class="form-control" value="36"
															style="width: 20%; float: left" />
													</div>
												</form>
											</td>
										</tr>
									</table> <!-- customer date end -->
								</td>
								<td>
									<table width="100%" border="1">
										<tr class="">
											<td>Transportation Mode</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control" value="Road" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Vehicle No.</td>
											<td>
												<form>
													<div class="form-group">
														<input id="vehicleNo" type="text" class="form-control" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Date & Time of Supply</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control" id="date_time" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Place of Issue</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control" value="Patelgudem" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Place of Supply</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control" />
													</div>
												</form>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
					<table id="customer_details" border='1' style="width: 100%">
						<tbody>
							<tr>
								<th>Details of Receiver(Billed To)</th>
								<th>Details of Consignee (Shipped To)</th>
							</tr>
							<tr>
								<td>
									<table width="100%" border="1">
										<tr class="">
											<td width="25%">Name</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control custName" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Address</td>
											<td>
												<form>
													<div class="form-group">
														<textarea placeholder="address" id="billingAddress"
															class="form-control"></textarea>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>GSTIN</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control gstNo" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Licence No.</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control licNo" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>State Code</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control stateCode" />
													</div>
												</form>
											</td>
										</tr>
									</table>
								</td>
								<td>
									<table width="100%" border="1">
										<tr class="">
											<td width="25%">Name</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control custName" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Address</td>
											<td>
												<form>
													<div class="form-group">
														<textarea id="shippingAddress" placeholder="address"
															class="form-control"></textarea>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>GSTIN</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control gstNo" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Licence No.</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control licNo" />
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>State Code</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" class="form-control stateCode" />
													</div>
												</form>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</tbody>
					</table>

					<!--------------------- product Table---------------------- -->
					<div class="">
						<div class="row clearfix">
							<div class="col-md-12">
								<table class="" id="tab_logic" border="1">
									<thead>
										<tr>
											<th class="text-center si-no-header">S No</th>
											<th class="text-center brand-id-header">Brand Id</th>
											<th class="text-center product-dec-header">Product Description</th>
											<th class="text-center hsn-header">HSN Code</th>
											<th class="text-center unit-header">Unit</th>
											<th class="text-center qty-header">Qty</th>
											<th class="text-center rate-header">Rate</th>
											<th class="text-center amount-header">Value</th>
											<th class="text-center gst-head">GST%</th>
											<th class="text-center gst-amount-header">GST Value</th>
											<th class="text-center net-amount-headder">Amount</th>
											<th class="text-center hide-cust class-header">Class</th>
											<th class="text-center hide-cust div-header">Div</th>
										</tr>
									</thead>
									<tbody>
										<tr id='addr0'>
											<td>1</td>
											<td class="brand-id"><input type="number"
												class="form-control brand_id" placeholder='Brand Id'
												data-toggle="modal" data-target="#myModal" /> <!-- <p>
													<b>Details:</b> <span id="example-console">N/A</span>
												</p> --></td>
											<td class="product-name"><textarea placeholder='Product'
												class="form-control product-description" readonly></textarea>
												</td>
											<td class="hsn-code-block"><span class="hsn-code"></span>
											</td>
											<td class="unit"><span id="unit_1" class="unit_0"></span>
											</td>
											<td><input type="number" name='qty[]'
												placeholder='Qty' class="form-control qty" step="0"
												min="0" /></td>
											
											<td><input type="number" name='price[]'
												placeholder='Unit Price' class="form-control price"
												step="0.00" min="0" /></td>
											<td class="amount"><input type="number" name='total[]'
												placeholder='0.00' class="form-control total" readonly /></td>

											<td class="gst-percent"><input type="number"
												placeholder='%' class="form-control gst gst_percent"
												id="gst_percent" /></td>
											<td class="gst-amount"><input type="number"
												placeholder='0.00' class="form-control gst_amount" readonly
												id="gst_amount" /></td>
											<td class="net-amount"><input type="number"
												name='total[]' placeholder='0.00'
												class="form-control net_amount" readonly id="net_amount" />
											</td>
											<td class="class-data hide-cust"><span class="class-id"></span></td>
											<td class="division hide-cust"><span class="devision"></span></td>
										</tr>
										<tr id='addr1'></tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12">
								<button id="add_row" class="btn btn-default pull-left">Add
									Row</button>
								<button id='delete_row' class="pull-right btn btn-default">Delete
									Row</button>
							</div>
						</div>


						<!-- GST Table------------ -->
						<table width="100%" border="1" class="gst-table">
							<tbody>
								<tr>
									<th colspan="2">GST%:</th>
									<td>@12%</td>
									<td></td>
									<td>IGST</td>
									<td></td>
									<td>Gross Amount</td>
									<td class='gross-amount'><input type="number"
										name='gross_total' placeholder='0.00' class="form-control"
										id="gross_total" readonly /></td>
								</tr>
								<tr>
									<td>@0%</td>
									<td></td>
									<td>@18%</td>
									<td></td>
									<td>SGST</td>
									<td></td>
									<td>GST Amount</td>
									<td class="gst-total"><input type="number"
										name='gst_total' placeholder='0.00' class="form-control"
										id="gst_total" readonly /></td>
								</tr>
								<tr>
									<td>@5%</td>
									<td></td>
									<td>@28%</td>
									<td></td>
									<td>CGST</td>
									<td></td>
									<td>Net Amount</td>
									<td class="net-amount"><input type="number"
										name='net_amount' placeholder='0.00' class="form-control"
										id="netamount_total" readonly"/></td>
								</tr>
								<tr>
									<td>Amount in Words</td>
									<td colspan="5"><div id="word"></div></td>
									<td>Payment Status</td>
									<td><select class="custom-select">
											<option selected>Choose...</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
									</select></td>
								</tr>
							</tbody>
						</table>
						<!-- button Table -->
						<table width="100%" border="1" align="center">
							<tbody>
								<tr>
									<td><button>Add</button></td>
									<td><button>Edit</button></td>
									<td><button>Delete</button></td>
									<td><button>Save</button></td>
									<td><button>Clear</button></td>
									<td><button id="printInvoice">Print-Invoice</button></td>
									<td><button>Print DC</button></td>
									<td><button>Print RE-6</button></td>
									<td><button>Exit</button></td>
								</tr>
							</tbody>
						</table>
						<!-- invoice Footer -->
						<table width="100%" border="1">
							<tbody>
								<tr>
									<td width="70%">
										<table width="100%" border="1" class="bank-details-table">
											<tbody>
												<tr>
													<td>Bank Details</td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</td>
									<td rowspan="2" align="center">For M/s Shivarathri
										Chandraiah <br> <br> <br> <br> <br> <br>
										<p style="text-align: center;">Authorized Signatory</p>
									</td>
								</tr>
								<tr>
									<td>
										<table>
											<tbody>
												<tr>
													<td>Notes:</td>
													<td>
														<ol>
															<li>Goods once sold will not be taken back or
																exchanged.</li>
															<li>Recipent has to follow as per Explosives Act
																1884, & Rule of -2008</li>
															<li>Payment Strictly as per terms & conditions
																agreed otherwise interest will be charged @ 9% P.a</li>
															<li>Subject to ALAIR Jurisdiction.</li>
															<li>Free on Board</li>
														</ol>
														<p style="text-align: right;">Receiver Signature</p>
													</td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal -->

		<!-- Button trigger modal -->

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Modal title</h4>
					</div>
					<div class="modal-body">
						<table id="example" class="display" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>S No</th>
									<th>Brand Id</th>
									<th>Mfgs</th>
									<th>Brand Name</th>
									<th>class</th>
									<th>Division</th>
									<th>Unit</th>
									<th>Rate</th>
									<th>HSN Code</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>S No</th>
									<th>Brand Id</th>
									<th>Mfgs</th>
									<th>Brand Name</th>
									<th>class</th>
									<th>Division</th>
									<th>Unit</th>
									<th>Rate</th>
									<th>HSN Code</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
</body>
<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
<script language="javascript" type="text/javascript" src="js/custom.js"></script>
<!-- <script src="webjars/popper.js/1.14.3/umd/popper.js"></script> -->
<script src="webjars/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/datatable.js"></script>




<script type="text/javascript">
	$(document).ready(
			function() {
				var i = 1;
				//console.log('global' + i + '')
				$("#add_row").click(
						function() {
							b = i - 1;
							$('#addr' + i).html($('#addr' + b).html()).find(
									'td:first-child').html(i + 1);
							$('#tab_logic').append(
									'<tr id="addr' + (i + 1) + '"></tr>');

							//product details clear after add button click
							$('#addr' + i + '').find('.product-description')
									.val(' ');
							$('#addr' + i + '').find('.hsn-code').text(' ');
							$('#addr' + i + '').find('.brand_id').val('');
							$('#addr' + i + '').find('.unit').text(' ');
							$('#addr' + i + '').find('.class-id').text(' ');
							$('#addr' + i + '').find('.division').text(' ');
							i++;
						});
				$("#delete_row").click(function() {
					if (i > 1) {
						$("#addr" + (i - 1)).html('');
						$("#addr" + (i)).remove();
						i--;
					}

					calc();
				});

				$('#tab_logic tbody').on('keyup change', function() {
					calc();
				});

				$('#tax').on('keyup change', function() {
					calc_total();
				});

			});

	function calc() {
		$('#tab_logic tbody tr').each(function(i, element) {
			var html = $(this).html();
			if (html != '') {
				var qty = $(this).find('.qty').val();
				var price = $(this).find('.price').val();
				$(this).find('.total').val(qty * price);

				var totalAmount = parseInt($(this).find('.total').val());
				var gst = $(this).find('.gst_percent').val();
				$(this).find('.gst_amount').val(gst / 100 * totalAmount);

				var gstAmount = parseInt($(this).find('.gst_amount').val());
				$(this).find('.net_amount').val(totalAmount + gstAmount);
				calc_total();
			}
		});
	}

	function calc_total() {
		total = 0;
		$('.total').each(function() {
			total += parseInt($(this).val());
		});
		$('#gross_total').val(total.toFixed(2));

		gst = 0;
		$('.gst_amount').each(function() {
			gst += parseInt($(this).val());
			//debugger
		});
		$('#gst_total').val(gst.toFixed(2));

		netAmounttotal = 0;
		$('.net_amount').each(function() {
			netAmounttotal += parseInt($(this).val());
		});
		$('#netamount_total').val(netAmounttotal.toFixed(2));

	}

	$(document)
			.ready(
					function() {

						var values = [];
						<c:forEach var="product" items="${products}"
			varStatus="loop">
						values.push([ "${loop.index+1}",
								"${product.product_code}",
								"${product.manufacturer_company}",
								"${product.brand_name}",
								"${product.class_type}", "${product.division}",
								"${product.unit}", "${product.rate}",
								"${product.hsn_code}" ]);
						</c:forEach>
						//console.log(values)

						var table = $('#example').DataTable(
								{
									data : values,//Table Data fields
									keys : {
										keys : [ 13 /* ENTER */, 38 /* UP */,
												40 /* DOWN */]
									}
								});

						// Handle event when cell gains focus
						$('#example').on(
								'key-focus.dt',
								function(e, datatable, cell) {

									// Select highlighted row
									$(table.row(cell.index().row).node())
											.addClass('selected');
									//$('#exampleModalCenter').hide();
								});

						// Handle event when cell looses focus
						$('#example').on(
								'key-blur.dt',
								function(e, datatable, cell) {
									// Deselect highlighted row
									$(table.row(cell.index().row).node())
											.removeClass('selected');
									//$('#exampleModalCenter').hide();
								});

						// Handle key event that hasn't been handled by KeyTable
						var i = 0;
						$('#example')
								.on(
										'key.dt',
										function(e, datatable, key, cell,
												originalEvent) {
											// If ENTER key is pressed

											if (key === 13) {
												// Get highlighted row data
												var data = table.row(
														cell.index().row)
														.data();
												$('#myModal').modal('hide');
												// FOR DEMONSTRATION ONLY
												$("#example-console").html(
														data.join(', '));

												//products entry 
												$('#addr' + i + '').find(
														'.brand_id').attr('id',
														'brand_id_' + i + '')
														.val(parseInt(data[1]));
												$('#addr' + i + '').find(
														'.product-description')
														.attr(
																'id',
																'product-description_'
																		+ i
																		+ '')
														.val(data[3]);
												$('#addr' + i + '').find(
														'.hsn-code').attr('id',
														'hsn_code_' + i + '')
														.text(data[8]);
												$('#addr' + i + '').find(
														'.unit').attr('id',
														'unit_' + i + '').text(
														data[6]);
												$('#addr' + i + '').find(
														'.class-id').attr('id',
														'class_id_' + i + '')
														.text(data[4]);
												$('#addr' + i + '').find(
														'.division').attr('id',
														'division_' + i + '')
														.text(data[5]);
												i++;
											}

										});

					});

	//$('#mymodal').find('input').focus();
	$('#printInvoice').click(function() {
		/* $('input').css('border','none')
		$('button').hide();
		$('#address_data').css('display','none'); */
		window.print();
	});
</script>


</html>



<%-- <form:form method="post" commandName="product">
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
 --%>