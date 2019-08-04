<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%-- <c:forEach items="${products}" var="product">
			<div class="product">${product.product_code}</div>
			<div class="product">${product.brand_name}</div>
</c:forEach> --%>
<!DOCTYPE html>
<html>

<head>
    <link href="css/datatable.css" rel="stylesheet">
    <link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/invoice.css" rel="stylesheet">
    <link href="css/print.css" rel="stylesheet" media="print">
</head>

<body class="billing-body">
    <form:form method="post" commandName="invoice">
        <div class="container">
            <div class="row">
                <div class="col-md-12 bill-section">
                    <div class="invoice-generation">
                        <table border="1" id="invoice_header" class="re-6-hide">
                            <tbody>
                                <tr>
                                    <td class="logo"><img src="images/logo.png"></td>
                                    <td align="center" class="tax-address">
                                        <p class="tax-invoice-text"><b>TAX INVOICE</b></p>
                                        <h3><b>M/S SHIVARATHRI CHANDRAIAH</b></h3>
                                        <p>Sy No : 28 Patelgudem Village, Alair Mandal, Yadadri
                                            District, Telangana - 508101 GSTIN : 36ACKFS9028G1ZR Lic No.
                                            E/HQ/TG/21/540(E48910), E/HQ/TG/21/539(E48908),
                                            E/HQ/TG/21/624(E79971), E/HQ/TG/21/622(E79505).</p>
                                    </td>
                                    <td class="type-click" align="left">
                                    	<p><i class="material-icons box-check">crop_din</i>ORIGINAL</p>
                                    	<p><i class="material-icons box-check">crop_din</i>DUPLICATE</p>
                                    	<p><i class="material-icons box-check">crop_din</i>TRIPLICATE</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--insert data-->
                        <table id="insert_data" width="100%" class="table table-bordered hide-dc re-6-hide">
                            <tbody>
                                <tr>
                                    <td>Invoice Number</td>
                                    <td>
                                        <form:input path="invoiceNumber" type="text" class="form-control" value="SC/18-19/02031" readonly="true"/>
                                    </td>
                                    <td>Doc No.</td>
                                    <td><select onchange="setCustomerValues(value)" class="selectpicker" data-show-subtext="true" data-live-search="true">
                                            <option>Doc. NO...</option>
                                            <c:forEach var="customer" items="${customers}" varStatus="loop">
                                                <option value='{"index":"${loop.index}","code":"${customer.code}","licNo":"${customer.licNo}","custName":"${customer.custName}","tinNo":"${customer.tinNo}","gstNo":"${customer.gstNo}","validDt":"${customer.validDt}","stateCode":"${customer.stateCode}","billingAddress":"${customer.billingAddress}","shippingAddress":"${customer.shippingAddress}","docNo":"${customer.docNo}"}'>${customer.docNo}</option>
                                            </c:forEach>
                                        </select></td>
                                    <td><b>Vehicle No.</b></td>
                                    <td><select onchange="setVehicleValues(value)" class="selectpicker vehicle-data" data-show-subtext="true" data-live-search="true">
                                            <option>select vehicle..</option>
                                            <c:forEach var="vehicle" items="${vehicles}" varStatus="loop">
                                                <option value='{"index":"${loop.index}","vehicle":"${vehicle.vehicleNo}","validDate":"${vehicle.validDate}","capacity":"${vehicle.capacity}","ownName":"${vehicle.ownName}","licence":"${vehicle.licence}","noCases":"${vehicle.noCases}","edCases":"${vehicle.edCases}"}'>${vehicle.vehicleNo}</option>
                                            </c:forEach>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td><b>Customer Name</b></td>
                                    <td colspan="3">
                                        <form>
                                            <div class="form-group">
                                                <input type="text" class="form-control custName" readonly="true"/>
                                            </div>
                                        </form>
                                    </td>
                                    <td><b>Date of Invoice</b></td>
                                    <td><input id="date" name="date" class="form-control" readonly="true">
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Customer Address</b></td>
                                    <td colspan="3">
                                        <form>
                                            <div class="form-group">
                                                <textarea placeholder="address" id="billingAddress" class="form-control billingAddress" readonly="true"></textarea>
                                            </div>
                                        </form>
                                    </td>
                                    <td><b>Place of Issue</b></td>
                                    <td>
                                        <form>
                                            <div class="form-group">
                                                <textarea placeholder="" class="form-control" readonly></textarea>
                                            </div>
                                        </form>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- address table -->
                        <table class="hide-dc re-6-hide" border="1" width="100%" id="address_data">
                            <tbody>
                                <tr>
                                    <td width="60%">
                                        <table width="100%" border="1">
                                            <tr class="">
                                                <td width="25%"><b>Invoice No.</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control"  value="SC/18-19/02031" style="width: 35%; float: left" readonly/>
                                                            <div class="side-lable">
                                                                <b>Date of Invoice :</b>
                                                            </div>
                                                            <input id="dateInside" name="date" class="form-control" style="width: 25%; float: left" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td><b>Name</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" value="M/S SHIVARATHRI CHANDRAIAH" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Address</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <textarea placeholder="address" readonly >Patelgudem(Vil), Alair(Ml), Yadadri Bhongir(Dist).
									</textarea>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>GSTIN Number</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" value="36ACKFS9028G1ZR" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>State</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" value="Telangana" style="width: 40%; float: left" readonly/>
                                                            <div class="side-lable">Code</div>
                                                            <input type="text" class="form-control" value="36" style="width: 20%; float: left" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                        </table> <!-- customer date end -->
                                    </td>
                                    <td>
                                        <table width="100%" border="1">
                                            <tr class="">
                                                <td><b>Transportation Mode</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" value="Road" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Vehicle No.</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input id="vehicleNo" type="text" class="form-control vehicleNo" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Date & Time of Supply</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="date_time" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Place of Issue</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" value="Patelgudem" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Place of Supply</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" readonly/>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table id="customer_details" border='1' style="width: 100%" class="hide-dc re-6-hide">
                            <tbody>
                                <tr>
                                    <th>Details of Receiver(Billed To)</th>
                                    <th>Details of Consignee (Shipped To)</th>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%" border="1">
                                            <tr class="">
                                                <td width="25%"><b>Name</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control custName" />
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Address</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <textarea placeholder="address" id="billingAddress" class="form-control billingAddress"></textarea>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>GSTIN</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control gstNo" />
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Licence No.</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control licNo" />
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>State Code</b></td>
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
                                                <td width="25%"><b>Name</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control custName" />
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Address</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <textarea id="shippingAddress" placeholder="address" class="form-control"></textarea>
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>GSTIN</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control gstNo" />
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>Licence No.</b></td>
                                                <td>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control licNo" />
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="customer-data">
                                                <td><b>State Code</b></td>
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
                        <table class="indentor-data re-6-hide" border="1" width="100%">
                            <tbody>
                                <tr>
                                    <td colspan="4"><b>Indentor Name & Address : </b></td>
                                </tr>
                                <tr>
                                    <td width="50%">
                                        <table width="100%">
                                            <tr>
                                                <td><b>Name</b></td>
                                                <td><input type="text" class="form-control custName">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Address</b></td>
                                                <td><textarea class="form-control billingAddress"></textarea></td>
                                            </tr>
                                            <tr>
                                                <td><b>GSTIN</b></td>
                                                <td><input type="text" name="" class="form-control gstNo"></td>
                                            </tr>
                                            <tr>
                                                <td><b>Licence No</b></td>
                                                <td><input type="text" name="" class="form-control licNo"></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <!-- table-left -->
                                    <td>
                                        <table width="100%">
                                            <tbody>
                                                <tr>
                                                    <td><b>DC No.</b></td>
                                                    <td>
                                                        <form>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" style="width: 35%; float: left" />
                                                                <div class="side-lable">
                                                                    <b>Date :</b>
                                                                </div>
                                                                <input id="dc_date" name="date" class="form-control" style="width: 25%; float: left" />
                                                            </div>
                                                        </form>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>From</b></td>
                                                    <td>
                                                        <form>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" value="Patelgudem(Vil)" />
                                                            </div>
                                                        </form>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>To</b></td>
                                                    <td><input type="text" name="" class="form-control">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="indentor-data-vehicleno"><b>Vehicle No</b></td>
                                                    <td>
                                                        <form>
                                                            <div class="form-group">
                                                                <input id="vehicleNo" type="text" class="form-control vehicleNo" />
                                                            </div>
                                                        </form>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>Licence No</b></td>
                                                    <td><input type="text" name="" class="form-control vehiclelicence"></td>
                                                </tr>
                                            </tbody>
                                        </table> <!-- right table -->
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--------------  re-6 table top--------------->
                        <div class="re-6-print-top">
                            <div class="re-6-print-head">
                                <p class="text-center">
                                    <b>
                                        <h4 class="text-center">FORM RE - 6</h4>
                                    </b>
                                </p>
                                <p class="text-center re-6-head-text">
                                    <b>(See Rule 61 (2) of the Explosives Rules, 2008) <br />
                                        FORM OF RECORDS TO BE MAINTAINED BY LICENSEE <br />Records of Explosives
                                        Transported by Road Van</b>
                                </p>
                                <hr>
                                <p>Note: This record should be kept up to date.</p>
                            </div>
                            <table class="re-6-table">
                                <tbody>
                                    <tr>
                                        <td class="re-6-sno">1)</td>
                                        <td>Licence No : E/SC/TG/25/557(E63278 )</td>
                                        <td>IN FORM LE-7 OF Explosives Rules, 2008</td>
                                    </tr>
                                    <tr>
                                        <td class="re-6-sno">2)</td>
                                        <td>
                                            <div class="side-lable">
                                                Date :
                                            </div>
                                            <input id="re_6_date" name="date" class="form-control" style="width: 30%; float: left" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="re-6-sno">3)</td>
                                        <td width="45%">Name, Address and Licence No of the consignor :</td>
                                        <td>
                                            <p>
                                                <b>M/S Shivarathri chandraiah</b>
                                            </p>
                                            <p>Sy.No.28, Patelgudem Village, Alair Mandal,<br /> Yadadri
                                                Bhongiri District, Telangana - 508101.</p>
                                            <p>E/HQ/TG/21/540(E48910)- explosives</p>
                                            <p>E/HQ/TG/21/539(E48908)- Detonaters</p>
                                            <p>E/HQ/TG/21/624(E79971) Explosives</p>
                                            <p>E/HQ/TG/21/622(E79505) D F</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="re-6-sno">4)</td>
                                        <td colspan="2">Batch Number of Date Manufactures Form RE
                                            12 attached</td>
                                    </tr>
                                    <tr>
                                        <td class="re-6-sno">5)</td>
                                        <td>Place of Loading Description of Explosives :</td>
                                        <td>Patelgudem</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--------------------- product Table---------------------- -->
                        <div class="">
                            <div class="row clearfix">
                                <div class="col-md-12">
                                    <table class="" id="tab_logic" border="1">
                                        <thead>
                                            <tr>
                                                <th class="text-center si-no-header">S No</th>
                                                <th class="text-center brand-id-header re-6-hide">Brand Id</th>
                                                <th class="text-center product-dec-header">Product
                                                    Description</th>
                                                <th class="text-center hsn-header re-6-hide">HSN Code</th>
                                                <th class="text-center unit-header re-6-hide">Unit</th>
                                                <th class="text-center qty-header">Qty</th>
                                                <th class="text-center rate-header hide-dc re-6-hide">Rate</th>
                                                <th class="text-center amount-header hide-dc re-6-hide">Value</th>
                                                <th class="text-center gst-head hide-dc re-6-hide">GST%</th>
                                                <th class="text-center gst-amount-header hide-dc re-6-hide">GST
                                                    Value</th>
                                                <th class="text-center net-amount-headder hide-dc re-6-hide">Amount</th>
                                                <th class="text-center hide-cust class-header hide-dc">Class</th>
                                                <th class="text-center hide-cust div-header hide-dc">Div</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr id='addr0'>
                                                <td class="text-center"><b>1</b></td>
                                                <td class="brand-id re-6-hide"><input type="number" class="form-control brand_id" placeholder='Brand Id' data-toggle="modal" data-target="#myModal" />
                                                    <!-- <p>
													<b>Details:</b> <span id="example-console">N/A</span>
												</p> -->
                                                </td>
                                                <td class="product-name"><textarea placeholder='Product' class="form-control product-description" readonly></textarea>
                                                </td>
                                                <td class="hsn-code-block re-6-hide"><span class="hsn-code"></span>
                                                </td>
                                                <td class="unit re-6-hide"><span id="unit_1" class="unit_0"></span>
                                                </td>
                                                <td><input type="number" name='qty[]' placeholder='Qty' class="form-control qty" step="0" min="0" /></td>
                                                <td class="hide-dc re-6-hide"><input type="number" name='price[]' placeholder='Unit Price' class="form-control price " step="0.00" min="0" /></td>
                                                <td class="amount hide-dc re-6-hide"><input type="number" name='total[]' placeholder='0.00' class="form-control text-right total" readonly /></td>
                                                <td class="gst-percent hide-dc re-6-hide"><input type="number" placeholder='%' class="form-control gst gst_percent" id="gst_percent" /></td>
                                                <td class="gst-amount hide-dc re-6-hide"><input type="number" placeholder='0.00' class="form-control gst_amount text-right" readonly id="gst_amount" /></td>
                                                <td class="net-amount text-right hide-dc re-6-hide"><input type="number" name='total[]' placeholder='0.00' class="form-control text-right net_amount" readonly id="net_amount" /></td>
                                                <td class="class-data hide-cust hide-dc text-center"><span class="class-id"></span></td>
                                                <td class="division hide-cust hide-dc text-center"><span class="devision"></span></td>
                                            </tr>
                                            <tr id='addr1'></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-12">
                                	<input type="button" name="" id="add_row" class="btn btn-grad pull-left" value="Add Row" />
                                	<input type="button" name="" id="delete_row" class="pull-right btn btn-grad" value="Delete Row" />

                                    <!-- <button id="add_row" class="btn btn-grad pull-left">Add
                                        Row</button>
                                    <button id='delete_row' class="pull-right btn btn-grad">Delete
                                        Row</button> -->
                                </div>
                            </div>
                            <!---------------- re-6 bottom ------------- -->
                            <div class="re-6-bottom">
                                <table class="re-6-table">
                                    <tbody>
                                        <tr>
                                            <td class="re-6-sno">6)</td>
                                            <td>
                                                <div class="side-lable">Pass No. &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                                <input type="text" class="form-control invoice-number" style="width: 50%; float: left" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="re-6-sno">7)</td>
                                            <td>
                                                <div class="side-lable">Van No. &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                                <input type="text" id="vehicleNo" class="form-control vehicleNo" style="width: 50%; float: left" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="re-6-sno">8)</td>
                                            <td>Signature of the consignor :</td>
                                        </tr>
                                        <tr>
                                            <td class="re-6-sno">9)</td>
                                            <td width="45%">Name, Address And Licence No of the Consignee :</td>
                                            <td>
                                                <form>
                                                    <div class="form-group">
                                                        <textarea placeholder="address" id="billingAddress" class="form-control billingAddress"></textarea>
                                                    </div>
                                                </form>
                                                <form>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control licNo">
                                                    </div>
                                                </form>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="re-6-sno">10)</td>
                                            <td>Place of unloading
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>11)</td>
                                            <td>Date of Unloading&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                                        </tr>
                                        <tr>
                                            <td>12)</td>
                                            <td>Signature of the consignee :</td>
                                        </tr>
                                        <tr>
                                            <td>13)</td>
                                            <td>Remarks</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- GST Table------------ -->
                            <table width="100%" border="1" class="gst-table hide-dc re-6-hide">
                                <tbody>
                                    <tr>
                                        <th colspan="2">GST%:</th>
                                        <th>@12%</th>
                                        <th width="10%"></th>
                                        <th>IGST</th>
                                        <td><input type="text" class="form-control igst" readonly></td>
                                        <th>Gross Amount</th>
                                        <th class='gross-amount'><input type="number" name='gross_total' placeholder='0.00' class="form-control" id="gross_total" readonly /></th>
                                    </tr>
                                    <tr>
                                        <td><b>@0%</b></td>
                                        <td><b></b></td>
                                        <td><b>@18%</b></td>
                                        <td><b></b></td>
                                        <td><b>SGST</b></td>
                                        <td><input type="text" class="form-control sgst" readonly></td>
                                        <td class="GSTAmount-text"><b>GST Amount</b></td>
                                        <td class="gst-total"><input type="number" name='gst_total' placeholder='0.00' class="form-control" id="gst_total" readonly /></td>
                                    </tr>
                                    <tr>
                                        <td><b>@5%</b></td>
                                        <td><b></b></td>
                                        <td><b>@28%</b></td>
                                        <td><b></b></td>
                                        <td><b>CGST</b></td>
                                        <td><input type="text" class="form-control cgst" readonly></td>
                                        <td><b>Net Amount</b></td>
                                        <td class="net-amount"><input type="number" name='net_amount' placeholder='0.00' class="form-control" id="netamount_total" readonly" /></td>
                                    </tr>
                                    <tr >
                                        <td colspan="2"><b>Amount in Words</b></td>
                                        <td colspan="4" class="colspan-custom">
                                            <div id="word"></div>
                                        </td>
                                        <td class="hide-payment-status"><b>Payment Status</b></td>
                                        <td class="hide-payment-status"><select class="custom-select form-control">
                                                <option selected>Choose...</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select></td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- button Table -->
                            <table width="100%" border="1" style="text-align: center;" class="re-6-hide">
                                <tbody>
                                	<tr>
                                		<td><button type="submit" class="btn btn-grad">Save</button></td>
                                		<td>
                                			<input type="button" class="btn btn-grad" name="" value="Clear">
                                		</td>
                                		<td>
                                			<input type="button" id="printInvoice" class="btn btn-grad" name="" value="Print Invoice">
                                		</td>
                                		<td>
                                			<input type="button" id="print-dc" class="btn btn-grad" name="" value="Print DC">
                                		</td>
                                		<td>
                                			<input type="button" class="btn btn-grad print-re-6" name="" value="Print RE-6">
                                		</td>
                                		<td>
                                			<input type="button" class="btn btn-grad" name="" value="Exit">
                                		</td>
                                	</tr>
                                    <!-- <tr>
                                        <td><button type="submit" class="btn btn-grad">Save</button></td>
                                        <td><button class="btn btn-grad">Clear</button></td>
                                        <td><button id="printInvoice" class="btn btn-grad">Print-Invoice</button></td>
                                        <td><button id="print-dc" class="btn btn-grad">Print DC</button></td>
                                        <td><button class="btn btn-grad print-re-6">Print RE-6</button></td>
                                        <td><button class="btn btn-grad">Exit</button></td>
                                    </tr> -->
                                </tbody>
                            </table>
                            <!-- invoice Footer -->
                            <table width="100%" border="1" class="invoice-footer re-6-hide">
                                <tbody>
                                    <tr>
                                        <td width="70%" class="bank-details-data">
                                            <table width="100%" border="1" class="bank-details-table">
                                                <tbody>
                                                    <tr>
                                                        <td class="bank-title"><b>Bank Details</b></td>
                                                        <td width="44%">ICICI Bank, Uppal Kalan Branch.</td>
                                                        <td>A/c No :131405000712</td>
                                                    </tr>
                                                    <tr>
	                                                    <td></td>
                                                    	<td colspan="2">IFSC Code : ICIC0001314</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                        <td rowspan="2" align="center"><b>For M/s Shivarathri
                                                Chandraiah</b> <br> <br> <br> <br> <br><br> <br>
                                            <br>
                                            <p style="text-align: center;">
                                                <b>Authorized Signatory</b>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td><b>Notes:</b></td>
                                                        <td>
                                                            <ol class="invoice-notes">
                                                                <li>Goods once sold will not be taken back or
                                                                    exchanged.</li>
                                                                <li>Recipent has to follow as per Explosives Act
                                                                    1884, & Rule of -2008</li>
                                                                <li>Payment Strictly as per terms & conditions
                                                                    agreed otherwise interest will be charged @ 9% P.a</li>
                                                                <li>Subject to ALAIR Jurisdiction.</li>
                                                                <li>Free on Board</li>
                                                            </ol>
                                                            <p class="rec-sign" style="text-align: right;">Receiver Signature</p>
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
                <!-------------------------------- DC Print -------------------------------------->
            </div>
        </div>
        <!-- Modal -->
        <!-- Button trigger modal -->
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button> -->
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
                    <!-- <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div> -->
                </div>
            </div>
        </div>
    </form:form>
</body>
<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
<script language="javascript" type="text/javascript" src="js/custom.js"></script>
<!-- <script src="webjars/popper.js/1.14.3/umd/popper.js"></script> -->
<script src="webjars/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="js/datatable.js"></script>
<script src="js/jQuery.print.js"></script>
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
	
    //amount in words
    var totalVal= $('#netamount_total').val()
    word.innerHTML=convertNumberToWords(totalVal+'only');

    //gst Calculation
    var custStatecode = parseInt($('.stateCode').val());
    var gstTotalval = $('#gst_total').val();
     if(custStatecode=="36") {
    	$('.igst').val(gstTotalval);
    }else{
    	$('.sgst').val(gstTotalval/2);
    	$('.cgst').val(gstTotalval/2);
    } 
    
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

            var table = $('#example').DataTable({
                data: values, //Table Data fields
                keys: {
                    keys: [13 /* ENTER */ , 38 /* UP */ ,
                        40 /* DOWN */
                    ]
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
                                    'product-description_' +
                                    i +
                                    '')
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
	$('.colspan-custom').attr('colspan','6');
	$.print('.bill-section');
	setTimeout(function(){
		$('.colspan-custom').attr('colspan','4');
	}, 1);
});

$('#print-dc').click(function() {
    $(".bill-section").print({
        noPrintSelector: ".hide-dc",
        //Custom stylesheet
        stylesheet: "css/dc-print.css"
    });
})

$('.print-re-6').click(function() {
    $(".bill-section").print({
        noPrintSelector: ".re-6-hide",
        //Custom stylesheet
        stylesheet: "css/re-6-print.css"
    });
})
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