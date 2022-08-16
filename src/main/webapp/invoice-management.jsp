<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleInvoiceManagement">Invoice Management</title>
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
									<div class="col-md-10 ">
										<h1>
											<i class="fa fa-file-alt text-30" role="generic"></i><span
												id="pageSpanHeadingInvoiceManagement"> Invoice List </span>
										</h1>
										<p id="pageSpanInvoiceManagementNote">You can check the
											invoice information in a list. If you want to create an
											invoice from a quote, select the target quote details button
											and click the "Create from this quote button". If you want to
											create an invoice from a matter, select the target matters
											from a details and click the "Create from this matter" button
											.</p>
									</div>
								</div>

								<div class="row">

									<div class="col-md-12" style="text-align: right; right: 12px">
										<a href="customer-management.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonSpanInvoicefromCustomer">Invoice
													from Customer</span>
											</button> </a> <a href="case-management.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span
													id="buttonSpanInvoiceCreationfromMatter">Invoice
													Creation from Matter </span>
											</button> </a> <a href="quotation-management.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span
													id="buttonSpanInvoiceCreationfromQuotation">Invoice
													Creation from Quotation </span>
											</button> </a>
											<button id="buttonEstimateListCSVOutput"
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-table mr-2 text-20 cursor-pointer"
													role="generic"></i><span
													id="buttonSpanInvoiceListCSVOutput">Estimate list
													CSV output</span>
											</button>
									</div>
								</div>



								<div class="row">
									<div class="col-lg-12 col-md-12 col-xl-12 mt-3">
										<div class="row ">
											<div class="col-lg-10 col-md-12 col-sm-12 pr-0">
												<!-- <div class="card SearchBox"> -->
												<div class="card ml-3 SearchCardDiv">
													<div class="card-body">
														<div class="card-title">
															<i class="fa fa-search text-18" role="generic"></i><span
																id="pageSpanSearch"> Search</span>
														</div>
														<form id="searchForm" method="post">
															<div class="row">

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="salesAssignmentClassification"
																		id="pageLabelInvoiceNumber">Invoice Number</label> 
																	<div>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-file "></i>
																				</div>
																			</div>
																			<input type="text" placeholder="Enter Invoice Number"
																				id="invoiceNumber" class="form-control">
																		</div>
																	</div>
																	<div id="errorInvoiceNumber" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber"
																		id="pageLabelQuotationNumber">Quotation Number</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="quotationNumber" name="quotationNumber"
																			placeholder="Enter Quotation Number"
																			class="form-control" role="textbox">

																	</div>
																	<div id="errorQuotationNumber" style="color: red;"></div>
																</div>



																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodStart"
																		id="pageLabelBillingStatus">Billing Status</label>

																	<div>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-file "></i>
																				</div>
																			</div>
																			<Select id="billingStatus" class="form-control">
																				<option value=""
																					id="optionSelectBillingStatusSelect">Select
																					Billing Status</option>
																				<option value="1"
																					id="optionSelectBillingStatusUnpaid">Unpaid</option>
																				<option value="2"
																					id="optionSelectBillingStatusDeposited">Deposited</option>
																				<option value="3"
																					id="optionSelectBillingStatusReserve">Reserve</option>
																				<option value="4"
																					id="optionSelectBillingStatusCancel">Cancel</option>

																			</Select>
																		</div>
																	</div>

																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="projectTitle" id="pageLabelProjectTitle">
																		Project Title</label>

																	<div>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-file "></i>
																				</div>
																			</div>
																			<input type="text" id="projectTitle"
																				placeholder="Enter Project Title"
																				class="form-control">
																		</div>
																	</div>

																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="projectTitle" id="pageLabelDeadlineFrom">
																		Closing Date From</label>
																	<div>
																		<input id="deadlineFrom" type="date"
																			name="deadlineFrom" class="form-control">
																	</div>
																	<div id="errorDeadlineFrom" style="color: red;"></div>

																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="dispatchClassification"
																		id="pageLabelClosingDateTo">Closing Date To</label>
																	<div>
																		<input id="closingDateTo" name="closingDateTo"
																			class="form-control" type="date">
																	</div>

																	<div id="errorClosingDateTo" style="color: red;"></div>

																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="customerCompanyName"
																		id="pageLabelCustomerCompanyName">Customer
																		Company Name</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="customerCompanyName"
																			placeholder="Enter Customer Company Name"
																			name="customerCompanyName" class="form-control"
																			type="text">
																	</div>
																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ThePersonInCharge"
																		id="pageLabelcustomerRepresentativeName">Customer
																		Representative Name</label>

																	<div></div>

																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<input id="customerRepresentativeName"
																			placeholder="Enter Customer Represent Name"
																			name="customerRepresentativeName"
																			class="form-control" type="text">
																	</div>
																	<div id="errorCustomerRepresentativeName" style="color: red;"></div>


																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ThePersonInCharge" id="pageLabelBelongs">Belongs</label>

																	<div></div>

																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user-circle"></i>
																			</div>
																		</div>
																		<input id="belongs" name="belongs"
																			placeholder="Enter Belongs" class="form-control"
																			type="text">
																	</div>


																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ThePersonInCharge"
																		id="pageLabelSalesRepresentativeName">Sales
																		Representative Name</label>

																	<div></div>

																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																	
																		<Select id="SalesRepresentative" class="form-control">
																		<option value="" id="selectSalesRepresentative">Select
																			Sales Representative</option>
																		
																	</Select>
																	</div>
																	<div id="errorSalesRepresentativeName" style="color: red;"></div>


																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ThePersonInCharge"
																		id="pageLabelNameofPersonInchargeofMatter">Name
																		of Person In charge of Case</label>

																	<div></div>

																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<Select id="personInCharge" class="form-control">
																		<option value="" id="optionPersonInCharge">Select Person In Charge of the case</option>
																		
																	</Select>
																	</div>
																	<div id="errorNameofPersonInchargeofMatter" style="color: red;"></div>


																</div>






															</div>
															<div class="row pt-1 ContentRight">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
																<button id="searchBtn"
																	class="btn btn-info SearchButton-2 ml-0 mr-2 "
																	role="button">Search</button>

															</div>
														</form>
													</div>
												</div>
											</div>


											<div class="col-lg-2 col-md-12 col-sm-12  p-0 m-0">

												<!-- <div class="row" style="background-color: blueviolet; ">  -->
												<!-- <div class="col-md-12 col-lg-12 col-xl-12">  -->
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-1 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalNumberofInvoices">Total Number
																of Invoices</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalNumber"></p>
															</div>
														</div>
													</div>
												</div>

												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivNumberofDeposedInvoices">Number of
																Deposed Invoices</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2"
																	id="numberofDeposedInvoices"></p>
															</div>
														</div>
													</div>
												</div>


												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivNumberofonHoldInvoices">Number of
																on Hold Invoices</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2"
																	id="pNumberofonHoldInvoices"></p>
															</div>
														</div>
													</div>
												</div>

<!-- 												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivNumberofcancelInvoices">Number of
																Cancel Invoices</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2"
																	id="pNumberofcancelInvoices"></p>
															</div>
														</div>
													</div>
												</div>
 -->

												<!--  <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-5 cardBodyDiv "  >
                                            <div class="card-body pt-1 pb-1 mt-1 mb-1" >
                                            <div class="row pt-1 pb-1 mt-1 mb-1"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalPendingStaff">Total Inactive Staff</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalInactive"></p></div>
                                            </div>
                                          </div>  </div>  -->
											</div>

										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">



										<div class="card m-3">
											<div class="card-body">
												<div class="card-title">

													<div class="row">

														<div class="col-lg-12 col-md-12 pl-2 pr-2">
															<i class="i-File-Clipboard-File--Text cursor-pointer"
																role="generic"></i> <span id="pageSpanSearchCaseList">
																Searched Invoice </span>

														</div>

														<div class="col-lg-12 col-md-12 pl-2 pr-2">
															<span id="pageSpanDataTableNote">After confirming
																the assigned staff, select the staff name in the
																assigned staff column and send the "Case assignment
																email".</span>
														</div>

													</div>


												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_table" style="width: 100%">
														<thead>
															<tr class="thClass">
															    <th style="background: rgb(245 249 253);color: #647a8e;"></th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHNo">No</th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHInvoiceNumber">Invoice Number</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHQuotationNumber">Quotation Number</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHBillingStatus">Billing Status</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHMatter">Matter</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHClosingDate">Closing Date</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHCustomerCompanyName">Customer
																	Company Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHCustomerRepresentativeName">Customer
																	Representative Name</th>					
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHSalesRepresentative">Sales
																	Representative</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHCaseManager">Case Manager</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHAmountofMoney">Amount of Money</th>
																<th class="TableButtonTH"
																	style="width: 40px; background: rgb(255, 255, 255); color: #647a8e;"></th>
															</tr>
														</thead>
														<tbody id="tbodyId">
														</tbody>

													</table>

												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="loading" id="loaderNotify"  style="display: none;"> 
						 <div class="spinner-bubble spinner-bubble-primary m-7"></div>
                         </div>
					</div>
				</div>
				<!-- end of main-content -->
			</div>
			<!-- <div class="sidebar-overlay open"></div> Footer Start-->
			<!-- <div class="flex-grow-1"></div> -->

			<!-- ============ Footer start ============= -->
			<%@ include file="common/footer.jsp"%>
			<!-- ============ Footer end ============= -->

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

	<script src="./dist-assets/js/invoice-management-validate.js"></script>

	<script>
		const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem('GUID') ;
		const UUID =  localStorage.getItem('uuid');
		const role = localStorage.getItem("userRole");

		$(document).ready(function() {

			drawDtataTable(lan);
			
			 $.ajax({
                 beforeSend: function(request) {
              	   document.getElementById("loaderNotify").style.display = "";
                  request.setRequestHeader("GUID", GUID);
                 },
                 url: serverHTTP +'Invoice/GetInvoiceCardCount',
                 method: 'GET',
                 contentType: 'application/json',
               //  data: templateNameReqNode,
                 dataType: 'json',
                  success: function(result, status, request){
                  if(result.status==200)
                 	 {
                  	$("#pTotalNumber").html(result.data.noOfQuotation);
                  	$("#numberofDeposedInvoices").html(result.data.noOfInvoice);
                  	$("#pNumberofonHoldInvoices").html(result.data.noOfCase);
                  //	$("#pNumberofcancelInvoices").html(result.data.noOfStaff);
                  	
                 	 }
                  else
                  {
                 		console.log("Sorry card Data Loding Error");
                 	 }
                  },
                  complete:function(data){
               	   document.getElementById("loaderNotify").style.display = "none";
               	   },
                  error: function(error) {
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
				success : function(result, status, request) {
					if (result.status == 200) {
						console.log("ok")
						var personInCharge  = document.getElementById('personInCharge');
						
						if(result.data != null)
						{
						
							for(i=0 ; i<result.data.length; i++ )
							{
								personInCharge.options[personInCharge.options.length] = new Option(result.data[i].name, result.data[i].value);
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

		});

		function runSearch() {

			let dataNode = {};
			dataNode['invoiceNumber'] = document.getElementById("invoiceNumber").value != "" ? document.getElementById("invoiceNumber").value.trim(): null;
			dataNode['quotationNumber'] = document.getElementById("quotationNumber").value != "" ? document.getElementById("quotationNumber").value.trim(): null;
			dataNode['billingStatus'] = document.getElementById("billingStatus").value != "" ? document.getElementById("billingStatus").value: 0;
			dataNode['projectTitle'] = document.getElementById("projectTitle").value.trim() != "" ? document.getElementById("projectTitle").value.trim(): null;
			dataNode['closingDateFrom'] = document.getElementById("deadlineFrom").value != "" ? document.getElementById("deadlineFrom").value: null;		
			dataNode['closingDateTo'] = document.getElementById("closingDateTo").value.trim() != "" ? document.getElementById("closingDateTo").value.trim(): null;		
			dataNode['companyName'] = document.getElementById("customerCompanyName").value.trim() != "" ? document.getElementById("customerCompanyName").value.trim(): null;		
			dataNode['companyRepresentativeName'] =  document.getElementById("customerRepresentativeName").value.trim() != "" ? document.getElementById("customerRepresentativeName").value.trim(): null;		
			dataNode['belonging'] =  document.getElementById("belongs").value.trim() != "" ? document.getElementById("belongs").value.trim(): null;		
			dataNode['saleRepresentativeName'] = document.getElementById("SalesRepresentative").value.trim() != "" ? document.getElementById("SalesRepresentative").value.trim(): 0;		
			dataNode['personInChargeofCase'] =  document.getElementById("personInCharge").value.trim() != "" ? document.getElementById("personInCharge").value.trim(): 0;		
			

			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
					document.getElementById("loaderNotify").style.display = "";
				},
				url : serverHTTP + 'Invoice/SearchInvoice',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						showSearchResult(result, request);
					} else {
						// showMessage("Sorry Data Loding Error");
					}
				},
				 complete:function(data){
		          	   document.getElementById("loaderNotify").style.display = "none";
		          	   },
				error : function(error) {
					console.log(JSON.stringify(error));
				}
			});
		}
		
		
		function showSearchResult(result, request) {
			table.destroy();
			$("#tbodyId").empty();
			for (i = 0; i < result.data.length; i++) {

				billingStatus = billingStatusArray[result.data[i].billingStatus] != null ? billingStatusArray[result.data[i].billingStatus]: ""; 
				personInChargeofCase = result.data[i].personInChargeofCaseText != null ? result.data[i].personInChargeofCaseText: ""; 
				saleRepresentativeName = result.data[i].saleRepresentativeNameText != null ? result.data[i].saleRepresentativeNameText: ""; 
				quotationNumber = result.data[i].quotationNumber != null ?  result.data[i].quotationNumber: "";
				projectTitle = result.data[i].projectTitle != null ?  result.data[i].projectTitle: "";
				closingDateTo = result.data[i].closingDateTo != null ? result.data[i].closingDateTo : "";
				
				let newRow = ' <tr>'
						+'<td style="background: rgb(255 255 255);color: #647a8e;"></td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ (i + 1)
						+'</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ result.data[i].invoiceNumber
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ quotationNumber
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ billingStatus
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ projectTitle
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ closingDateTo
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].companyName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].companyRepresentativeName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ saleRepresentativeName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ personInChargeofCase
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].amountOfMoney
						+ '</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''+result.data[i].invoiceId+'\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
						+ '</td>' 
						+ '</tr>';
				$("#search_table tbody").append(newRow);
			}
			drawDtataTable(getSiteLanguage());
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
				columnDefs : [ 
					{
                        className: 'control',
                        orderable: false,
                        targets:   0
                       }  ,
					{orderable : false,targets : 0}, 
					{orderable : false,targets : 1}, 
					{orderable : false,targets : 5}, 
					{responsivePriority : 1,targets : 5}, 
					{responsivePriority : 2,targets : 12}, ],
				order : [ 1, 'asc' ]

			});
		}

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "invoice");
			setLanguage(selectedLanguage);
			table.destroy();
			drawDtataTable(selectedLanguage);
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

		function viewDetails(value)
		{
			localStorage.setItem("invoiceId", value);	
        	window.location.href = "invoice-details.jsp";
		}
		
		$("#buttonEstimateListCSVOutput").click(function( event ) { 
	       	   $.ajax({
	                 beforeSend: function(request) {
	              	 document.getElementById("loaderNotify").style.display = "";
	                  request.setRequestHeader("GUID", GUID);
	                 },
	                 url: serverHTTP +'Invoice/ListCSVOutput',
	                 method: 'GET',
	                 contentType: 'application/json',
	                 //data: passData,
	                 dataType: 'json',
	                  success: function(result, status, request){
	                  if(result.status==200)
	                 	 {
	                	  window.location = result.data.filePath;
	                 	 }
	                  else
	                  {
	                  	//showMessage('error',"E1024");
	                 	 }
	                  },
	                  complete:function(data){
	               	   document.getElementById("loaderNotify").style.display = "none";
	               	   },
	                  error: function(error) {
	                  console.log(JSON.stringify(error));
	               }
	             });
	         });

	</script>


</body>

</html>