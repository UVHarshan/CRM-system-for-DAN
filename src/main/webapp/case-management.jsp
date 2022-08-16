<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCaseList">Case List</title>
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
												id="pageSpanHeadingCaseList"> Case List </span>
										</h1>
									</div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<div class="btn-group">
											<button
												class="DefaultButton btn btn-info TopButtonMinWidth  dropdown-toggle mr-2"
												type="button" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i> <span id="buttonSpanCreateACase">
													Create a Case </span>
											</button>
											<div class="dropdown-menu" x-placement="bottom-start">
												<a class="dropdown-item" href="customer-management.jsp">
													<span id="fromACustomer" data-toggle="modal"
													data-target="#exampleModal1"> Create a Case from a
														Customer</span>
												</a> <a class="dropdown-item" href="quotation-management.jsp">
													<span id="fromAQuote" data-toggle="modal"
													data-target="#exampleModal2"> Create a Case from a
														Quote</span>
												</a>
											</div>
										</div>
										<a href="case-batch-registration.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span
													id="buttonSpanImportExistingProject">Import Existing
													Project Data</span>
											</button> </a> 
											<button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" id="btnOutputCaseListCSV"  role='button'>
												<i class="fa fa-table mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonSpanOutputMatterList">
													Output Case List CSV</span>
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
																		id="pageLabelProposalNumber">Case Number</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-list-ol"></i>
																			</div>
																		</div>
																		<input id="caseNumber" name="caseNumber"
																			placeholder="Enter Case Number" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorCaseNumber" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber"
																		id="pageLabelQuotationNumber">Quotation Number</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-list-ol"></i>
																			</div>
																		</div>
																		<input id="quotationNumber" name="quotationNumber"
																			placeholder="Enter Quotation Number"
																			class="form-control" role="textbox">

																	</div>
																	<div id="errorQuotationNumber" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="projectTitle" id="pageLabelProjectTitle">Project
																		Title</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file"></i>
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
																	<label for="ThePersonInCharge"
																		id="pageLabelThePersonInCharge">The person in
																		charge of the case</label>

																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<Select id="PersonInCharge" class="form-control">
																			<option value="" id="optionPersonInCharge">Select Person In Charge of the case</option>
																			
																		</Select>
																	</div>
																	<div id="errorPersonInCharge" style="color: red;"></div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="salesAssignmentClassification"
																		id="pageLabelAssignmentClassification">Assignment
																		Classification</label>
																	<div class="input-group">
																	 	<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-hourglass-start"></i>
																			</div>
																		</div> 
																		<Select id="assignmentClassification"
																			class="form-control">
																			<option value=""
																				id="optionSelectAssignmentClassification">Select
																				Assignment Classification</option>
																			<option value="1"
																				id="optionSelectAssignmentClassificationAssignByDate">Assign
																				By Date</option>
																			<option value="2"
																				id="optionSelectAssignmentClassificationAssignByPeriod">Assign
																				By Period</option>
																		</Select>
																	</div>
																	<div id="errorAssignmentClassification"
																		style="color: red;"></div>
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
																		<option value="" id="optionDispatchClassification">Select Dispatch Classification</option>
																		<option value="1" id="optionDispatchClassificationGeneralDispatch">General Dispatch</option>
																		<option value="2" id="optionDispatchClassificationBusinessContract">Out Sourcing</option>
																		<option value="3" id="optionDispatchClassificationIntroductionDispatching">Introduction Dispatching</option>
																		<option value="4" id="optionDispatchClassificationRecruitment">Recruitment</option>
																		<option value="5" id="optionDispatchClassificationPartTime">Part Time</option>
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
																	<label for="ImplementationPeriodStart"
																		id="pageLabelImplementationPeriodStart">Implementation
																		Period (Start)</label>

																	<div>
																		<input type="date" id="implementationPeriodStart"
																			class="form-control">
																	</div>
																	<div id="errorImplementationPeriodStart"
																		class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodEnd"
																		id="pageLabelImplementationPeriodEnd">
																		Implementation Period End</label>

																	<div>
																		<input type="date" id="implementationPeriodEnd"
																			class="form-control">
																	</div>
																	<div id="errorImplementationPeriodEnd"
																		class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ProposalDisclosure"
																		id="pageLabelProposalDisclosure">Proposal
																		Disclosure</label>

																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fas fa-eye"></i>
																			</div>
																		</div>
																		<Select id="ProposalDisclosure" class="form-control">
																			<option value="" id="optionSelectProposalDisclosure">Select
																				Proposal Disclosure</option>
																			<option value="1" id="optionRelease">Release</option>
																			<option value="0" id="optionPrivate">Private</option>
																		</Select>
																	</div>
																	<div id="errorProposalDisclosure" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodStart"
																		id="pageLabelConflictDateFrom">Conflict Date
																		From</label>

																	<div>
																		<input type="date" id="conflictDateFrom"
																			class="form-control">
																	</div>
																	<div id="errorConflictDateFrom" class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodEnd"
																		id="pageLabelConflictDateTo"> Conflict Date To</label>

																	<div>
																		<input type="date" id="conflictDateTo"
																			class="form-control">
																	</div>
																	<div id="errorConflictDateTo" class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="affiliation" id="pageLabelAffiliation">Belonging</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
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
													<div class="card-body cardAlignCenter">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 " id="pageCardDivTotalCases">Total
																Number of Cases</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalNumber"></p>
															</div>
														</div>
													</div>
												</div>

												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv">
													<div class="card-body cardAlignCenter">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalOngoingCases">Total Ongoing
																Cases</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalOnging"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body cardAlignCenter">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalUpcomingCases">Total Upcoming
																Cases</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalUpcoming"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body cardAlignCenter">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalCompleteCases">Total Complete
																Cases</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalComplete"></p>
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
														role="generic"></i><span id="pageSpanSearchCaseDetails">
														Search Case Details</span>
												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_table" style="width: 100%">
														<thead>
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
																	id="tableSearchTHProposalNumber">Proposal Number</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHQuotationNumber">Quotation Number</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHCase">Case</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHDispatchClassification">Dispatch
																	Classification</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHOccupationClassification">Occupation
																	Classification</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHImplementationPeriod">Implementation
																	period</th>
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
																	id="tableSearchTHCaseManager">Person in charge of
																	the Case</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHProposalDisclosure">Proposal
																	Disclosure</th>
																<th class="TableButtonTH"></th>
															</tr>
														</thead>
														<tbody id="tbodyId">

														</tbody>

													</table>

												</div>
											</div>
										</div>

										<div class="card m-3">
											<div class="card-body">
												<div class="row ">
													<div class="col-sm-6 col-md-6 col-lg-6 TopButLCDiv">
														<div class="btn-group col-lg-6 col-sm-12 pl-sm-3"
															role="group">
															<button class="btn btn-secondary DefaultButton pl-3 pr-3"
																id="checkAll-btn" type="button" role="button"
																onclick="checkAll()">
																<i class="far fa-check-square text-15 mr-2"></i><span
																	id="buttonSpanCheckAll">Check All</span>
															</button>
															<button class="btn btn-secondary DefaultButton"
																id="uncheckAll-btn" type="button" role="button"
																onclick="unCheckAll()">
																<i class="far fa-square text-15 mr-2"></i><span
																	id="buttonSpanUncheckAll">Uncheck All</span>
															</button>

														</div>
													</div>

													<div class="col-sm-6 col-md-6 col-lg-6 TopButDiv">
														<button id="batchDeletionBtn"
															class="btn btn-danger DefaultButton mr-3" role="button"
															onclick="batchDelete();">
															<span id="buttonSpanBatchDeletion">Batch Deletion</span>
														</button>
													</div>
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
	<div class="modal fade " id="confirmDeleteModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Batch
						Deletion</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<h4 id="modalH4AreYouSure">Are You Sure?</h4>
					<h4 id="modalH4ReallyWantToDelete">Do You Really Want to
						Delete this Records ?</h4>
					<h4 id="modalH4CannotBeUndone">This Process Cannot be Undone.</h4>
					<br>

					<table class="display table table-striped table-bordered hover"
						id="confirm_staff_table" style="width: 100%">
						<thead>
							<tr class="thClass">
								<th style="background: rgb(245, 249, 253); color: #647a8e;"
									id="tableModalSearchStaffTHNo">Record No</th>
								<th class="color-1"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalCaseName">Case Name</th>
								<th class="TableTHMinWidth text-center"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalProposalNumber">Proposal Number </th>
								<th class="TableTHMinWidth text-center"
									style="background: #a0dade; color: #647a8e;"
									id="tableModalQuotationNumber">Quotation Number</th>
							</tr>
						</thead>
						<tbody id="tBodyBatchDelete">

						</tbody>
					</table>
				</div>
				<div class="modal-footer pt-2 pb-2">
					<button class="btn btn-danger SearchButton-2  mr-1"
						id="batchDeleteConfirm" type="button">Confirm</button>
					<button class="btn btn-info SearchButton-2   ml-0 mr-0"
						id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>

	</div>
	<!-- ============ Search UI End ============= -->

	<span id="spanScriptID"></span>
	<script src="./dist-assets/js/language_main.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"case");
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

	<script src="./dist-assets/js/case-search-Validations.js"></script>

	<script>
	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const searchUuid = localStorage.getItem("uuid");
		const role = localStorage.getItem("userRole");
		const fromDash = localStorage.getItem("fromDashboard");
		

		saveUuid = localStorage.getItem('saveUuid');

		$(document).ready(function() {
			
                  let dataNode = '{"id" : 0, "authority": '+role+ '}';
			
							$.ajax({
								beforeSend : function(request) {
									document.getElementById("loaderNotify").style.display = "";
									request.setRequestHeader("GUID", GUID);
								},
								url : serverHTTP + 'Employee/GetInchargeOfStaff',
								method : 'POST',
								contentType : 'application/json',
								data : dataNode,
								dataType : 'json',
								success : function(result, status, request) {
									if (result.status == 200) {
										console.log("ok")
										var select  = document.getElementById('PersonInCharge');
										if(result.data != null)
										{	
											for(i=0 ; i<result.data.length; i++ )
											{
												select.options[select.options.length] = new Option(result.data[i].name, result.data[i].value);
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
							//   $("#dateOfBirthFrom").attr({  
							//   	   "max" : getToday() 
							//   	});

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
												document.getElementById("dateOfBirthTo").placeholder = "To";
											});

							$.ajax({beforeSend : function(request) {
											document.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",GUID);
										},
										url : serverHTTP+ 'Case/GetCaseAccount',
										method : 'GET',
										contentType : 'application/json',
										//  data: templateNameReqNode,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												$("#pTotalNumber").html(result.data.allCaseCount);
												$("#pTotalOnging").html(result.data.ongoingCaseCount);
												$("#pTotalUpcoming").html(result.data.upcomingCaseCount);
												$("#pTotalComplete").html(result.data.completedCaseCount);

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

							$("#batchDeleteConfirm").click(
											function(event) {
												var batchdeleteCaseIDArray = document.getElementsByName("batchdeleteCaseID[]");
												var dataNode = {};
												var dataArray = [];
												$("#batchDeleteConfirm").prop("disabled",true);
												
												for (var i = 0; i < batchdeleteCaseIDArray.length; i++) {
													var dependentID = {
														      "id" : batchdeleteCaseIDArray[i].value
													        };
													dataArray.push(dependentID);
												}
												dataNode['casesList'] = dataArray;
												passData = JSON.stringify(dataNode);

												$.ajax({
														beforeSend : function(request) {
															  document.getElementById("loaderNotify").style.display = "";
															  request.setRequestHeader("GUID",GUID);
															},
															url : serverHTTP+ 'Case/BulkCaseDeleteInfo',
															method : 'POST',
															contentType : 'application/json',
															data : passData,
															dataType : 'json',
															success : function(
																	result,
																	status,
																	request) {
																if (result.status == 200) {
																	showMessage('success',"N1266");
									                            	setTimeout(function(){
									                            		window.location.href = "case-management.jsp"; 
									                            		}, 3600);
																} else {
																	showMessage('error',"N1265");
									                            	$("#batchDeleteConfirm").prop("disabled",false);
																	
																}
															},
															complete:function(data){
																 document.getElementById("loaderNotify").style.display = "none";
															},
															error : function(error) {
																console.log(JSON.stringify(error));
															}
														});
											});
							
							////// From Dashboard See More Button
							console.log("fromDash     " + fromDash);
							
						 	if( fromDash == "yes"){
								runSearch();
								localStorage.setItem("fromDashboard", "no"); 
							} 
							
							
						});
        $("#btnOutputCaseListCSV").click(function( event ) { 
      	   $.ajax({
                beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
                 request.setRequestHeader("GUID", GUID);
                },
                url: serverHTTP +'Case/ListCSVOutput',
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
		
		// Update this..................................................................
		function runSearch() {
			var occupationClassification = document
					.getElementById("occupationClassification").value;

			var templateNameReqNode = {};
			templateNameReqNode['caseNumber'] = document
					.getElementById("caseNumber").value.trim() != "" ? document
					.getElementById("caseNumber").value.trim() : null;
			templateNameReqNode['quotationNumber'] = document
					.getElementById("quotationNumber").value.trim() != "" ? document
					.getElementById("quotationNumber").value.trim()
					: null;
			templateNameReqNode['caseName'] = document
					.getElementById("projectTitle").value.trim() != "" ? document
					.getElementById("projectTitle").value.trim()
					: null;
			templateNameReqNode['customerCompanyName'] = document
					.getElementById("customerCompanyName").value.trim() != "" ? document
					.getElementById("customerCompanyName").value.trim()
					: null;
			templateNameReqNode['customerRepresentativeName'] = document
					.getElementById("customerRepresentativeName").value.trim() != "" ? document
					.getElementById("customerRepresentativeName").value.trim()
					: null;
			templateNameReqNode['personInChargeOfCase'] = document
					.getElementById("PersonInCharge").value.trim() != "" ? document
					.getElementById("PersonInCharge").value.trim()
					: 0;
			templateNameReqNode['assignmentClassification'] = document
					.getElementById("assignmentClassification").value != "" ? document
					.getElementById("assignmentClassification").value
					: 0;

			templateNameReqNode['dispatchClassification'] = document
					.getElementById("dispatchClassification").value.trim() != "" ? document
					.getElementById("dispatchClassification").value.trim()
					: 0;

			// Occupation Classification..................
			templateNameReqNode['occupationClassification1'] = occupationClassification == 1 ? 1
					: 0;
			templateNameReqNode['occupationClassification2'] = occupationClassification == 2 ? 1
					: 0;
			templateNameReqNode['occupationClassification3'] = occupationClassification == 3 ? 1
					: 0;
			templateNameReqNode['occupationClassification4'] = occupationClassification == 4 ? 1
					: 0;
			templateNameReqNode['occupationClassification5'] = occupationClassification == 5 ? 1
					: 0;
			templateNameReqNode['occupationClassification6'] = occupationClassification == 6 ? 1
					: 0;
			templateNameReqNode['occupationClassification7'] = occupationClassification == 7 ? 1
					: 0;

			templateNameReqNode['periodStartDate'] = document
					.getElementById("implementationPeriodStart").value.trim() != "" ? document
					.getElementById("implementationPeriodStart").value.trim()
					: null;
			templateNameReqNode['periodEndDate'] = document
					.getElementById("implementationPeriodEnd").value.trim() != "" ? document
					.getElementById("implementationPeriodEnd").value
					: null;
			templateNameReqNode['caseOpen'] = document
					.getElementById("ProposalDisclosure").value.trim() != "" ? parseInt(document
					.getElementById("ProposalDisclosure").value)
					: 1;

			templateNameReqNode['contractDateTo'] = document
					.getElementById("conflictDateTo").value.trim() != "" ? document
					.getElementById("conflictDateTo").value.trim()
					: null;
			templateNameReqNode['contractDateFrom'] = document
					.getElementById("conflictDateFrom").value.trim() != "" ? document
					.getElementById("conflictDateFrom").value.trim()
					: null;
			templateNameReqNode['belongings'] = document
					.getElementById("affiliation").value != "" ? document
					.getElementById("affiliation").value : null;

			$.ajax({
				beforeSend : function(request) {
					document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/SearchCaseInfo',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(templateNameReqNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						showSearchResult(result, request);
					} else {
						console.log("SearchCaseInfo API error");
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
					targets : 13
				}, {
					responsivePriority : 2,
					targets : 3
				}, ],
				order : [ 1, 'asc' ]

			});
		}

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "case");
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

		// Update this.......................................
		function showSearchResult(result, request) {
			table.destroy();
			$("#tbodyId").empty();
			for (i = 0; i < result.data.length; i++) {

				occupationClassification1Value = result.data[i].occupationClassification1 == 1 ? occupationClassificationArray[1]
						+ " , "
						: "";
				occupationClassification2Value = result.data[i].occupationClassification2 == 1 ? occupationClassificationArray[2]
						+ " , "
						: "";
				occupationClassification3Value = result.data[i].occupationClassification3 == 1 ? occupationClassificationArray[3]
						+ " , "
						: "";
				occupationClassification4Value = result.data[i].occupationClassification4 == 1 ? occupationClassificationArray[4]
						+ " , "
						: "";
				occupationClassification5Value = result.data[i].occupationClassification5 == 1 ? occupationClassificationArray[5]
						+ " , "
						: "";
				occupationClassification6Value = result.data[i].occupationClassification6 == 1 ? occupationClassificationArray[6]
						+ " , "
						: "";
				occupationClassification7Value = result.data[i].occupationClassification7 == 1 ? occupationClassificationArray[7]
						: "";

				dispatchClassification = dispatchClassificationArray[result.data[i].dispatchClassification] != "" ? dispatchClassificationArray[result.data[i].dispatchClassification]: "";

				personInChargeOfCase = result.data[i].personInChargeOfCaseText != null ? result.data[i].personInChargeOfCaseText : "";

				proposalDiscloser = proposalDiscloserArray[result.data[i].caseOpen] != "" ? proposalDiscloserArray[result.data[i].caseOpen]
						: "";

				periodStartDate = result.data[i].periodStartDate != null ? result.data[i].periodStartDate : "";	
				periodEndDate = result.data[i].periodEndDate != null ? result.data[i].periodEndDate : "";
				
				let newRow = ' <tr>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;"></td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ (i + 1)
						+ '</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ '<label class="container">'
						+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].caseId+'">'
						+ ' <span class="checkmark"></span>'
						+ '</label>'
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].caseNumber
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].quotationNumber
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].caseName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ dispatchClassification
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e; min-width:100px;">'
						+ occupationClassification1Value
						+ occupationClassification2Value
						+ occupationClassification3Value
						+ occupationClassification4Value
						+ occupationClassification5Value
						+ occupationClassification6Value
						+ occupationClassification7Value
						+ '</td>'
						+ '<td >'
						+ periodStartDate
						+ ' - '
						+ periodEndDate
						+ '</td>'
						+ '<td >'
						+ result.data[i].customerCompanyName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ result.data[i].customerRepresentativeName
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ personInChargeOfCase
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+ proposalDiscloser
						+ '</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''
						+ result.data[i].caseId
						+ '\')" name="viewDetails" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
						+ '<button class="btn ScheduleButton ml-1" onclick="createInvoice(\''+result.data[i].caseId+'\')" title="Make an Invoice" name="MakeInvoice" role="button" id="tableButtonDetails_3___"><i class="fa fa-list-alt"></i></button>'
						+ '</td>' + '</tr>';
				$("#search_table tbody").append(newRow);
			}
			drawDtataTable(getSiteLanguage());
			loadSelectedLanguage(getSiteLanguage(),"case");
		}

		function viewDetails(caseId) {
			
			let url = "case-details.jsp";
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="caseId" value="'+caseId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
			
		}
		
        // Linking to Invoice Creation
		function createInvoice(caseId)
		{
			let url = "invoice-create-blank.jsp";
			//let companyId = document.getElementById("companyId").value;
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="companyId" value="'+caseId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
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
				showSystemMessage('info','N1212');
			} else {

				for (i = 0; i < tableCheckNode.length; i++) {
					parentRow = $(tableCheckNode[i]).closest('tr');

					// $("#loadTest").append(parentRow);
					tNo = parentRow.find("td:eq(1)").text();
					let DCaseName = parentRow.find("td:eq(5)").text();
					let DQuotationNumber = parentRow.find("td:eq(4)").text();
					let DProposalNumber = parentRow.find("td:eq(3)").text();
					let DCaseID = parentRow.find("input:checkbox").val();

					let newRow = ' <tr>'
							+ '<input type="hidden" name="batchdeleteCaseID[]" value="'+DCaseID+'">'
							+ '<td>' + tNo + '</td>' + '<td>'
							+ DCaseName + '</td>' + '<td>'
							+ DProposalNumber + '</td>' + '<td>'
							+ DQuotationNumber + '</td>';

					$("#confirm_staff_table tbody").append(newRow);
				}
				$('#confirmDeleteModal').modal('show');

			}
		}

/* 		function changeChargeStaff() {
			const tableCheckNode = document
					.querySelectorAll('input[name="tableCheck"]:checked');
			if (tableCheckNode.length == 0) {
				showSystemMessage('info',
						"Please Select the Staff from Staff Details !");
			} else {

			}
		} */
		
		$("#clearAllBtn").click(function(event) {
			resetValidationReturnValues();
			$("#errorCaseNumber").html("");
			$("#errorQuotationNumber").html("");
			$("#errorCustomerRepresentativeName").html("");
			$("#errorImplementationPeriodStart").html("");
			$("#errorImplementationPeriodEnd").html("");
			$("#errorConflictDateFrom").html("");
			$("#errorConflictDateTo").html("");

			$("input").removeClass("errorVal");

		});
	</script>


</body>

</html>