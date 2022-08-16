<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitlePayrollManagement">Payroll Management</title>
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
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingSalaryList"> Salary List</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingSalaryList">
											You can check salary information for each staff member
											according to the status of expense report submission.</p>
									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">

												<button id="buttonPayrollTransferCSVOutput"
													class="DefaultButton btn btn-info TopButtonMinWidth "
													role='button'>
													<span id="buttonSpanCSVOutputForPayroll"> CSV Output
														for Payroll Transfer</span>
												</button>

											</div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">
												<!-- <button 
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span
														id="buttonSpanBatchProcessingCSVOutput"> Batch
														Processing CSV Output </span>
												</button>
												<button
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span
														id="buttonSpanBatchProcessingCSVInput"> Batch
														Processing CSV Input</span>

												</button> -->
												<button id="buttonProcessedPayrollCSVOutput"
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonSpanProcessedListCSV"> Processed
														List CSV Output</span>

												</button>
											</div>
										</div>
									</div>
								</div>




								<div class="row">
									<div class="col-lg-12 col-md-12 col-xl-12 mt-3">
										<div class="row ">
											<div class="col-lg-12 col-md-12 col-sm-12 pr-4">
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
																		id="pageLabelSalaryPaymentForm"> Salary
																		Payment Form</label> <span class="RequiredStar"> *</span>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-hourglass-start"></i>
																			</div>
																		</div>
																		<Select id="salaryPaymentForm" class="form-control">
																			<option value="" id="selectSalaryPaymentForm">Select
																				Salary Payment Form</option>
																			<option value="1" id="selectSalaryPaymentFormDaily">Daily/
																				Weekly Payment</option>
																			<option value="2" id="selectSalaryPaymentFormMonthly">Monthly
																				Payment</option>
																		</Select>
																	</div>
																	<div id="errorSalaryPaymentForm" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelTargetYear">
																		Target Year</label> <span class="RequiredStar"> *</span>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="targetYear" name="targetYear"
																			placeholder="Enter Target Year" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorTargetYear" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelTargetMonth">
																		Target Month</label> <span class="RequiredStar"> *</span>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-calendar"></i>
																			</div>
																		</div>
																		<Select id="targetMonth"
																			name="shiftSubmissionCategory" class="form-control"
																			role="combobox">
																			<option id="pageOptionTargetMonth" value="">Select
																				Target Month</option>
																			<option id="pageOptionJanuary" value="01">January</option>
																			<option id="pageOptionFebruary" value="02">February</option>
																			<option id="pageOptionMarch" value="03">March</option>
																			<option id="pageOptionApril" value="04">April</option>
																			<option id="pageOptionMay" value="05">May</option>
																			<option id="pageOptionJune" value="06">June</option>
																			<option id="pageOptionJuly" value="07">July</option>
																			<option id="pageOptionAugust" value="08">August</option>
																			<option id="pageOptionSeptember" value="09">September</option>
																			<option id="pageOptionOctober" value="10">October</option>
																			<option id="pageOptionNovember" value="11">November</option>
																			<option id="pageOptionDecember" value="12">December</option>
																		</Select>


																	</div>
																	<div id="errorTargetMonth" style="color: red;"></div>
																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber"
																		id="pageLabelSalaryClosingDate"> Salary
																		Closing Date </label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-calendar"></i>
																			</div>
																		</div>

																		<Select id="salaryClosingDate" name="targetDate"
																			class="form-control" role="combobox">
																			<option id="OptiontargetDate" value="">Select
																				Salary Closing Date</option>
																			<option id="OptiontargetDate1" value="1">1
																				st</option>
																			<option id="OptiontargetDate2" value="2">2
																				nd</option>
																			<option id="OptiontargetDate3" value="3">3
																				rd</option>
																			<option id="OptiontargetDate4" value="4">4
																				th</option>
																			<option id="OptiontargetDate5" value="5">5
																				th</option>
																			<option id="OptiontargetDate6" value="6">6
																				th</option>
																			<option id="OptiontargetDate7" value="7">7
																				th</option>
																			<option id="OptiontargetDate8" value="8">8
																				th</option>
																			<option id="OptiontargetDate9" value="9">9
																				th</option>
																			<option id="OptiontargetDate10" value="10">10
																				th</option>
																			<option id="OptiontargetDate11" value="11">11
																				th</option>
																			<option id="OptiontargetDate12" value="12">12
																				th</option>
																			<option id="OptiontargetDate13" value="13">13
																				th</option>
																			<option id="OptiontargetDate14" value="14">14
																				th</option>
																			<option id="OptiontargetDate15" value="15">15
																				th</option>
																			<option id="OptiontargetDate16" value="16">16
																				th</option>
																			<option id="OptiontargetDate17" value="17">17
																				th</option>
																			<option id="OptiontargetDate18" value="18">18
																				th</option>
																			<option id="OptiontargetDate19" value="19">19
																				th</option>
																			<option id="OptiontargetDate20" value="20">20
																				th</option>
																			<option id="OptiontargetDate21" value="21">21
																				th</option>
																			<option id="OptiontargetDate22" value="22">22
																				th</option>
																			<option id="OptiontargetDate23" value="23">23
																				th</option>
																			<option id="OptiontargetDate24" value="24">24
																				th</option>
																			<option id="OptiontargetDate25" value="25">25
																				th</option>
																			<option id="OptiontargetDate26" value="26">26
																				th</option>
																			<option id="OptiontargetDate27" value="27">27
																				th</option>
																			<option id="OptiontargetDate28" value="28">28
																				th</option>
																			<option id="OptiontargetDate29" value="29">29
																				th</option>
																			<option id="OptiontargetDate30" value="30">30
																				th</option>
																			<option id="OptiontargetDate31" value="31">31
																				st</option>

																		</Select>



																	</div>
																	<div id="errorCustomerName" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelName">
																		Name</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="salaryListName" name="targetYear"
																			placeholder="Enter Name" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorSalaryListName" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelNameKatakana">
																		Name Katakana</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="salaryListNameKatakana" name="targetYear"
																			placeholder="Enter Name Katakana"
																			class="form-control" role="textbox">

																	</div>
																	<div id="errorSalaryListNameKatakana"
																		style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelStaffCode">
																		Staff Code</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="staffCode" name="targetYear"
																			placeholder="Enter Staff Code" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorStaffCode" style="color: red;"></div>
																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber"
																		id="pageLabelInChargeStaff"> In Charge Staff </label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<Select id="inchargeofStaff"
																			class="form-control input-code">
																			<option value="" id="selectInchargeofStaff">Select
																				In Charge Staff</option>
																		</Select>


																	</div>
																	<div id="errorCaseNumber" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelBelonging">
																		Belonging </label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="salaryListBelonging" name="targetYear"
																			placeholder="Enter Belonging" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorCaseNumber" style="color: red;"></div>
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

												<!-- 
												<div class="col-md-12 col-lg-12 col-xl-12"> 
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-1 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 " id="pageCardDivTotalProceedStaff">Total Proceed Staff</div>
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
																id="pageCardDivTotalUnprocessedSubmitted">Total Unprocessed Submitted</div>
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
															<div class="col-12 p-0 " id="pageCardDivTotalUnprocessedNotSubmitted">Total Unprocessed Not Submitted</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalAvailable"></p>
															</div>
														</div>
													</div>
												</div>  -->

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
												<h4 class="card-title mb-3" id="accordianDate"></h4>

												<ul class="nav nav-tabs" id="myTab" role="tablist">
													<li class="nav-item"><a class="nav-link active"
														id="home-basic-tab" data-toggle="tab" href="#tabProcessed"
														role="tab" aria-controls="homeBasic" aria-selected="true">
															Processed</a></li>
													<li class="nav-item"><a class="nav-link"
														id="profile-basic-tab" data-toggle="tab"
														href="#profileBasic" role="tab"
														aria-controls="profileBasic" aria-selected="false">
															Unprocessed (Expense Report submitted)</a></li>
													<li class="nav-item"><a class="nav-link"
														id="contact-basic-tab" data-toggle="tab"
														href="#contactBasic" role="tab"
														aria-controls="contactBasic" aria-selected="false">
															Unprocessed (Expense Report not submitted) </a></li>
												</ul>
												<div class="tab-content" id="myTabContent">
													<div class="tab-pane fade show active" id="tabProcessed"
														role="tabpanel" aria-labelledby="home-basic-tab">

														<div class="card-title">
															<span id="pageSpanSearchProcessed"> Processed </span>
														</div>
														<span id="pageSpanSearchProcessedHelp1"> The
															dispatched staff whose daily salary has been confirmed is
															displayed. You can check the payment status (paid /
															unpaid) in the salary display part. </span> </br> <span
															class="RequiredStar" id="pageSpanSearchProcessedHelp2">
															If you want to change the payment status, select the
															target item in the details ⇒ work information list, and
															select the salary payment check box for daily salary
															information. </span>

														<div class="table-responsive pt-2">
															<table
																class="display table table-striped table-bordered hover"
																id="search_table1" style="width: 100%">
																<thead>
																	<tr class="thClass">
																		
																		<th
																			style="background: rgb(245, 249, 253); color: #647a8e;"
																			id="tableSearchTHNo">No</th>
																		<th
																			style="background: rgb(245, 249, 253); color: #647a8e;"
																			id="tableSearchTHChoice">Choice</th>
																		<th class="color-1"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHStaffMobile">Staff (mobile)</th>
																		<th class="color-1"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHSalaryPaymentMethod">Salary
																			Payment Method</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHClosingDate">Closing Date</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHApprovalDate">Approval Date and
																			Time</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHAuthorizer">Authorizer</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHSalary">Salary</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHInChargeStaff">In Charge Staff
																		</th>
																		<th class="TableButtonTH"
																			style="width: 5%; background: rgb(255, 255, 255); color: #647a8e;"></th>
																	</tr>
																</thead>
																<tbody id="tbodyId1">
																</tbody>
															</table>
														</div>

														<div class="row pt-2 ">
															<div class="col-sm-6 col-md-6 col-lg-6 TopButLCDiv">
																<div class="btn-group col-lg-6 col-sm-12 pl-sm-3"
																	role="group">
																	<button
																		class="btn btn-secondary DefaultButton pl-3 pr-3"
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
														</div>
													</div>
													<div class="tab-pane fade" id="profileBasic"
														role="tabpanel" aria-labelledby="profile-basic-tab">

														<div class="card-title">
															<span id="pageSpanSearchUnprocessedExpenseReport">
																Unprocessed (Expense Report submitted) </span>
														</div>
														<span id="pageSpanSearchUnprocessedHelp">
															Dispatched staff whose daily salary has not been
															confirmed are displayed. To confirm the salary amount,
															click the "Calculate salary information" button from the
															staff assignment details. </span>

														<div class="table-responsive pt-2">
															<table
																class="display table table-striped table-bordered hover"
																id="search_table2" style="width: 100%">
																<thead>
																	<tr class="thClass">
																		<th
																			style="background: rgb(245, 249, 253); color: #647a8e;"
																			id="tableSearchTHNo">No</th>
																		<th
																			style="background: rgb(245, 249, 253); color: #647a8e;"
																			id="tableSearchTHChoice">Choice</th>
																		<th class="color-1"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHStaffMobile">Staff (mobile)</th>
																		<th class="color-1"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHSalaryPaymentMethod">Salary
																			Payment Method</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHClosingDate">Closing Date</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHNoSplitSalaries"><span
																			id="tableSearchTHImplementationDate">Implementation
																				Date</span> <span id="tableSearchTHNumberOfSplitSalaries"
																			style="display: none;">Number of split
																				Salaries</span></th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHProjectTitleTH"><span
																			id="tableSearchTHProjectTitle">Project Title</span> <span
																			id="tableSearchTHApprovalDateAndTime"
																			style="display: none;">Approval date and time</span>
																		</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHWorkLocationTH"><span
																			id="tableSearchTHWorkLocation">Work Location</span> <span
																			id="tableSearchTHAuthorizerUn" style="display: none;">Authorizer</span>
																		</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHSalary">Salary</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHInChargeStaff">In Charge Staff
																		</th>
																		<th class="TableButtonTH"
																			style="width: 5%; background: rgb(255, 255, 255); color: #647a8e;"></th>
																	</tr>
																</thead>
																<tbody id="tbodyId2">
																</tbody>
															</table>
														</div>

														<div class="row pt-2 ">
															<div class="col-sm-6 col-md-6 col-lg-6 TopButLCDiv">
																<div class="btn-group col-lg-6 col-sm-12 pl-sm-3"
																	role="group">
																	<button
																		class="btn btn-secondary DefaultButton pl-3 pr-3"
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
														</div>
													</div>
													<div class="tab-pane fade" id="contactBasic"
														role="tabpanel" aria-labelledby="contact-basic-tab">
														<div class="card-title">
															<span id="pageSpanSearchUnprocessedExpenseNotReport">
																Unprocessed (Expense Report Not submitted) </span>
														</div>
														<span id="pageSpanSearchUnprocessedNotHelp">
															Dispatched staff who have not submitted an expense report
															are displayed. </span>

														<div class="table-responsive pt-2">
															<table
																class="display table table-striped table-bordered hover"
																id="search_table3" style="width: 100%">
																<thead>
																	<tr class="thClass">
																		<th
																			style="background: rgb(245, 249, 253); color: #647a8e;"
																			id="tableSearchTHNo">No</th>
																		<th
																			style="background: rgb(245, 249, 253); color: #647a8e;"
																			id="tableSearchTHChoice">Choice</th>
																		<th class="color-1"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHStaffMobile">Staff (mobile)</th>
																		<th class="color-1"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHSalaryPaymentMethod">Salary
																			Payment Method</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHClosingDate">Closing Date</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHImplementationDate">
																			Implementation Date</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHProjectTitle">Project Title</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHWorkLocation">Work Location</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHSalary">Salary</th>
																		<th class="TableTHMinWidth text-center"
																			style="background: rgb(208, 226, 241); color: #647a8e;"
																			id="tableSearchTHInChargeStaff">In Charge Staff
																		</th>
																		<th class="TableButtonTH"
																			style="width: 5%; background: rgb(255, 255, 255); color: #647a8e;"></th>
																	</tr>
																</thead>
																<tbody id="tbodyId3">
																</tbody>
															</table>
														</div>

														<div class="row pt-2 ">
															<div class="col-sm-6 col-md-6 col-lg-6 TopButLCDiv">
																<div class="btn-group col-lg-6 col-sm-12 pl-sm-3"
																	role="group">
																	<button
																		class="btn btn-secondary DefaultButton pl-3 pr-3"
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
						<!-- <div class="flex-grow-1"></div> -->

						<!-- ============ Footer start ============= -->
						<%@ include file="common/footer.jsp"%>
						<!-- ============ Footer end ============= -->

					</div>
				</div>
				<!-- ============ Search UI Start ============= -->

				<!-- ============ Search UI End ============= -->
				<!-- <script src="./dist-assets/js/language_script_Customer.js"></script> -->



				<span id="spanScriptID"></span>
				<script src="./dist-assets/js/language_main.js"></script>

				<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"payroll");
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
				<script
					src="./dist-assets/js/scripts/layout-sidebar-vertical.min.js"></script>
				<script src="./dist-assets/js/plugins/echarts.min.js"></script>
				<script src="./dist-assets/js/scripts/echart.options.min.js"></script>
				<script src="./dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
				<script src="./dist-assets/js/plugins/datatables.min.js"></script>
				<script src="./dist-assets/js/scripts/datatables.script.min.js"></script>

				<script src="./dist-assets/js/payroll-management-validate.js"></script>

				<script>
	    const serverHTTP = "<%=serverHTTP%>";
					const GUID = localStorage.getItem("GUID");
					const uuid = localStorage.getItem("uuid");
					const role = localStorage.getItem("userRole");

					$(document)
							.ready(
									function() {

										let dataSet = '{"uuid" : "' + uuid
												+ '"}';

										var table1;
										var table2;
										var table3;

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

										$
												.ajax({
													beforeSend : function(
															request) {
														request
																.setRequestHeader(
																		"GUID",
																		GUID);
													},
													url : serverHTTP
															+ 'Payroll/GetAttendanceCount',
													method : 'GET',
													contentType : 'application/json',
													//  data: templateNameReqNode,
													dataType : 'json',
													success : function(result,
															status, request) {
														if (result.status == 200) {
															$("#pTotalNumber")
																	.html(
																			result.data.finalProceedStaff);
															$("#pTotalActive")
																	.html(
																			result.data.unProceedReportSubmittedStaff);
															$(
																	"#pTotalAvailable")
																	.html(
																			result.data.unProceedStaff);
														} else {
															console
																	.log("Sorry card Data Loding Error");
														}
													},
													error : function(error) {
														console
																.log(JSON
																		.stringify(error));
													}
												});

										////////qqqqqqqqqqqqqqqqqqqqqqqqq
										let dataNode = '{"id" : 0, "authority": '
												+ role + '}';

										$
												.ajax({
													beforeSend : function(
															request) {
														document
																.getElementById("loaderNotify").style.display = "";
														request
																.setRequestHeader(
																		"GUID",
																		GUID);
													},
													url : serverHTTP
															+ 'Employee/GetInchargeOfStaff',
													method : 'POST',
													contentType : 'application/json',
													data : dataNode,
													dataType : 'json',
													success : function(result,
															status, request) {
														if (result.status == 200) {
															console.log("ok")
															var select = document
																	.getElementById('inchargeofStaff');

															if (result.data != null) {

																for (i = 0; i < result.data.length; i++) {
																	select.options[select.options.length] = new Option(
																			result.data[i].name,
																			result.data[i].value);
																}

															}
														} else {
															console
																	.log("not ok")
														}
													},
													complete : function(data) {
														document
																.getElementById("loaderNotify").style.display = "none";
													},
													error : function(error) {
														console
																.log(JSON
																		.stringify(error));
													}
												});

									});

					//function runSearch() {
					$("#searchForm")
							.submit(
									function(event) {
										event.preventDefault();
										let targetYear = document
												.getElementById("targetYear").value != "" ? document
												.getElementById("targetYear").value
												: null;
										let targetMonth = document
												.getElementById("targetMonth").value != "" ? document
												.getElementById("targetMonth").value
												: null;
										let targetSalaryPaymentForm = document
												.getElementById("salaryPaymentForm").value != "" ? document
												.getElementById("salaryPaymentForm").value
												: 0;
										var templateNameReqNode = {};
										templateNameReqNode['salaryPaymentForm'] = targetSalaryPaymentForm
										templateNameReqNode['targetYear'] = targetYear;
										templateNameReqNode['targetMonth'] = targetMonth
										templateNameReqNode['salaryClosingDate'] = document
												.getElementById("salaryClosingDate").value != "" ? document
												.getElementById("salaryClosingDate").value
												: 0;
										templateNameReqNode['name'] = document
												.getElementById("salaryListName").value != "" ? document
												.getElementById("salaryListName").value
												: null;
										templateNameReqNode['nameKatakana'] = document
												.getElementById("salaryListNameKatakana").value != "" ? document
												.getElementById("salaryListNameKatakana").value
												: null;
										templateNameReqNode['staffCode'] = document
												.getElementById("staffCode").value != "" ? document
												.getElementById("staffCode").value
												: null;
										templateNameReqNode['inChargeStaff'] = document
												.getElementById("inchargeofStaff").value != "" ? document
												.getElementById("inchargeofStaff").value
												: null; ////////CHANGEEEEEEE.//////////////
										templateNameReqNode['belong'] = document
												.getElementById("salaryListBelonging").value != "" ? document
												.getElementById("salaryListBelonging").value
												: null;

										$
												.ajax({
													beforeSend : function(
															request) {
														request
																.setRequestHeader(
																		"GUID",
																		GUID);
														document
																.getElementById("loaderNotify").style.display = "";
													},
													url : serverHTTP
															+ 'Payroll/SearchPayroll',
													method : 'POST',
													contentType : 'application/json',
													data : JSON
															.stringify(templateNameReqNode),
													dataType : 'json',
													success : function(result,
															status, request) {
														if (result.status == 200) {
															if (targetSalaryPaymentForm == 1) {
																showSearchResult(
																		result,
																		targetYear,
																		targetMonth);
															} else if (targetSalaryPaymentForm == 2) {
																showSearchResultForMonth(
																		result,
																		targetYear,
																		targetMonth);
															}

														} else {
															// showMessage("Sorry Data Loding Error");
														}
													},
													complete : function(data) {
														document
																.getElementById("loaderNotify").style.display = "none";
													},
													error : function(error) {
														console
																.log(JSON
																		.stringify(error));
													}
												});
									});

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

						table1 = $('#search_table1').DataTable({
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
								targets : 9
							}, {
								responsivePriority : 1,
								targets : 2
							}, {
								responsivePriority : 2,
								targets : 9
							}, ],
							order : [ 1, 'asc' ]

						});

						table2 = $('#search_table2').DataTable({
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
								targets : 10
							}, {
								responsivePriority : 1,
								targets : 2
							}, {
								responsivePriority : 2,
								targets : 10
							}, ],
							order : [ 1, 'asc' ]

						});

						table3 = $('#search_table3').DataTable({
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
								targets : 10
							}, {
								responsivePriority : 1,
								targets : 2
							}, {
								responsivePriority : 2,
								targets : 10
							}, ],
							order : [ 1, 'asc' ]

						});
					}

					function setLanguageWithTables(selectedLanguage) {
						//pageLanguage = selectedLanguage
						//setLanguage(selectedLanguage);
						loadSelectedLanguage(selectedLanguage, "payroll");
						setLanguage(selectedLanguage);
						//table.destroy();
						//drawDtataTable(selectedLanguage);
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
					function showSearchResult(result, targetYear, targetMonth) {
						document
								.getElementById("tableSearchTHImplementationDate").style.display = "";
						document.getElementById("tableSearchTHProjectTitle").style.display = "";
						document.getElementById("tableSearchTHWorkLocation").style.display = "";

						document
								.getElementById("tableSearchTHNumberOfSplitSalaries").style.display = "none";
						document
								.getElementById("tableSearchTHApprovalDateAndTime").style.display = "none";
						document.getElementById("tableSearchTHAuthorizerUn").style.display = "none";

						table1.destroy();
						table2.destroy();
						table3.destroy();
						$("#tbodyId1").empty();
						$("#tbodyId2").empty();
						$("#tbodyId3").empty();
						let x = 1;
						let y = 1;
						let z = 1;
						let userArray = [];
						for (i = 0; i < result.data.length; i++) {

							name = result.data[i].name != null ? result.data[i].name
									: "";
							staffCode = result.data[i].staffCode != null ? result.data[i].staffCode
									: "";
							telMobile = result.data[i].telMobile != null ? result.data[i].telMobile
									: "";
							salaryPaymentMethod = salaryPayementMethodArray[result.data[i].salaryPaymentMethod] != null ? salaryPayementMethodArray[result.data[i].salaryPaymentMethod]
									: "";
							salaryClosingDate = result.data[i].salaryClosingDate != null ? result.data[i].salaryClosingDate
									: "";
							implementDate = result.data[i].implementDate != null ? result.data[i].implementDate
									: "";
							projectName = result.data[i].caseName != null ? result.data[i].caseName
									: "";
							workLocation = result.data[i].workLocation != null ? result.data[i].workLocation
									: "";
							paymentAmount = result.data[i].paymentAmount != null ? result.data[i].paymentAmount
									: "";
							inChargeStaff = personInChargeArray[result.data[i].inChargeStaff] != null ? personInChargeArray[result.data[i].inChargeStaff]
									: "";
							approvalDateTime = result.data[i].approvalDateTime != null ? result.data[i].approvalDateTime
									: "";
							approvedUser = result.data[i].approvedUser != null ? result.data[i].approvedUser
									: "";
							payrollID = result.data[i].payrollId != null ? result.data[i].payrollId
									: "";

							if (result.data[i].confirmExpenseReportStatus == 1
									&& result.data[i].approvalStatus == 2
									&& result.data[i].expenseReportStatus == 1) {

								if (userArray.indexOf(staffCode) == -1) {
									userArray.push(staffCode);

									let newRow = ' <tr>'
											+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
											+ (x++)
											+ '</td>'
											+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
											+ '<label class="container">'
											+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].assignmentId+'">'
											+ ' <span class="checkmark"></span>'
											+ '</label>'
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ name
											+ "("
											+ staffCode
											+ ")"
											+ '<br/>'
											+ telMobile
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ salaryPaymentMethod
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ salaryClosingDate
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ approvalDateTime
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ approvedUser
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;" data-amount="'
											+ staffCode
											+ '">'
											+ paymentAmount
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ inChargeStaff
											+ '</td>'
											+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
											+ '<button class="btn DetailsButton ml-1" onclick="viewPaySlip(\''
											+ result.data[i].staffId
											+ '\',\''
											+ targetYear
											+ '\',\''
											+ targetMonth
											+ '\', \''
											+ payrollID
											+ '\')"  title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
											+ '</td>' + '</tr>';
									$("#search_table1 tbody").append(newRow);
								} else {
									let ele = $("td[data-amount='" + staffCode
											+ "']")
									let currentAmount = $(ele).html();
									let newAmount = parseInt(currentAmount)
											+ parseInt(paymentAmount);
									$(ele).html(newAmount);
								}

							} else if (result.data[i].expenseReportStatus == 1
									&& result.data[i].confirmExpenseReportStatus == 1) {

								let newRow = ' <tr>'
										+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
										+ (y++)
										+ '</td>'
										+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
										+ '<label class="container">'
										+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].assignmentId+'">'
										+ ' <span class="checkmark"></span>'
										+ '</label>'
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ name
										+ "("
										+ staffCode
										+ ")"
										+ '<br/>'
										+ telMobile
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ salaryPaymentMethod
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ salaryClosingDate
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ implementDate
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ projectName
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ workLocation
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ paymentAmount
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ inChargeStaff
										+ '</td>'
										+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
										+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''
										+ result.data[i].implementId
										+ '\',\''
										+ result.data[i].implementDate
										+ '\',\''
										+ result.data[i].staffId
										+ '\',\''
										+ result.data[i].assignmentId
										+ '\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
										+ '</td>' + '</tr>';
								$("#search_table2 tbody").append(newRow);
							} else {
								let newRow = ' <tr>'
										+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
										+ (z++)
										+ '</td>'
										+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
										+ '<label class="container">'
										+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].assignmentId+'">'
										+ ' <span class="checkmark"></span>'
										+ '</label>'
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ name
										+ "("
										+ staffCode
										+ ")"
										+ '<br/>'
										+ telMobile
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ salaryPaymentMethod
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ salaryClosingDate
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ implementDate
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ projectName
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ workLocation
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ paymentAmount
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ inChargeStaff
										+ '</td>'
										+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
										+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''
										+ result.data[i].implementId
										+ '\',\''
										+ result.data[i].implementDate
										+ '\',\''
										+ result.data[i].staffId
										+ '\',\''
										+ result.data[i].assignmentId
										+ '\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
										+ '<button class="btn ScheduleButton ml-1" onclick="sendRemainderMail(\''
										+ result.data[i].implementId
										+ '\',\''
										+ result.data[i].staffId
										+ '\',\''
										+ result.data[i].assignmentId
										+ '\')" role="button" id="tableButtonScheduleShift_3___" name="shiftSchedule"><i class="fa fa-envelope"></i></button>'
										+ '</td>' + '</tr>';
								$("#search_table3 tbody").append(newRow);
							}

						}
						drawDtataTable(getSiteLanguage());
					}

					function showSearchResultForMonth(result, targetYear,
							targetMonth) {
						document
								.getElementById("tableSearchTHImplementationDate").style.display = "none";
						document.getElementById("tableSearchTHProjectTitle").style.display = "none";
						document.getElementById("tableSearchTHWorkLocation").style.display = "none";
						
						// Uvindu//
						//document.getElementById("tableSearchTHNoSplitSalaries").style.display = "none";	
						document.getElementById("tableSearchTHNoSplitSalaries").deleteTHead();
						console.log("HHHHUOOOONNNNNN");

						document
								.getElementById("tableSearchTHNumberOfSplitSalaries").style.display = "";
						document
								.getElementById("tableSearchTHApprovalDateAndTime").style.display = "";
						document.getElementById("tableSearchTHAuthorizerUn").style.display = "";

						table1.destroy();
						table2.destroy();
						table3.destroy();
						$("#tbodyId1").empty();
						$("#tbodyId2").empty();
						$("#tbodyId3").empty();
						let x = 1;
						let y = 1;
						let z = 1;
						let userArray = [];
						let userArray2 = [];
						for (i = 0; i < result.data.length; i++) {

							name = result.data[i].name != null ? result.data[i].name
									: "";
							staffCode = result.data[i].staffCode != null ? result.data[i].staffCode
									: "";
							telMobile = result.data[i].telMobile != null ? result.data[i].telMobile
									: "";
							salaryPaymentMethod = salaryPayementMethodArray[result.data[i].salaryPaymentMethod] != null ? salaryPayementMethodArray[result.data[i].salaryPaymentMethod]
									: "";
							salaryClosingDate = result.data[i].salaryClosingDate != null ? result.data[i].salaryClosingDate
									: "";
							implementDate = result.data[i].implementDate != null ? result.data[i].implementDate
									: "";
							projectName = result.data[i].caseName != null ? result.data[i].caseName
									: "";
							workLocation = result.data[i].workLocation != null ? result.data[i].workLocation
									: "";
							paymentAmount = result.data[i].paymentAmount != null ? result.data[i].paymentAmount
									: "0";
							paidPaymentAmount = result.data[i].paymentAmount != null ? result.data[i].paidPaymentAmount
									: "0";
							unpaidPaymentAmount = parseInt(paymentAmount)
									- parseInt(paidPaymentAmount);
							inChargeStaff = personInChargeArray[result.data[i].inChargeStaff] != null ? personInChargeArray[result.data[i].inChargeStaff]
									: "";
							approvalDateTime = result.data[i].approvalDateTime != null ? result.data[i].approvalDateTime
									: "";
							approvedUser = result.data[i].approvedUser != null ? result.data[i].approvedUser
									: "";
							payrollID = result.data[i].payrollId != null ? result.data[i].payrollId
									: "";

							if (result.data[i].confirmExpenseReportStatus == 1
									&& result.data[i].payrollApprovalStatus == 1
									&& result.data[i].expenseReportStatus == 1) {
								if (userArray.indexOf(staffCode) == -1) {
									userArray.push(staffCode);
									let spanPaidStatus = "Unpaid";
									let spanPaidStatusColor = "red";
									if (result.data[i].paidStatus == 1) {
										spanPaidStatus = "Paid";
										spanPaidStatusColor = "green";
									}
									let newRow = ' <tr>'
											+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
											+ (x++)
											+ '</td>'
											+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
											+ '<label class="container">'
											+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].assignmentId+'">'
											+ ' <span class="checkmark"></span>'
											+ '</label>'
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ name
											+ "("
											+ staffCode
											+ ")"
											+ '<br/>'
											+ telMobile
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ salaryPaymentMethod
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ salaryClosingDate
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ approvalDateTime
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ approvedUser
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;"><span  data-amount="'+staffCode+'">'
											+ paymentAmount
											+ '</span><br/><span name="spanPaidStatus" style="font-size: 0.95rem;color:'+spanPaidStatusColor+'">'
											+ spanPaidStatus
											+ '</span></td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ inChargeStaff
											+ '</td>'
											+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
											+ '<button class="btn DetailsButton ml-1" onclick="viewPaySlip(\''
											+ result.data[i].staffId
											+ '\',\''
											+ targetYear
											+ '\',\''
											+ targetMonth
											+ '\', \''
											+ payrollID
											+ '\')"  title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
											+ '</td>' + '</tr>';
									$("#search_table1 tbody").append(newRow);
								} else {
									let ele = $("td[data-amount='" + staffCode
											+ "']")
									let currentAmount = $(ele).html();
									let newAmount = parseInt(currentAmount)
											+ parseInt(paymentAmount);
									$(ele).html(newAmount);
								}

							} else if (result.data[i].expenseReportStatus == 1
									&& result.data[i].confirmExpenseReportStatus == 1) {
								if (userArray2.indexOf(staffCode) == -1) {
									userArray2.push(staffCode);
									let newRow = ' <tr>'
											+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
											+ (y++)
											+ '</td>'
											+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
											+ '<label class="container">'
											+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].assignmentId+'">'
											+ ' <span class="checkmark"></span>'
											+ '</label>'
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ name
											+ "("
											+ staffCode
											+ ")"
											+ '<br/>'
											+ telMobile
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ salaryPaymentMethod
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ salaryClosingDate
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ ''
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ approvalDateTime
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ approvedUser
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;" data-amount2="'
											+ staffCode
											+ '">'
											+ paymentAmount
											+ '</td>'
											+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
											+ inChargeStaff
											+ '</td>'
											+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
											+ '<button class="btn DetailsButton ml-1" onclick="viewPaySlip(\''
											+ result.data[i].staffId
											+ '\',\''
											+ targetYear
											+ '\',\''
											+ targetMonth
											+ '\', \''
											+ payrollID
											+ '\')"  title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
											+ '</td>' + '</tr>';
									$("#search_table2 tbody").append(newRow);
								} else {
									let ele2 = $("td[data-amount2='"
											+ staffCode + "']")
									let currentAmount2 = $(ele2).html();
									let newAmount2 = parseInt(currentAmount2)
											+ parseInt(paymentAmount);
									$(ele2).html(newAmount2);
								}
							} else {
								let newRow = ' <tr>'
										+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
										+ (z++)
										+ '</td>'
										+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
										+ '<label class="container">'
										+ '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].assignmentId+'">'
										+ ' <span class="checkmark"></span>'
										+ '</label>'
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ name
										+ "("
										+ staffCode
										+ ")"
										+ '<br/>'
										+ telMobile
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ salaryPaymentMethod
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ salaryClosingDate
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ implementDate
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ projectName
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ workLocation
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ paymentAmount
										+ '</td>'
										+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
										+ inChargeStaff
										+ '</td>'
										+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
										+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''
										+ result.data[i].implementId
										+ '\',\''
										+ result.data[i].implementDate
										+ '\',\''
										+ result.data[i].staffId
										+ '\',\''
										+ result.data[i].assignmentId
										+ '\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
										+ '<button class="btn ScheduleButton ml-1" onclick="sendRemainderMail(\''
										+ result.data[i].implementId
										+ '\',\''
										+ result.data[i].staffId
										+ '\',\''
										+ result.data[i].assignmentId
										+ '\')" role="button" id="tableButtonScheduleShift_3___" name="shiftSchedule"><i class="fa fa-envelope"></i></button>'
										+ '</td>' + '</tr>';
								$("#search_table3 tbody").append(newRow);
							}

						}
						drawDtataTable(getSiteLanguage());
					}

					function viewDetails(implementationId, implementDate,
							staffId, assignmentId) {
						localStorage.setItem("implementationIDDetails",
								implementationId);
						localStorage.setItem("implementDate", implementDate);
						localStorage.setItem("userIDDetails", staffId);
						localStorage.setItem("assignmentId", assignmentId);
						window.location.href = "assignment-details.jsp";
					}

					function sendRemainderMail(implementationId, staffId,
							assignmentId) {

						var dataNode = {};
						dataNode['staffId'] = staffId;
						dataNode['assignmentId'] = assignmentId;
						dataNode['implementationId'] = implementationId;
						dataNode['uuid'] = uuid;

						$
								.ajax({
									beforeSend : function(request) {
										document.getElementById("loaderNotify").style.display = "";
										request.setRequestHeader("GUID", GUID);
									},
									url : serverHTTP
											+ 'Assignment/SendEndReminderMail',
									method : 'POST',
									contentType : 'application/json',
									data : JSON.stringify(dataNode),
									dataType : 'json',
									success : function(result, status, request) {
										if (result.status == 200) {
											showMessage('success', "N1266");

										} else {
											showMessage('error', "N1265");
											// showMessage("Sorry Data Loding Error");
										}
									},
									complete : function(data) {
										document.getElementById("loaderNotify").style.display = "none";
									},
									error : function(error) {
										console.log(JSON.stringify(error));
									}
								});
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
								tCustomerCode = parentRow.find("td:eq(3)")
										.text();
								tOrganizationName = parentRow.find("td:eq(7)")
										.text();
								tRepresentativeName = parentRow
										.find("td:eq(8)").text();
								tUuid = parentRow.find("input:checkbox").val();

								let newRow = ' <tr>'
										+ '<input type="hidden" name="batchdeleteUuid[]" value="'+tUuid+'">'
										+ '<td>' + tNo + '</td>' + '<td>'
										+ tOrganizationName + '</td>' + '<td>'
										+ tRepresentativeName + '</td>'
										+ '<td>' + tCustomerCode + '</td>';

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

					function viewPaySlip(staffId, targetYear, targetMonth,
							payrollId) {
						let url = "payroll-payslip.jsp";
						let form = $('<form action="' + url + '" method="post">'
								+ '<input type="hidden" name="staffId" value="'+staffId+'" />'
								+ '<input type="hidden" name="targetYear" value="'+targetYear+'" />'
								+ '<input type="hidden" name="targetMonth" value="'+targetMonth+'" />'
								+ '<input type="hidden" name="payrollId" value="'+payrollId+'" />'
								+ '</form>');
						$('body').append(form);
						form.submit();
					}

					$("#buttonPayrollTransferCSVOutput")
							.click(
									function(event) {

										const date = new Date();
										const currentYear = date.getFullYear();
										const currentMonth = date.getMonth() + 1;

										let currentMonthText = currentMonth
										if (currentMonth < 10) {
											currentMonthText = "0"
													+ currentMonth
										}

										var dataNode = {};
										targetYear = document
												.getElementById("targetYear").value != "" ? document
												.getElementById("targetYear").value
												: currentYear;
										targetMonth = document
												.getElementById("targetMonth").value != "" ? document
												.getElementById("targetMonth").value
												: currentMonthText;

										dataNode['targetYear'] = targetYear;
										dataNode['targetMonth'] = targetMonth;
										passData = JSON.stringify(dataNode);

										$
												.ajax({
													beforeSend : function(
															request) {
														document
																.getElementById("loaderNotify").style.display = "";
														request
																.setRequestHeader(
																		"GUID",
																		GUID);
													},
													url : serverHTTP
															+ 'Payroll/PayrollTransferCSV',
													method : 'POST',
													contentType : 'application/json',
													data : passData,
													dataType : 'json',
													success : function(result,
															status, request) {
														if (result.status == 200) {
															window.location = result.data.filePath;
														} else {
															//showMessage('error',"E1024");
														}
													},
													complete : function(data) {
														document
																.getElementById("loaderNotify").style.display = "none";
													},
													error : function(error) {
														console
																.log(JSON
																		.stringify(error));
													}
												});
									});

					$("#buttonProcessedPayrollCSVOutput")
							.click(
									function(event) {

										const date = new Date();
										const currentYear = date.getFullYear();
										const currentMonth = date.getMonth() + 1;

										let currentMonthText = currentMonth
										if (currentMonth < 10) {
											currentMonthText = "0"
													+ currentMonth
										}

										var dataNode = {};
										targetYear = document
												.getElementById("targetYear").value != "" ? document
												.getElementById("targetYear").value
												: currentYear;
										targetMonth = document
												.getElementById("targetMonth").value != "" ? document
												.getElementById("targetMonth").value
												: currentMonthText;

										dataNode['targetYear'] = targetYear;
										dataNode['targetMonth'] = targetMonth;
										passData = JSON.stringify(dataNode);

										$
												.ajax({
													beforeSend : function(
															request) {
														document
																.getElementById("loaderNotify").style.display = "";
														request
																.setRequestHeader(
																		"GUID",
																		GUID);
													},
													url : serverHTTP
															+ 'Payroll/ProcessedPayrollCSV',
													method : 'POST',
													contentType : 'application/json',
													data : passData,
													dataType : 'json',
													success : function(result,
															status, request) {
														if (result.status == 200) {
															window.location = result.data.filePath;
														} else {
															//showMessage('error',"E1024");
														}
													},
													complete : function(data) {
														document
																.getElementById("loaderNotify").style.display = "none";
													},
													error : function(error) {
														console
																.log(JSON
																		.stringify(error));
													}
												});
									});
				</script>
</body>

</html>