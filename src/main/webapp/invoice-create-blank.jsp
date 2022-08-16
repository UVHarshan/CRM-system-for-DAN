<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleInvoiceCreate">Blank Invoice Create</title>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900"
	rel="stylesheet" />

<link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
<link href="./dist-assets/css/plugins/perfect-scrollbar.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="./dist-assets/css/plugins/fontawesome-5.css" />
<link href="./dist-assets/css/plugins/metisMenu.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="./dist-assets/css/plugins/datatables.min.css" />

<link href="./dist-assets/css/plugins/fontawesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />

<style>
.no-border {
	border-top-style: hidden;
	border-right-style: hidden;
	border-left-style: hidden;
	border-bottom-style: groove;
	border: none !important;
	background-color: #f8f9fa00 !important;
}

.no-outline:focus {
	outline: none !important;
	background-color: #f8f9fa00 !important;
}

.last-td-color {
	background-color: #578ebe;
	color: white;
	text-align: center;
}

.center-content {
	text-align: center;
	padding: auto;
}

.right-content {
	text-align: right;
}

.amount-content-color {
	background-color: #eee !important;
	text-align: right;
}
</style>
</head>

<body class="text-left">
	<%@ include file="common/CacheControl.jsp"%>
	<div id="sideBarDiv"
		class="app-admin-wrap layout-sidebar-vertical sidebar-full ">

		<!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
		<div class="sidebar-panel bg-white">
			<div
				class="gull-brand pr-3 text-center mt-4 mb-2 d-flex justify-content-center align-items-center">
				<img class="pl-3" src="./dist-assets/images/logo.png" alt="alt" />
				<!--  <span class=" item-name text-20 text-primary font-weight-700">GULL</span> -->
				<div class="sidebar-compact-switch ml-auto">
					<span></span>
				</div>
			</div>
			<!--  user -->
			<!-- ============ leftMenu start ============= -->
			<%@ include file="common/leftMenu.jsp"%>
			<!-- ============ leftMenu end ============= -->
			<!--  side-nav-close -->
		</div>
		<div class="switch-overlay"></div>
		<div class="main-content-wrap mobile-menu-content bg-off-white m-0"
			style="z-index: 1;">

			<!-- ============ topMenu start ============= -->
			<%@ include file="common/topMenu.jsp"%>
			<!-- ============ topMenu end ============= -->

			<!-- ============ Body content start ============= -->

			<div class="main-content pt-2" style="z-index: 1;">
				<!-- <div class="row">
                    <div class="col-md-5">
                        <i class=" text-20 cursor-pointer" role="generic"></i> <h1 class="mr-2">  Staff List</h1>
                    </div>
                    <div class="col-md-7">
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Batch Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff List CSV Output</button> 
                    </div>
                    
                </div> -->
				<!-- <div class="separator-breadcrumb border-top"></div>  -->

				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-file-alt text-30" role="generic"></i><span
												id="pageSpanHeadingInvoiceCreate"> Invoice Create </span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingInvoiceCreate">You
											can Create the invoice</p>
									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">											

												<button
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button' onclick="window.history.back();">
													<span id="buttonSpanReturn">Return</span>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div id="accordion" class="m-3 ">

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-target="#resumeInformation" aria-expanded="false"
															aria-controls="resumeInformation">
															<div class="row">
																<div class="col-10 " style="text-align: left;"
																	id="accordionDivInvoiceInformation">Invoice
																	Information</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="resumeInformation" class="collapse show"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceNumber"> Invoice Number
																	</span>
																</div>
																<div>
																	<input type="text" id="invoiceNumber" class="form-control" readonly>
																</div>
																<div id="errorInvoiceNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceCreationDate"> Invoice
																		Creation Date </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="invoiceCreationDate"
																		class="form-control">
																</div>
																<div id="errorInvoiceCreationDate" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanorderNumber"> Order Number </span>
																</div>
																<div>
																	<input type="Text" id="orderNumber"
																		class="form-control">
																</div>
																<div id="errorOrderNumber" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanClosingDate"> Closing Date</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="closingDate"
																		class="form-control">
																</div>
																<div id="errorClosingDate" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPersonInCharge"> The person in
																		charge of the case</span>
																</div>
																<div>
																	<Select id="PersonInCharge" class="form-control">
																		<option value="" id="optionPersonInCharge">Select Person In Charge of the case</option>
																	</Select>
																</div>
																<div id="errorPersonInCharge" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalesRepresentative"> Sales Representative</span>
																</div>
																<div>
																	<Select id="SalesRepresentative" class="form-control">
																		<option value="" id="selectSalesRepresentative">Select Sales Representative</option>
																	</Select>
																</div>
																<div id="errorSalesRepresentative" style="color: red;"></div>
															</div>
                                                            </div>                                                           
                                                            <div class="row">
                                                            <div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTargetPeriodStart"> Target Period Start</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="targetPeriodStart" class="form-control">
																</div>
																<div id="errorTargetPeriodStart" style="color: red;"></div>
															</div>
                                                            <div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTargetPeriodEnd"> Target Period End</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="targetPeriodEnd" class="form-control">
																</div>
																<div id="errorTargetPeriodEnd" style="color: red;"></div>
															</div>
                                                            </div>
                                                            
                                                            <div class="row">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCompanyName"> Customer
																		Company Name</span>
																</div>
																<div>
																	<input id="customerCompanyName" class="form-control"
																		readonly="readonly">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeName">
																		Customer Representative Name</span>
																</div>
																<div>
																	<input readonly type="text"
																		id="customerRepresentativeName" class="form-control">
																</div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTaxRate">Tax Rate</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="taxRate" name="taxRate" class="form-control" role="combobox">
																		<option data-rate="0" value="" id="selectOptionSelecttaxRate">Select Tax</option>
																	</select>
																</div>
																<div id="errorTaxRate" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBillingStatus"> Billing Status
																	</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="billingStatus" name="billingStatus"
																		class="form-control" role="combobox">
																		<option value="" id="selectOptionSelectInvoiceStatus">Select Invoice Status</option>
																		<option value="1"
																			id="optionSelectBillingStatusUnpaid">Unpaid</option>
																		<option value="2" id="optionSelectBillingStatusDeposited">Deposited</option>
																		<option value="3"
																			id="optionSelectBillingStatusReserve">Reserve
																			</option>
																		<option value="4" id="optionSelectBillingStatusCancel">Cancel
																			</option>
																	</select>
																</div>
																<div id="errorBillingStatus" style="color: red;"></div>
															</div>
														</div>

														<div class="row pt-3 pb-3">

															<div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceDetails"> Invoice
																		Details </span>
																</div>
																<span id="pageSpanInvoiceDetailsHelp"
																	class="RequiredStar"> If you change the details,
																	the amount may differ from the output "Internal work
																	details".</span>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered mb-0"
																		id="InvoiceDetails_table" style="width: 100%">
																		<thead id="InvoiceDetailsTaxableTheadId">
																			<tr>
																				<th id="tableInvoiceDetailsTHNo">No</th>
																				<th id="tableInvoiceDetailsTHMajorItems"
																					style="width: 20%">Item</th>
																				<th id="tableInvoiceDetailsTHContents"
																					style="width: 30%">Contents</th>
																				<th id="tableInvoiceDetailsTHAmountMoney"
																					style="width: 10%">Amount of Money</th>

																				<th id="tableInvoiceDetailsTHConsumptionTax"
																					style="width: 10%">Consumption Tax</th>
																				<th id="tableInvoiceDetailsCalcButton"
																					style="width: 10%"></th>
																				<th id="tableInvoiceDetailsTHConsumptionTaxSubTotal"
																					style="width: 10%"> Sub Total</th>
																				<th id="tableInvoiceDetailsAddDelete"
																					style="width: 12%"></th>
																			</tr>
																		</thead>
																		<tbody id="InvoiceDetailsTaxableTbodyId">
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">1</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="人件費"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">2</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="残業費"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																				<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">3</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="深夜労働費"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																				<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">4</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="休日労働費"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">5</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="手当"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">6</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="立替金(交通費)"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">7</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="立替金(買取金)"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">8</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="立替金(経費)"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">9</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="立替金(宿泊費)"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">10</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="立替金(その他)"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]" value="">
																				<td class="">11</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]" value="日給月給控除"  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				<input name="invoiceItemTaxableContents[]" value=""  type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableAmountofMoney[]" value="" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td class="amount-content-color">
																				<input name="invoiceItemTaxableConsumptionTax[]" value="" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>&nbsp;
																					<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">	
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																			
																			
																			
																			
																	<!-- 		
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]">
																				<td class="">2</td>
																				<td class="center-content">
																				<input name="invoiceItemTaxableItemName[]"  value="" type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td><input name="invoiceItemTaxableContents[]" type="text" class="form-control no-border no-outline amount-content-color item-non-major"></td>
																				<td class="amount-content-color"><input
																					name="invoiceItemTaxableAmountofMoney[]" type="text"
																					onfocusout="checkInvoiceAmountReturn(this)"
																					class="form-control no-border no-outline amount-content-color item-non-major ">
																				</td>
																				<td class="amount-content-color"><input
																					name="invoiceItemTaxableConsumptionTax[]" readonly
																					type="text"
																					class="form-control no-border no-outline amount-content-color item-non-major">
																				</td>
																				<td>
																					<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)"
																						class="DefaultButton3 btn btn-success  mr-2">Calculation</button>
																				</td>
																				<td class="amount-content-color"
																					name="invoiceItemNonTaxableSubTotal[]"></td>
																				<td>
																					<button class="btn btn-danger" onclick="calculateTaxPaymentRow(this)"
																						onclick="removeAdvancePaymentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>
																					<button class="btn btn-dark"
																						onclick="clearAdvancePaymentRow(this)">
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>	 -->
																																		
																		</tbody>
																		<tfoot id="InvoiceDetailsTaxableTfootId">																			
																			<tr>
																				<th colspan="2"
																					id="tableInvoiceDetailsSubtotalTaxable"
																					class="right-content"></th>
																				<th colspan="1" style="border-right: none"></th>
																				<th colspan="1" class="amount-content-color">
																					<span>¥</span><span id="tableInvoiceDetailsSubtotalTaxableVal" style="border-left: none; border-right: none;">0</span>
																				</th>
																				<th colspan="1" style="border-right: none" class="amount-content-color">
																				<span>¥</span><span id="tableInvoiceConsumptionTaxSubTotal" class="amount-content-color">0</span>
																				</th>
																				<th colspan="1" class="center-content">
																				<span  style="border-left: none; border-right: none;"></span>
																				</th>
																				<th colspan="1" class="center-content amount-content-color">
																				<span>¥</span><span id="tableInvoiceDetailsSubtotalTaxableVal2" style="border-left: none; border-right: none;" class="amount-content-color"> 0</span>
																				</th>
																				<th colspan="1" class="center-content">
																					<button class="btn btn-success" onclick="addTaxableInvoiceItemRow()" id="TaxableInvoiceItemRowAdd">Add Row</button>
																				</th>																			
																			</tr>
																		</tfoot>
																	</table>
																</div>
															</div>
														</div>
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks </span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12">
																<textarea class="form-control" id="InvoiceRemarks"
																	placeholder=""></textarea>
															</div>
														</div>
													<div
															class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
															<button class="btn btn-info" id="buttonSaveInvoiceDetails">Save Invoice</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="loading" id="loaderNotify" style="display: none;">
					<div class="spinner-bubble spinner-bubble-primary m-7"></div>
				</div>
				<!-- end of main-content -->
			</div>
			<!-- <div class="sidebar-overlay open"></div> Footer Start-->
			<div class="flex-grow-1"></div>
			<!-- Footer Start -->

			<!-- ============ Footer start ============= -->
			<%@ include file="common/footer.jsp"%>
			<!-- ============ Footer end ============= -->

			<!-- fotter end -->
		</div>
	</div>
	<!-- ============ Search UI Start ============= -->

	<!-- ============ Search UI End ============= -->

		<span id="spanScriptID"></span>
		<script src="./dist-assets/js/language_main.js"></script>

		<script>
		const lan = getSiteLanguage();
		var pageLanguage = lan;
		loadSelectedLanguage(pageLanguage,"invoice");
		</script>

	<script src="./dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
	<script src="./dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
	<script src="./dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="./dist-assets/js/scripts/tooltip.script.min.js"></script>
	<script src="./dist-assets/js/scripts/script.min.js"></script>
	<script src="./dist-assets/js/scripts/script_2.min.js"></script>
	<script src="./dist-assets/js/scripts/sidebar.large.script.min.js"></script>
	<script src="./dist-assets/js/plugins/feather.min.js"></script>
	<script src="./dist-assets/js/plugins/metisMenu.min.js"></script>
	<script src="./dist-assets/js/scripts/layout-sidebar-vertical.min.js"></script>
	<script src="./dist-assets/js/plugins/echarts.min.js"></script>
	<script src="./dist-assets/js/scripts/echart.options.min.js"></script>
	<script src="./dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
	<script src="./dist-assets/js/plugins/datatables.min.js"></script>
	<script src="./dist-assets/js/scripts/datatables.script.min.js"></script>

	<script src="./dist-assets/js/invoice-details-validate-forblank.js"></script>

	<script>
	
	const serverHTTP = "<%=serverHTTP%>";
	const GUID = localStorage.getItem('GUID') ;
	const UUID =  localStorage.getItem('uuid');
	const role = localStorage.getItem("userRole");
	
	const invoiceCustomerID = "<%= request.getParameter("companyId")%>";
	const invoiceQuotationId = "<%= request.getParameter("QuotationId")%>";
	const invoiceCaseId = "<%= request.getParameter("CaseId")%>";
    let customerId="";
    
    
		$(document).ready(function() {
			$.ajax({
				beforeSend : function(request) {
					document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'MasterAdminTax/GetConsumptionTax',
				method : 'GET',
				contentType : 'application/json',
				//data : dataSet,
				dataType : 'json',
				async: false,
				success : function(result, status, request) {
					if (result.status == 200) {	
						var taxRate  = document.getElementById('taxRate');
						
						if(result.data != null)
						{
						
							for(i=0 ; i<result.data.length; i++ )
							{
								//taxRate.options[taxRate.options.length] = new Option(result.data[i].name+"%", result.data[i].value,);
								 $('#taxRate').append($('<option></option>').val( result.data[i].value).text(result.data[i].name+"%").attr('data-rate',result.data[i].name)); 
							}
							
						}
						
					} else {
						console.log("not ok")
					}
				},
				complete : function(data) {
					document.getElementById("loaderNotify").style.display = "none";
				},
				error : function(error) {							
					console.log(JSON.stringify(error));
				}
			}); 
			let dataSet = '{"id" : 0, "authority": '+role+ '}';

			$.ajax({
				beforeSend : function(request) {
					document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Employee/GetInchargeOfStaff',
				method : 'POST',
				contentType : 'application/json',
				data : dataSet,
				dataType : 'json',
				async: false,
				success : function(result, status, request) {
					if (result.status == 200) {
						console.log("ok")
						var PersonInCharge  = document.getElementById('PersonInCharge');
						
						if(result.data != null)
						{
						
							for(i=0 ; i<result.data.length; i++ )
							{
								PersonInCharge.options[PersonInCharge.options.length] = new Option(result.data[i].name, result.data[i].value);
							}
							
						}
						
						var SalesRepresentative  = document.getElementById('SalesRepresentative');
						
						if(result.data != null)
						{
						
							for(i=0 ; i<result.data.length; i++ )
							{
								SalesRepresentative.options[SalesRepresentative.options.length] = new Option(result.data[i].name, result.data[i].value);
							}
							
						}
					} else {
						console.log("not ok")
					}
				},
				complete : function(data) {
					document.getElementById("loaderNotify").style.display = "none";
				},
				error : function(error) {							
					console.log(JSON.stringify(error));
				}
			});

			$("#staffPaymentMethod").change(function() {
				bankTransferLoad();
			});
			
			let dataPassNode = {};
			dataPassNode['customerId'] = invoiceCustomerID;
			dataPassNode['quotationId'] = invoiceQuotationId;
			dataPassNode['caseId'] = invoiceCaseId;
			
			$.ajax({
				beforeSend : function(request) {
					document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Invoice/ViewInvoiceInfo',
				method : 'POST',
				async: false,
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						ViewInvoiceInfo(result);
					} else {
					 // showMessage('error',"N1221");
					 console.log("Sorry Quotation Info not working");
					}
				},
				complete:function(data){
					document.getElementById("loaderNotify").style.display = "none";
					},
				error : function(error) {
					//showMessage('error',"N1221");
					console.log("Sorry Invoice ViewInvoiceInfo not working");
					console.log(JSON.stringify(error));
				}
		});	
			
		});
		
		function ViewInvoiceInfo(result)
		{
			document.getElementById("customerCompanyName").value =  result.data.companyName;
			document.getElementById("customerRepresentativeName").value =  result.data.customerRepresentativeName;
			//document.getElementById("taxRate").value = result.data.taxRate;
			customerId = result.data.customerId;
			const date = new Date();
			const currentYear  = date.getFullYear();
		    const currentMonth = date.getMonth()+1;
			const currentDate = date.getDate();
			const today =  currentYear+"-"+currentMonth+"-"+currentDate;
			document.getElementById("invoiceCreationDate").value = today;
			document.getElementById("closingDate").value = today;
		    //let taxableItemsCount    =  result.data.quotationItemTaxable.length;
		    //let nonTaxableItemsCount =  result.data.quotationItemNonTaxable.length;
		    //let totalCount = taxableItemsCount+nonTaxableItemsCount;

		    let x=0;
		    let amountofMoneySubTotal = 0 ;
		    let consumptionTaxSubTotal = 0 ;
		    let subTotalSubTotal = 0 ;
		    
		  /*   if(totalCount>0)
		    { $("#InvoiceDetailsTaxableTbodyId").empty();} */
		    
/* 		    for(i=0;i<taxableItemsCount;i++)
		    {
		    	x++;
		    	let id =  result.data.quotationItemTaxable[i].id;
		    	let item =  result.data.quotationItemTaxable[i].item != null ? result.data.quotationItemTaxable[i].item : "" ;
		    	let remarks = result.data.quotationItemTaxable[i].remarks  != null ? result.data.quotationItemTaxable[i].remarks : "" ;
		    	let amount = result.data.quotationItemTaxable[i].amount  != null ? result.data.quotationItemTaxable[i].amount : 0 ;
		    	amount  =  parseInt(amount);
		    	let taxType = result.data.quotationItemTaxable[i].tax  != null ? result.data.quotationItemTaxable[i].tax : "" ;
		    	let taxpercentage = 0 ;
		    	if(taxType==1)
		    	{
		    		taxpercentage = 8;
		    	}else if(taxType==2)
		    	{
		    		taxpercentage = 10;
		    	}
		    	
		    	let taxtAmount = amount * (taxpercentage/100) ;
		    	taxtAmount = parseInt(taxtAmount);
		    	let itemSubtotal = amount + taxtAmount  ;
		    	itemSubtotal = parseInt(itemSubtotal);
		    	
		    	amountofMoneySubTotal = amountofMoneySubTotal + amount;
				consumptionTaxSubTotal = consumptionTaxSubTotal + taxtAmount;
				subTotalSubTotal = subTotalSubTotal + itemSubtotal;
	      		      
			    let newRow =  '<tr id="InvoiceDetailsTaxableTrId">'+
									'<input type="hidden" name="InvoiceItemTaxableID[]" value="'+id+'">'+
								'<td class="">'+x+'</td>'+
								'<td class="center-content">'+
								'<input name="invoiceItemTaxableItemName[]" value="'+item+'"  type="text" class="form-control no-border no-outline item-non-major">'+
								'</td>'+
								'<td>'+
								'<input name="invoiceItemTaxableContents[]" value="'+remarks+'"  type="text" class="form-control no-border no-outline item-non-major">'+
								'</td>'+
								'<td class="amount-content-color">'+
								'<input name="invoiceItemTaxableAmountofMoney[]" value="'+amount+'" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">'+
								'</td>'+
								'<td class="amount-content-color">'+
								'<input name="invoiceItemTaxableConsumptionTax[]" value="'+taxtAmount+'" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">'+
								'</td>'+
								'<td>'+
									'<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>'+
								'</td>'+
								'<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]">'+itemSubtotal+'</td>'+
								'<td>'+
									'<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">'+
										'<i class="fa fa-trash"></i>'+
									'</button>&nbsp;'+
									'<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">'+
										'<i class="fa fa-eraser"></i>'+
									'</button>'+
								'</td>'+
							'</tr>';
                    		      
                     $("#InvoiceDetails_table tbody").append(newRow);
		    } */	
		    
/* 		    for(i=0;i<nonTaxableItemsCount;i++)
		    {
		    	x++;
		    	let id =  result.data.quotationItemNonTaxable[i].id;
		    	let item =  result.data.quotationItemNonTaxable[i].item != null ? result.data.quotationItemNonTaxable[i].item : "" ;
		    	let remarks = result.data.quotationItemNonTaxable[i].remarks  != null ? result.data.quotationItemNonTaxable[i].remarks : "" ;
		    	let amount = result.data.quotationItemNonTaxable[i].amount  != null ? result.data.quotationItemNonTaxable[i].amount : "" ;
		    	let taxType = result.data.quotationItemNonTaxable[i].tax  != null ? result.data.quotationItemNonTaxable[i].tax : "" ;
	      		 
		    	amount = parseInt(amount);
		    	amountofMoneySubTotal =  amountofMoneySubTotal + amount;
				consumptionTaxSubTotal = consumptionTaxSubTotal + 0;
				subTotalSubTotal = subTotalSubTotal + amount;
				
			    let newRow =  '<tr id="InvoiceDetailsTaxableTrId">'+
									'<input type="hidden" name="InvoiceItemTaxableID[]" value="'+id+'">'+
								'<td class="">'+x+'</td>'+
								'<td class="center-content">'+
								'<input name="invoiceItemTaxableItemName[]" value="'+item+'"  type="text" class="form-control no-border no-outline item-non-major">'+
								'</td>'+
								'<td>'+
								'<input name="invoiceItemTaxableContents[]" value="'+remarks+'"  type="text" class="form-control no-border no-outline item-non-major">'+
								'</td>'+
								'<td class="amount-content-color">'+
								'<input name="invoiceItemTaxableAmountofMoney[]" value="'+amount+'" type="text" onfocusout="checkInvoiceAmountReturn(this)" class="form-control no-border no-outline amount-content-color item-non-major">'+
								'</td>'+
								'<td class="amount-content-color">'+
								'<input name="invoiceItemTaxableConsumptionTax[]" value="'+taxType+'" readonly type="text" class="form-control no-border no-outline amount-content-color item-non-major">'+
								'</td>'+
								'<td>'+
									'<button id="calculation1" name="calculation" onclick="calculateTaxPaymentRow(this)" class="DefaultButton3 btn btn-success  mr-2">Calculation</button>'+
								'</td>'+
								'<td class="amount-content-color" name="invoiceItemNonTaxableSubTotal[]">'+amount+'</td>'+
								'<td>'+
									'<button class="btn btn-danger" onclick="removeAdvancePaymentRow(this)">'+
										'<i class="fa fa-trash"></i>'+
									'</button>&nbsp;'+
									'<button class="btn btn-dark" onclick="clearAdvancePaymentRow(this)">'+
										'<i class="fa fa-eraser"></i>'+
									'</button>'+
								'</td>'+
							'</tr>';
                    		      
                     $("#InvoiceDetails_table tbody").append(newRow);
		    }	 */
		    
		    document.getElementById("tableInvoiceDetailsSubtotalTaxableVal").innerHTML = amountofMoneySubTotal
		    document.getElementById("tableInvoiceConsumptionTaxSubTotal").innerHTML = consumptionTaxSubTotal  
		    document.getElementById("tableInvoiceDetailsSubtotalTaxableVal2").innerHTML = subTotalSubTotal
		}
		
		function calculateSums()
		{
			let amountofMoneyNodeArray =  document.getElementsByName("invoiceItemTaxableAmountofMoney[]");
			let consumptionTaxNodeArray =  document.getElementsByName("invoiceItemTaxableConsumptionTax[]");
			let taxableSubTotalNodeArray =  document.getElementsByName("invoiceItemNonTaxableSubTotal[]");
			
			let amountofMoneySubTotal = 0;
			let consumptionTaxSubTotal = 0;
			let subTotalSubTotal =0;
			for(i=0;i<amountofMoneyNodeArray.length;i++)
			    {
				    let amountofMoney =parseInt(amountofMoneyNodeArray[i].value.trim());
				    amountofMoney = !isNaN(amountofMoney)?amountofMoney:0
					amountofMoneySubTotal = parseInt(amountofMoneySubTotal) + parseInt(amountofMoney);
				    
				    let consumptionTax = parseInt(consumptionTaxNodeArray[i].value.trim());
				    consumptionTax = !isNaN(consumptionTax)?consumptionTax:0
					consumptionTaxSubTotal = parseInt(consumptionTaxSubTotal) + parseInt(consumptionTax);
				    
				    let SubTotal = parseInt(taxableSubTotalNodeArray[i].innerHTML.trim());
				    SubTotal = !isNaN(SubTotal)?SubTotal:0
					subTotalSubTotal = parseInt(subTotalSubTotal) + parseInt(SubTotal);
				}
			
		    document.getElementById("tableInvoiceDetailsSubtotalTaxableVal").innerHTML = amountofMoneySubTotal
		    document.getElementById("tableInvoiceConsumptionTaxSubTotal").innerHTML = consumptionTaxSubTotal  
		    document.getElementById("tableInvoiceDetailsSubtotalTaxableVal2").innerHTML = subTotalSubTotal
		}
		
	function calculateRowSums(element)
		{
			var $tr = $(element).closest('tr');
			let invoiceItemAmount = parseInt($tr.find('input[name="invoiceItemTaxableAmountofMoney[]"]').val());
			invoiceItemAmount = !isNaN(invoiceItemAmount)?invoiceItemAmount:0
					
			let consumptionTaxValue = parseInt($tr.find('input[name="invoiceItemTaxableConsumptionTax[]"]').val());
			consumptionTaxValue = !isNaN(consumptionTaxValue)?consumptionTaxValue:0;

			let newRowSubTotal =  parseInt(invoiceItemAmount) + parseInt(consumptionTaxValue);
			$tr.find('td[name="invoiceItemNonTaxableSubTotal[]"]').html(newRowSubTotal);
			
			calculateSums();
		}
		
		function saveInvoice()
		{
			let invoiceNumber = document.getElementById("invoiceNumber").value;
			let invoiceCreationDate = document.getElementById("invoiceCreationDate").value;
			let orderNumber = document.getElementById("orderNumber").value;
			let closingDate = document.getElementById("closingDate").value;
			let PersonInCharge = document.getElementById("PersonInCharge").value;
			let SalesRepresentative = document.getElementById("SalesRepresentative").value;
			let customerCompanyName = document.getElementById("customerCompanyName").value;
			let customerRepresentativeName = document.getElementById("customerRepresentativeName").value;
			let taxRate = document.getElementById("taxRate").value;
			let billingStatus = document.getElementById("billingStatus").value;
			let InvoiceRemarks = document.getElementById("InvoiceRemarks").value;
			
			let  amountofMoneySubTotal =  document.getElementById("tableInvoiceDetailsSubtotalTaxableVal").innerHTML;
			let  consumptionTaxSubTotal =  document.getElementById("tableInvoiceConsumptionTaxSubTotal").innerHTML;
			let  subTotalSubTotal = document.getElementById("tableInvoiceDetailsSubtotalTaxableVal2").innerHTML ;
			
			let InvoiceItemTaxableIDNode = document.getElementsByName("InvoiceItemTaxableID[]");
			let invoiceItemTaxableItemNameNode = document.getElementsByName("invoiceItemTaxableItemName[]");
			let invoiceItemTaxableContentsNode = document.getElementsByName("invoiceItemTaxableContents[]");
			let invoiceItemTaxableAmountofMoneyNode = document.getElementsByName("invoiceItemTaxableAmountofMoney[]");
			let invoiceItemTaxableConsumptionTaxNode = document.getElementsByName("invoiceItemTaxableConsumptionTax[]");
			let invoiceItemNonTaxableSubTotalNode = document.getElementsByName("invoiceItemNonTaxableSubTotal[]");

			 var dataNode = {};
			 var dataArraytempInvoiceItem = [];
			 
			 for(var i = 0; i < InvoiceItemTaxableIDNode.length; i++)
		     {
			   var invoiceItemId = InvoiceItemTaxableIDNode[i].value != ""? InvoiceItemTaxableIDNode[i].value :null;
			   var item = invoiceItemTaxableItemNameNode[i].value != ""? invoiceItemTaxableItemNameNode[i].value :null;
			   var content = invoiceItemTaxableContentsNode[i].value != ""? invoiceItemTaxableContentsNode[i].value :null;
			   var amount = invoiceItemTaxableAmountofMoneyNode[i].value != ""? invoiceItemTaxableAmountofMoneyNode[i].value :null;
			   var consumptionTax = invoiceItemTaxableConsumptionTaxNode[i].value != ""? invoiceItemTaxableConsumptionTaxNode[i].value :null;
			   var total = invoiceItemNonTaxableSubTotalNode[i].value != ""? invoiceItemNonTaxableSubTotalNode[i].innerHTML.trim() :null;
			   
			   var tempInvoiceItem = { 
					     "invoiceItemId":null,
		                 "item": item,
		                 "content": content,
		                 "amount": amount,
		                 "consumptionTax": consumptionTax,
		                 "total": total,
		                  }
   
			   dataArraytempInvoiceItem.push(tempInvoiceItem);
		     }
			 	
			    dataNode['uuid'] = UUID;
				dataNode['invoiceId'] = null;
				dataNode['customerId'] = customerId;
				dataNode['quotationId'] = invoiceQuotationId;
				dataNode['caseId'] = null;
				dataNode['invoiceCreationDate'] = invoiceCreationDate;
				dataNode['orderNumber'] = orderNumber;
				dataNode['closingDate'] = closingDate;
				dataNode['targetPeriodStart'] = null;
				dataNode['targetPeriodEnd'] = null;
				dataNode['caseManager'] = PersonInCharge;
				dataNode['salaryRepresentativeName'] = SalesRepresentative;
				dataNode['taxRate'] = taxRate;
				dataNode['billingStatus'] = billingStatus;
				dataNode['totalAmount'] = amountofMoneySubTotal;
				dataNode['totalConsumptionTax'] = consumptionTaxSubTotal;
				dataNode['subtotal'] = subTotalSubTotal;
		      	dataNode['invoiceItemDtoList'] = dataArraytempInvoiceItem;
		      	dataNode['remark'] = InvoiceRemarks;
		       	passData = JSON.stringify(dataNode);
			 
			$.ajax({
					beforeSend : function(request) {
						document.getElementById("loaderNotify").style.display = "";
						request.setRequestHeader("GUID", GUID);
					},
					url : serverHTTP + 'Invoice/SaveInvoiceInfo',
					method : 'POST',
					async: false,
					contentType : 'application/json',
					data : passData,
					dataType : 'json',
					success : function(result, status, request) {
						if (result.status == 202) {
							
							invoiceNumber =  result.data.invoiceNumber;
							document.getElementById("invoiceNumber").value = invoiceNumber;
							document.getElementById("buttonSaveInvoiceDetails").disabled = true;
							checkMessage('success','N1267','N0000' ,invoiceNumber,"");	
						} else {
						   showMessage('error',"N1268");
						   console.log("Sorry Quotation Info not working");
						}
					},
					complete:function(data){
						document.getElementById("loaderNotify").style.display = "none";
						},
					error : function(error) {
						showMessage('error',"N1268");
						console.log("Sorry Invoice ViewInvoiceInfo not working");
						console.log(JSON.stringify(error));
					}
			});	  	
		       	
		}

		var table;
		var dataList;

		function drawDtataTable(language) {
			if (language == "Japanese") {
				search = "探す";
				info = "ページを表示しています _PAGE_ の _PAGES_";
				lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
				zeroRecords = "見つからない - すいません";
				infoEmpty = "記録はありません";
				infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
				previous = "前";
				next = "次";
				first = "最初のページ";
				last = "最終ページ";

			} else {
				search = "Search";
				info = "Showing page _PAGE_ of _PAGES_";
				lengthMenu = "Display _MENU_ records per page";
				zeroRecords = "Nothing found";
				infoEmpty = "No records available";
				infoFiltered = "(filtered from _MAX_ total records)";
				previous = "Previous";
				next = "Next";
				first = "First page";
				last = "Last page";
			}

			table = $('#search_table').DataTable({
				language : {
					search : search,
					info : info,
					lengthMenu : lengthMenu,
					zeroRecords : zeroRecords,
					infoEmpty : infoEmpty,
					infoFiltered : infoFiltered,
					"paginate" : {
						previous : previous,
						next : next,
						first : first,
						last : last
					}
				},
				responsive : true,
				responsive : {
					details : {
						type : 'column',
						target : 'tr'
					}
				},
				columnDefs : [ {
					orderable : false,
					targets : 0
				}, {
					orderable : false,
					targets : 1
				}, {
					orderable : false,
					targets : 5
				}, {
					responsivePriority : 1,
					targets : 5
				}, {
					responsivePriority : 2,
					targets : 2
				}, ],
				order : [ 1, 'asc' ]

			});
		}

		function addTaxableInvoiceItemRow() {
			var $tr = $("#InvoiceDetailsTaxableTrId").first('tr');
			var $clone = $tr.clone();
			var rowCount = $('#InvoiceDetails_table tr').length;
			$clone.find('input').val('');
			$clone.find('td[name="invoiceItemNonTaxableSubTotal[]"]').html('');
			$clone.find('td:eq(3)').removeClass( "errorVal" );
			$clone.find('td:eq(0)').html(rowCount - 1);
			$("#InvoiceDetailsTaxableTbodyId").append($clone);
		}
		
		
		function calculateTaxPaymentRow(element) {
			var $tr = $(element).closest('tr');
			let invoiceItemAmount = parseInt($tr.find('input[name="invoiceItemTaxableAmountofMoney[]"]').val());
			invoiceItemAmount = !isNaN(invoiceItemAmount) && invoiceItemAmount != "" && invoiceItemAmount != null ? invoiceItemAmount : 0;

			let TaxRateElement = document.getElementById('taxRate');
			let TaxRateVal  = parseInt(TaxRateElement.options[TaxRateElement.selectedIndex].getAttribute('data-rate')); 
			
			let newConsumptionTaxValue =   parseInt(invoiceItemAmount) * (TaxRateVal/100);
			$tr.find('input[name="invoiceItemTaxableConsumptionTax[]"]').val( parseInt(newConsumptionTaxValue));
			
			let newRowSubTotal =  parseInt(invoiceItemAmount)+ parseInt(newConsumptionTaxValue);
			$tr.find('td[name="invoiceItemNonTaxableSubTotal[]"]').html(newRowSubTotal);
			
			calculateSums();
			
		}

		
		function removeAdvancePaymentRow(element) {
			if ($('#InvoiceDetails_table tr').length > 3) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "E1101");
			}
			
			calculateSums()
		}
		
		function clearAdvancePaymentRow(element) {
			var $tr = $(element).closest('tr');
			$tr.find('input').val('');
			$tr.find('td[name="invoiceItemNonTaxableSubTotal[]"]').html('');
			$tr.find('td:eq(3)').removeClass( "errorVal" );
			
			calculateSums()
		}

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "invoice");
			setLanguage(selectedLanguage);
		}

		window.onscroll = function() {
			myFunction()
		};

		var topNewBar = document.getElementById("topNewBar");
		var sticky = topNewBar.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				topNewBar.classList.add("sticky")
			} else {
				topNewBar.classList.remove("sticky");
			}
		}

	</script>
</body>

</html>