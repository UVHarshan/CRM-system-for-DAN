<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Staff Assignment Details</title>


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

.amount-content-color {
	background-color: #eee !important;
	text-align: right;
}
</style>

</head>

<body class="text-left">
	<%@ include file="common/CacheControl.jsp"%>
	<div id="sideBarDiv" class="app-admin-wrap layout-sidebar-vertical sidebar-full ">

		<!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
		<div class="sidebar-panel bg-white">
			<div class="gull-brand pr-3 text-center mt-4 mb-2 d-flex justify-content-center align-items-center">
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


				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-6 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingStaffAssignmentDetails">Staff
												Assignment Details </span>
										</h1>

									</div>
									<div class="col-md-6  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">

												<button onclick=""
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonAssignmentManagement"> Assignment
														Management</span>
												</button>

												<button id="btnImplementationDetails"
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonSpanImplementationInformation">
														Implementation Information Details</span>
												</button>
											</div>
										</div>
									</div>
								</div>

								<div class="row ml-4">
									<p class="pb-0 mb-0" id="pageSpanSubHeadingCaseRegistration">You
										can set various notification reports and transportation
										expenses for the assigned staff.</p>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div id="accordion" class="m-3 ">
											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#customerInformation"
															aria-expanded="false" aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionMatterInformation">Case information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="customerInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanProjectTitle"> Project Title </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																    <input type="hidden" readonly id="assignmentId">
																	<input type="text" readonly id="ProjectTitle" class="form-control" maxlength="255">
																</div>
																<div id="errorProjectTitle" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAssignmentClassification">Assignment
																		Classification</span>
																</div>
																<div>
																	<input type="text" readonly
																		id="AssignmentClassification" class="form-control"
																		maxlength="255">

																</div>

																<div id="errorAssignmentClassification"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDispatchClassification">Dispatch
																		Classification</span>
																</div>
																<div>
																	<input type="text" readonly id="dispatchClassification"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorDispatchClassification"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOccuClassification">Occupation
																		Classification</span>
																</div>
																<div>
																	<input type="text" readonly
																		id="occupationClassification" class="form-control"
																		maxlength="255">


																</div>
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanUnitPriceSetting"> Unit Price
																		Setting </span>
																</div>
																<div>
																	<input type="text" readonly id="unitPriceSetting"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMatterNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBusinessContent"> Business
																		Content</span>
																</div>
																<div>
																	<input type="text" readonly id="businessContent"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorQuotationNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPersonInCharge"> The person in
																		charge of the case</span>
																</div>
																<div>
																	<input type="text" readonly id="personInCharge"
																		class="form-control">
																</div>
																<div id="errorPersonInCharge" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCompanyName">Customer
																		Company Name</span>

																</div>
																<div>
																	<input type="text" readonly id="customerCompanyName"
																		class="form-control">
																</div>
																<div id="errorCustomerCompanyNamee" style="color: red;"></div>
															</div>



														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#implementationInformation"
															aria-expanded="false"
															aria-controls="implementationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionImplementationInformation">Implementation
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="implementationInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanImplementationPeriodStart">
																		Implementation Date </span>
																</div>
																<div>
																	<input type="text" readonly id="implementationDate"
																		class="form-control">
																</div>
																<div id="errorImplementationPeriodStartImplementInfo"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorklocation"> Work location </span>
																</div>
																<div>
																	<input type="text" readonly id="worklocation"
																		class="form-control">
																</div>
																<div id="errorImplementationPeriodEndImplementInfo"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInternalCommunication">
																		Internal Communication Information (private) </span>
																</div>
																<div>
																	<input type="text" readonly id="internalCommunication "
																		class="form-control">
																</div>
																<div id="errorImplementationPeriodEndImplementInfo"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDetailsofImplementation">
																		Details of Implementation Information (for
																		publication) </span>
																</div>
																<div>
																	<input type="text" readonly
																		id="detailsofImplementation" class="form-control">
																</div>
																<div id="errorImplementationPeriodEndImplementInfo"
																	class="RequiredStar"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks1">Remarks</span>
																</div>
																<div>
																	<textarea readonly id="companyRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorRemarks" style="color: red;"></div>
															</div>

														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#WorkLocationInformation"
															aria-expanded="false"
															aria-controls="WorkLocationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionWorkLocationInfo">Work Location
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="WorkLocationInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNearestStationTo"> Nearest
																		station to the venue </span>
																</div>
																<div>
																	<input readonly type="text" id="NearestStation"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorNearestStation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMeetingPlace"> Meeting place </span>
																</div>
																<div>
																	<input readonly type="text" id="MeetingPlace"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMeetingPlace" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocation"> Work Location </span>
																</div>
																<div>
																	<input readonly type="text" id="workLocationAssign"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkLocation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkAddress"> Work Address
																		(including contact information)</span>
																</div>
																<div>
																	<input readonly type="text" id="workAddress"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkAddress" style="color: red;"></div>
															</div>
															<!-- place        assasasasasa  -->

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationArrivalTime">Station
																		Arrival Time </span>
																</div>
																<div>
																	<input readonly type="time" id="stationArrivalTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMeetingTime"> (S) Meeting Time
																	</span>
																</div>
																<div>
																	<input readonly type="time" id="meetingTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStartTime">(S) Start Time </span>
																</div>
																<div>
																	<input readonly type="time" id="startTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationEndTime">(S) End Time </span>
																</div>
																<div>
																	<input readonly type="time" id="endTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocationTransportation">Work
																		Location Transportation </span>
																</div>
																<div>
																	<input readonly type="text"
																		id="WorkLocationTransportation" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorWorkLocationTransportation"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkRemarks"> Work remarks </span>
																</div>
																<div>
																	<textarea readonly type="text" id="WorkRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorRemarks" style="color: red;"></div>
															</div>

														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#staffInformation"
															aria-expanded="false"
															aria-controls="WorkLocationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionStaffInformation">Staff Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="staffInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffName"> Staff Name </span>
																</div>
																<div>
																	<input readonly type="hidden" id="staffId">
																	<input readonly type="text" id="staffName" class="form-control" maxlength="255">
																</div>
																<div id="errorNearestStation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAttributeClassification">
																		Attribute Classification </span>
																</div>
																<div>
																	<input readonly type="text"
																		id="attributeClassification" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorMeetingPlace" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentForm"> Salary
																		Payment Form </span>
																</div>
																<div>
																	<input readonly type="text" id="salaryPaymentForm"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkLocation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffMobile"> Staff Mobile </span>
																</div>
																<div>
																	<input readonly type="text" id="staffMobile"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkAddress" style="color: red;"></div>
															</div>
															<!-- place        assasasasasa  -->

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffNearestStation"> Staff
																		Nearest Station</span>
																</div>
																<div>
																	<input readonly type="text" id="staffNearestStation"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanScheduled DepartureTime"> (S)
																		Scheduled Departure Time </span>
																</div>
																<div>
																	<input type="time" id="scheduledDepartureTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
																<div>
																	<button id="btnTransit"
																		class="btn btn-info SearchButton-2   ml-0 mr-0"
																		role="button">Transit</button>
																	<span id="pageSpanbtnTransitHelp" class="ml-2">
																		(Not set) → (Not set) Search by arrival at 1:00 </span>
																</div>

															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBasicSalary"> (S) Basic Salary
																		(Daily Salary) </span> <span class="RequiredStar"> *</span>
																</div>
																<div>
																    <input type="hidden" id="staffDailySalaryUnitPrice" class="form-control" maxlength="255" readonly>
																	<input type="hidden" id="billedAmountHourly" class="form-control" maxlength="255" readonly>
																	<input type="text" id="basicDailySalary" class="form-control" maxlength="255">
																
																</div>
																<div id="errorBasicDailySalary" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
																<div>
																	<button id="btnCopyfromDailySalary"
																		class="btn btn-info SearchButton-2   ml-0 mr-0"
																		role="button">Copy from Daily Salary</button>
																	<span id="btnCopyfromDailySalaryHelp" class="ml-2">
																		Reference basic salary: ¥ </span>
																</div>

															</div>




															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAdvancePayment"> (S) Advance
																		Payment</span>
																</div>
																<div>
																	<input type="text" id="advancePayment"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorAdvancePayment" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanReasonforPrepayment"> Reason
																		for Prepayment </span>
																</div>
																<div>
																	<input type="text" id="reasonforPrepayment"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorOrganizationName" style="color: red;"></div>
															</div>





															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPrepaidDeliveryDate"> Prepaid
																		Delivery Date </span>
																</div>
																<div>
																	<input type="date" id="prepaidDeliveryDate"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBasicSalary" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDeductionAmount1"> Deduction
																		Amount 1 </span>
																</div>
																<div>
																	<input type="text" id="deductionAmount1"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorDeductionAmount1" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanResonforDeduction1"> Reason for
																		Deduction </span>
																</div>
																<div>
																	<input type="text" id="reasonforDeduction1"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBilledAmount" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDeductionAmount2"> Deduction
																		Amount 2 </span>
																</div>
																<div>
																	<input type="text" id="deductionAmount2"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorDeductionAmount2" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanResonforDeduction2"> Reason for
																		Deduction </span>
																</div>
																<div>
																	<input type="text" id="reasonforDeduction2"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBilledAmount" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAssignOtherProjects"> Assign
																		other projects</span>
																</div>
																<div>
																	<input readonly type="text" id="assignOtherProjects"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBillingUnitPriceSetting"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

															</div>

															<div class="row pt-3 pb-3 pl-3 pr-3">
																<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanNotificationDate"> Notification Date and Time </span>
																	</div>
																</div>
																<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																	<div class="table-responsive ">
																		<table
																			class="display table table-striped table-bordered"
																			id="notificationDateAndTime_table"
																			style="width: 100%">
																			<thead>
																				<tr>

																					<th id="tableReportFortheStaff">Report
																						from the staff</th>
																					<th id=""></th>
																					<th id="tableConfirmationofthePerson">
																						Confirmation of the Person in charge</th>
																					<th id=""></th>

																				</tr>
																			</thead>
																			<tbody id="allowanceTbodyId">
																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"></td>
																					<td style="width: 15%;" class="p-1"></td>
																					<td class="p-1"><span id="pageSpanInterviewRequest">
																							Interview request email sent: </span></td>
																					<td class="p-1">
																						<button id="btnSendInterviewRequest"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Send Interview request email</button>
																					</td>
																				</tr>

																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"></td>
																					<td style="width: 15%;" class="p-1"></td>
																					<td class="p-1"><span id="pageSpanMatterAssignment">
																							Matter assignment email transmission: </span></td>
																					<td class="p-1">
																						<button id="btnSendMatterAssignment"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Send Matter assignment email</button>
																					</td>
																				</tr>

																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"> <span
																						id="pageSpanConfirmedTheDayBefore"> Confirmed the day
																							before: </span></td>
																					<td style="width: 15%;" class="p-1">
																						<button id="btnConfirmedTheDayBeforey"
																							class="btn btn-success   ml-0 mr-0" role="button">
																							Confirmation Report the Day Before</button>
																					</td>
																					<td class="p-1"><span id="pageSpanConfirmedTheDayBeforeConfirmer">
																							Confirmer: </span></td>
																					<td class="p-1">
																						<button id="btnConfirmedTheDayBeforeConfirmer"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Confirmation of Report the Day Before</button>
																					</td>
																				</tr>

																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"> <span
																						id="pageSpanDepartureReport"> Departure
																							Report: </span></td>
																					<td style="width: 15%;" class="p-1">
																						<button id="btnDepartureReport"
																							class="btn btn-success   ml-0 mr-0" role="button">
																							Departure Report</button>
																					</td>
																					<td class="p-1"><span id="pageSpanDepartureReportConfirmer">
																							Confirmer: </span></td>
																					<td class="p-1">
																						<button id="btnDepartureReportConfirmer"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Departure Report Confirmation</button>
																					</td>
																				</tr>

																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"> <span
																						id="pageSpanArrivalReport"> Arrival Report </span></td>
																					<td style="width: 15%;" class="p-1">
																						<button id="btnArrivalReport"
																							class="btn btn-success   ml-0 mr-0" role="button">
																							Arrival Report</button>
																					</td>
																					<td class="p-1"><span id="pageSpanArrivalReportConfirmer">
																							Confirmer: </span></td>
																					<td class="p-1">
																						<button id="btnArrivalReportConfirmation"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Arrival Report Confirmation</button>
																					</td>
																				</tr>

																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"> <span
																						id="pageSpanClosingReport"> Closing
																							Report </span></td>
																					<td style="width: 15%;" class="p-1">
																						<button id="btnClosingReport"
																							class="btn btn-success   ml-0 mr-0" role="button">
																							Closing Report</button>
																					</td>
																					<td class="p-1"><span id="pageSpanClosingReportConfirmer">
																							Confirmer: </span></td>
																					<td class="p-1">
																						<button id="btnArrivalClosingReportConfirmer"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Closing Report Confirmation</button>
																					</td>
																				</tr>


																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"> <span
																						id="pageSpanExpenseReport"> Expense
																							Report </span></td>
																					<td style="width: 15%;" class="p-1">
																						<button id="btnExpenseReport"
																							class="btn btn-success   ml-0 mr-0" role="button">
																							Expense Report</button>
																					</td>
																					<td class="p-1"><span id="pageSpanExpenseReportConfirmer">
																							Confirmer: </span></td>
																					<td class="p-1">
																						<button id="btnExpenseReportConfirmation"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Expense Report Confirmation</button>
																					</td>
																				</tr>

																				<tr id="allowanceTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="staffEducationalID[]"
																						class="form-control"></td>
																					<td style="width: 15%;" class="p-1"></td>
																					<td class="p-1"><span
																						id="pageSpanReminderEmail"> Send closing
																							report reminder email: </span></td>
																					<td class="p-1">
																						<button id="btnReminderEmail"
																							class="btn btn-info   ml-0 mr-0" role="button">
																							Sending a Reminder Email</button>
																					</td>
																				</tr>

																			</tbody>
																		</table>
																		<div id="errorEducationalBackground"
																			class="RequiredStar"></div>


																	</div>
																</div>

															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkingHours"> (S) Working
																		hours</span>
																</div>
																<div class="row">
																	<div class="col-sm-12 col-md-6 col-lg-5">
																		<input type="time" id="workingHoursStart"
																			class="form-control" maxlength="255">
																	</div>
																	<div class="col-sm-12 col-md-6 col-lg-1">
																		<span id="pageSpanWorkingHours"> - </span>
																	</div>
																	<div class="col-sm-12 col-md-6 col-lg-5">
																		<input type="time" id="workingHoursEnd"
																			class="form-control" maxlength="255">
																	</div>

																</div>
																<div id="errorWorkingHours" style="color: red;"></div>
																<div><span id="pageSpanEnterWorkTimeStart">Please enter the work start time and end time
																	correctly as they will be referred to in the hourly
																	wage calculation. The input format is "00:00".</span></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanActualWorkingHours">(S) Actual
																		working hours </span>
																</div>
																<div>
																 <input type="hidden" id="implementationActualWorkingHours" class="form-control" maxlength="255" readonly>
																 <input type="text" id="actualWorkingHours"class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanActualBreakTime"> (S) Actual
																		break time </span>
																</div>
																<div>
																	<input type="text" id="actualBreakTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightBreakTime">
																		(S)(Inside) Midnight Break Time </span>
																</div>
																<div>
																	<input type="text" id="midnightBreakTime"
																		class="form-control" maxlength="255">
																</div>
																<div><span id="pageSpanBreaketimeSchedule"> If the break time includes the midnight time
																	zone (22: 00-05: 00) , enter it in the midnight break
																	time. Example: If you take a break from 1:00 to 2:00,
																	enter the break time 1:00 and midnight break time 1:00.
																	Example: If you take a break from 21:00 to 22:00, enter
																	only the break time 1:00.</span></div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimeHours"> (S) Overtime
																		hours </span>
																</div>
																<div>
																	<input type="text" id="overtimeHours"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimeCosts"> Overtime costs
																	</span>
																</div>
																<div>
																	<input type="text" id="overtimeCosts"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorOvertimeCosts" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightWorkingHours">
																		Midnight Working hours </span>
																</div>
																<div>
																	<input type="text" id="midnightWorkingHours"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightLaborCosts"> Midnight
																		labor costs </span>
																</div>
																<div>
																	<input type="text" id="midnightLaborCosts"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMidnightLaborCosts" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHolidayWorkingHours"> Holiday
																		Working Hours </span>
																</div>
																<div>
																	<input type="text" id="holidayWorkingHours"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHolidayLaborCosts"> Holiday
																		labor costs</span>
																</div>
																<div>
																	<input type="text" id="holidayLaborCosts"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorHolidayLaborCosts" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimeBillingFee"> Overtime
																		Billing Fee </span>
																</div>
																<div>
																	<input type="text" id="overtimeBillingFee"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorOvertimeBillingFee" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightLaborBilling"> Midnight
																		labor billing fee </span>
																</div>
																<div>
																	<input type="text" id="midnightLaborBilling"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMidnightLaborBilling" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHolidayLaborBilling"> Holiday
																		Labor Billing fee </span>
																</div>
																<div>
																	<input type="text" id="holidayLaborBilling"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorHolidayLaborBilling" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

															</div>


															<div class="row pt-3 pb-3 pl-3 pr-3">
																<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanAdvancePaymentfortable">Advance
																			Payment </span>
																	</div>
																</div>
																<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																	<div class="table-responsive ">
																		<table
																			class="display table table-striped table-bordered"
																			id="advancePayment_table" style="width: 100%">
																			<thead>
																				<tr>
																					<th id="tableAdvancePaymentNo">No</th>
																					<th id="tableAdvancePaymentNominal">Nominal</th>
																					<th id="tableAdvancePaymentDetail">Detail</th>
																					<th id="tableAdvancePaymentAmountOfMoney">
																						Amount of money</th>
																					<th style="width: 95px;"></th>
																				</tr>
																			</thead>
																			<tbody id="advancePaymentTbodyId">
																				<tr id="advancePaymentTrId">
																				    <input type="hidden" name="advancePaymentID[]" value=""> 
																					<td style="width: 5%;" class="p-1" name="advancePaymentCounter[]">
																					   1 
																					</td>
																					<td style="width: 25%;" class="p-1"><input
																						type="text" id="rowTransportationexpenses" name="advancePaymentNominal[]"
																						class="form-control no-border"
																						value="Transportation expenses" readonly></td>
																					<td class="p-1"><input type="text" 
																						name="advancePaymentDetail[]" class="form-control no-border"></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentAmountOfMoney[]"
																						onfocusout="calcTotalAdvancePayment(this)"
																						class="form-control no-border"></td>
																					<td>
																						<button class="btn btn-danger" disabled="disabled" name="buttonremoveAdvancePaymentRow[]"
																							onclick="removeAdvancePaymentRow(this)">
																							<i class="fa fa-trash"></i>
																						</button>
																						<button class="btn btn-danger"  disabled="disabled" name="buttonClearAdvancePaymentRow[]"
																							onclick="clearAdvancePaymentRow(this)">
																							<i class="fa fa-eraser"></i>
																						</button>
																					</td>
																				</tr>
																				<tr id="advancePaymentTrId">
																					<input type="hidden" name="advancePaymentID[]" value=""> 
																					<td style="width: 5%;" class="p-1" name="advancePaymentCounter[]">
																					   2
																					</td>
																					<td style="width: 25%;" class="p-1"><input id="rowPurchaseMoney"
																						type="text" name="advancePaymentNominal[]"
																						class="form-control no-border" value=" Purchase Money"
																						readonly></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentDetail[]" class="form-control no-border"></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentAmountOfMoney[]"
																						onfocusout="calcTotalAdvancePayment(this)"
																						class="form-control no-border"></td>
																					<td>
																						<button class="btn btn-danger" disabled="disabled" name="buttonremoveAdvancePaymentRow[]"
																							onclick="removeAdvancePaymentRow(this)">
																							<i class="fa fa-trash"></i>
																						</button>
																						<button class="btn btn-danger"  disabled="disabled" name="buttonClearAdvancePaymentRow[]"
																							onclick="clearAdvancePaymentRow(this)">
																							<i class="fa fa-eraser"></i>
																						</button>
																					</td>
																				</tr>
																				<tr id="advancePaymentTrId">
																					<input type="hidden" name="advancePaymentID[]" value=""> 
																					<td style="width: 5%;" class="p-1" name="advancePaymentCounter[]">
																					    3 
																					</td>
																					<td style="width: 25%;" class="p-1"><input id="rowExpenses"
																						type="text" name="advancePaymentNominal[]"
																						class="form-control no-border" value="Expenses" readonly></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentDetail[]" class="form-control no-border"></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentAmountOfMoney[]"
																						onfocusout="calcTotalAdvancePayment(this)"
																						class="form-control no-border"></td>
																					<td>
																						<button class="btn btn-danger" disabled="disabled" name="buttonremoveAdvancePaymentRow[]"
																							onclick="removeAdvancePaymentRow(this)">
																							<i class="fa fa-trash"></i>
																						</button>
																						<button class="btn btn-danger"  disabled="disabled" name="buttonClearAdvancePaymentRow[]"
																							onclick="clearAdvancePaymentRow(this)">
																							<i class="fa fa-eraser"></i>
																						</button>
																					</td>
																				</tr>
																				<tr id="advancePaymentTrId">
																					<input type="hidden" name="advancePaymentID[]" value=""> 
																					<td style="width: 5%;" class="p-1" name="advancePaymentCounter[]">
																					    4 
																					</td>
																					<td style="width: 25%;" class="p-1">
																					<input type="text" name="advancePaymentNominal[]" id="rowAccommodationFee"
																						class="form-control no-border" value="Accommodation Fee"
																						readonly></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentDetail[]" class="form-control no-border"></td>
																					<td class="p-1"><input type="text"
																						name="advancePaymentAmountOfMoney[]"
																						onfocusout="calcTotalAdvancePayment(this)"
																						class="form-control no-border"></td>
																					<td>
																						<button class="btn btn-danger" disabled="disabled" name="buttonremoveAdvancePaymentRow[]"
																							onclick="removeAdvancePaymentRow(this)">
																							<i class="fa fa-trash"></i>
																						</button>
																						<button class="btn btn-danger"  disabled="disabled" name="buttonClearAdvancePaymentRow[]"
																							onclick="clearAdvancePaymentRow(this)">
																							<i class="fa fa-eraser"></i>
																						</button>
																					</td>
																				</tr>
																			</tbody>

																			<tfoot id="quotationDetailsTaxableTfootId">
																				<tr>
																					<th colspan="2"
																						id="tableQuotationDetailsSubtotalTaxable"
																						class="right-content">Total Advance Payment</th>
																					<th colspan="1" style="border-right: none"></th>
																					<th colspan="1" class="amount-content-color">¥
																						<span id="tableAdvancePaymentTotal"
																						style="border-left: none; border-right: none;">0</span>
																					</th>
																					<!-- <th colspan="1"
																					style="border-right: none; border-left: none;">
																				</th> -->
																					<th colspan="1" class="center-content">
																						<button class="btn SuccessColor"
																							onclick="addAdvancePaymentRow()"
																							id="addRow1">Add Row</button>
																					</th>
																				</tr>
																			</tfoot>

																		</table>
																		<div id="errorEducationalBackground"
																			class="RequiredStar"></div>
																	</div>
																</div>

																<div class="col-sm-12 col-md-3 col-lg-12 pl-3 pr-3">
																	<div class="DetailsTitleText"></div>
																</div>
															</div>


															<div class="row pt-3 pb-3 pl-3 pr-3">
																<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanAllowance"> Allowance </span>
																	</div>
																</div>
																<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																	<div class="table-responsive ">
																		<table
																			class="display table table-striped table-bordered"
																			id="allowance_table" style="width: 100%">
																			<thead>
																				<tr>

																					<th id="tableAdvancePaymentNominalAllowance">Nominal</th>
																					<th id="tableAdvancePaymentDetailAllowance">Detail</th>
																					<th id="tableAdvancePaymentAmountOfMoneyAllowance">
																						Amount of money</th>
																					<th id="tableAllowanceTaxationAllowance">Taxation</th>
																					<th style="width: 95px;"></th>
																				</tr>
																			</thead>
																			<tbody id="allowancePaymentTbodyId">
																				<tr id="allowancePaymentTrId">
																					<td style="width: 15%;" class="p-1"><input
																						type="hidden" name="allowanceID[]"
																						class="form-control"> <input type="text"
																						name="allowanceNominal[]" class="form-control no-border"></td>
																					<td style="width: 15%;" class="p-1"><input
																						type="text" name="allowanceDetail[]"
																						class="form-control no-border"></td>
																					<td class="p-1"><input type="text"
																						name="allowanceAmountOfMoney[]"
																						onfocusout="calcTotalAllowance(this)"
																						class="form-control no-border"></td>
																					<td class="p-1"><input type="checkbox"
																						name="allowanceTaxation[]" class="form-control">
																					</td>
																					<td>
																						<button class="btn btn-danger"
																							onclick="removeAllowanceRow(this)">
																							<i class="fa fa-trash"></i>
																						</button>
																						<button class="btn btn-danger"
																							onclick="clearRow(this)">
																							<i class="fa fa-eraser"></i>
																						</button>
																					</td>
																				</tr>
																			</tbody>
																			<tfoot id="quotationDetailsTaxableTfootId">
																				<tr>
																					<th colspan="2"
																						id="tableQuotationDetailsSubtotalTaxableAllowance"
																						class="right-content">Total Allowance</th>

																					<th colspan="1" class="amount-content-color">¥
																						<span id="tableAllowanceTotal"
																						style="border-left: none; border-right: none;">0</span>
																					</th>
																					<th colspan="1" style="border-right: none"></th>
																					<!-- <th colspan="1"
																					style="border-right: none; border-left: none;">
																				</th> -->
																					<th colspan="1" class="center-content">
																						<button class="btn SuccessColor"
																							onclick="addAllowanceRow()"
																							id="addRow2">Add Row</button>
																					</th>
																				</tr>
																			</tfoot>
																		</table>
																		<div id="errorAllowanceTable" class="RequiredStar"></div>


																	</div>
																</div>

																<div class="col-sm-12 col-md-3 col-lg-12 pl-3 pr-3">

																</div>
															</div>


															<div class="row pt-3 pb-3 pl-3 pr-3">
																<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">

																</div>
																<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																	<div class="table-responsive ">
																		<table
																			class="display table table-striped table-bordered"
																			id="closingReportPhoto_table" style="width: 100%">
																			<thead>
																				<tr>

																					<th id="tableClosingReportPhoto">Closing
																						Report Photo</th>
																					<th id="tablePreview">Preview</th>
																					<th style="width: 95px;"></th>
																				</tr>
																			</thead>
																			<tbody id="closingReportPhotoTbodyId">
																				<tr id="closingReportPhotoTrId">
																					<td style="width: 40%;" class="p-1">
																					<form method="POST" enctype="multipart/form-data" id="fileUploadForm">
																					<input type="hidden" name="closingReportPhotoID[]" class="form-control">
																					<input type="file" name="closingReportPhotoUploadFile[]" class="form-control no-border">
																					</form>
																					</td>
																					<td style="width: 40%;" class="p-1"></td>
																					<td>
																						<button class="btn btn-danger"
																							onclick="removeClosingReportPhotoRow(this)">
																							<i class="fa fa-trash"></i>
																						</button>
																						<button class="btn btn-danger"
																							onclick="clearRow(this)">
																							<i class="fa fa-eraser"></i>
																						</button>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																		<div id="errorEducationalBackground"
																			class="RequiredStar"></div>

																		<div
																			class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
																			<button class="btn SuccessColor"
																				onclick="addClosingReportPhoto()"
																				id="addEducationalRow">Add New Photo</button>
																		</div>
																		
																		<div id="imgFileAppenderID"></div>
																	</div>
																</div>

																<div class="col-sm-12 col-md-3 col-lg-12 pl-3 pr-3">

																</div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks2">Remarks</span>
																</div>
																<div>
																	<textarea id="detailofAssignmentRemarks" class="form-control"></textarea>
																</div>
																<div id="errorRemarks" style="color: red;"></div>
															</div>

															<!-- Test Section .........................  -->

															<!-- <button class="btn btn-link  SDAccordion"
																data-toggle="collapse" data-target="#testSection"
																aria-expanded="false"
																aria-controls="customerInformation">
																<div class="row">
																	<div class="col-10" style="text-align: left;"
																		id="accordionCaseIntelligence">Advance Payment</div>
																	<div class="col-2" style="text-align: right;">
																		<i class="fa fa-chevron-down" aria-hidden="true"></i>
																	</div>
																</div>
															</button> -->

															<!-- <div id="testSection"
																style="background-color: lightgreen">

																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanMidnightLaborCosts"> Midnight
																			labor billing fee </span>
																	</div>
																	<div>
																		<input type="text" id="midnightLaborCosts"
																			class="form-control" maxlength="255">
																	</div>
																	<div id="errorStationArrivalTime" style="color: red;"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanHolidayLaborBilling"> Holiday
																			Labor Billing fee </span>
																	</div>
																	<div>
																		<input type="text" id="holidayLaborBilling"
																			class="form-control" maxlength="255">
																	</div>
																	<div id="errorStationArrivalTime" style="color: red;"></div>
																</div>
															</div> -->



														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#dailysalaryInformation"
															aria-expanded="false"
															aria-controls="implementationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDailysalaryInformation">Daily salary
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="dailysalaryInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncomeTaxAmount"> Income Tax
																		Amount </span> <span id="pageSpanIncomeTaxAmountVal"
																		class="pl-4"> ¥ </span>
																</div>
																<div></div>
																<div id="errorImplementationPeriodStartImplementInfo"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaymentAmount"> Payment
																		amount </span> <span id="pageSpanDailySalaryInformation"
																		class="pl-4"> ¥ </span>
																</div>
																<div></div>
																<div id="errorImplementationPeriodEndImplementInfo"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
																<div>
																	<button id="btnCalculateSalary"
																		class="btn btn-info    ml-0 mr-0" role="button">Calculate
																		Salary information</button>

																</div>
																<div>
																	<p id="assignmentClassificationHelp">* If you
																		change to approval and save, the salary will be fixed.
																		Please note that you will not be able to change it.</p>
																</div>


															</div>

															<div class="col-sm-12 col-md-6 col-lg-12  pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanApprovalStatus"> Approval
																		Status</span>
																</div>
																<div class="row">
																	<div
																		class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																		<Select id="approvelStatus"
																			class="form-control">
																			<option value="" id="optionSelectApprovalStatus">Select Approval Status</option>
																			<option value="1" id="optionSelectUnapproved">Unapproved</option>
																			<option value="2" id="optionSelectApproved">Approved</option>
																		</Select>

																	</div>

																	<div
																		class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																	</div>

																</div>
																<div>
																	<p id="assignmentClassificationHelpnote">* If you
																		change to approval and save, the salary will be fixed.
																		Please note that you will not be able to change it.</p>
																</div>
																<div id="errorAssignmentClassification"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks3">Remarks</span>
																</div>
																<div>
																	<textarea id="dailySalaryInformationRemarks" class="form-control"></textarea>
																</div>
																<div id="errorRemarks" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdateAssignStaff">Update Assign
																	Staff</button>
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
						<div class="loading" id="loaderNotify"  style="display: none;"> 
						 <div class="spinner-bubble spinner-bubble-primary m-7"></div>
                         </div>
					</div>
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
	<!--  Modal 1  -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Worker dispatch
						individual contract output</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>* Create an individual contract for dispatching workers for
						the specified period.</p>
					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodStart"> Target
								period (start) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodStart"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodStart" class="RequiredStar"></div>
					</div>

					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodEnd"> Target period
								(End) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodEnd"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodEnd" class="RequiredStar"></div>
					</div>

				</div>
				<div class="modal-footer">
					<button class="btn btn-primary ml-2" type="button">Worker
						dispatch individual contract output</button>
				</div>
			</div>
		</div>
	</div>

	<!--  Modal 2  -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Dispatch source
						management ledger output</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Create a dispatch source management ledger for the specified
						period.</p>
					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodStart"> Target
								period (start) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodStart"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodStart" class="RequiredStar"></div>
					</div>

					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodEnd"> Target period
								(End) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodEnd"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodEnd" class="RequiredStar"></div>
					</div>

				</div>
				<div class="modal-footer">
					<button class="btn btn-primary ml-2" type="button">Dispatch
						source management ledger output</button>
				</div>
			</div>
		</div>
	</div>

	<!--  Modal 3  -->
	<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Dispatch
						destination management ledger output</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Create a Dispatch destination management ledger for the
						specified period.</p>
					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodStart"> Target
								period (start) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodStart"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodStart" class="RequiredStar"></div>
					</div>

					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodEnd"> Target period
								(End) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodEnd"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodEnd" class="RequiredStar"></div>
					</div>

				</div>
				<div class="modal-footer">
					<button class="btn btn-primary ml-2" type="button">
						Dispatch destination management ledger output</button>
				</div>
			</div>
		</div>
	</div>

	<!--  Modal 4  -->
	<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Output of
						working condition notification and working condition statement</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>We will create a notification of working conditions and a
						written statement of working conditions for the specified period.</p>
					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodStart"> Target
								period (start) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodStart"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodStart" class="RequiredStar"></div>
					</div>

					<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
						<div class="DetailsTitleText">
							<span id="pageSpanImplementationPeriodEnd"> Target period
								(End) </span>
						</div>
						<div>
							<input type="date" id="implementationPeriodEnd"
								class="form-control">
						</div>
						<div id="errorImplementationPeriodEnd" class="RequiredStar"></div>
					</div>

				</div>
				<div class="modal-footer">
					<button class="btn btn-primary ml-2" type="button">Output
						of working condition notification and working condition statement</button>
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
        loadSelectedLanguage(pageLanguage,"agency");
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


	<script src="./dist-assets/js/assignment-details-validate.js"></script>


	<script>
        ////////////////// 
		function addSkillSheetRow() {
			var $tr = $("#SkillSheetTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdSkillSheet").append($clone);
		}

		function removeSkillSheetRow(element) {
			if ($('#skill_sheet_information_table tr').length > 2){
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "Sorry can not remove this row!");
			}
		}

		function clearRow(element) {
			var $tr = $(element).closest('tr');
			$tr.find('input').val('');
		}
		
		function clearAdvancePaymentRow(element) {
			var rowCount = $('#advancePayment_table tr').length;
			console.log(rowCount);
			var $tr = $(element).closest('tr');
			if(rowCount > 6)  $tr.find('input[name="advancePaymentNominal[]"]').val(''); 
			$tr.find('input[name="advancePaymentDetail[]"]').val('');
			$tr.find('input[name="advancePaymentAmountOfMoney[]"]').val('');
		}
		

		///////////////////
		const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const implementationIDDetails = localStorage.getItem("implementationIDDetails");
		const userIDDetails = localStorage.getItem("userIDDetails");
		const implementDate = localStorage.getItem("implementDate");
		
		let dataSet = '{"implementationId" : "' + implementationIDDetails + '","staffId":"' + userIDDetails + '","implementDate":"' + implementDate + '"}';
		
		$(document).ready(function() {
					        
					        $.ajax({
					            beforeSend: function(request) {
					           	 document.getElementById("loaderNotify").style.display = "";
					               request.setRequestHeader("GUID", GUID);
					            },
					            url: serverHTTP +'Assignment/GetAllAssignStaffDetail',
					            method: 'POST',
					            contentType: 'application/json',
					            data: dataSet,
					            dataType: 'json',
					             success: function(result, status, request){
					             if(result.status==200)
					            	 {
					            	 GetAllAssignStaffDetail(result);
					            	 localStorage.setItem("assignmentId", result.data[0].assignmentId);
					            	 }else{
					            		// showMessage("Sorry Data Loding Error");
					            	 }
					             },
					             complete:function(data){
					          	   document.getElementById("loaderNotify").style.display = "none";
					          	   },
					             error: function(error) {
					             console.log(JSON.stringify(error));
					          }
					        });
					           
					       
							drawDtataTable(lan);

							//bankTransferLoad();

							$("#staffPaymentMethod").change(function() {
								bankTransferLoad();
							});

							//onfocus="(this.type='date')"  id="dateOfBirthFrom" name="dateOfBirthFrom" placeholder="From"
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

						});

		window.onscroll = function() {
			myFunction()
		};

		var topNewBar  = document.getElementById("topNewBar");
		var sticky     = topNewBar.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				topNewBar.classList.add("sticky")
			} else {
				topNewBar.classList.remove("sticky");
			}
		}

		
		function GetAllAssignStaffDetail(result) {
			 
			 /* calOverTimeHours("15:20", "1:55", "5:10");
			 calOverTimeCost("2500","16:10","05:15","1");
			 calDailySalary("2500","3100","700","105","150") */
			document.getElementById("ProjectTitle").value = result.data[0].caseName;
		
			if (result.data[0].assignmentClassification != "") {
				$('#AssignmentClassification').val(assignmentClassificationArray[result.data[0].assignmentClassification]);
			}

			if (result.data[0].dispatchClassification != "") {
				$('#dispatchClassification')
						.val(dispatchClassificationArray[result.data[0].dispatchClassification]);
			}
			
			occupationClassificationOutput = "";

			if (result.data[0].occupationClassification1 != 0) {
				occupationClassificationOutput = occupationClassificationArray[1]
						+ " , ";
			}
			if (result.data[0].occupationClassification2 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[2] + " , ";
			}
			if (result.data[0].occupationClassification3 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[3] + " , ";
			}
			if (result.data[0].occupationClassification4 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[4] + " , ";
			}
			if (result.data[0].occupationClassification5 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[5] + " , ";
			}
			if (result.data[0].occupationClassification6 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[6] + " , ";
			}
			if (result.data[0].occupationClassification7 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[7];
			}

			document.getElementById("occupationClassification").value = occupationClassificationOutput;
			
			if (result.data[0].itemUnitPriceSetting != "") {
				$('#unitPriceSetting')
						.val(dispatchClassificationArray[result.data[0].itemUnitPriceSetting]);
			}
			
			document.getElementById("businessContent").value = result.data[0].businessContent;
			
			if (result.data[0].personInChargeOfCase != "") {
				$('#personInCharge').val(
						personInChargeArray[result.data[0].personInChargeOfCase]);
			}
			
			document.getElementById("customerCompanyName").value = result.data[0].companyName;
			document.getElementById("detailsofImplementation").value = result.data[0].detailInfo;
			document.getElementById("companyRemarks").value = result.data[0].remarks;
			
			document.getElementById("worklocation").value = result.data[0].workLocation;
			document.getElementById("NearestStation").value = result.data[0].workNearestStation;
			document.getElementById("MeetingPlace").value = result.data[0].meetingPlace;
			document.getElementById("workLocationAssign").value = result.data[0].workLocation;
			document.getElementById("workAddress").value = result.data[0].workAddress;
			document.getElementById("stationArrivalTime").value = result.data[0].arrivalTime;
			document.getElementById("meetingTime").value = result.data[0].meetingTime;
			document.getElementById("startTime").value = result.data[0].scheduledStartTime;
			document.getElementById("endTime").value = result.data[0].scheduledEndTime;
			document.getElementById("WorkLocationTransportation").value = result.data[0].workLocationTransportation;
			document.getElementById("WorkRemarks").value = result.data[0].workRemarks;
			
			document.getElementById("staffName").value = result.data[0].name;
			document.getElementById("staffId").value = result.data[0].staffId;
			document.getElementById("assignmentId").value = result.data[0].assignmentId;
			document.getElementById("implementationDate").value = result.data[0].implementDate;
			
			if (result.data[0].attributeClassification1 != "") {
				$('#attributeClassification').val(attributeClassificationArray[result.data[0].attributeClassification1]);
			}
			
			if (result.data[0].salaryPaymentForm != "") {
				$('#salaryPaymentForm').val(salaryPayementFormArray[result.data[0].salaryPaymentForm]);
			}
			
			document.getElementById("staffMobile").value = result.data[0].telMobile;
			document.getElementById("staffNearestStation").value = result.data[0].staffNearestStation;
			document.getElementById("scheduledDepartureTime").value = result.data[0].scheduledDepartureTime;
			document.getElementById("billedAmountHourly").value = result.data[0].billedAmountHourly;
			document.getElementById("basicDailySalary").value = result.data[0].dailyBasicSalary;
			document.getElementById("staffDailySalaryUnitPrice").value = result.data[0].dailySalaryUnitPrice;
			
			var btnCopyfromDailySalaryHelp = document.getElementById("btnCopyfromDailySalaryHelp").innerHTML;
			btnCopyfromDailySalaryHelp += " "+ result.data[0].dailyBasicSalary;
			document.getElementById("btnCopyfromDailySalaryHelp").innerHTML= btnCopyfromDailySalaryHelp ;
			
			document.getElementById("workingHoursStart").value = result.data[0].scheduledStartTime;
			document.getElementById("workingHoursEnd").value = result.data[0].scheduledEndTime;
			document.getElementById("implementationActualWorkingHours").value = result.data[0].scheduledActualWorkTime;
			document.getElementById("actualWorkingHours").value = result.data[0].scheduledActualWorkTime;
			document.getElementById("actualBreakTime").value = result.data[0].scheduledBreakTime;
			document.getElementById("midnightBreakTime").value = result.data[0].scheduledMidnightBreakTime;

          	document.getElementById("actualWorkingHours").value = calActualWorkingHours(result.data[0].scheduledStartTime, result.data[0].scheduledEndTime, result.data[0].scheduledBreakTime);

			let dataSet = '{"assignmentId" : "' + result.data[0].assignmentId +  '"}';
			 $.ajax({
		            beforeSend: function(request) {
		           	 document.getElementById("loaderNotify").style.display = "";
		               request.setRequestHeader("GUID", GUID);
		            },
		            url: serverHTTP +'Assignment/ViewAssignmentForStaff',
		            method: 'POST',
		            contentType: 'application/json',
		            data: dataSet,
		            dataType: 'json',
		             success: function(result, status, request){
		             if(result.status==200)
		            	 {
		            	 ViewAssignmentForStaff(result);
		            	 }else{
		            		// showMessage("Sorry Data Loding Error");
		            	 }
		             },
		             complete:function(data){
		          	   document.getElementById("loaderNotify").style.display = "none";
		          	   },
		             error: function(error) {
		             console.log(JSON.stringify(error));
		          }
		        });

		}
		
		function ViewAssignmentForStaff(result){
			
			ButtonDisableForConfirmation(result.data1.reportDayBeforeStatus,result.data1.departureReportStatus, result.data1.arrivalReportStatus, result.data1.closingReportStatus, result.data1.expenseReportStatus);
			document.getElementById("scheduledDepartureTime").value = result.data1.scheduledDepartureTime != null ? result.data1.scheduledDepartureTime : document.getElementById('scheduledDepartureTime').value ;
			document.getElementById("basicDailySalary").value = result.data1.dailyBasicSalary != null ? result.data1.dailyBasicSalary : document.getElementById('basicDailySalary').value ;
			document.getElementById("advancePayment").value = result.data1.advancePayment;
			document.getElementById("reasonforPrepayment").value = result.data1.reasonForPrepayment;
			document.getElementById("prepaidDeliveryDate").value = result.data1.prepaidDeliverDate;
			document.getElementById("deductionAmount1").value = result.data1.deductionAmount1;
			document.getElementById("reasonforDeduction1").value = result.data1.reasonForDeduction1;
			document.getElementById("deductionAmount2").value = result.data1.deductionAmount2;
			document.getElementById("reasonforDeduction2").value = result.data1.reasonForDeduction2;
			
			if(result.data3!=null)
				{
				var interviewMailSendUser = result.data3.interviewMailSendUser != null ? result.data3.interviewMailSendUser : "" ;
				var interviewMailSendDate = result.data3.interviewMailSendDate != null ? result.data3.interviewMailSendDate : "" ;
				
				var pageSpanInterviewRequest = document.getElementById('pageSpanInterviewRequest').innerHTML;
				pageSpanInterviewRequest += ' ' + interviewMailSendUser + ' ' + interviewMailSendDate;
	          	document.getElementById('pageSpanInterviewRequest').innerHTML = pageSpanInterviewRequest;
	          	
	          	var matterAssignMailSendUser = result.data3.matterAssignMailSendUser != null ? result.data3.matterAssignMailSendUser : "" ;
				var matterAssignMailSendDate = result.data3.matterAssignMailSendDate != null ? result.data3.matterAssignMailSendDate : "" ;
				
	          	var pageSpanMatterAssignment = document.getElementById('pageSpanMatterAssignment').innerHTML;
	          	pageSpanMatterAssignment += ' ' + matterAssignMailSendUser + ' ' + matterAssignMailSendDate;
	          	document.getElementById('pageSpanMatterAssignment').innerHTML = pageSpanMatterAssignment;
	          	
	          	var confirmedByUser = result.data3.confirmedByUser != null ? result.data3.confirmedByUser : "" ;
				var confirmedDate = result.data3.confirmedDate != null ? result.data3.confirmedDate : "" ;
				
				var pageSpanConfirmedTheDayBeforeConfirmer = document.getElementById('pageSpanConfirmedTheDayBeforeConfirmer').innerHTML;
				pageSpanConfirmedTheDayBeforeConfirmer += ' ' + confirmedByUser + ' ' + confirmedDate;
	          	document.getElementById('pageSpanConfirmedTheDayBeforeConfirmer').innerHTML = pageSpanConfirmedTheDayBeforeConfirmer;
	          	
	          	var departureReportConfirmedUser = result.data3.departureReportConfirmedUser != null ? result.data3.departureReportConfirmedUser : "" ;
				var departureReportConfirmedDate = result.data3.departureReportConfirmedDate != null ? result.data3.departureReportConfirmedDate : "" ;
				
				var pageSpanDepartureReportConfirmer = document.getElementById('pageSpanDepartureReportConfirmer').innerHTML;
				pageSpanDepartureReportConfirmer += ' ' + departureReportConfirmedUser + ' ' + departureReportConfirmedDate;
	          	document.getElementById('pageSpanDepartureReportConfirmer').innerHTML = pageSpanDepartureReportConfirmer;
	          	
	          	var arrivalReportConfirmedUser = result.data3.arrivalReportConfirmedUser != null ? result.data3.arrivalReportConfirmedUser : "" ;
				var arrivalReportConfirmedDate = result.data3.arrivalReportConfirmedDate != null ? result.data3.arrivalReportConfirmedDate : "" ;
				
				var pageSpanArrivalReportConfirmer = document.getElementById('pageSpanArrivalReportConfirmer').innerHTML;
				pageSpanArrivalReportConfirmer += ' ' + arrivalReportConfirmedUser + ' ' + arrivalReportConfirmedDate;
	          	document.getElementById('pageSpanArrivalReportConfirmer').innerHTML = pageSpanArrivalReportConfirmer;
	          	
	          	var closingReportConfirmedUser = result.data3.closingReportConfirmedUser != null ? result.data3.closingReportConfirmedUser : "" ;
				var closingReportConfirmedDate = result.data3.closingReportConfirmedDate != null ? result.data3.closingReportConfirmedDate : "" ;
				
				var pageSpanClosingReportConfirmer = document.getElementById('pageSpanClosingReportConfirmer').innerHTML;
				pageSpanClosingReportConfirmer += ' ' + closingReportConfirmedUser + ' ' + closingReportConfirmedDate;
	          	document.getElementById('pageSpanClosingReportConfirmer').innerHTML = pageSpanClosingReportConfirmer;
	          	
	          	var expenseReportConfirmedUser = result.data3.expenseReportConfirmedUser != null ? result.data3.expenseReportConfirmedUser : "" ;
				var expenseReportConfirmedDate = result.data3.expenseReportConfirmedDate != null ? result.data3.expenseReportConfirmedDate : "" ;
				
				var pageSpanExpenseReportConfirmer = document.getElementById('pageSpanExpenseReportConfirmer').innerHTML;
				pageSpanExpenseReportConfirmer += ' ' + expenseReportConfirmedUser + ' ' + expenseReportConfirmedDate;
	          	document.getElementById('pageSpanExpenseReportConfirmer').innerHTML = pageSpanExpenseReportConfirmer;
				}
			
          	
          	if(result.data4 != null)
          		{
          		var confirmedDate = result.data4.confirmedDate != null ? result.data4.confirmedDate : "" ;
                
              	var pageSpanConfirmedTheDayBefore = document.getElementById('pageSpanConfirmedTheDayBefore').innerHTML;
              	pageSpanConfirmedTheDayBefore += ' ' + confirmedDate;
              	document.getElementById('pageSpanConfirmedTheDayBefore').innerHTML = pageSpanConfirmedTheDayBefore;
              	
              	var departureReportDate = result.data4.departureReportDate != null ? result.data4.departureReportDate : "" ;
                
              	var pageSpanDepartureReport = document.getElementById('pageSpanDepartureReport').innerHTML;
              	pageSpanDepartureReport += ' ' + departureReportDate;
              	document.getElementById('pageSpanDepartureReport').innerHTML = pageSpanDepartureReport;
              	
              	var arrivalReportDate = result.data4.arrivalReportDate != null ? result.data4.arrivalReportDate : "" ;
                
              	var pageSpanArrivalReport = document.getElementById('pageSpanArrivalReport').innerHTML;
              	pageSpanArrivalReport += ' ' + arrivalReportDate;
              	document.getElementById('pageSpanArrivalReport').innerHTML = pageSpanArrivalReport;
              	
              	var closingReportDate = result.data4.closingReportDate != null ? result.data4.closingReportDate : "" ;
                
              	var pageSpanClosingReport = document.getElementById('pageSpanClosingReport').innerHTML;
              	pageSpanClosingReport += ' ' + closingReportDate;
              	document.getElementById('pageSpanClosingReport').innerHTML = pageSpanClosingReport;
              	
              	var expenseReportDate = result.data4.expenseReportDate != null ? result.data4.expenseReportDate : "" ;
                
              	var pageSpanExpenseReport = document.getElementById('pageSpanExpenseReport').innerHTML;
              	pageSpanExpenseReport += ' ' + expenseReportDate;
              	document.getElementById('pageSpanExpenseReport').innerHTML = pageSpanExpenseReport;
          		}
          	
          	
          	if(result.data2 != null)
          		{
          		document.getElementById("workingHoursStart").value = result.data2.workingHoursStart;
              	document.getElementById("workingHoursEnd").value = result.data2.workingHoursEnd;
              	//document.getElementById("actualWorkingHours").value = result.data2.actualWorkingHours;
              	document.getElementById("actualBreakTime").value = result.data2.actualBreakTime != "" ? result.data2.actualBreakTime : "00:00" ;
              	document.getElementById("midnightBreakTime").value = result.data2.midnightBreakTime != "" ? result.data2.midnightBreakTime : "00:00" ;
              	//document.getElementById("overtimeHours").value = result.data2.overtimeHours != "" ? result.data2.overtimeHours : "00:00" ;
              	document.getElementById("overtimeCosts").value = result.data2.overtimeCosts;
              	document.getElementById("midnightWorkingHours").value = result.data2.midnightWorkingHours != "" ? result.data2.midnightWorkingHours : "00:00" ;
              	document.getElementById("midnightLaborCosts").value = result.data2.midnightLaborCosts;
              	document.getElementById("holidayWorkingHours").value = result.data2.holidayWorkingHours != "" ? result.data2.holidayWorkingHours : "00:00" ;
              	document.getElementById("holidayLaborCosts").value = result.data2.holidayLaborCosts;
              	document.getElementById("overtimeBillingFee").value = result.data2.overtimeBillingCost;
              	document.getElementById("midnightLaborBilling").value = result.data2.midnightLaborBillingFee;
              	document.getElementById("holidayLaborBilling").value = result.data2.holidayLaborBillingFee;
              	document.getElementById("tableAdvancePaymentTotal").innerHTML = result.data2.totalAdvancePayment;
              	document.getElementById("tableAllowanceTotal").innerHTML = result.data2.totalAllowance;

          		}
          	var workingHoursStart = document.getElementById("workingHoursStart").value;
          	var workingHoursEnd = document.getElementById("workingHoursEnd").value;
          	var actualBreakTime = document.getElementById("actualBreakTime").value;
          	
          	document.getElementById("actualWorkingHours").value = calActualWorkingHours(workingHoursStart, workingHoursEnd, actualBreakTime);
          	var actualWorkHours = document.getElementById("actualWorkingHours").value;
          	var implementWorkHours = document.getElementById("implementationActualWorkingHours").value;
          	var overtimeHours = document.getElementById("overtimeHours").value = calOverTimeHours(actualWorkHours,implementWorkHours);
          	var basicSalary = document.getElementById("basicDailySalary").value;
          	document.getElementById("overtimeCosts").value = calOverTimeCost(basicSalary, implementWorkHours, overtimeHours, "1");
          	var billedAmount = document.getElementById("billedAmountHourly").value;
          	document.getElementById("overtimeBillingFee").value = calOvertimeBillingFee(billedAmount, implementWorkHours, overtimeHours);
          	
          
          	if(result.data5 !=null)
          		{
          		if(result.data5.length>0)
             	 {
             		 $("#advancePaymentTbodyId").empty();
             	 }

          		for(i=0;i<result.data5.length.length;i++)
              	{
              	let trLength = $('#advancepayment_table tr').length;
              	let trLengthPrintVal = (trLength/2);

              	let advancePaymentItemId = result.data5[i].id != null ? result.data5[i].id : "" ; 
              	let advancePaymentItemNominal = result.data5[i].nominal != null ? result.data5[i].nominal : "" ;
              	let advancePaymentItemAmount = result.data5[i].amount != null ? result.data5[i].amount : "" ;
              	let advancePaymentItemDetail = result.data5[i].detail != null ? result.data5[i].detail : "" ;

              	TotalAdvancePaymentValue = TotalAdvancePaymentValue + parseInt(advancePaymentItemAmount);

              	let disableStatus = "";
              	if(trLengthPrintVal<5)
              	{
              	disableStatus = "disabled";
              	}

              	let rowStr = '<tr>'+
              	'<input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value="'+advancePaymentItemId+'"/>'+
              	'<td id="tableTHNo" class="pl-2" style="text-align: left">'+trLengthPrintVal+'</td>'+
              	'<td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" >'+
              	'<input type="text" value="'+advancePaymentItemNominal+'" '+disableStatus+' id="advancePaymentNominal" name="advancePaymentNominal[]" class="form-control"></td>'+
              	'<td colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">'+
              	'<input type="text" value="'+advancePaymentItemAmount+'" id="advancePaymentAmountOfMoney" name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control"> </td>'+
              	'</tr> '+
              	'<tr>'+
              	'<td colspan="4"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">'+
              	'<input type="text" value="'+advancePaymentItemDetail+'" id="advancePaymentDetail" name="advancePaymentDetail[]" placeholder="Details" class="form-control"></td>'+
              	'</tr>';
              	$("#advancepaymentTbodyId").append(rowStr);
              	}
             	/* for(x=0; x<result.data5.length; x++)
               {
             		
               	var id = result.data5[x].id != null ? result.data5[x].id : "" ;
               	var nominal = result.data5[x].nominal != null ? result.data5[x].nominal : "" ;
               	var detail = result.data5[x].detail != null ? result.data5[x].detail : "" ;
               	var amount = result.data5[x].amount != null ? result.data5[x].amount : "" ;

               	var newRow   =	'<tr id="advancePaymentTrId">'+
   								'<input type="hidden" name="advancePaymentID[]" value="'+id+'">'+
   								'<td style="width: 5%;" class="p-1" name="advancePaymentCounter[]">'+(x+1)+'</td>'+
   								'<td style="width: 25%;" class="p-1"><input id="rowPurchaseMoney" type="text" name="advancePaymentNominal[]" class="form-control no-border" value="'+nominal+'">'+
   								'</td>'+
   								'<td class="p-1">'+
   								'<input type="text" name="advancePaymentDetail[]" class="form-control no-border" value="'+detail+'">'+
   								'</td>'+
   								'<td class="p-1">'+
   								'<input type="text" name="advancePaymentAmountOfMoney[]" onfocusout="calcTotalAdvancePayment(this)"class="form-control no-border" value="'+amount+'">'+
   								'</td>'+
   								'<td>'+
   								'<button class="btn btn-danger" disabled="disabled" name="buttonremoveAdvancePaymentRow[]"onclick="removeAdvancePaymentRow(this)"><i class="fa fa-trash"></i>'+
   								'</button>'+
   								'<button class="btn btn-danger"  disabled="disabled" name="buttonClearAdvancePaymentRow[]"onclick="clearAdvancePaymentRow(this)"><i class="fa fa-eraser"></i>'+
   								'</button>'+
   								'</td>'+
   								'</tr>'+
               	
               	 $("#advancePaymentTbodyId").append(newRow);
               	
               } */
          		}
        	
          	if(result.data8!=null)
          		{
          		for(i=0;i<result.data8.length;i++)
              	{
              	let filePath = result.data8[i].filePath
              	let fileStr = '<a href="'+filePath+'" target="blank" ><img src="'+filePath+'" alt="" width="150px" height="210px" class="p-3" /></a>'
              	$("#imgFileAppenderID").append(fileStr);
              	}
          		}
          	
          	
		}
		
		var table;

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
				zeroRecords = "Nothing found - sorry";
				infoEmpty = "No records available";
				infoFiltered = "(filtered from _MAX_ total records)";
				previous = "Previous";
				next = "Next";
				first = "First page";
				last = "Last page";
			}

			table = $('#search_staff_table').DataTable({
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
				}
			});
		}
		function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(selectedLanguage,"agency");
			setLanguage(selectedLanguage);
		}

		function addEducationalRow() {
			var $tr = $("#educationalTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#educationalTbodyId").append($clone);
		}

		function addAdvancePaymentRow() {
			var $tr = $("#advancePaymentTrId").last('tr');
			var rowCount = $('#advancePayment_table tr').length;
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$clone.find('td:eq(0)').html(rowCount - 1);
			$clone.find('input[name="advancePaymentNominal[]"]').attr("readonly", false);  //.removeAttr("readonly");
			$clone.find('button[name="buttonremoveAdvancePaymentRow[]"]').attr("disabled", false);
			$clone.find('button[name="buttonClearAdvancePaymentRow[]"]').attr("disabled", false);
			$("#advancePaymentTbodyId").append($clone);
		}

		function addAllowanceRow() {
			var $tr = $("#allowancePaymentTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#allowancePaymentTbodyId").append($clone);
		}

		function addClosingReportPhoto() {
			var $tr = $("#closingReportPhotoTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#closingReportPhotoTbodyId").append($clone);
		}

		function removeAdvancePaymentRow(element) {
			if ($('#advancePayment_table tr').length > 6) {
				$(element).closest('tr').remove();
				let counterNode = document.getElementsByName("advancePaymentCounter[]");
				for(var i = 0; i < counterNode.length; i++)
				{
				counterNode[i].innerHTML = i+1;
				}
			} else {
				showMessage('info', "Sorry can't remove this row!");
			}
		}

		function removeAllowanceRow(element) {
			if ($('#allowance_table tr').length > 3) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "Sorry can't remove this row!");
			}
		}

		function removeClosingReportPhotoRow(element) {
			if ($('#closingReportPhoto_table tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "Sorry can't remove this row!");
			}
		}

		// Calculating Total Advance payment ///////////
		function calcTotalAdvancePayment(node) {
			checkAdvancePaymentAmount(node);
			ItemTaxableAmount = document
					.getElementsByName("advancePaymentAmountOfMoney[]");
			console.log(ItemTaxableAmount);
			var TaxableSubtotal = 0
			for (i = 0; i < ItemTaxableAmount.length; i++) {
				if (ItemTaxableAmount[i].value.trim() != "" && !isNaN(ItemTaxableAmount[i].value.trim())) {
					TaxableSubtotal = TaxableSubtotal
							+ parseFloat(ItemTaxableAmount[i].value.trim());

				}
			}

			document.getElementById("tableAdvancePaymentTotal").innerHTML = TaxableSubtotal;
			console.log("qqqqq " + TaxableSubtotal);
		}
		
		// Calculating Total Allowance 
		function calcTotalAllowance(node) {
			checkAllowanceAmount(node);
			ItemTaxableAmount = document
					.getElementsByName("allowanceAmountOfMoney[]");
			console.log(ItemTaxableAmount);
			var TaxableSubtotal = 0
			for (i = 0; i < ItemTaxableAmount.length; i++) {
				console.log("isNaN " + isNaN(ItemTaxableAmount[i].value.trim()))
				if (ItemTaxableAmount[i].value.trim() != ""  && !isNaN(ItemTaxableAmount[i].value.trim())) {
					TaxableSubtotal = TaxableSubtotal
							+ parseFloat(ItemTaxableAmount[i].value.trim());

				}
			}

			document.getElementById("tableAllowanceTotal").innerHTML = TaxableSubtotal;
		}

		function addWorkRow() {
			var $tr = $("#workTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#workTbodyId").append($clone);
		}

		function addLicenseRow() {
			var $tr = $("#licenceTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#licenceTbodyId").append($clone);
		}

		function addDependentRow() {
			var $tr = $("#dependentTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdDependent").append($clone);
		}

		function copyDependentRow(element) {

			var $tr = $(element).closest('tr');
			var $clone = $tr.clone();
			// $clone.find('select:value');
			$tr.after($clone);
		}
		
		function saveAssignStaffInfo(){
			
			 var dataNode = {};
			 
			 var scheduledDepartureTime = document.getElementById("scheduledDepartureTime").value;
			 var basicDailySalary = document.getElementById("basicDailySalary").value;
			 var advancePayment = document.getElementById("advancePayment").value;
			 var reasonforPrepayment = document.getElementById("reasonforPrepayment").value;
			 var prepaidDeliveryDate = document.getElementById("prepaidDeliveryDate").value;
			 var deductionAmount1 = document.getElementById("deductionAmount1").value;
			 var reasonforDeduction1 = document.getElementById("reasonforDeduction1").value;
			 var deductionAmount2 = document.getElementById("deductionAmount2").value;
			 var reasonforDeduction2 = document.getElementById("reasonforDeduction2").value;
			 var workingHoursStart = document.getElementById("workingHoursStart").value;
			 var workingHoursEnd = document.getElementById("workingHoursEnd").value;
			 var actualWorkingHours = document.getElementById("actualWorkingHours").value;
			 var actualBreakTime = document.getElementById("actualBreakTime").value;
			 var midnightBreakTime = document.getElementById("midnightBreakTime").value;
			 var overtimeHours = document.getElementById("overtimeHours").value;
			 var overtimeCosts = document.getElementById("overtimeCosts").value;
			 var midnightWorkingHours = document.getElementById("midnightWorkingHours").value;
			 var midnightLaborCosts = document.getElementById("midnightLaborCosts").value;
			 var holidayWorkingHours = document.getElementById("holidayWorkingHours").value;
			 var holidayLaborCosts = document.getElementById("holidayLaborCosts").value;
			 var overtimeBillingFee = document.getElementById("overtimeBillingFee").value;
			 var midnightLaborBilling = document.getElementById("midnightLaborBilling").value;
			 var holidayLaborBilling = document.getElementById("holidayLaborBilling").value;
			 var detailofAssignmentRemarks = document.getElementById("detailofAssignmentRemarks").value;
			 var dailySalaryInformationRemarks = document.getElementById("dailySalaryInformationRemarks").value;
			 var approvelStatus = document.getElementById("approvelStatus").value;
			 var staffId = document.getElementById("staffId").value;
			 var assignmentId = document.getElementById("assignmentId").value;
			 var tableAdvancePaymentTotal = document.getElementById("tableAdvancePaymentTotal").innerHTML;
			 var tableAllowanceTotal = document.getElementById("tableAllowanceTotal").innerHTML;
			 
			 var advancePaymentDtoList = [];
		  	   
		  	    var advancePaymentIdArray = document.getElementsByName('advancePaymentID[]');
		    	var advancePaymentNominalArray = document.getElementsByName('advancePaymentNominal[]'); 
		    	var advancePaymentDetailArray = document.getElementsByName('advancePaymentDetail[]'); 
		    	var advancePaymentAmountOfMoneyArray = document.getElementsByName('advancePaymentAmountOfMoney[]');  
		    	
		    	for(var i = 0; i < advancePaymentNominalArray.length; i++)
		    	{
		    		 var advancePaymentId = advancePaymentIdArray[i].value !="" ? advancePaymentIdArray[i].value : null;
		    		 var advancePaymentNominal = advancePaymentNominalArray[i].value.trim() !="" ? advancePaymentNominalArray[i].value.trim() : null;
		    		 var advancePaymentDetail = advancePaymentDetailArray[i].value.trim() !="" ? advancePaymentDetailArray[i].value.trim() : null;
		    		 var advancePaymentAmountOfMoney = advancePaymentAmountOfMoneyArray[i].value.trim() !="" ? advancePaymentAmountOfMoneyArray[i].value.trim() : null;
		    		 
		    		 var tempAdvancePaymentDtoList ={"id":advancePaymentId,
			    				    "nominal":advancePaymentNominal,
							        "detail":advancePaymentDetail,
							        "amount":advancePaymentAmountOfMoney
						        };
				 
		    		 advancePaymentDtoList.push(tempAdvancePaymentDtoList);
		    	}
		    	
		    	var allowanceDtoList = [];
			  	   
		  	    var allowanceIDArray = document.getElementsByName('allowanceID[]');
		    	var allowanceNominalArray = document.getElementsByName('allowanceNominal[]'); 
		    	var allowanceDetailArray = document.getElementsByName('allowanceDetail[]'); 
		    	var allowanceAmountOfMoneyArray = document.getElementsByName('allowanceAmountOfMoney[]');  
		    	var allowanceTaxationArray = document.getElementsByName('allowanceTaxation[]'); 
		    	
		    	for(var i = 0; i < allowanceNominalArray.length; i++)
		    	{
		    		 var allowanceID = allowanceIDArray[i].value !="" ? allowanceIDArray[i].value : null;
		    		 var allowanceNominal = allowanceNominalArray[i].value.trim() !="" ? allowanceNominalArray[i].value.trim() : null;
		    		 var allowanceDetail = allowanceDetailArray[i].value.trim() !="" ? allowanceDetailArray[i].value.trim() : null;
		    		 var allowanceAmountOfMoney = allowanceAmountOfMoneyArray[i].value !="" ? allowanceAmountOfMoneyArray[i].value.trim() : null;
		    		 var allowanceTaxation = 0 ;
			    	 if (allowanceTaxationArray[i].checked == true){  
			    		 allowanceTaxation = allowanceTaxationArray[i].value;  
			    	  } 
		    		 
		    		 var tempaAllowanceDtoList ={"id":allowanceID,
			    				    "nominal":allowanceNominal,
							        "detail":allowanceDetail,
							        "amount":allowanceAmountOfMoney,
							        "taxation":allowanceTaxation
						        };
				 
		    		 allowanceDtoList.push(tempaAllowanceDtoList);
		    	}
		    	
		    	dataNode['assignmentId'] = assignmentId;
		    	dataNode['staffId'] = staffId;
		    	dataNode['shiftScheduleDateId'] = null;
		    	dataNode['scheduledDepartureTime'] = scheduledDepartureTime;
		    	dataNode['dailyBasicSalary'] = basicDailySalary;
		    	dataNode['advancePayment'] = advancePayment;
		    	dataNode['reasonForPrepayment'] = reasonforPrepayment;
		    	dataNode['prepaidDeliverDate'] = prepaidDeliveryDate;
		    	dataNode['deductionAmount1'] = deductionAmount1;
		    	dataNode['reasonForDeduction1'] = reasonforDeduction1;
		    	dataNode['deductionAmount2'] = deductionAmount2;
		    	dataNode['reasonForDeduction2'] = reasonforDeduction2;
		    	dataNode['closingRemarks'] = detailofAssignmentRemarks;
		    	dataNode['workingHoursStart'] = workingHoursStart;
		    	dataNode['workingHoursEnd'] = workingHoursEnd;
		    	dataNode['actualWorkingHours'] = actualWorkingHours;
		    	dataNode['actualBreakTime'] = actualBreakTime;
		    	dataNode['midnightBreakTime'] = midnightBreakTime;
		    	dataNode['overtimeHours'] = overtimeHours;
		    	dataNode['overtimeCosts'] = overtimeCosts;
		    	dataNode['midnightWorkingHours'] = midnightWorkingHours;
		    	dataNode['midnightLaborCosts'] = midnightLaborCosts;
		    	dataNode['holidayWorkingHours'] = holidayWorkingHours;
		    	dataNode['holidayLaborCosts'] = holidayLaborCosts;
		    	dataNode['overtimeBillingCost'] = overtimeBillingFee;
		    	dataNode['midnightLaborBillingFee'] = midnightLaborBilling;
		    	dataNode['holidayLaborBillingFee'] = holidayLaborBilling;
		    	dataNode['totalAllowance'] = tableAllowanceTotal;
		    	dataNode['totalAdvancePayment'] = tableAdvancePaymentTotal;
		    	dataNode['incomeTaxAmount'] = null;
		    	dataNode['paymentAmount'] = null;
		    	dataNode['approvalStatus'] = approvelStatus;
		    	dataNode['remarks'] = dailySalaryInformationRemarks;
		    	dataNode['matterAllocateStatus'] = null;
		    	dataNode['advancePaymentDtoList'] = advancePaymentDtoList;
		    	dataNode['allowanceDtoList'] = allowanceDtoList;
		    	
		    	$.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/SaveAssignmentForStaff',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==202)
		             {
		              	showMessage('success',"N1266");
		              	closingReportFileUpload();
		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
		             	 }
		              },
		              complete:function(data){
		           	   document.getElementById("loaderNotify").style.display = "none";
		           	   },
		              error: function(error) {
		              console.log(JSON.stringify(error));
		           		}
		        	 });
		}
		$("#btnSendInterviewRequest").click(function( event ) { 
	    	
			 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value;
			 var uuid = localStorage.getItem("uuid");
			 //implementationIDDetails = localStorage.getItem("implementationIDDetails");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
		   	 dataNode['implementDate'] = implementDate;
	  	     dataNode['uuid'] = uuid;  

		    	   $.ajax({
		             beforeSend: function(request) {
		             document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/SendMailInterview',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanInterviewRequest = document.getElementById('pageSpanInterviewRequest').innerHTML;
		              	pageSpanInterviewRequest += ' ' + result.data.interviewMailSendUser + ' ' + result.data.interviewMailSendDate;
		              	document.getElementById('pageSpanInterviewRequest').innerHTML = pageSpanInterviewRequest;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
		
		$("#btnSendMatterAssignment").click(function( event ) { 
	    	
			 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value;
			 var uuid = localStorage.getItem("uuid");
			 //implementationIDDetails = localStorage.getItem("implementationIDDetails");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		  	 dataNode['implementationId'] = implementationIDDetails;
		  	 dataNode['implementDate'] = implementDate;
	  	     dataNode['uuid'] = uuid;  

		    	   $.ajax({
		             beforeSend: function(request) {
		             document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/SendMailCaseAllocation',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanMatterAssignment = document.getElementById('pageSpanMatterAssignment').innerHTML;
		              	pageSpanMatterAssignment += ' ' + result.data.matterAssignMailSendUser + ' ' + result.data.matterAssignMailSendDate;
		              	document.getElementById('pageSpanMatterAssignment').innerHTML = pageSpanMatterAssignment;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
		
		$("#btnConfirmedTheDayBeforey").click(function( event ) { 
	    	
		     var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate;  
	 	     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/ConfirmByDayBefore',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var spanConfirmedDayBeforeDateTime = document.getElementById('pageSpanConfirmedTheDayBefore').innerHTML;
		              	spanConfirmedDayBeforeDateTime += ' ' + result.data.confirmedDate;
		              	document.getElementById('pageSpanConfirmedTheDayBefore').innerHTML = spanConfirmedDayBeforeDateTime;
		              	document.getElementById("btnConfirmedTheDayBeforey").disabled = true;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnDepartureReport").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate;  
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/ConfirmDepartureReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var spanDepartureConfirmationDateTime = document.getElementById('pageSpanDepartureReport').innerHTML;
		              	spanDepartureConfirmationDateTime += ' ' + result.data.departureReportDate;
		              	document.getElementById('pageSpanDepartureReport').innerHTML = spanDepartureConfirmationDateTime;
		              	document.getElementById("btnDepartureReport").disabled = true;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnArrivalReport").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate;   
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/ConfirmArrivalReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var spanArrivalConfirmationDateTime = document.getElementById('pageSpanArrivalReport').innerHTML;
		              	spanArrivalConfirmationDateTime += ' ' + result.data.arrivalReportDate;
		              	document.getElementById('pageSpanArrivalReport').innerHTML = spanArrivalConfirmationDateTime;
		              	document.getElementById("btnArrivalReport").disabled = true;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnClosingReport").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate;  
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/ConfirmClosingReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var spanClosingConfirmationDateTime = document.getElementById('pageSpanClosingReport').innerHTML;
		              	spanClosingConfirmationDateTime += ' ' + result.data.closingReportDate;
		              	document.getElementById('pageSpanClosingReport').innerHTML = spanClosingConfirmationDateTime;
		              	document.getElementById("btnClosingReport").disabled = true;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnExpenseReport").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate;  
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/ConfirmExpenseReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanExpenseReport = document.getElementById('pageSpanExpenseReport').innerHTML;
		              	pageSpanExpenseReport += ' ' + result.data.expenseReportDate;
		              	document.getElementById('pageSpanExpenseReport').innerHTML = pageSpanExpenseReport;
		              	document.getElementById("btnExpenseReport").disabled = true;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnConfirmedTheDayBeforeConfirmer").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			 var uuid = localStorage.getItem("uuid");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate; 
	 	     dataNode['uuid'] = uuid;
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/AdminConfirmByDayBefore',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanConfirmedTheDayBeforeConfirmer = document.getElementById('pageSpanConfirmedTheDayBeforeConfirmer').innerHTML;
		              	pageSpanConfirmedTheDayBeforeConfirmer += ' ' + result.data.confirmedByUser + ' ' + result.data.confirmedDate;
		              	document.getElementById('pageSpanConfirmedTheDayBeforeConfirmer').innerHTML = pageSpanConfirmedTheDayBeforeConfirmer;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnDepartureReportConfirmer").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			 var uuid = localStorage.getItem("uuid");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate; 
	 	     dataNode['uuid'] = uuid;
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/AdminConfirmDepartureReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanDepartureReportConfirmer = document.getElementById('pageSpanDepartureReportConfirmer').innerHTML;
		              	pageSpanDepartureReportConfirmer += ' ' + result.data.departureReportConfirmedUser + ' ' + result.data.departureReportConfirmedDate;
		              	document.getElementById('pageSpanDepartureReportConfirmer').innerHTML = pageSpanDepartureReportConfirmer;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnArrivalReportConfirmation").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			 var uuid = localStorage.getItem("uuid");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate; 
	 	     dataNode['uuid'] = uuid;
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/AdminConfirmArrivalReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanArrivalReportConfirmer = document.getElementById('pageSpanArrivalReportConfirmer').innerHTML;
		              	pageSpanArrivalReportConfirmer += ' ' + result.data.arrivalReportConfirmedUser + ' ' + result.data.arrivalReportConfirmedDate;
		              	document.getElementById('pageSpanArrivalReportConfirmer').innerHTML = pageSpanArrivalReportConfirmer;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnArrivalClosingReportConfirmer").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			 var uuid = localStorage.getItem("uuid");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate; 
	 	     dataNode['uuid'] = uuid;
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/AdminConfirmClosingReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanClosingReportConfirmer = document.getElementById('pageSpanClosingReportConfirmer').innerHTML;
		              	pageSpanClosingReportConfirmer += ' ' + result.data.closingReportConfirmedUser + ' ' + result.data.closingReportConfirmedDate;
		              	document.getElementById('pageSpanClosingReportConfirmer').innerHTML = pageSpanClosingReportConfirmer;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
	    $("#btnExpenseReportConfirmation").click(function( event ) { 
	    	
	    	 var staffId = document.getElementById("staffId").value;
			 var implementDate = document.getElementById("implementationDate").value; 
			 var uuid = localStorage.getItem("uuid");
			  	   
			 var dataNode = {};     
		  	 dataNode['staffId'] = staffId;  
		   	 dataNode['implementationId'] = implementationIDDetails;
	 	     dataNode['implementDate'] = implementDate; 
	 	     dataNode['uuid'] = uuid;
		     
		    	   $.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/AdminConfirmExpenseReport',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==200)
		             {
		              	showMessage('success',"N1266");
		              	var pageSpanExpenseReportConfirmer = document.getElementById('pageSpanExpenseReportConfirmer').innerHTML;
		              	pageSpanExpenseReportConfirmer += ' ' + result.data.expenseReportConfirmedUser + ' ' + result.data.expenseReportConfirmedDate;
		              	document.getElementById('pageSpanExpenseReportConfirmer').innerHTML = pageSpanExpenseReportConfirmer;

		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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
	    
		
		function ButtonDisableForConfirmation(value1, value2, value3, value4, value5)
		{
			if(value1==1)
			{
				document.getElementById("btnConfirmedTheDayBeforey").disabled = true;
			}
			if(value2==1)
			{
				document.getElementById("btnDepartureReport").disabled = true;
			}
			if(value3==1)
			{
				document.getElementById("btnArrivalReport").disabled = true;
			}
			if(value4==1)
			{
				document.getElementById("btnClosingReport").disabled = true;
			}
			if(value5==1)
			{
				document.getElementById("btnExpenseReport").disabled = true;
			}
		}

		function closingReportFileUpload()
		{
			var imagePath = "";
			var closingReportFileUploadArray = document.getElementsByName("closingReportPhotoUploadFile[]");
			var closingReportFileUploadIdArray = document.getElementsByName("closingReportPhotoID[]");
			var assignmentId = localStorage.getItem("assignmentId");
			var closingReportFileArray = [];
			
	    	for(var i = 0; i < closingReportFileUploadArray.length; i++)
	    	  {
			if($("input[name='closingReportPhotoUploadFile[]']")[i].files[0]){
			var fileNode = $("input[name='closingReportPhotoUploadFile[]']")[i].files[0]
			 console.log(fileNode);
			 console.log(fileNode.size);
			 console.log(fileNode.name);
			 console.log(fileNode.type);

			var formDataObj = new FormData();
			formDataObj.append('image', fileNode );
			//formDataObj.append('file', fileNode);
			formDataObj.append('uuid', "ClosingReportFile"  );
			formDataObj.append('serviceId', assignmentId);

		 	$.ajax({
			  beforeSend : function(request) {
				document.getElementById("loaderNotify").style.display = ""; 
				console.log("beforeSend"); 
			    request.setRequestHeader("GUID", GUID);
			  },
					url : serverHTTP + 'Content/save-content',
					enctype: 'multipart/form-data',
					data : formDataObj,
					cache: false,
					contentType: false,
					processData: false,
					method: 'POST',
					async: false,
			  success : function(result, status, request) {
			       console.log(result);
			       imagePath = result.data.imagePath;
			       
			       var closingReportFileUploadId = closingReportFileUploadIdArray[i].value !="" ? closingReportFileUploadIdArray[i].value.trim() : null;
			       
			       var tempAssignmentFileUpload = {
			    		   "assignmentFileUploadId":closingReportFileUploadId,
			    		   "filePath":imagePath,
			    		   "fileType":null,
			    		   };

			       closingReportFileArray.push(tempAssignmentFileUpload);
			       
			 },
			 complete:function(data){
           	  document.getElementById("loaderNotify").style.display = "none";
              console.log("complete"); 
			 },
			 error : function(error) {
			       console.log(error);
			 }
		    }); 
			//return filePath;
			}
	      }
			setFilePath(closingReportFileArray);
	    }
		
		function setFilePath(value){
			var assignmentId = localStorage.getItem("assignmentId");
            let fileNode = {};
            fileNode['assignmentId'] = assignmentId;
            fileNode['assignmentFileUploadDtoList'] = value;
			
			if(value!="")
			{ 
				$.ajax({
					beforeSend : function(request) {
						request.setRequestHeader("GUID", GUID);
					},
					url : serverHTTP + 'Assignment/SaveAssignmentFile',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify(fileNode),
					dataType : 'json',
					success : function(result, status, request) {
						if (result.status == 202) {
							console.log("file saved");
							
						} else {
							// showMessage("Sorry Data Loding Error");
							console.log("did not save file");
						}
					},
					error : function(error) {
						console.log(JSON.stringify(error));
					}
				});
			}
			else	
			{
				console.log("Empty");
			}

		}
		
		function calActualWorkingHours(start, end, breaktime) {
		    start = start.split(":");
		    end = end.split(":");
		    var breaktimeArray=[];
		    if(breaktime!=""){
		    	breaktimeArray = breaktime.split(":");
		    }
		    else
		    	{
		    	breaktimeArray[0]=0;
		    	breaktimeArray[1]=0;
		    	}
		    
		    var startHours = parseInt(start[0], 10), 
			 breakHour = parseInt(breaktimeArray[0], 10),
			 endHours = parseInt(end[0], 10),
			 startMins = parseInt(start[1], 10),
			 breakMins = parseInt(breaktimeArray[1], 10),
			 endMins = parseInt(end[1], 10);
		    
		    var hours2 = breakHour + startHours;
			var mins2 = breakMins + startMins;
		    
			var hours = endHours - hours2, minutes = 0;
			
			if(endMins >= mins2) {
	        	 minutes = endMins - mins2;
	         }
	         else {
	        	 minutes = (endMins + 60) - mins2;
	             hours--;
	         }
			
		    console.log("ActualWorkingHours"+(hours < 9 ? "0" : "") + hours + ":" + (minutes < 9 ? "0" : "") + minutes);
		    return (hours < 9 ? "0" : "") + hours + ":" + (minutes < 9 ? "0" : "") + minutes ;

		}
		
		function calOverTimeHours(actualWorkHours, implementWorkHours) {
			
			if(implementWorkHours<actualWorkHours)
				{
				actualWorkHoursArray = actualWorkHours.split(":");
				implementWorkHoursArray = implementWorkHours.split(":");
				
				 var hours1 = parseInt(actualWorkHoursArray[0], 10), 
				 hours2 = parseInt(implementWorkHoursArray[0], 10),
				 mins1 = parseInt(actualWorkHoursArray[1], 10),
				 mins2 = parseInt(implementWorkHoursArray[1], 10);
				 
		         var hours = hours1 - hours2, minutes = 0;
		         
		         if(mins1 >= mins2) {
		        	 minutes = mins1 - mins2;
		         }
		         else {
		        	 minutes = (mins1 + 60) - mins2;
		             hours--;
		         }
				}
			else
				{
				var hours = 0;
				var minutes = 0;
				}
			

		    console.log("OverTimeHours"+(hours < 9 ? "0" : "") + hours + ":" + (minutes < 9 ? "0" : "") + minutes);
		    return (hours < 9 ? "0" : "") + hours + ":" + (minutes < 9 ? "0" : "") + minutes;

		}

		function calOverTimeCost(basicSalary, implementWorkHours, overTimeHours, overTimeRate) {
			 implementWorkHours = implementWorkHours.split(":");
			 overTimeHours = overTimeHours.split(":");
			
			 var convertWorkTimeforMin = (parseInt(implementWorkHours[0], 10) * 60 + parseInt(implementWorkHours[1], 10));
			 var convertOverTimeforMin = (parseInt(overTimeHours[0], 10) * 60 + parseInt(overTimeHours[1], 10));
			 var overTimeCost = Math.ceil((basicSalary/convertWorkTimeforMin)*convertOverTimeforMin*overTimeRate);
			 console.log(overTimeCost)
			 
			 return overTimeCost;
		}
		
		function calOvertimeBillingFee(billedAmount, implementWorkHours, overTimeHours) {
			 implementWorkHours = implementWorkHours.split(":");
			 overTimeHours = overTimeHours.split(":");
			 
			 var convertWorkTimeforMin = (parseInt(implementWorkHours[0], 10) * 60 + parseInt(implementWorkHours[1], 10));
			 var convertOverTimeforMin = (parseInt(overTimeHours[0], 10) * 60 + parseInt(overTimeHours[1], 10));
			 var overtimeBillingFee = Math.ceil((billedAmount/convertWorkTimeforMin)*convertOverTimeforMin);
			 console.log(overtimeBillingFee)
			 
			 return overtimeBillingFee;
		}
		
		function calDailySalary(basicSalary, overTimeCost, advancePayment, allowance, incomeTax) {
			 var dailySalary  = Math.ceil((parseInt(basicSalary)+parseInt(overTimeCost)+parseInt(advancePayment)+parseInt(allowance))-parseInt(incomeTax));
			 console.log(dailySalary)
			 
			 return dailySalary;
		}
		
		
		$("#workingHoursStart").focusout(function(){
			var start = document.getElementById("workingHoursStart").value;
			var end = document.getElementById("workingHoursEnd").value;
			var breakTime = document.getElementById("actualBreakTime").value;
          	var actualWorkHours = document.getElementById("actualWorkingHours").value = calActualWorkingHours(start,end,breakTime);
          	var implementWorkHours = document.getElementById("implementationActualWorkingHours").value;
          	var overtimeHours = document.getElementById("overtimeHours").value = calOverTimeHours(actualWorkHours,implementWorkHours);
          	var basicSalary = document.getElementById("basicDailySalary").value;
          	document.getElementById("overtimeCosts").value = calOverTimeCost(basicSalary, implementWorkHours, overtimeHours, "1");
          	var billedAmount = document.getElementById("billedAmountHourly").value;
          	document.getElementById("overtimeBillingFee").value = calOvertimeBillingFee(billedAmount, implementWorkHours, overtimeHours);
		});
		
		$("#workingHoursEnd").focusout(function(){
			var start = document.getElementById("workingHoursStart").value;
			var end = document.getElementById("workingHoursEnd").value;
			var breakTime = document.getElementById("actualBreakTime").value;
			var actualWorkHours = document.getElementById("actualWorkingHours").value = calActualWorkingHours(start,end,breakTime);
          	var implementWorkHours = document.getElementById("implementationActualWorkingHours").value;
          	var overtimeHours = document.getElementById("overtimeHours").value = calOverTimeHours(actualWorkHours,implementWorkHours);
          	var basicSalary = document.getElementById("basicDailySalary").value;
          	document.getElementById("overtimeCosts").value = calOverTimeCost(basicSalary, implementWorkHours, overtimeHours, "1");
          	var billedAmount = document.getElementById("billedAmountHourly").value;
          	document.getElementById("overtimeBillingFee").value = calOvertimeBillingFee(billedAmount, implementWorkHours, overtimeHours);
			});
		
		$("#actualBreakTime").focusout(function(){
			var start = document.getElementById("workingHoursStart").value;
			var end = document.getElementById("workingHoursEnd").value;
			var breakTime = document.getElementById("actualBreakTime").value;
			var actualWorkHours = document.getElementById("actualWorkingHours").value = calActualWorkingHours(start,end,breakTime);
          	var implementWorkHours = document.getElementById("implementationActualWorkingHours").value;
          	var overtimeHours = document.getElementById("overtimeHours").value = calOverTimeHours(actualWorkHours,implementWorkHours);
          	var basicSalary = document.getElementById("basicDailySalary").value;
          	document.getElementById("overtimeCosts").value = calOverTimeCost(basicSalary, implementWorkHours, overtimeHours, "1");
          	var billedAmount = document.getElementById("billedAmountHourly").value;
          	document.getElementById("overtimeBillingFee").value = calOvertimeBillingFee(billedAmount, implementWorkHours, overtimeHours);
			});
		
		$('#btnCalculateSalary').click(function(){
			
			var basicSalary = document.getElementById("basicDailySalary").value;
			var overTimeCost = document.getElementById("overtimeCosts").value;
			var advancePayment = document.getElementById("tableAdvancePaymentTotal").innerHTML;
			var allowance = document.getElementById("tableAllowanceTotal").innerHTML;
			var dailySalary=calDailySalary(basicSalary, overTimeCost, advancePayment, allowance, 0);
			
			var pageSpanDailySalaryInformation = document.getElementById('pageSpanDailySalaryInformation').innerHTML;
			pageSpanDailySalaryInformation += ' ' + dailySalary;
          	document.getElementById('pageSpanDailySalaryInformation').innerHTML = pageSpanDailySalaryInformation;
          	
          	var dataNode = {};
			 
			 /* var scheduledDepartureTime = document.getElementById("scheduledDepartureTime").value;
			 var basicDailySalary = document.getElementById("basicDailySalary").value;
			 var advancePayment = document.getElementById("advancePayment").value;
			 var reasonforPrepayment = document.getElementById("reasonforPrepayment").value;
			 var prepaidDeliveryDate = document.getElementById("prepaidDeliveryDate").value;
			 var deductionAmount1 = document.getElementById("deductionAmount1").value;
			 var reasonforDeduction1 = document.getElementById("reasonforDeduction1").value;
			 var deductionAmount2 = document.getElementById("deductionAmount2").value;
			 var reasonforDeduction2 = document.getElementById("reasonforDeduction2").value; */
			 var workingHoursStart = document.getElementById("workingHoursStart").value;
			 var workingHoursEnd = document.getElementById("workingHoursEnd").value;
			 var actualWorkingHours = document.getElementById("actualWorkingHours").value;
			 var actualBreakTime = document.getElementById("actualBreakTime").value;
			 var midnightBreakTime = document.getElementById("midnightBreakTime").value;
			 var overtimeHours = document.getElementById("overtimeHours").value;
			 var overtimeCosts = document.getElementById("overtimeCosts").value;
			 var midnightWorkingHours = document.getElementById("midnightWorkingHours").value;
			 var midnightLaborCosts = document.getElementById("midnightLaborCosts").value;
			 var holidayWorkingHours = document.getElementById("holidayWorkingHours").value;
			 var holidayLaborCosts = document.getElementById("holidayLaborCosts").value;
			 var overtimeBillingFee = document.getElementById("overtimeBillingFee").value;
			 var midnightLaborBilling = document.getElementById("midnightLaborBilling").value;
			 var holidayLaborBilling = document.getElementById("holidayLaborBilling").value;
			 // var detailofAssignmentRemarks = document.getElementById("detailofAssignmentRemarks").value;
			 var dailySalaryInformationRemarks = document.getElementById("dailySalaryInformationRemarks").value; 
			 var approvelStatus = document.getElementById("approvelStatus").value;
			 var staffId = document.getElementById("staffId").value;
			 var assignmentId = document.getElementById("assignmentId").value;
			 var tableAdvancePaymentTotal = document.getElementById("tableAdvancePaymentTotal").innerHTML;
			 var tableAllowanceTotal = document.getElementById("tableAllowanceTotal").innerHTML;
			 
			 var advancePaymentDtoList = [];
		  	   
		  	    var advancePaymentIdArray = document.getElementsByName('advancePaymentID[]');
		    	var advancePaymentNominalArray = document.getElementsByName('advancePaymentNominal[]'); 
		    	var advancePaymentDetailArray = document.getElementsByName('advancePaymentDetail[]'); 
		    	var advancePaymentAmountOfMoneyArray = document.getElementsByName('advancePaymentAmountOfMoney[]');  
		    	
		    	for(var i = 0; i < advancePaymentNominalArray.length; i++)
		    	{
		    		 var advancePaymentId = advancePaymentIdArray[i].value !="" ? advancePaymentIdArray[i].value : null;
		    		 var advancePaymentNominal = advancePaymentNominalArray[i].value.trim() !="" ? advancePaymentNominalArray[i].value.trim() : null;
		    		 var advancePaymentDetail = advancePaymentDetailArray[i].value.trim() !="" ? advancePaymentDetailArray[i].value.trim() : null;
		    		 var advancePaymentAmountOfMoney = advancePaymentAmountOfMoneyArray[i].value.trim() !="" ? advancePaymentAmountOfMoneyArray[i].value.trim() : null;
		    		 
		    		 var tempAdvancePaymentDtoList ={"id":advancePaymentId,
			    				    "nominal":advancePaymentNominal,
							        "detail":advancePaymentDetail,
							        "amount":advancePaymentAmountOfMoney
						        };
				 
		    		 advancePaymentDtoList.push(tempAdvancePaymentDtoList);
		    	}
		    	
		    	var allowanceDtoList = [];
			  	   
		  	    var allowanceIDArray = document.getElementsByName('allowanceID[]');
		    	var allowanceNominalArray = document.getElementsByName('allowanceNominal[]'); 
		    	var allowanceDetailArray = document.getElementsByName('allowanceDetail[]'); 
		    	var allowanceAmountOfMoneyArray = document.getElementsByName('allowanceAmountOfMoney[]');  
		    	var allowanceTaxationArray = document.getElementsByName('allowanceTaxation[]'); 
		    	
		    	for(var i = 0; i < allowanceNominalArray.length; i++)
		    	{
		    		 var allowanceID = allowanceIDArray[i].value !="" ? allowanceIDArray[i].value : null;
		    		 var allowanceNominal = allowanceNominalArray[i].value.trim() !="" ? allowanceNominalArray[i].value.trim() : null;
		    		 var allowanceDetail = allowanceDetailArray[i].value.trim() !="" ? allowanceDetailArray[i].value.trim() : null;
		    		 var allowanceAmountOfMoney = allowanceAmountOfMoneyArray[i].value !="" ? allowanceAmountOfMoneyArray[i].value.trim() : null;
		    		 var allowanceTaxation = 0 ;
			    	 if (allowanceTaxationArray[i].checked == true){  
			    		 allowanceTaxation = allowanceTaxationArray[i].value;  
			    	  } 
		    		 
		    		 var tempaAllowanceDtoList ={"id":allowanceID,
			    				    "nominal":allowanceNominal,
							        "detail":allowanceDetail,
							        "amount":allowanceAmountOfMoney,
							        "taxation":allowanceTaxation
						        };
				 
		    		 allowanceDtoList.push(tempaAllowanceDtoList);
		    	}
		    	
		    	dataNode['assignmentId'] = assignmentId;
		    	dataNode['staffId'] = staffId;
		    	dataNode['shiftScheduleDateId'] = null;
		    	dataNode['scheduledDepartureTime'] = null;
		    	dataNode['dailyBasicSalary'] = null;
		    	dataNode['advancePayment'] = null;
		    	dataNode['reasonForPrepayment'] = null;
		    	dataNode['prepaidDeliverDate'] = null;
		    	dataNode['deductionAmount1'] = null;
		    	dataNode['reasonForDeduction1'] = null;
		    	dataNode['deductionAmount2'] = null;
		    	dataNode['reasonForDeduction2'] = null;
		    	dataNode['closingRemarks'] = null;
		    	dataNode['workingHoursStart'] = workingHoursStart;
		    	dataNode['workingHoursEnd'] = workingHoursEnd;
		    	dataNode['actualWorkingHours'] = actualWorkingHours;
		    	dataNode['actualBreakTime'] = actualBreakTime;
		    	dataNode['midnightBreakTime'] = midnightBreakTime;
		    	dataNode['overtimeHours'] = overtimeHours;
		    	dataNode['overtimeCosts'] = overtimeCosts;
		    	dataNode['midnightWorkingHours'] = midnightWorkingHours;
		    	dataNode['midnightLaborCosts'] = midnightLaborCosts;
		    	dataNode['holidayWorkingHours'] = holidayWorkingHours;
		    	dataNode['holidayLaborCosts'] = holidayLaborCosts;
		    	dataNode['overtimeBillingCost'] = overtimeBillingFee;
		    	dataNode['midnightLaborBillingFee'] = midnightLaborBilling;
		    	dataNode['holidayLaborBillingFee'] = holidayLaborBilling;
		    	dataNode['totalAllowance'] = tableAllowanceTotal;
		    	dataNode['totalAdvancePayment'] = tableAdvancePaymentTotal;
		    	dataNode['incomeTaxAmount'] = null;
		    	dataNode['paymentAmount'] = parseInt(dailySalary);
		    	dataNode['approvalStatus'] = approvelStatus;
		    	dataNode['remarks'] = null;
		    	dataNode['matterAllocateStatus'] = null;
		    	dataNode['advancePaymentDtoList'] = advancePaymentDtoList;
		    	dataNode['allowanceDtoList'] = allowanceDtoList;
		    	
		    	$.ajax({
		             beforeSend: function(request) {
		            	 document.getElementById("loaderNotify").style.display = "";
		              request.setRequestHeader("GUID", GUID);
		             },
		             url: serverHTTP +'Assignment/SaveAssignmentForStaff',
		             method: 'POST',
		             contentType: 'application/json',
		             data: JSON.stringify(dataNode),
		             dataType: 'json',
		             success: function(result, status, request){      
					 if(result.status==202)
		             {
		              	showMessage('success',"N1266");
		              	
		             }
		              else
		              {
		              	showMessage('error',"N1265");
		             		// showMessage("Sorry Data Loding Error");
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

		$('#btnImplementationDetails').click(function(){
			sessionStorage.setItem("implementationId", implementationIDDetails);
		    window.location.href="case-implementation-info-details.jsp";
		    
		});
		
		$('#btnCopyfromDailySalary').click(function(){
			document.getElementById("basicDailySalary").value = document.getElementById("staffDailySalaryUnitPrice").value;
		    
		});
	</script>
</body>

</html>