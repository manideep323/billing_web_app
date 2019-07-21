<%@ include file="common/header.jspf"%>




<%-- <c:forEach items="${products}" var="product">
			<div class="product">${product.product_code}</div>
			<div class="product">${product.brand_name}</div>
</c:forEach> --%>
<!DOCTYPE html>
<html>
<head>


<!-- <link href="css/style.css" rel="stylesheet"> -->
<link href="css/invoice.css" rel="stylesheet">
<link href="css/datatable.css" rel="stylesheet">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="invoice-generation">
					<table border="1">
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
					<!-- address table -->
					<table class="" border="1" width="100%">
						<tbody>
							<tr>
								<td width="50%">
									<table width="100%" border="1">
										<tr class="">
											<td>
												<form>
													<div class="form-group">
														<label for="formGroupExampleInput">Invoice No.</label> <input
															type="text" />
													</div>
													</div>
												</form>
											</td>
											<td>
												<form>
													<div class="form-group">
														<label for="formGroupExampleInput">Date of Invoice</label>
														<input id="date" name="date">
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Name</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Address</td>
											<td>
												<form>
													<div class="form-group">
														<textarea placeholder="address"></textarea>
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>GSTIN Number</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>State</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Code</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
									</table> <!-- customer date end -->
								</td>
								<td>
									<table width="100%" border="1">
										<tr>
											<td>
												<div class="input-group-prepend">
													<label>Doc No.</label>
												</div> <select class="custom-select" id="inputGroupSelect01">
													<option selected>Choose...</option>
													<option value="1">One</option>
													<option value="2">Two</option>
													<option value="3">Three</option>
											</select>
											</td>
											<td>
												<div class="input-group-prepend">
													<label>Vehicle No.</label>
												</div> <select class="custom-select" id="inputGroupSelect01">
													<option selected>Choose...</option>
													<option value="1">One</option>
													<option value="2">Two</option>
													<option value="3">Three</option>
											</select>
											</td>
											</td>
										</tr>
										<tr class="">
											<td>Transportation Mode</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Vehicle No.</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Date & Time of Supply</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Place of Issue</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Place of Supply</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
									</table>
								</td>

							</tr>
							<tr>
								<th>Details of Receiver(Billed To)</th>
								<th>Details of Consignee (Shipped To)</th>
							</tr>
							<tr>
								<td>
									<table width="100%" border="1">
										<tr class="">
											<td>Name</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Address</td>
											<td>
												<form>
													<div class="form-group">
														<textarea placeholder="address"></textarea>
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>GSTIN</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Licence No.</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>State Code</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
									</table>
								</td>
								<td>
									<table width="100%" border="1">
										<tr class="">
											<td>Name</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Address</td>
											<td>
												<form>
													<div class="form-group">
														<textarea placeholder="address"></textarea>
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>GSTIN</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>Licence No.</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
													</div>
												</form>
											</td>
										</tr>
										<tr class="customer-data">
											<td>State Code</td>
											<td>
												<form>
													<div class="form-group">
														<input type="text" />
													</div>
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
					<div class="container">
						<div class="row clearfix">
							<div class="col-md-12">
								<table class="table table-bordered table-hover" id="tab_logic">
									<thead>
										<tr>
											<th class="text-center">#</th>
											<th class="text-center">Brand Id</th>
											<th class="text-center">Product Description</th>
											<th class="text-center">HSN Code</th>
											<th class="text-center">Qty</th>
											<th class="text-center">Unit</th>
											<th class="text-center">Rate</th>
											<th class="text-center">Amount</th>
											<th class="text-center">GST%</th>
											<th class="text-center">GST Amount</th>
											<th class="text-center">Net Amount</th>
											<th class="text-center">Class</th>
											<th class="text-center">Div</th>
										</tr>
									</thead>
									<tbody>
										<tr id='addr0'>
											<td>1</td>
											<td class="brand-id"><input type="number"
												data-toggle="modal" data-target="#exampleModalCenter" id="brand_id_1"/>
												<!-- <p>
													<b>Details:</b> <span id="example-console">N/A</span>
												</p> -->
											</td>
											<td class="product-name">
											<input type="text"
												name='product[]' placeholder='Enter Product Name'
												class="form-control" id="product-description_1" />
											</td>
											<td class="hsn-code" >
												<span id='hsn_code_1'></span>
											</td>
											<td>
												<input type="number" name='qty[]'
													placeholder='Enter Qty' class="form-control qty" step="0"
													min="0" />
											</td>
											<td class="unit">
												<span id="unit_1"></span>
											</td>
											<td><input type="number" name='price[]'
												placeholder='Enter Unit Price' class="form-control price"
												step="0.00" min="0" /></td>
											<td class="amount">
												<input type="number" name='total[]'
												placeholder='0.00' class="form-control total" readonly />
											</td>
											
											<td class="gst-percent">
												<input type="number" 
												placeholder='0.00' class="form-control" readonly />
											</td>
											<td class="gst-amount">
											<input type="number" 
												placeholder='0.00' class="form-control" readonly />
											</td>
											<td class="net-amount">
												<input type="number" name='total[]'
												placeholder='0.00' class="form-control" readonly />
											</td>
											<td class="class-data">
												<span id="class_1"></span>
											</td>
											<td class="division">
												<span id="division_1"></span>
											</td>
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
									<td></td>
								</tr>
								<tr>
									<td>@0%</td>
									<td></td>
									<td>@18%</td>
									<td></td>
									<td>SGST</td>
									<td></td>
									<td>GST Amount</td>
									<td></td>
								</tr>
								<tr>
									<td>@5%</td>
									<td></td>
									<td>@28%</td>
									<td></td>
									<td>CGST</td>
									<td></td>
									<td>Net Amount</td>
									<td></td>
								</tr>
								<tr>
									<td>Amount in Words</td>
									<td colspan="5"></td>
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
									<td><button>Print-Invoice</button></td>
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
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">Products
							Help screen</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
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
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
</body>
<!-- <script src="js/custom.js"></script> -->

<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="js/custom.js"></script>
<script src="webjars/popper.js/1.14.3/umd/popper.js"></script>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
							
							//product entry feald
							$($($('#addr' + i).children()[2]).children()[0])
									.parent().children().attr('id',
											'product-description_' + (i+1) + '');
							
							//brand id entry feald
							$($($('#addr' + i).children()[1]).children()[0]).parent().children().attr('id',
									'brand_id_' + (i+1) + '');
														
							
							//hsn code entry feald
							$($($('#addr' + i).children()[3]).children()[0]).parent().children().attr('id',
									'hsn_code_' + (i+1) + '');
							
							//unit entry feald
							$($($('#addr' + i).children()[5]).children()[0]).parent().children().attr('id',
									'unit_' + (i+1) + '');
							
							//class entry feald
							$($($('#addr' + i).children()[11]).children()[0]).parent().children().attr('id',
									'class_' + (i+1) + '');
							
							//division entry feald
							$($($('#addr' + i).children()[12]).children()[0]).parent().children().attr('id',
									'division_' + (i+1) + '');
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

				calc_total();
			}
		});
	}

	function calc_total() {
		total = 0;
		$('.total').each(function() {
			total += parseInt($(this).val());
		});
		$('#sub_total').val(total.toFixed(2));
		tax_sum = total / 100 * $('#tax').val();
		$('#tax_amount').val(tax_sum.toFixed(2));
		$('#total_amount').val((tax_sum + total).toFixed(2));
	}

	
	$(document).ready(
			function() {
				var values = [];
				<c:forEach var="product" items="${products}"
			varStatus="loop">
				values.push([ "${loop.index+1}", "${product.product_code}",
						"${product.manufacturer_company}",
						"${product.brand_name}", "${product.class_type}",
						"${product.division}", "${product.unit}",
						"${product.rate}", "${product.hsn_code}" ]);
				</c:forEach>
				//console.log(values)

				var table = $('#example').DataTable({
					data : values,//Table Data fields
					keys : {
						keys : [ 13 /* ENTER */, 38 /* UP */, 40 /* DOWN */]
					}
				});

				// Handle event when cell gains focus
				$('#example').on('key-focus.dt', function(e, datatable, cell) {
					
					// Select highlighted row
					$(table.row(cell.index().row).node()).addClass('selected');
					//$('#exampleModalCenter').hide();
				});

				// Handle event when cell looses focus
				$('#example').on(
						'key-blur.dt',
						function(e, datatable, cell) {
							// Deselect highlighted row
							$(table.row(cell.index().row).node()).removeClass(
									'selected');
							//$('#exampleModalCenter').hide();
						});

				// Handle key event that hasn't been handled by KeyTable
				$('#example').on('key.dt',function(e, datatable, key, cell, originalEvent) {

							// If ENTER key is pressed
							//var i = 1;
							if (key === 13) {
																
								// Get highlighted row data
								var data = table.row(cell.index().row).data();
								//$('#exampleModalCenter').hide();

								$('#exampleModalCenter').modal('hide');
								
								var product_name=$($($('#addr' + i).children()[2]).children()[0]).parent().children().attr('id');
								console.log(product_name);	
								console.log(data[3]);
								$('#'+product_name+'').val(data[3]);
								//$('"#"+hsn').val(data[3]);
								//debugger
								//debugger
								//$('"#"+$($($('#addr' + i).children()[3]).children()[0]).parent().children().attr('id')').text(data[8])
								
								
								
								
								//dataSendToBillingTable(data);
								
								
								
								//$('#brand_id_'+i+'').val(data[1]);
								//$('#product-description_'+i+'').val(data[3]);
								//$('#hsn_code_'+i+'').text(data[8]);
								//$('#unit_'+i+'').text(data[6]);
								//$('#class_'+i+'').text(data[4]);
								//$('#division_'+i+'').text(data[5]);
								//$(''brand_id_'+data[0]+'')
								// FOR DEMONSTRATION ONLY
								$("#example-console").html(data.join(', '));
								i++;
							}
							
						});
			});

	function dataSendToBillingTable(data){
		console.log(data);
		
		//debugger
	}
	
	
	
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