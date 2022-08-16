<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleQuotationList">Quotation List</title>
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
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-file text-30" role="generic"></i><span
												id="pageSpanHeadingQuotation"> Quotation List</span>
										</h1>
									</div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<a href="customer-management.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span
													id="buttonSpanCreateQuoteFromCustomer">Create a
													Quote From a Customer</span>
											</button> </a> 
											<button id="buttonEstimateListCSVOutput"
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-table mr-2 text-20 cursor-pointer"
													role="generic"></i><span
													id="buttonSpanEstimateListCSVOutput">Estimate list
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
																	<label for="quotationStatus"
																		id="pageLabelQuotationStatus">Quotation Status</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-clone"></i>
																			</div>
																		</div>
																		<select id="quotationStatus" name="quotationStatus"
																			class="form-control" role="combobox">
																			<option value=""
																				id="selectOptionSelectQuotationStatus">Select
																				Quotation Status</option>
																			<option value="1" id="pageSpanMakeAQuotation">Make
																				a Quotation</option>
																			<option value="2" id="pageSpanQuotationSubmitted">Quotation
																				Submitted</option>
																			<option value="3" id="pageSpanDuringNegotiations">During
																				Negotiations</option>
																			<option value="4" id="pageSpanReceived">Orders
																				Received</option>
																			<option value="5" id="pageSpanOnHold">On
																				Hold</option>
																			<option value="6" id="pageSpanCancel">Cancel</option>
																		</select>
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="projectTitle" id="pageLabelProjectTitle">Project
																		Title</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="projectTitle" name="projectTitle"
																			placeholder="Enter Project Title"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorStaffCode" style="color: red;"></div>
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
																			name="customerCompanyName"
																			placeholder="Enter Customer Company Name"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorCustomerCode" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="customerRepresentativeName"
																		id="pageLabelCustomerRepresentativeName">Customer
																		Representative Name</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<input id="customerRepresentativeName"
																			name="customerRepresentativeName"
																			placeholder="Enter Customer Representative Name"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorCustomerRepresentativeName"
																		style="color: red;"></div>

																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="salesRepresentativeName"
																		id="pageLabelSalesRepresentativeName">Sales
																		Representative Name</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<select id="quotationSalesRepresentative"
																			name="quotationSalesRepresentative"
																			class="form-control" role="combobox">
																			<option value=""
																				id="selectQuotationSalesRepresentative">Select
																				Sales Representative</option>
																			
																		</select>
																	</div>

																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="dispatchClassification"
																		id="pageLabelDispatchClassification">Dispatch
																		Classification</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-clone"></i>
																			</div>
																		</div>
																		<select id="dispatchClassification"
																			name="dispatchClassification" class="form-control"
																			role="combobox">
																			<option value="" id="selectOptionSelectDispatchClassification">Select Dispatch Classification</option>
																			<option value="1" id="pageSpanGeneralDispatch">General dispatch</option>
																			<option value="2" id="pageSpanBusinessContract">Out Sourcing</option>
																			<option value="3" id="pageSpanIntroductionDispatching">Temp -to- Perm</option>
																			<option value="4" id="pageSpanRecruitment">Talent Introduction/Recruiting/Placement</option>
																			<option value="5" id="pageSpanPartTime">Part Time</option>
																		</select>

																	</div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="occupationClassification"
																		id="pageLabelOccupationClassification">Occupation
																		Classification</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-clone"></i>
																			</div>
																		</div>
																		<select id="occupationClassification"
																			name="occupationClassification" class="form-control"
																			role="combobox">
																			<option value=""
																				id="selectOptionSelectOccupationClassification">Select
																				Occupation Classification</option>
																			<option value="1" id="pageSpanOfficeSystem">Office
																				system</option>
																			<option value="2" id="pageSpanSalesSystem">Slaes/sales
																				system</option>
																			<option value="3" id="pageSpanITCreative">IT
																				/ Creative</option>
																			<option value="4" id="pageSpanMedicalWelfareSystem">Medical
																				/ Welfare system</option>
																			<option value="5" id="pageSpanManufacturingBusiness">Manufacturing
																				business</option>
																			<option value="6" id="pageSpanProfessional">Professional</option>
																			<option value="7" id="pageSpanOthers">Others</option>
																		</select>
																	</div>
																	<div id="errorPostalCode" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="affiliation" id="pageLabelAffiliation">Belonging</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-map"></i>
																			</div>
																		</div>
																		<input id="affiliation" name="affiliation"
																			placeholder="Enter Belonging" class="form-control"
																			role="textbox">
																	</div>
																	<div id="errorPrefecture" style="color: red;"></div>
																</div>

															</div>
															<div class="row pt-1 ContentRight">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
																<button id="searchBtn"
																	class="btn btn-info SearchButton-2   ml-0 mr-2"
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
															<div class="col-12 p-0 " id="pageCardDivTotalQuotations">Total
																Number of Quotations</div>
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
																id="pageCardDivTotalActiveQuotations">Total Active
																Quotations</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalActive"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalAvailableQuotations">Total
																Available Quotations</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalAvailable"></p>
															</div>
														</div>
													</div>
												</div>

												<!--  <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-5 cardBodyDiv "  >
                                        <div class="card-body pt-1 pb-1 mt-1 mb-1" >
                                            <div class="row pt-1 pb-1 mt-1 mb-1"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalPendingStaff">Total Inactive Staff</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalInactive"></p></div>
                                            </div>
                                        </div>
                                    </div>  -->
											</div>

										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">



										<div class="card m-3">
											<div class="card-body">
												<div class="card-title">
													<i class="i-File-Clipboard-File--Text cursor-pointer"
														role="generic"></i><span
														id="pageSpanSearchQuotationDetails"> Search
														Quotation Details</span>
												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_table" style="width: 100%">
														<thead>
															<!-- <tr class="thClass">
                                                            <th>&nbsp;</th>
                                                            <th>&nbsp;</th>
                                                            <th>&nbsp;</th>
                                                            <th colspan="3">Name</th>
                                                            <th colspan="2">Staff Details</th>
                                                            <th colspan="3">Contact Details</th>
                                                            <th colspan="2">Location Details</th>
                                                            <th colspan="3" style="width: 25%;">Occupation Details</th>
                                                            <th colspan="3" style="width: 25%;">Personal Details</th>
                                                            <th>&nbsp;</th>
                                                        </tr> -->
															<tr class="thClass">
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"></th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHNo">No</th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHChoice">Choice</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHQuotationNumber">Quotation Number</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHQuotationStatus">Quotation Status</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHQuotationName">Quotation Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchTHCustomerCompanyName">Customer
																	Company Name</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchTHCustomerRepresentativeName">Customer
																	Representative Name</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHSalesRepresentative">Sales
																	Representative</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHDispatchClassification">Dispatch
																	Classification</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHOccupationClassification">Occupation
																	Classification</th>
																	<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHBelonging">Belongings</th>
																<th class="TableButtonTH"></th>
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
					</div>
					<div class="loading" id="loaderNotify"  style="display: none;"> 
						 <div class="spinner-bubble spinner-bubble-primary m-7"></div>
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
		loadSelectedLanguage(pageLanguage, "quotation");
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

	<script src="./dist-assets/js/quotation-search-Validations.js"></script>

	<script>

	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const searchUuid = localStorage.getItem("uuid");
		saveUuid = localStorage.getItem('saveUuid');
		const role = localStorage.getItem("userRole");

		$(document).ready(function() {

			let dataRequest = '{"id" : 0, "authority": '+role+ '}';

			$.ajax({
				beforeSend : function(request) {
					document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Employee/GetInchargeOfStaff',
				method : 'POST',
				contentType : 'application/json',
				data : dataRequest,
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						
						var SalesRepresentative  = document.getElementById('quotationSalesRepresentative');
						
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
let dataSet = '{"uuid" : "' + searchUuid + '"}';

drawDtataTable(lan);

$("#dateOfBirthFrom")
		.focusout(
				function() {
					this.type = 'text';
					document
							.getElementById("dateOfBirthFrom").placeholder = "From";
				});

$("#dateOfBirthTo")
		.focusout(
				function() {
					this.type = 'text';
					document
							.getElementById("dateOfBirthTo").placeholder = "To";
				});

$.ajax({beforeSend : function(request) {
            	document.getElementById("loaderNotify").style.display = "";
				request.setRequestHeader("GUID",GUID);
			},
			url : serverHTTP
					+ 'Quotation/GetQuotationAccount',
			method : 'GET',
			contentType : 'application/json',
			//  data: templateNameReqNode,
			dataType : 'json',
			success : function(result, status,
					request) {
				if (result.status == 200) {
					$("#pTotalNumber")
							.html(
									result.data.totalNumberOfQuotation);
					$("#pTotalActive")
							.html(
									result.data.submittedQuotation);
					$("#pTotalAvailable")
							.html(
									result.data.onHoldCountUser);

				} else {
					console
							.log("Sorry card Data Loding Error");
				}
			},
			 complete:function(data){
	         		document.getElementById("loaderNotify").style.display = "none";
	         		},
			error : function(error) {
				console.log(JSON.stringify(error));
			}
		});

$("#batchDeleteConfirm").click(function(event) {
					var batchdeleteUuidArray = document
							.getElementsByName("batchdeleteUuid[]");
					$("#batchDeleteConfirm").prop(
							"disabled", true);
					var dataNode = {};
					var dataArray = [];
					for (var i = 0; i < batchdeleteUuidArray.length; i++) {
						var dependentID = {
							"uuid" : batchdeleteUuidArray[i].value
						};
						dataArray.push(dependentID);
					}
					dataNode['customerManagements'] = dataArray;
					passData = JSON
							.stringify(dataNode);

					$.ajax({
								beforeSend : function(request) {
					            	document.getElementById("loaderNotify").style.display = "";
									request.setRequestHeader("GUID",GUID);
								},
								url : serverHTTP
										+ 'Customer/BulkDeleteCustomerInfo',
								method : 'POST',
								contentType : 'application/json',
								data : passData,
								dataType : 'json',
								success : function(
										result,
										status,
										request) {
									if (result.status == 200) {
										showMessage(
												'success',
												"Bulk Delete Successfully");
										setTimeout(
												function() {
													window.location.href = "customer-management.jsp";
												},
												3600);
									} else {
										showMessage(
												'error',
												"Bulk Delete Unsuccessful");
										$(
												"#batchDeleteConfirm")
												.prop(
														"disabled",
														false);
										// showMessage("Sorry Data Loding Error");
									}
								},
								 complete:function(data){
						         		document.getElementById("loaderNotify").style.display = "none";
						         		},
								error : function(error) {
									console.log(JSON.stringify(error));
									$("#batchDeleteConfirm").prop("disabled",false);
								}
							});
				});
				});

		function runSearch() {

			var dispatchClassification = document
					.getElementById("dispatchClassification").value;
			var occupationClassification = document
					.getElementById("occupationClassification").value;
			
			var salesRepresentativeName = document.getElementById("quotationSalesRepresentative").value;

			var templateNameReqNode = {};
			templateNameReqNode['quotationNumber'] = document
					.getElementById("quotationNumber").value.trim() != "" ? document
					.getElementById("quotationNumber").value.trim()
					: null;
			templateNameReqNode['estimatedStatus'] = document
					.getElementById("quotationStatus").value.trim() != "" ? document
					.getElementById("quotationStatus").value.trim()
					: null;
			templateNameReqNode['projectTitle'] = document
					.getElementById("projectTitle").value.trim() != "" ? document
					.getElementById("projectTitle").value.trim()
					: null;
			templateNameReqNode['companyName'] = document
					.getElementById("customerCompanyName").value.trim() != "" ? document
					.getElementById("customerCompanyName").value.trim()
					: null;
			templateNameReqNode['representativeName'] = document
					.getElementById("customerRepresentativeName").value != "" ? document
					.getElementById("customerRepresentativeName").value
					: null;
						
			templateNameReqNode['belongings'] = document
					.getElementById("affiliation").value.trim() != "" ? document
					.getElementById("affiliation").value.trim()
					: null;
					
			templateNameReqNode['salesRepresentativeName'] = salesRepresentativeName;

			templateNameReqNode['dispatchClassification'] = dispatchClassification;

			templateNameReqNode['occupationClassification1'] = occupationClassification == 1 ? 1
					: null;
			templateNameReqNode['occupationClassification2'] = occupationClassification == 2 ? 1
					: null;
			templateNameReqNode['occupationClassification3'] = occupationClassification == 3 ? 1
					: null;
			templateNameReqNode['occupationClassification4'] = occupationClassification == 4 ? 1
					: null;
			templateNameReqNode['occupationClassification5'] = occupationClassification == 5 ? 1
					: null;
			templateNameReqNode['occupationClassification6'] = occupationClassification == 6 ? 1
					: null;
			templateNameReqNode['occupationClassification7'] = occupationClassification == 7 ? 1
					: null;
			templateNameReqNode['occupationClassification8'] = occupationClassification == 8 ? 1
					: null;

			$.ajax({
				beforeSend : function(request) {
	            	document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Quotation/SearchQuotation',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(templateNameReqNode),
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
					className : 'control',
					orderable : false,
					targets : 0
				}, {
					orderable : false,
					targets : 2
				}, {
					orderable : false,
					targets : 11
				}, {
					responsivePriority : 1,
					targets : 7
				}, {
					responsivePriority : 2,
					targets : 12
				}, {
					responsivePriority : 3,
					targets : 3
				}, ],
				order : [ 1, 'asc' ]

			});
		}

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "quotation");
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


		function showSearchResult(result, request) {
			table.destroy();
			$("#tbodyId").empty();
			for (i = 0; i < result.data.length; i++) {

				/*  dispatchClassification1Value = result.data[i].dispatchClassification1 == 1 ? ""   + dispatchClassificationArray[pageLanguage][1] : "" ; 
				 dispatchClassification2Value = result.data[i].dispatchClassification2 == 1 ? " / "+ dispatchClassificationArray[pageLanguage][2] : "" ; 
				 dispatchClassification3Value = result.data[i].dispatchClassification3 == 1 ? " / "+ dispatchClassificationArray[pageLanguage][3] : "" ; 
				 dispatchClassification4Value = result.data[i].dispatchClassification4 == 1 ? " / "+ dispatchClassificationArray[pageLanguage][4] : "" ; 
				 */
				occupationClassification1Value = result.data[i].occupationClassification1 == 1 ? ""
						+ occupationClassificationArray[1]
						: "";
				occupationClassification2Value = result.data[i].occupationClassification2 == 1 ? " / "
						+ occupationClassificationArray[2]
						: "";
				occupationClassification3Value = result.data[i].occupationClassification3 == 1 ? " / "
						+ occupationClassificationArray[3]
						: "";
				occupationClassification4Value = result.data[i].occupationClassification4 == 1 ? " / "
						+ occupationClassificationArray[4]
						: "";
				occupationClassification5Value = result.data[i].occupationClassification5 == 1 ? " / "
						+ occupationClassificationArray[5]
						: "";
				occupationClassification6Value = result.data[i].occupationClassification6 == 1 ? " / "
						+ occupationClassificationArray[6]
						: "";
				occupationClassification7Value = result.data[i].occupationClassification7 == 1 ? " / "
						+ occupationClassificationArray[7]
						: "";

				dispatchClassification = dispatchClassificationArray[result.data[i].dispatchClassification] != undefined ? dispatchClassificationArray[result.data[i].dispatchClassification]
						: "";
				estimatedStatus = estimatedStatusArray[result.data[i].estimatedStatus] != undefined ? estimatedStatusArray[result.data[i].estimatedStatus]
						: "";
				salesRepresentativeNameText = result.data[i].salesRepresentativeNameText != null ? result.data[i].salesRepresentativeNameText: "";

				projectTitle = result.data[i].projectTitle != null ? result.data[i].projectTitle : "" ;
				
				let newRow = ' <tr>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;"></td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ (i + 1)
						+ '</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ '<label class="container">'
						+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].uuid+'">'
						+ ' <span class="checkmark"></span>'
						+ '</label>'
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].quotationNumber
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ estimatedStatus
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ projectTitle
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].companyName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].representativeName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ salesRepresentativeNameText
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ dispatchClassification
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ occupationClassification1Value
						+ occupationClassification2Value
						+ occupationClassification3Value
						+ occupationClassification4Value
						+ occupationClassification5Value
						+ occupationClassification6Value
						+ occupationClassification7Value
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].belongings
						+ '</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''+result.data[i].quotationId+'\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
						+ '<button class="btn ScheduleButton ml-1" onclick="makeCase(\''+result.data[i].quotationId+'\')" title="Make a Case" role="button" id="tableButtonDetails_3___"><i class="fa fa-file-alt"></i></button>'
						+ '<button class="btn ScheduleButton ml-1" onclick="makeInvoiceByQuotation(\''+result.data[i].quotationId+'\',\''+result.data[i].customerId+'\')" title="Make a Invoice" name="MakeInvoice" role="button" id="tableButtonDetails_3___"><i class="fa fa-list-alt"></i></button>'
						+ '</td>' 
						+ '</tr>';
				$("#search_table tbody").append(newRow);
			}
			drawDtataTable(getSiteLanguage());
		}

		function viewDetails(viewId) {
			//sessionStorage.setItem("viewUuid", viewUuid);	
			sessionStorage.setItem("id", viewId);
			window.location.href = "quotation-details.jsp";
		}
		
        // Linking to Invoice Creation
		function createInvoice(quotationId)
		{
			let url = "invoice-create-blank.jsp";
			//let companyId = document.getElementById("companyId").value;
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="companyId" value="'+quotationId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
		}
		
		// Linking to Invoice Creation
		function makeInvoiceByQuotation(quotationIdW,customerIDW)
		{//wishwa
			localStorage.removeItem("quotationId");
			localStorage.removeItem("customerID");
			localStorage.removeItem("invoiceTargetPeriodStart");
			localStorage.removeItem("invoiceTargetPeriodEnd");
			localStorage.removeItem("invoiceQuotationId");
			localStorage.removeItem("invoiceCustomerID");
			
			localStorage.setItem("invoiceQuotationId", quotationIdW);	
			localStorage.setItem("invoiceCustomerID", customerIDW);	
	        window.location.href = "invoice-create.jsp";
		}

		function checkAll() {
			checkboxes = document.getElementsByName('tableCheck');
			for (var i = 0, n = checkboxes.length; i < n; i++) {
				$(checkboxes[i]).prop('checked', true);
			}
		}

		function unCheckAll() {
			checkboxes = document.getElementsByName('tableCheck');
			for (var i = 0, n = checkboxes.length; i < n; i++) {
				$(checkboxes[i]).prop('checked', false);
			}
		}

		function batchDelete() {
			$("#tBodyBatchDelete").empty();
			const tableCheckNode = document
					.querySelectorAll('input[name="tableCheck"]:checked');
			if (tableCheckNode.length == 0) {
				showSystemMessage('info',
						"Please Select the Customer from Customer Details !");
			} else {

				for (i = 0; i < tableCheckNode.length; i++) {
					parentRow = $(tableCheckNode[i]).closest('tr');

					// $("#loadTest").append(parentRow);
					tNo = parentRow.find("td:eq(1)").text();
					tCustomerCode = parentRow.find("td:eq(3)").text();
					tOrganizationName = parentRow.find("td:eq(7)").text();
					tRepresentativeName = parentRow.find("td:eq(8)").text();
					tUuid = parentRow.find("input:checkbox").val();

					let newRow = ' <tr>'
							+ '<input type="hidden" name="batchdeleteUuid[]" value="'+tUuid+'">'
							+ '<td>' + tNo + '</td>' + '<td>'
							+ tOrganizationName + '</td>' + '<td>'
							+ tRepresentativeName + '</td>' + '<td>'
							+ tCustomerCode + '</td>';

					$("#confirm_staff_table tbody").append(newRow);
				}
				$('#confirmDeleteModal').modal('show');

			}
		}

		function changeChargeStaff() {
			const tableCheckNode = document
					.querySelectorAll('input[name="tableCheck"]:checked');
			if (tableCheckNode.length == 0) {
				showSystemMessage('info',
						"Please Select the Staff from Staff Details !");
			} else {

			}
		}

		$("#clearAllBtn").click(function(event) {

			resetValidationReturnValues();
			$("#errorQuotationNumber").html("");
			$("#errorStaffCode").html("");
			$("#errorCustomerCode").html("");
			$("#errorCustomerRepresentativeName").html("");
			$("#errorPostalCode").html("");
			$("#errorPrefecture").html("");

			$("input").removeClass("errorVal");

		});
		
		function makeCase(quotationId)
        {
        	localStorage.setItem("quotationId", quotationId);	
			localStorage.removeItem("createCaseCompanyId");
        	window.location.href = "case-registration.jsp";
        }
		
		
		 $("#buttonEstimateListCSVOutput").click(function( event ) { 
       	   $.ajax({
                 beforeSend: function(request) {
              	 document.getElementById("loaderNotify").style.display = "";
                  request.setRequestHeader("GUID", GUID);
                 },
                 url: serverHTTP +'Quotation/ListCSVOutput',
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