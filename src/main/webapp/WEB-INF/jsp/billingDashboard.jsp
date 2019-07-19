<%@ include file="common/header.jspf" %>




<%-- <c:forEach items="${products}" var="product">
			<div class="product">${product.product_code}</div>
			<div class="product">${product.brand_name}</div>
</c:forEach> --%>
<!DOCTYPE html>
<html>
<head>

<script src="js/custom.js"></script>
<!-- <link href="css/style.css" rel="stylesheet"> -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="css/invoice.css" rel="stylesheet">
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
						      		<p>Sy No : 28 Patelgudem Village, Alair Mandal, Yadadri District, Telangana - 508101 GSTIN : 36ACKFS9028G1ZR Lic No. E/HQ/TG/21/540(E48910), E/HQ/TG/21/539(E48908), E/HQ/TG/21/624(E79971), E/HQ/TG/21/622(E79505).</p>
						      	</td>
						      	<td class="type-click" align="left">
									 
						      	</td>
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
										    <label for="formGroupExampleInput">Invoice No.</label>
										    <input type="text" />
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
					      			<td>
					      				Name
					      			</td>
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
					      			<td>
					      				Address
					      			</td>
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
					      			<td>
					      				GSTIN Number
					      			</td>
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
					      			<td>
					      				State
					      			</td>
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
					      			<td>
					      				Code
					      			</td>
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
					      	<!-- customer date end -->
					      </td>
					      <td>
					      	<table width="100%" border="1">
					      		<tr>
					      			<td>
					      				<div class="input-group-prepend">
										    <label>Doc No.</label>
										 </div>
					      				<select class="custom-select" id="inputGroupSelect01">
										    <option selected>Choose...</option>
										    <option value="1">One</option>
										    <option value="2">Two</option>
										    <option value="3">Three</option>
										  </select>
					      			</td>
					      			<td>
					      				<div class="input-group-prepend">
										    <label>Vehicle No.</label>
										 </div>
					      				<select class="custom-select" id="inputGroupSelect01">
										    <option selected>Choose...</option>
										    <option value="1">One</option>
										    <option value="2">Two</option>
										    <option value="3">Three</option>
										  </select>
					      			</td>
					      			</td>
					      		</tr>
					      		<tr class="">
					      			<td>
					      				Transportation Mode
					      			</td>
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
					      			<td>
					      				Vehicle No.
					      			</td>
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
					      			<td>
					      				Date & Time of Supply
					      			</td>
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
					      			<td>
					      				Place of Issue
					      			</td>
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
					      			<td>
					      				Place of Supply
					      			</td>
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
					      			<td>
					      				Name
					      			</td>
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
					      			<td>
					      				Address
					      			</td>
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
					      			<td>
					      				GSTIN
					      			</td>
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
					      			<td>
					      				Licence No.
					      			</td>
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
					      			<td>
					      				State Code
					      			</td>
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
					      			<td>
					      				Name
					      			</td>
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
					      			<td>
					      				Address
					      			</td>
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
					      			<td>
					      				GSTIN
					      			</td>
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
					      			<td>
					      				Licence No.
					      			</td>
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
					      			<td>
					      				State Code
					      			</td>
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
					<table border="1" width="100%" class="Product-inset-data">
						<tbody>
						<tr>
							<th>S.No</th>
							<th>Brand Id</th>
							<th>Product Description</th>
							<th>HSN Code</th>
							<th>Qty</th>
							<th>UNit</th>
							<th>Rate</th>
							<th>Amount</th>
							<th>GST%</th>
							<th>GST Amount</th>
							<th>Net Amount</th>
							<th>Class</th>
							<th>Div</th>
						</tr>
						<tr>
							<td>1</td>
							<td><select onclick="setProductValues(value)" class="brand-id" id="inputGroupSelect01">
									    <option selected>Choose...</option>
									     <c:forEach var="product" items="${products}" varStatus="loop">
									     	<option value='{"index":"${loop.index}","brand":"${product.brand_name}"}' >${product.product_code}</option>
									    </c:forEach> 
									  </select></td>
							<td><input class="product-name" id="product-description"></input></td>
							<td class="hsn-code"></td>
							<td><input type="text" value=manufacturer_company class="brand-id" id="brand-id"/></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>1</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>1</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>1</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>1</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						</tbody>
					</table>
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
								<td>
									<select class="custom-select">
									    <option selected>Choose...</option>
									    <option value="1">One</option>
									    <option value="2">Two</option>
									    <option value="3">Three</option>
									  </select>
								</td>
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
								<td rowspan="2" align="center">
									For M/s Shivarathri Chandraiah

									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
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
														<li>Goods once sold will not be taken back or exchanged.</li>
														<li>Recipent has to follow as per Explosives Act 1884, & Rule of -2008</li>
														<li>Payment Strictly as per terms & conditions agreed otherwise  interest will be charged @ 9% P.a</li>
														<li>Subject to ALAIR Jurisdiction.</li>
														<li>Free on Board</li>
													</ol>
													<p style="text-align: right;"> Receiver Signature</p>
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
</body>
<!-- <script src="js/custom.js"></script> -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript">
/*  $(document).ready(function(){
	$('option').each(function(ele){
			$(this).click(function(){
			alert()
		})
	})
	
}) */

/* jQuery(document).ready(function($){
	  $('#inputGroupSelect01').on('click',function(){
	    var val = JSON.parse( $(this).val() );
	    debugger
	    console.log(val);
	  });
	}); */

/* function setProductValues(value){
	console.log("hi");
	var val = JSON.parse(value);
	debugger
} 
 */


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