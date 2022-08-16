<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleAssignmentForImplementationCase">Assignment For Implementation Case</title>


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


				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-8 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingAssignmentForImplementationCase">
												Assignment For Implementation Case</span>
										</h1>
									</div>
									<!-- <div class="loading" id="loaderNotify" style="display: none;">
										<div class="spinner-bubble spinner-bubble-primary m-7"></div>
									</div> -->
									<div class="col-md-4  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">

												<button onclick="window.history.back();"
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonSpanReturn">Return</span>
												</button>
											</div>
										</div>
									</div>
								</div>

								<!-- <div class="row ml-2">
									<p class="pb-0 mb-0" id="pageSpanSubHeadingCaseRegistration">You
										can set the shift for each implementation date. Staff
										assignments are made on the assignment management screen, and
										settings for each staff are made on the assignment staff
										details screen.</p>
								</div> -->

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

												<div id="customerInformation" class="collapse "
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanProjectTitle">Case Name</span>
																</div>
																<div>
																	<input type="text" readonly id="ProjectTitle"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorProjectTitle" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMatterNumber">Case number </span>
																</div>
																<div>
																	<input type="text" readonly id="MatterNumber"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMatterNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanQuotationNumber"> Quotation
																		number</span>
																</div>
																<div>
																	<input type="text" readonly id="QuotationNumber"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorQuotationNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAssignmentClassification">Assignment
																		Classification</span>
																</div>
																<div>
																	<input type="hidden" readonly
																		id="AssignmentClassificationId"> <input
																		type="text" readonly id="AssignmentClassification"
																		class="form-control" maxlength="255">

																</div>
																<div>
																	<p id="assignmentClassificationHelp">"Assign by
																		period" is recommended for long-term projects of 1
																		month or more</p>
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
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDivisionByBusiness">Division
																		by Business</span>
																</div>
																<div>
																	<input type="text" readonly id="DivisionByBusiness"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorDivisionByBusiness" style="color: red;"></div>
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
																	<span id="pageSpanBusinessContent"> Business
																		content and degree of responsibility </span>
																</div>
																<div>
																	<input type="text" readonly id="BusinessContent"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRequiredNumberPeople">
																		Required number of people</span>
																</div>
																<div>
																	<input type="text" readonly id="RequiredNumberPeople"
																		class="form-control">
																</div>
																<div id="errorRequiredNumberPeople" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPersonInCharge"> The person in
																		charge of the case</span>
																</div>
																<div>
																	<input type="text" readonly id="PersonInCharge"
																		class="form-control">
																</div>
																<div id="errorPersonInCharge" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalesRepresentative"> Sales
																		Representative</span>
																</div>
																<div>
																	<input type="text" readonly id="SalesRepresentative"
																		class="form-control">
																</div>
																<div id="errorSalesRepresentative" style="color: red;"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCompanyName">Customer
																		company name</span>

																</div>
																<div>
																	<input type="text" readonly id="CustomerCompanyName"
																		class="form-control">
																</div>
																<div id="errorCustomerCompanyNamee" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeName">Customer
																		Representative Name</span>

																</div>
																<div>
																	<input type="text" readonly
																		id="CustomerRepresentativeName" class="form-control">
																</div>
																<div id="errorCustomerRepresentativeName"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3"></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNameofDispatcher"> Name of
																		dispatcher </span>
																</div>
																<div>
																	<input type="text" id="nameofDispatcher" disabled class="form-control">
																</div>
																<div id="errorNameofDispatcher" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanContacInformationOfDispatcher">
																		Contact information of dispatcher </span>
																</div>
																<div>
																	<input type="text" id="contacInformationOfDispatcher" disabled class="form-control">
																</div>
																<div id="errorContacInformationOfDispatcher"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNameOfDispatcherGrievance">
																		Name of dispatcher grievance handler </span>
																</div>
																<div>
																	<input type="text" id="nameOfDispatcherGrievance" disabled class="form-control">
																</div>
																<div id="errorNameOfDispatcherGrievance"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanContactInfoDispatcherGrievance">
																		Contact information for the dispatcher's grievance
																		handler </span>
																</div>
																<div>
																	<input type="text" id="contactInfoDispatcherGrievance" disabled class="form-control">
																</div>
																<div id="errorContactInfoDispatcherGrievance"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCommanderName"> Commander Name
																	</span>
																</div>
																<div>
																	<input type="text" id="commanderName" disabled class="form-control">
																</div>
																<div id="errorCommanderName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCommanderContact"> Commander
																		Contact </span>
																</div>
																<div>
																	<input type="text" id="commanderContact" disabled class="form-control">
																</div>
																<div id="errorCommanderContact" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOfficerName"> Officer name </span>
																</div>
																<div>
																	<input type="text" id="officerName" disabled class="form-control">
																</div>
																<div id="errorOfficerName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanResponsibleContact">
																		Responsible contact</span>
																</div>
																<div>
																	<input type="text" id="responsibleContact" disabled class="form-control">
																</div>
																<div id="errorResponsibleContact" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanComplaintContactName">
																		Complaint contact name </span>
																</div>
																<div>
																	<input type="text" id="complaintContactName" disabled class="form-control">
																</div>
																<div id="errorComplaintContactName" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanComplaintContactInformation">
																		Complaint contact information </span>
																</div>
																<div>
																	<input type="text" id="complaintContactInformation" disabled class="form-control">
																</div>
																<div id="errorComplaintContactInformation"
																	style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentStatus"> Whether it
																		is permanent employment or fixed-term employment and
																		whether or not it is a dispatched worker subject to
																		the agreement</span>
																</div>
																<div>
																	<Select id="EmploymentStatus"  disabled class="form-control">
																		<option value="1"
																			id="optionEmploymentStatusFixedTermEmploymentWorker">Fixed-Term
																			Employment Worker</option>
																		<option value="2"
																			id="optionEmploymentStatusFixedTermEmploymentWorkerDispatched">Fixed-Term
																			Employment Workers(Dispatched workers subject to the
																			agreement)</option>
																		<option value="3"
																			id="optionEmploymentStatusPermanentWorker">Permanent
																			Worker</option>
																		<option value="4"
																			id="optionEmploymentStatusPermanentWorkerDispatched">Permanent
																			Employment Workers(Dispatched workers subject to the
																			agreement)</option>
																	</Select>
																</div>
																<div id="errorEmploymentStatus" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6   pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>

																<div class="DetailsTitleText">
																	<span id="" style="visibility: hidden"> Whether
																		or not you are over 60 years old </span> </br> <span
																		id="pageSpanAgeStatus"> Whether or not you are
																		over 60 years old </span>
																</div>
																<div>
																	<Select id="AgeStatus" disabled class="form-control">
																		<option value="1" id="optionAgeStatusLimitedOver60">Limited
																			to over 60 years old</option>
																		<option value="2" id="optionAgeStatusNotLimitedOver60">Not
																			Limited to over 60 years old</option>
																	</Select>
																</div>
																<div id="errorAgeStatus" style="color: red;"></div>
															</div>





															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPeriodStart"> Implementation
																		Period (Start) </span>
																</div>
																<div>
																	<input readonly type="date" id="periodStart"
																		class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPeriodEnd"> Implementation
																		Period (End) </span>
																</div>
																<div>
																	<input readonly type="date" id="periodEnd"
																		class="form-control">
																</div>
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
														<div class="row pt-3"
															id="assignmentClassificationPeriodLoader"
															style="display: none">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanImplementationPeriodStart">
																		(S)Implementation Period (Start) </span>
																</div>
																<div>
																	<input type="date" id="implementationPeriodStart"
																		class="form-control">
																</div>
																<div id="errorImplementationPeriodStart"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanImplementationPeriodEnd">
																		(S)Implementation Period (End) </span> 
																</div>
																<div>
																	<input type="date" id="implementationPeriodEnd"
																		class="form-control">
																</div>
																<div id="errorImplementationPeriodEnd"
																	class="RequiredStar"></div>
															</div>

														</div>

														<div class="row pt-3"
															id="assignmentClassificationDateLoader"
															style="display: none">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanImplementationDate"> (S)
																		Implementation date </span> 
																</div>
																<div>
																	<input type="date" id="implementationDateStart"
																		class="form-control">
																</div>
																<div id="errorImplementationDateStart"
																	class="RequiredStar"></div>
															</div>

														</div>
														<div class="row pb-4">

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkingDays">Working days</span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysSunday">Sunday</span> <input
																			type="checkbox" disabled id="workingDays1"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysMonday">Monday</span> <input
																			type="checkbox" disabled id="workingDays2"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysTuesday">Tuesday</span> <input
																			type="checkbox" disabled id="workingDays3"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysWednesday">Wednesday</span> <input
																			type="checkbox" disabled id="workingDays4"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysThursday">Thursday</span> <input
																			type="checkbox" disabled id="workingDays5"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysFriday">Friday</span> <input
																			type="checkbox" disabled id="workingDays6"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysSaturday">Saturday</span> <input
																			type="checkbox" disabled id="workingDays7"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHolidays"> Holidays</span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidaySunday">Sunday</span> <input
																			type="checkbox" disabled id="holiday1" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayMonday">Monday</span> <input
																			type="checkbox" disabled id="holiday2" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayTuesday">Tuesday</span> <input
																			type="checkbox" disabled id="holiday3" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayWednesday">Wednesday</span> <input
																			type="checkbox"  disabled id="holiday4" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayThursday">Thursday</span> <input
																			type="checkbox" disabled id="holiday5" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayFriday">Friday</span> <input
																			type="checkbox" disabled id="holiday6" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidaySaturday">Saturday</span> <input
																			type="checkbox" disabled id="holiday7" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>


															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInternalCommunication">Internal
																		communication information (private) </span>
																</div>
																<div>
																	<textarea type="text" disabled id="companyRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorInternalCommunication" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDetailsOfImplementation"> (S)
																		Details of implementation information (for
																		publication) </span>
																</div>
																<div>
																	<input type="text" readonly
																		id="detailsOfImplementation" class="form-control"
																		maxlength="255"
																		placeholder="[Clothing] [What to bring]">
																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>


															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">

																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonAssignStaff" data-toggle="modal"
																	data-target="#assignStaffModal">Assign Staff</button>
															</div>
															

															<div class="m-3 pt-2">


																<div class="row">
																	<div class="pl-2 pr-2" id="requiredNoNotify" style="color: red;"></div>

																	<div class="col-lg-12 col-md-12 pl-2 pr-2 pt-1">
																		<h5>
																			<i class="i-File-Clipboard-File--Text cursor-pointer"
																				role="generic"></i> <span
																				id="pageSpanSearchCaseList"> Staff List</span>
																		</h5>

																	</div>

																	<div class="col-lg-12 col-md-12 pl-2 pr-2">
																		<span id="pageSpanAfterConfirmationNote">After
																			confirming the assigned staff, select the staff name
																			in the assigned staff column and send the "Case
																			assignment email".</span>
																	</div>

																</div>

																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered hover"
																		id="assigned_staff_table" style="width: 65%">
																		<thead>
																			<tr>
																				<th class="TableTHMinWidth text-center"
																					style="background: rgb(208, 226, 241); color: #647a8e;"
																					id="tableSearchTHAssignStaff">Assign Staff</th>
																	
																			</tr>
																		</thead>
																		<tbody id="tbodyId">
																			<!--   <tr>
                                                                            <td>&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            </tr> -->
																		</tbody>

																	</table>

																</div>

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

												<div id="WorkLocationInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNearestStationTo"> (S) Nearest
																		station to the venue </span>
																</div>
																<div>
																	<input type="text" disabled id="NearestStation"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorNearestStation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMeetingPlace"> (S) Meeting
																		place </span>
																</div>
																<div>
																	<input type="text" disabled id="MeetingPlace"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMeetingPlace" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOfficeName"> Office Name </span>
																</div>
																<div>
																	<input type="text" disabled id="OfficeName" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorOfficeName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOrganizationName">
																		Organization name </span>
																</div>
																<div>
																	<input type="text" disabled id="OrganizationName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorOrganizationName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocation"> (S) Work
																		Location </span> 
																</div>
																<div>
																	<input type="text" disabled id="workLocation"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkLocation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkAddress">(S) Work Address
																		(including contact information)</span>
																</div>
																<div>
																	<input type="text" disabled id="WorkAddress"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkAddress" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryUnitPrice">Salary unit
																		price</span> 
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanProjectUnitPrice">Project unit price</span> 
																			<input type="radio" disabled id="salaryUnitPriceRadio1" name="OccupationClassi" value="1"> 
																			<span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanStaffUnitPrice">Staff unit price</span> 
																			<input type="radio" disabled id="salaryUnitPriceRadio2" name="OccupationClassi" value="1">
																			 <span class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorSalaryUnitPrice" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBasicSalary">Basic Salary
																		(hourly wage)</span> 
																</div>
																<div>
																	<input type="text" id="basicSalary" disabled class="form-control" maxlength="255">
																</div>
																<div id="errorBasicSalary" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBilledAmount">Billed Amount
																		(for 1 person, hourly wage)</span>
																</div>
																<div>
																	<input type="text" id="billedAmount" disabled class="form-control" maxlength="255">
																</div>
																<div id="errorBilledAmount" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBillingUnitPriceSetting">Billing
																		Unit Price Setting</span>
																</div>
																<div>
																	<Select disabled id="billingUnitPriceSetting"
																		class="form-control">
																		<option value="" id=""></option>
																		<option value="1"
																			id="billingUnitPriceSettingDailySalary">Daily
																			Salary</option>
																		<option value="2"
																			id="billingUnitPriceSettingHourlyWage">Hourly
																			Wage</option>
																		<option value="2"
																			id="billingUnitPriceSettingFullMonthlySalary">Full
																			Monthly Salary</option>
																		<option value="2"
																			id="billingUnitPriceSettingDailySalaryMonthly">Daily
																			Salary Monthly Salary</option>
																	</Select>
																</div>
																<div id="errorBillingUnitPriceSetting"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocationTransportation">Work
																		Location Transportation </span>
																</div>
																<div>
																	<input type="text" disabled id="WorkLocationTransportation"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkLocationTransportation"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationArrivalTime">Station
																		Arrival Time </span>
																</div>
																<div>
																	<input type="time" disabled id="StationArrivalTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationMeetingTime">Meeting
																		Time </span>
																</div>
																<div>
																	<input type="time" disabled id="StationMeetingTime" class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationScheduledStartTime">Scheduled
																		Start Time </span>
																</div>
																<div>
																	<input type="text" disabled id="StationScheduledStartTime" class="form-control" maxlength="5">
																</div>
																<div id="errorScheduledStartTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationScheduledEndTime">Scheduled
																		End Time </span>
																</div>
																<div>
																	<input type="text" disabled id="StationScheduledEndTime" class="form-control" maxlength="5">
																</div>
																<div id="errorScheduledEndTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationScheduledActualWorkTime">Scheduled
																		actual work time </span>
																</div>
																<div>
																	<input type="time" disabled id="StationScheduledActualWorkTime" class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanScheduleBreaktimeTime">Scheduled
																		break time </span>
																</div>
																<div>
																	<input type="time" disabled id="ScheduleBreaktimeTime" class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDepartureTime">Scheduled
																		departure time </span>
																</div>
																<div>
																	<input type="time" disabled id="DepartureTime" class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightBreakingTime">
																		(Inside) Scheduled midnight break time </span>
																</div>
																<div>
																	<input type="time" disabled id="MidnightBreakingTime" class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">

																<div>
																	<span id="pageSpanStationDescriptionTime">
																		Scheduled start and end times are references for
																		hourly wage calculation. Input correctly. If the
																		scheduled break time includes the midnight time zone
																		(22: 00-05: 00), enter it in the (inside) midnight
																		break scheduled time. If the scheduled actual work
																		time is not entered, the overtime, midnight work, and
																		holiday work hours will not be calculated correctly
																		and will not be calculated automatically. </span>

																</div>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkRemarks">(S) Work remarks
																		(break time, etc.) </span>
																</div>
																<div>
																	<textarea disabled type="text" id="WorkRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorRemarks" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimePaymentUnit">Overtime
																		payment unit</span>
																</div>
																<div>
																	<Select disabled id="overtimePaymentUnit" class="form-control">
																		<option value="" id="optionOvertimePaymentUnit"></option>
																		<option value="1" id="optionOvertimePaymentUnitDaily">Daily</option>
																	</Select>
																</div>
																<div id="errorBillingUnitPriceSetting"
																	style="color: red;"></div>
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
															data-target="#NotificationOfWorkingConditions"
															aria-expanded="false"
															aria-controls="WorkLocationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionNotificationOfWorkingConditions">Notification
																	of working conditions and explicit information on
																	working conditions</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="NotificationOfWorkingConditions" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">


															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">

																<div>
																	<span id="pageSpanWorkRemarksNote">It is applied
																		to the notification of working conditions and the
																		statement of working conditions. Please fill in within
																		the range stipulated by law. </span>

																</div>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">Midnight
																		/ overtime / holiday allowance </span>
																</div>
																<div>
																	<textarea type="text" disabled
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaymentTerms"> Payment terms </span>
																</div>
																<div>
																	<textarea disabled type="text" id="PaymentTerms"
																		class="form-control"></textarea>
																</div>
																<div id="errorPaymentTerms" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAnnualPaidLeave"> Annual paid
																		leave </span>
																</div>
																<div>
																	<textarea disabled type="text" id="annualPaidLeave"
																		class="form-control"></textarea>
																</div>
																<div id="errorAnnualPaidLeave" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimeHolidayWork"> Overtime
																		/ holiday work </span>
																</div>
																<div>
																	<textarea disabled type="text" id="overtimeHolidayWork"
																		class="form-control"></textarea>
																</div>
																<div id="errorOvertimeHolidayWork" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSafetyAndHygiene"> Safety and
																		hygiene </span>
																</div>
																<div>
																	<textarea disabled type="text" id="safetyAndHygiene"
																		class="form-control"></textarea>
																</div>
																<div id="errorSafetyAndHygiene" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentStabilizationMeasures">
																		Employment stabilization measures for dispatched
																		workers taken by canceling the dispatch contract </span>
																</div>
																<div>
																	<textarea disabled type="text"
																		id="employmentStabilizationMeasures"
																		class="form-control"></textarea>
																</div>
																<div id="errorEmploymentStabilization"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanGrievanceRelatedMatters">
																		Grievance related matters </span>
																</div>
																<div>
																	<textarea disabled type="text" id="grievanceRelatedMatters"
																		class="form-control"></textarea>
																</div>
																<div id="errorGrievanceRelatedMatters"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanReasonForNotSubmittingEmployment">
																		Reason for not submitting employment / social
																		insurance insured qualification notification</span>
																</div>
																<div>
																	<textarea disabled type="text"
																		id="reasonForNotSubmittingEmployment"
																		class="form-control"></textarea>
																</div>
																<div id="errorReasonForNotSubmittingEmployment"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanUseOfWelfareFacilities"> Use
																		of welfare facilities, etc.</span>
																</div>
																<div>
																	<textarea disabled type="text" id="useOfWelfareFacilities"
																		class="form-control"></textarea>
																</div>
																<div id="errorUseOfWelfareFacilities"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRetirementRelatedMatters">
																		Retirement related matters </span>
																</div>
																<div>
																	<textarea disabled type="text" id="retirementRelatedMatters"
																		class="form-control"></textarea>
																</div>
																<div id="errorRetirementRelatedMatters"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanContractRenewalRelated">
																		Contract renewal related matters </span>
																</div>
																<div>
																	<textarea disabled type="text" id="contractRenewalRelated"
																		class="form-control"></textarea>
																</div>
																<div id="errorContractRenewalMatters"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConflictPreventionMeasures">
																		Conflict prevention measures for direct employment of
																		dispatched workers </span>
																</div>
																<div>
																	<textarea disabled type="text" id="conflictPreventionMeasures"
																		class="form-control"></textarea>
																</div>
																<div id="errorConflictPreventionMeasures"
																	style="color: red;"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks1"> Remarks </span>
																</div>
																<div>
																	<textarea disabled type="text" id="workConditionRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorRemarksNotification" style="color: red;"></div>
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
						 <div class="loading" id="loaderNotify"  style="display: none;"> 
						 <div class="spinner-bubble spinner-bubble-primary m-7"></div>
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
	<!--  Modal 1  -->
	<!-- wishwa -->
	<!--  Modal for Assignment of Staff -->
	<div class="modal fade" id="assignStaffModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-wider" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Search Staff and Assign</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-xl-12 ">
							<div class="row ">
								<div class="col-lg-12 col-md-12 col-sm-12">
									<!-- <div class="card SearchBox"> -->
									<div class="card  SearchCardDiv">
										<div class="card-body">
											<div class="card-title">
												<i class="fa fa-search text-18" role="generic"></i><span
													id="pageSpanStaffList"> Staff List</span>
											</div>
											<form id="searchForm" method="post">
												<div class="row">

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="dispatchClassification"
															id="pageLabelDispatchClassification">Dispatch Classification</label>
														<div class="input-group">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-clone"></i>
																</div>
															</div>
															<select id="dispatchClassificationDropDown"
																name="dispatchClassification" class="form-control"
																role="combobox">
																<option value=""
																	id="selectOptionSelectDispatchClassification">Select
																	Dispatch Classification</option>
																<option value="1" id="pageSpanGeneralDispatch">General
																	dispatch</option>
																<option value="2" id="pageSpanBusinessContract">Out
																	Sourcing</option>
																<option value="3" id="pageSpanIntroductionDispatching">Temp
																	-to- Perm</option>
																<option value="4" id="pageSpanRecruitment">Talent
																	Introduction/Recruiting/Placement</option>
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
															<select id="occupationClassificationDropDown"
																name="occupationClassification" class="form-control"
																role="combobox">
																<option value=""
																	id="selectOptionSelectOccupationClassification">Select
																	Occupation Classification</option>
																<option value="1" id="pageSpanOfficeSystem">Office
																	system</option>
																<option value="2" id="pageSpanSalesSystem">Slaes/sales
																	system</option>
																<option value="3" id="pageSpanITCreative">IT /
																	Creative</option>
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
														<label for="quotationNumber" id="pageLabelBelongs">
															Belongs</label>
														<div class="input-group ">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-file "></i>
																</div>
															</div>
															<input id="belongs" name="quotationNumber"
																placeholder="Enter Belongs" class="form-control"
																role="textbox">

														</div>
														<div id="errorCustomerName" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="staffName" id="pageLabelStaffName">
															Staff Name</label>
														<div class="input-group ">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-file "></i>
																</div>
															</div>
															<input id="staffName" name="staffName"
																placeholder="Enter Staff Name" class="form-control"
																role="textbox">

														</div>
														<div id="errorCustomerName" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="gender" id="staffGender"> Gender</label>
														<div>
															<div class="input-group ">
																<div class="input-group-prepend">
																	<div class="input-group-text bg">
																		<i class="fa fa-venus-mars "></i>
																	</div>
																</div>
																<Select id="gender" class="form-control">
																	<option value="" id="optionSelectGender">Select Gender</option>
																	<option value="1" id="optionMale">Male</option>
																	<option value="2" id="optionFemale">Female</option>
																</Select>
															</div>
														</div>
														<div id="errorStaffGender" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="salesAssignmentClassification"
															id="pageLabelPrefectures"> Prefectures</label>
														<div>
															<div class="input-group">
																<div class="input-group-prepend">
																	<div class="input-group-text bg">
																		<i class="far fa-map"></i>
																	</div>
																</div>
																<select id="prefectures" name="prefectures"
																	class="form-control" role="combobox">
																	<option value="" id="pageOption0Prefecture">Select
																			Prefecture</option>
																		<option value="1" data-Prefecture="北海道"
																			id="pageOption1Prefecture">Hokkaido</option>
																		<option value="2" data-Prefecture="青森県"
																			id="pageOption2Prefecture">Aomori</option>
																		<option value="3" data-Prefecture="岩手県"
																			id="pageOption3Prefecture">Iwate</option>
																		<option value="4" data-Prefecture="宮城県"
																			id="pageOption4Prefecture">Miyagi</option>
																		<option value="5" data-Prefecture="秋田県"
																			id="pageOption5Prefecture">Akita</option>
																		<option value="6" data-Prefecture="山形県"
																			id="pageOption6Prefecture">Yamagata</option>
																		<option value="7" data-Prefecture="福島県"
																			id="pageOption7Prefecture">Fukushima</option>
																		<option value="8" data-Prefecture="茨城県"
																			id="pageOption8Prefecture">Ibaraki</option>
																		<option value="9" data-Prefecture="栃木県"
																			id="pageOption9Prefecture">Tochigi</option>
																		<option value="10" data-Prefecture="群馬県"
																			id="pageOption10Prefecture">Gunma</option>
																		<option value="11" data-Prefecture="埼玉県"
																			id="pageOption11Prefecture">Saitama</option>
																		<option value="12" data-Prefecture="千葉県"
																			id="pageOption12Prefecture">Chiba</option>
																		<option value="13" data-Prefecture="東京都"
																			id="pageOption13Prefecture">Tokyo</option>
																		<option value="14" data-Prefecture="神奈川県"
																			id="pageOption14Prefecture">Kanagawa</option>
																		<option value="15" data-Prefecture="新潟県"
																			id="pageOption15Prefecture">Niigata</option>
																		<option value="16" data-Prefecture="富山県"
																			id="pageOption16Prefecture">Toyama</option>
																		<option value="17" data-Prefecture="石川県"
																			id="pageOption17Prefecture">Ishikawa</option>
																		<option value="18" data-Prefecture="福井県"
																			id="pageOption18Prefecture">Fukui</option>
																		<option value="19" data-Prefecture="山梨県"
																			id="pageOption19Prefecture">Yamanashi</option>
																		<option value="20" data-Prefecture="長野県"
																			id="pageOption20Prefecture">Nagano</option>
																		<option value="21" data-Prefecture="岐阜県"
																			id="pageOption21Prefecture">Gifu</option>
																		<option value="22" data-Prefecture="静岡県"
																			id="pageOption22Prefecture">Shizuoka</option>
																		<option value="23" data-Prefecture="愛知県"
																			id="pageOption23Prefecture">Aichi</option>
																		<option value="24" data-Prefecture="三重県"
																			id="pageOption24Prefecture">Mie</option>
																		<option value="25" data-Prefecture="滋賀県"
																			id="pageOption25Prefecture">Shiga</option>
																		<option value="26" data-Prefecture="京都府"
																			id="pageOption26Prefecture">Kyoto</option>
																		<option value="27" data-Prefecture="大阪府"
																			id="pageOption27Prefecture">Osaka</option>
																		<option value="28" data-Prefecture="兵庫県"
																			id="pageOption28Prefecture">Hyogo</option>
																		<option value="29" data-Prefecture="奈良県"
																			id="pageOption29Prefecture">Nara</option>
																		<option value="30" data-Prefecture="和歌山県"
																			id="pageOption30Prefecture">Wakayama</option>
																		<option value="31" data-Prefecture="鳥取県"
																			id="pageOption31Prefecture">Tottori</option>
																		<option value="32" data-Prefecture="島根県"
																			id="pageOption32Prefecture">Shimane</option>
																		<option value="33" data-Prefecture="岡山県"
																			id="pageOption33Prefecture">Okayama</option>
																		<option value="34" data-Prefecture="広島県"
																			id="pageOption34Prefecture">Hiroshima</option>
																		<option value="35" data-Prefecture="山口県"
																			id="pageOption35Prefecture">Yamaguchi</option>
																		<option value="36" data-Prefecture="徳島県"
																			id="pageOption36Prefecture">Tokushima</option>
																		<option value="37" data-Prefecture="香川県"
																			id="pageOption37Prefecture">Kagawa</option>
																		<option value="38" data-Prefecture="愛媛県"
																			id="pageOption38Prefecture">Ehime</option>
																		<option value="39" data-Prefecture="高知県"
																			id="pageOption39Prefecture">Kochi</option>
																		<option value="40" data-Prefecture="福岡県"
																			id="pageOption40Prefecture">Fukuoka</option>
																		<option value="41" data-Prefecture="佐賀県"
																			id="pageOption41Prefecture">Saga</option>
																		<option value="42" data-Prefecture="長崎県"
																			id="pageOption42Prefecture">Nagasaki</option>
																		<option value="43" data-Prefecture="熊本県"
																			id="pageOption43Prefecture">Kumamoto</option>
																		<option value="44" data-Prefecture="大分県"
																			id="pageOption44Prefecture">Oita</option>
																		<option value="45" data-Prefecture="宮崎県"
																			id="pageOption45Prefecture">Miyazaki</option>
																		<option value="46" data-Prefecture="鹿児島県"
																			id="pageOption46Prefecture">Kagoshima</option>
																		<option value="47" data-Prefecture="沖縄県"
																			id="pageOption47Prefecture">Okinawa</option>
																</Select>
															</div>
														</div>
														<div id="errorAssignmentClassification"
															style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="quotationNumber" id="pageLabelExperience">Experience</label>
														<div class="input-group ">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-file "></i>
																</div>
															</div>
															<input id="experience" name="caseNumber"
																placeholder="Enter Experience" class="form-control"
																role="textbox">

														</div>
														<div id="errorCaseNumber" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="salesAssignmentClassification"
															id="pageLabelStaffStaff"> In Charge Staff</label>
														<div>
															<div class="input-group">
																<div class="input-group-prepend">
																	<div class="input-group-text bg">
																		<i class="far fa-user"></i>
																	</div>
																</div>
																<Select id="inChargeStaff" class="form-control">
																	<option value="" id="selectInchargeStaff">Select In Charge Staff</option>
																	
																</Select>
															</div>
														</div>
														<div id="errorAssignmentClassification"
															style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="quotationNumber" id="pageLabelAddress">
															Address</label>
														<div class="input-group ">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-file "></i>
																</div>
															</div>
															<input id="address" name="quotationNumber"
																placeholder="Enter Address" class="form-control"
																role="textbox">

														</div>
														<div id="errorCustomerName" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="quotationNumber" id="pageLabelAttribute">
															Attribute</label>
														<div class="input-group ">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-file "></i>
																</div>
															</div>
															<Select id="attributeW" name="attributeW"
																		class="form-control">
																		<option value=""
																			id="pageOption0AttributeClassification1">Select
																			Attribute classification</option>
																		<option value="1"
																			id="pageOption1AttributeClassification1">
																			Inhouse</option>
																		<option value="2"
																			id="pageOption2AttributeClassification1">Out
																			Sourcing</option>
																	</Select>

														</div>
														<div id="errorCustomerName" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="ImplementationPeriodStart"
															id="pageLabelDateofbirthFrom">Date of birth From</label>

														<div>
															<input type="date" id="dateOfBirthFrom"
																class="form-control">
														</div>
														<div id="errorDateofBirthFrom" class="RequiredStar"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="ImplementationPeriodEnd"
															id="pageLabelDateOfBirthTo"> Date of birth To</label>

														<div>
															<input type="date" id="dateOfBirthTo"
																class="form-control">
														</div>
														<div id="errorDateOfBirthTo" class="RequiredStar"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="ThePersonInCharge"
															id="pageLabelSalaryPaymentForm"> Salary payment
															form</label>

														<div>
															<div class="input-group ">
																<div class="input-group-prepend">
																	<div class="input-group-text bg">
																		<i class="far fa-file "></i>
																	</div>
																</div>
																<Select id="salaryPaymentForm" class="form-control">
																	<option value="" id="selectSalaryPaymentForm">Select Salary Payment
																		Form</option>
																	<option value="1" id="selectDaily">Daily/Weekly Payment</option>
																	<option value="2" id="selectMonthly">Monthly Payment</option>
																</Select>
															</div>
														</div>
														<div id="errorSalaryPaymentForm" style="color: red;"></div>
													</div>

													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="projectTitle" id="pageLabelQualification">
															Qualification</label>
														<div class="input-group">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-building"></i>
																</div>
															</div>
															<input id="qualification" name="projectTitle"
																placeholder="Enter Qualification" class="form-control"
																role="textbox">
														</div>
														<div id="errorStaffCode" style="color: red;"></div>
													</div>
													<div class="col-lg-4 col-md-6 pl-2 pr-2">
														<label for="registrationDevision"
															id="pageLabelRegistrationDivision">Registration
															Division</label>
														<div class="input-group">
															<div class="input-group-prepend">
																<div class="input-group-text bg">
																	<i class="far fa-registered"></i>
																</div>
															</div>
															<select id="registrationDevision"
																name="registrationDevision" class="form-control"
																role="combobox">
																<option value=""
																	id="selectOptionSelectRegistrationDevision">Select
																	Registration Division</option>
																<option value="1"
																	id="selectOptionSelectRegistrationDevision1"> Temporary 
																	registration</option>
																<option value="2"
																	id="selectOptionSelectRegistrationDevision2">Main
																	registration</option>
															</select>
														</div>
														<div id="errorRegistrationDevision" style="color: red;"></div>
													</div>

												</div>
												<div class="row pt-1 pr-2 ContentRight">
													<button id="clearAllBtn"
														class="btn btn-danger SearchButton-2  mr-1" role="button"
														type="reset">Clear All</button>
													<button id="searchBtn"
														class="btn btn-info SearchButton-2   ml-0 mr-0"
														role="button">Search</button>

												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						 <div class="loading" id="loaderNotify2"  style="display: none;"> 
						 <div class="spinner-bubble spinner-bubble-primary m-7"></div>
                         </div>
					</div>

					<div class="row">
						<div class="col-lg-12 col-xl-12 ">



							<div class="card mt-2">
								<div class="card-body">
									<div class="card-title">

										<div class="row">

											<div class="col-lg-6 col-md-6 pl-2 pr-2">
												<i class="i-File-Clipboard-File--Text cursor-pointer"
													role="generic"></i> <span id="pageSpanSearchTargetStaff">
													Target Staff</span>

											</div>

										</div>


									</div>
									<div class="table-responsive">
										<table
											class="display table table-striped table-bordered hover"
											id="search_tableStaffSearchResult" style="width: 100%">
											<thead>
												<tr class="thClass">
													<th style="background: rgb(245, 249, 253); color: #647a8e;"
														id="tableSearchTHNo">No</th>
													<th style="background: rgb(245, 249, 253); color: #647a8e;"
														id="tableSearchTHChoice">Choice</th>
													<th class="color-1"
														style="background: rgb(208, 226, 241); color: #647a8e;"
														id="tableSearchTHStaff">Staff</th>
													<th class="color-1"
														style="background: rgb(208, 226, 241); color: #647a8e;"
														id="tableSearchTHDispatchClassification">Dispatch
														/occupation/ affiliation</th>
													<th class="TableTHMinWidth text-center"
														style="background: rgb(208, 226, 241); color: #647a8e;"
														id="tableSearchTHExperience">Experience / Shift
														remarks</th>
													<th class="TableTHMinWidth text-center"
														style="background: rgb(208, 226, 241); color: #647a8e;"
														id="tableSearchTHPrefecture">Prefecture / Address /
														Nearest station</th>
													<th class="TableTHMinWidth text-center"
														style="background: rgb(208, 226, 241); color: #647a8e;"
														id="tableSearchTHAssignOther">Assign other projects</th>


												</tr>
											</thead>
											<tbody id="tbodyIdStaffSearchResult">
												<tr>
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

									</div>
								</div>
							</div>

							<!-- <div class="card m-3">
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
															class="btn btn-danger DefaultButton" role="button"
															onclick="batchDelete();">
															<span id="buttonSpanBatchDeletion">Batch Deletion</span>
														</button>
													</div>
												</div>
											</div>
										</div> -->

						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info ml-2 pr-2" type="button"
						onclick="TemporarilyAddStaff()"
						id="btnTemporarilyAddSelectedStaff">Temporarily add
						selected staff</button>
				</div>
			</div>
		</div>
	</div>

	<span id="spanScriptID"></span>

	<script src="./dist-assets/js/language_main.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"assignment");
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


	<script src="./dist-assets/js/assignment-for-cases-validate.js"></script>


	<script>
		////////////////// 
        const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const caseId = localStorage.getItem('caseID');
		localStorage.removeItem("implementDate");
		const implementationId = localStorage.getItem('implementationIDDetails');
		var requiredNoStaff = 0; // Uvindu
		var assignedNo = 0; // Uvindu
		const role = localStorage.getItem("userRole");

		let dataSet = '{"id" :' + caseId + '}';
		let dataNode = '{"id" :' + implementationId + '}';
		let dataPass = '{"implementationId" :' + implementationId + '}';

		$(document).ready(function() {
			
               let dataNodeIncharge = '{"id" : 0, "authority": '+role+ '}';
			
			$.ajax({
				beforeSend : function(request) {
					document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Employee/GetInchargeOfStaff',
				method : 'POST',
				contentType : 'application/json',
				data : dataNodeIncharge,
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						var select  = document.getElementById('inChargeStaff');
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

							drawDtataTable(lan);

							//bankTransferLoad();

							$("#staffPaymentMethod").change(function() {
								bankTransferLoad();
							});

							$.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP + 'Case/ViewCaseInfo',
										method : 'POST',
										contentType : 'application/json',
										data : dataSet,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												getCaseInfo(result);
											
												sessionStorage.setItem("assignmentClassification",result.data.assignmentClassification);
												document.getElementById("AssignmentClassificationId").value = result.data.assignmentClassification;
											} else {
												console.log("Sorry getQuotationInfo error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/ViewDetailOfCases',
										method : 'POST',
										contentType : 'application/json',
										data : dataPass,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												getDetailCaseInfo(result);
											} else {
												console.log("Sorry getQuotationInfo error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$
									.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/ViewImplementationDetail',
										method : 'POST',
										contentType : 'application/json',
										data : dataNode,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												getImplementationInfo(result);
												console.log(result.data.startImplementationDate);
												localStorage.setItem("implementDate", result.data.startImplementationDate);
											} else {
												console
														.log("Sorry getQuotationInfo error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$
									.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/ViewWorkLocationDetail',
										method : 'POST',
										contentType : 'application/json',
										data : dataPass,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												getWorkLocation(result);
											} else {
												console
														.log("Sorry getQuotationInfo error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$
									.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/ViewWorkingCondition',
										method : 'POST',
										contentType : 'application/json',
										data : dataPass,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												getWorkingCondition(result);
											} else {
												console
														.log("Sorry getQuotationInfo error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							inhouseStaffList = "";
							outsourcingStaffList = "";
							$
									.ajax({
										beforeSend : function(request) {
											document.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",GUID);
										},
										url : serverHTTP + 'Assignment/GetStaffInfo',
										method : 'POST',
										contentType : 'application/json',
										data : dataPass,
										dataType : 'json',
										async : false,
										success : function(result, status,request) {
											let newTableRow = "";
											if (result.status == 200) {
												for (w = 0; w < result.data.length; w++) {
													if (result.data[w].attributeClassification == "1") {
														newTableRow = '<tr>'
																+ '<td><a style="color:black;text-decoration: underline;" onclick="loadUserImplementation('
																+ implementationId
																+ ','
																+ result.data[w].staffId
																+ ')"> '
																+ result.data[w].name
																+ '</a></td>'
																+ '</tr>';
													} else if (result.data[w].attributeClassification == "2") {
														newTableRow = '<tr>'
																+ '<td><a style="color:black;text-decoration: underline;" onclick="loadUserImplementation('
																+ implementationId
																+ ','
																+ result.data[w].staffId
																+ ')"> '
																+ result.data[w].name
																+ '</a></td>'							
																+ '</tr>';
													}
													$(
															"#assigned_staff_table tbody")
															.append(newTableRow);
												}

											} else {
												console
														.log("GetStaffInfo error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});
							

						});
		
		
		function addSkillSheetRow(){
			var $tr = $("#SkillSheetTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdSkillSheet").append($clone);
		}

		function removeSkillSheetRow(element) {
			if ($('#skill_sheet_information_table tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "Sorry can not remove this row!");
			}
		}

		function clearRow(element) {
			var $tr = $(element).closest('tr');
			$tr.find('input').val('');
		}


		function loadUserImplementation(implementationID, userID) {
			localStorage.setItem("implementationIDDetails", implementationID);
			localStorage.setItem("userIDDetails", userID);
			window.location.href = "assignment-details.jsp";
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

		function runSearch() {

			var dispatchClassification = document
					.getElementById("dispatchClassificationDropDown").value;
			var occupationClassification = document
					.getElementById("occupationClassificationDropDown").value;

			var templateNameReqNode = {};
			
			templateNameReqNode['belong'] = document.getElementById("belongs").value.trim() != "" ? document.getElementById("belongs").value.trim() : null;
			templateNameReqNode['name'] = document.getElementById("staffName").value.trim() != "" ? document.getElementById("staffName").value.trim() : null;
			templateNameReqNode['gender'] = document.getElementById("gender").value != "" ? parseInt(document.getElementById("gender").value): null;
			templateNameReqNode['prefecture'] = document.getElementById("prefectures").value != "" ? parseInt(document.getElementById("prefectures").value): null;
			templateNameReqNode['experienceType'] = document.getElementById("experience").value.trim() != "" ? document.getElementById("experience").value.trim() : null;
			templateNameReqNode['staffInCharge'] = document.getElementById("inChargeStaff").value.trim() != "" ? document.getElementById("inChargeStaff").value.trim(): null;
			templateNameReqNode['addressLine'] = document.getElementById("address").value.trim() != "" ? document.getElementById("address").value.trim() : null;
			//templateNameReqNode['attribute'] = document.getElementById("attributeStaff").value != "" ? parseInt(document.getElementById("attributeStaff").value) : null;					
			templateNameReqNode['attribute'] = document.getElementById("attributeW").value != "" ? parseInt(document.getElementById("attributeW").value) : null;					
					
			templateNameReqNode['dobTo'] = document.getElementById("dateOfBirthTo").value != "" ? document.getElementById("dateOfBirthTo").value : null;
			templateNameReqNode['dobFrom'] = document.getElementById("dateOfBirthFrom").value != "" ? document.getElementById("dateOfBirthFrom").value : null;
			templateNameReqNode['salaryPaymentForm'] = document.getElementById("salaryPaymentForm").value != "" ? parseInt(document.getElementById("salaryPaymentForm").value): null;
			templateNameReqNode['qualification'] = document.getElementById("qualification").value != "" ? document.getElementById("qualification").value: null;

			templateNameReqNode['dispatchClassification1'] = dispatchClassification == 1 ? 1: null;
			templateNameReqNode['dispatchClassification2'] = dispatchClassification == 2 ? 1: null;
			templateNameReqNode['dispatchClassification3'] = dispatchClassification == 3 ? 1: null;
			templateNameReqNode['dispatchClassification4'] = dispatchClassification == 4 ? 1: null;
			templateNameReqNode['dispatchClassification5'] = null;

			templateNameReqNode['occupationClassification1'] = occupationClassification == 1 ? 1: null;
			templateNameReqNode['occupationClassification2'] = occupationClassification == 2 ? 1: null;
			templateNameReqNode['occupationClassification3'] = occupationClassification == 3 ? 1: null;
			templateNameReqNode['occupationClassification4'] = occupationClassification == 4 ? 1: null;
			templateNameReqNode['occupationClassification5'] = occupationClassification == 5 ? 1: null;
			templateNameReqNode['occupationClassification6'] = occupationClassification == 6 ? 1: null;
			templateNameReqNode['occupationClassification7'] = occupationClassification == 7 ? 1: null;
			templateNameReqNode['occupationClassification8'] = occupationClassification == 8 ? 1: null;
			templateNameReqNode['occupationClassification9'] = null;

			templateNameReqNode['registrationDivision'] =  document.getElementById("registrationDevision").value.trim()!="" ? parseInt(document.getElementById("registrationDevision").value) : null ;
			let registrationDivision = document.getElementById("registrationDevision").value.trim()!="" ? parseInt(document.getElementById("registrationDevision").value) : null ;
			 templateNameReqNode['implementId'] =  implementationId ; 


			$.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify2").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Assignment/SearchAssignStaffInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(templateNameReqNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 200) {
								showSearchResult(result, request,registrationDivision);
							} else {
								
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify2").style.display = "none";
						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});
		}
		// });

		function showSearchResult(result, request,registrationDivision) {

			if (result.data.length > 0) {
				if (table != null) {
					table.destroy();
				}
				$("#tbodyIdStaffSearchResult").empty();
			}
			for (i = 0; i < result.data.length; i++) {

				dispatchClassification1Value = result.data[i].dispatchClassification1 == 1 ? ""
						+ dispatchClassificationArray[1]
						: ""; //AM009 
				dispatchClassification2Value = result.data[i].dispatchClassification2 == 1 ? " / "
						+ dispatchClassificationArray[2]
						: "";
				dispatchClassification3Value = result.data[i].dispatchClassification3 == 1 ? " / "
						+ dispatchClassificationArray[3]
						: "";
				dispatchClassification4Value = result.data[i].dispatchClassification4 == 1 ? " / "
						+ dispatchClassificationArray[4]
						: "";
				dispatchClassification5Value = result.data[i].dispatchClassification5 == 1 ? " / "
						+ dispatchClassificationArray[5]
						: ""; // AM009 

				//searchPrefecture = prefectureArray[pageLanguage][result.data[i].prefecture] != undefined ? prefectureArray[pageLanguage][result.data[i].prefecture] :"";

				//to get assigned other projects
				$.ajax({
							beforeSend : function(request) {
								//document.getElementById("loaderNotify").style.display = "";
								request.setRequestHeader("GUID", GUID);
							},
							url : serverHTTP
									+ 'Assignment/GetAssignStaffOtherInfo',
							method : 'POST',
							contentType : 'application/json',
							data : JSON.stringify({
								"id" : 51
							}),
							dataType : 'json',
							async : false,
							success : function(result, status, request) {
								if (result.status == 200) {
									for (w = 0; w < result.data.length; w++) {
										if (result.data[w].attributeClassification == "1") {
											inhouseStaffList = inhouseStaffList
													+ " <br/><span style='color:black;text-decoration: underline;' '> "
													+ result.data[w].name
													+ "</span>";
										} else if (result.data[w].attributeClassification == "2") {
											outsourcingStaffList = outsourcingStaffList
													+ " <br/><span style='color:black;text-decoration: underline;'> "
													+ result.data[w].name
													+ "</span>";
										}

									}
								} else {
									console.log("GetStaffInfo error");
								}
							},
							complete : function(data) {
								//document.getElementById("loaderNotify").style.display = "none";
							},
							error : function(error) {
								console.log(JSON.stringify(error));
							}
						});

				experienceType1 = result.data[i].experienceType1 != null ? result.data[i].experienceType1
						: "-"; // AM005
				searchPrefecture = prefectureArray[result.data[i].prefecture] != undefined ? prefectureArray[result.data[i].prefecture]
						: "-"; // AM005
				addressLine1 = result.data[i].addressLine1 != null ? result.data[i].addressLine1
						: "-"; // AM005
				nearestStationVal = result.data[i].nearestStation != null ? result.data[i].nearestStation
						: "-"; // AM005

				let checkboxSection = ""
				
				if(registrationDivision != 1){
					checkboxSection = '<label class="container">'
									+ '<input type="checkbox" id="implementationDuplicateSelection" name="implementationDuplicateSelection[]" class="tableCheckClass" value="'+result.data[i].id+'">'
									+ ' <span class="checkmark"></span>'
									+ '</label>'
				}
						
				let newRow = '<tr id="SkillSheetTrId">'
						+ '<input type="hidden" value="'+result.data[i].id+'"  name="staffId[]" >'
						+ '<td style="width: 5%;">'
						+ (i + 1)
						+ '</td>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e; width: 5%;">'
						+checkboxSection
						+ '</td>'
						+ '<td>'
						+ result.data[i].name
						+ '</td>'
						+ '<td>'
						+ dispatchClassification1Value
						+ dispatchClassification2Value
						+ dispatchClassification3Value
						+ dispatchClassification4Value
						+ dispatchClassification5Value
						+ '</td>'
						+ '<td>'
						+ experienceType1
						+ ' / '
						+ experienceType1
						+ '</td>'
						+ '<td>'
						+ searchPrefecture
						+ ' / '
						+ addressLine1
						+ ' / '
						+ nearestStationVal
						+ '</td>'
						+ '<td>project data</td>' + '</tr>';

				$("#search_tableStaffSearchResult tbody").append(newRow);
			}
			drawDtataTable(getSiteLanguage(), "#search_tableStaffSearchResult");
		}

		function TemporarilyAddStaff() {
			$("#tBodyBatchDelete").empty();
			const tableCheckNode = document
					.querySelectorAll('input[name="implementationDuplicateSelection[]"]:checked');
			
			if (tableCheckNode.length == 0) {
				showSystemMessage('info', "N0000");
			}else if((tableCheckNode.length + assignedNo)  > requiredNoStaff){
				showMessage('info', "N1276"); // Add New Error Code
			}else {
				let dataPassNode = {};
				var temporaryAssignStaffInfoDtoList = [];

				for (i = 0; i < tableCheckNode.length; i++) {
					parentRow = $(tableCheckNode[i]).closest('tr');

					// $("#loadTest").append(parentRow);
					//tNo = parentRow.find("td:eq(1)").text();
					tName = parentRow.find("td:eq(2)").text();
					userId = parentRow.find("input:checkbox").val();

					var tempAssignStaffIdList = {
						"staffId" : userId
					}
					temporaryAssignStaffInfoDtoList.push(tempAssignStaffIdList);

					let newRow = '<tr>'
							+ '<td><a style="color:black;text-decoration: underline;" onclick="loadUserImplementation('
							+ implementationId + ',' + userId + ')"> ' + tName
							+ '</a></td>'
							+ '</tr>';
					//  '<td>'+tStaffCode+'</td>';

					// if($('#assigned_staff_table tr').length == 2){ $("#tbodyId").empty()};
					$("#assigned_staff_table tbody").append(newRow);
				}
				$('#assignStaffModal').modal('hide');
				$("#tbodyIdStaffSearchResult").empty();				

				dataPassNode['implementationId'] = implementationId;
				dataPassNode['temporaryAssignStaffInfoDtoList'] = temporaryAssignStaffInfoDtoList;

				$
						.ajax({
							beforeSend : function(request) {
								document.getElementById("loaderNotify").style.display = "";
								request.setRequestHeader("GUID", GUID);
							},
							url : serverHTTP
									+ 'Assignment/temporaryAssignStaff',
							method : 'POST',
							contentType : 'application/json',
							data : JSON.stringify(dataPassNode),
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
			//////Number Of Staff Validation
			checkNumberOfStaff();

		}

		var table;

		function drawDtataTable(language, tableId) {
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

			table = $(tableId).DataTable({
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
			loadSelectedLanguage(selectedLanguage, "assignment");
			setLanguage(selectedLanguage);
		}

		function getCaseInfo(result) {
			if(result.data.dispatchClassification ==2)
			{
			  document.getElementById("attributeW").value = 2;
			  $('#attributeW').attr('disabled', true);
			}else
			{
			  document.getElementById("attributeW").value = 1;
			  $('#attributeW').attr('disabled', true);
			}
			document.getElementById("ProjectTitle").value = result.data.caseName;
			document.getElementById("MatterNumber").value = result.data.caseNumber;
			document.getElementById("QuotationNumber").value = result.data.quotationNumber;

			if (result.data.assignmentClassification != "") {
				$('#AssignmentClassification').val(assignmentClassificationArray[result.data.assignmentClassification]);  
			}
			loadAssignmentClassification(result.data.assignmentClassification);

			if (result.data.dispatchClassification != "") {
				$('#dispatchClassification').val(dispatchClassificationArray[result.data.dispatchClassification]); 
			}

			occupationClassificationOutput = "";

 			if (result.data.occupationClassification1 != 0) {
				occupationClassificationOutput = occupationClassificationArray[1]
						+ " , ";
			}
			if (result.data.occupationClassification2 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[2] + " , ";
			}
			if (result.data.occupationClassification3 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[3] + " , ";
			}
			if (result.data.occupationClassification4 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[4] + " , ";
			}
			if (result.data.occupationClassification5 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[5] + " , ";
			}
			if (result.data.occupationClassification6 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[6] + " , ";
			}
			if (result.data.occupationClassification7 != 0) {
				occupationClassificationOutput = occupationClassificationOutput
						+ occupationClassificationArray[7];
			} 

			document.getElementById("occupationClassification").value = occupationClassificationOutput;

			if (result.data.divisionByBusiness != "") {
				$('#DivisionByBusiness').val(divisionByBusinessArray[result.data.divisionByBusiness]);
			}

			if (result.data.personInChargeOfCase != "") {
				$('#PersonInCharge').val(personInChargeArray[result.data.personInChargeOfCase]);
			}

			if (result.data.salesRepresentative != "") {
				$('#SalesRepresentative').val(salesRepresentativeArray[result.data.salesRepresentative]);
			}

			document.getElementById("BusinessContent").value = result.data.businessContent;
			document.getElementById("RequiredNumberPeople").value = result.data.requiredNoOfPeople;
			document.getElementById("CustomerCompanyName").value = result.data.customerCompanyName;
			document.getElementById("CustomerRepresentativeName").value = result.data.customerRepresentativeName;
			document.getElementById("periodStart").value = result.data.periodStartDate;
			document.getElementById("periodEnd").value = result.data.periodEndDate;
			document.getElementById("detailsOfImplementation").value = result.data.detailInfo;
			
			

		}
		


		function getDetailCaseInfo(result) {

			document.getElementById("nameofDispatcher").value = result.data.nameOfDispatcher;
			document.getElementById("contacInformationOfDispatcher").value = result.data.contactDispatcher;
			document.getElementById("nameOfDispatcherGrievance").value = result.data.nameDispatcherGrievance;
			document.getElementById("contactInfoDispatcherGrievance").value = result.data.contactNameDispatcherGrievance;
			document.getElementById("commanderName").value = result.data.commanderName;
			document.getElementById("commanderContact").value = result.data.commanderContact;
			document.getElementById("officerName").value = result.data.officeName;
			document.getElementById("responsibleContact").value = result.data.officeContact;
			document.getElementById("complaintContactName").value = result.data.complaintName;
			document.getElementById("complaintContactInformation").value = result.data.complaintContact;
			document.getElementById("EmploymentStatus").value = result.data.agreementClassification;
			document.getElementById("AgeStatus").value = result.data.ageClassification;

		}

		function getImplementationInfo(result) {

			const assignmentClassification = document
					.getElementById("AssignmentClassificationId").value.trim();

			if (assignmentClassification != 1) {

				document.getElementById("implementationPeriodStart").value = result.data.startImplementationDate;
				document.getElementById("implementationPeriodEnd").value = result.data.endImplementationDate;
			} else {
				document.getElementById("implementationDateStart").value = result.data.startImplementationDate;
			}

			$('#workingDays1').prop('checked', result.data.workingDay1);
			$('#workingDays2').prop('checked', result.data.workingDay2);
			$('#workingDays3').prop('checked', result.data.workingDay3);
			$('#workingDays4').prop('checked', result.data.workingDay4);
			$('#workingDays5').prop('checked', result.data.workingDay5);
			$('#workingDays6').prop('checked', result.data.workingDay6);
			$('#workingDays7').prop('checked', result.data.workingDay7);

			$('#holiday1').prop('checked', result.data.holiday1);
			$('#holiday2').prop('checked', result.data.holiday2);
			$('#holiday3').prop('checked', result.data.holiday3);
			$('#holiday4').prop('checked', result.data.holiday4);
			$('#holiday5').prop('checked', result.data.holiday5);
			$('#holiday6').prop('checked', result.data.holiday6);
			$('#holiday7').prop('checked', result.data.holiday7);

			document.getElementById("companyRemarks").value = result.data.internalCommunication;
			
			requiredNoStaff =  result.data.requiredNoOfStaff; // Uvindu //
			//requiredNoStaff = 3;
			checkNumberOfStaff();
		}
		
		/// Uvindu ///		
		function checkNumberOfStaff(){
			//var requiredNo = $("RequiredNumberPeople").val();
			//var requiredNo =  requiredNoOfPeople;
			var requiredNoNotify = $('#requiredNoNotify');
			assignedNo = $('#assigned_staff_table tr').length - 1;
			console.log("requiredNumber" + requiredNoStaff);
			console.log("assignedNo" + assignedNo);	
			
			if(requiredNoStaff == null){
				$('#buttonAssignStaff').prop('disabled', true);
				$('#requiredNoNotify').html("Before assigning staff, please add the required number of staff for the implementation");
				//setErrorFor("", requiredNoNotify, "E2070");
			}else if( assignedNo >= requiredNoStaff){
				$('#buttonAssignStaff').prop('disabled', true);
			}
			
		}

		function getWorkLocation(result) {

			document.getElementById("NearestStation").value = result.data.nearestStation;
			document.getElementById("MeetingPlace").value = result.data.meetingPlace;
			document.getElementById("OfficeName").value = result.data.officeName;
			document.getElementById("OrganizationName").value = result.data.organizationName;
			document.getElementById("workLocation").value = result.data.workLocation;
			document.getElementById("WorkAddress").value = result.data.workAddress;
			document.getElementById("salaryUnitPriceRadio1").value = result.data.dailyBasicSalary;
			document.getElementById("salaryUnitPriceRadio2").value = result.data.billedAmountHourly;
			document.getElementById("basicSalary").value = result.data.dailyBasicSalary;
			document.getElementById("billedAmount").value = result.data.billedAmountHourly;
			document.getElementById("billingUnitPriceSetting").value = result.data.billingUnitPriceSetting;
			document.getElementById("WorkLocationTransportation").value = result.data.workLocationTransportation;
			document.getElementById("StationArrivalTime").value = result.data.arrivalTime;
			document.getElementById("StationMeetingTime").value = result.data.meetingTime;
			document.getElementById("StationScheduledStartTime").value = result.data.scheduledStartTime;
			document.getElementById("StationScheduledEndTime").value = result.data.scheduledEndTime;
			document.getElementById("StationScheduledActualWorkTime").value = result.data.scheduledActualWorkTime;
			document.getElementById("ScheduleBreaktimeTime").value = result.data.scheduledBreakTime;
			document.getElementById("DepartureTime").value = result.data.scheduledDepartureTime;
			document.getElementById("MidnightBreakingTime").value = result.data.scheduledMidnightBreakTime;
			document.getElementById("WorkRemarks").value = result.data.workRemarks;
			document.getElementById("overtimePaymentUnit").value = result.data.overtimePaymentUnit;

		}

		function getWorkingCondition(result) {

			document.getElementById("midnightOvertimeHolidayAllowance").value = result.data.midnightOvertimeHolidayAllowance;
			document.getElementById("PaymentTerms").value = result.data.paymentTerms;
			document.getElementById("annualPaidLeave").value = result.data.annualPaidLeave;
			document.getElementById("overtimeHolidayWork").value = result.data.overtimeHolidayWork;
			document.getElementById("safetyAndHygiene").value = result.data.safetyAndHygiene;
			document.getElementById("employmentStabilizationMeasures").value = result.data.stabilizationMeasures;
			document.getElementById("grievanceRelatedMatters").value = result.data.grievanceRelatedCase;
			document.getElementById("reasonForNotSubmittingEmployment").value = result.data.qualificationNotification;
			document.getElementById("useOfWelfareFacilities").value = result.data.welfareFacilities;
			document.getElementById("retirementRelatedMatters").value = result.data.retirementRelatedCase;
			document.getElementById("contractRenewalRelated").value = result.data.contractRenewalCase;
			document.getElementById("conflictPreventionMeasures").value = result.data.conflictPreventionMeasure;
			document.getElementById("workConditionRemarks").value = result.data.remarks;
		}


		function addEducationalRow() {
			var $tr = $("#educationalTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#educationalTbodyId").append($clone);
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

		$("#caseDelete")
				.click(
						function(event) {

							var dataNode = {};
							dataNode['id'] = implementationId;

							$
									.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/DeleteImplementationInfo',
										method : 'POST',
										contentType : 'application/json',
										data : JSON.stringify(dataNode),
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												showMessage('success', "N1248");
												setTimeout(
														function() {
															window.location.href = "case-details.jsp";
														}, 3700);
											} else {
												showMessage('error', "N1249");
												// showMessage("Sorry Data Loding Error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});
						});

		function loadAssignmentClassification(value) {

			if (value == 1) {
				$('#assignmentClassificationPeriodLoader').hide();
				$('#assignmentClassificationDateLoader').show();
			} else {
				$('#assignmentClassificationDateLoader').hide();
				$('#assignmentClassificationPeriodLoader').show();

			}
		}

		function redirectAssignmentManagement() {

			sessionStorage.getItem("assignmentClassification");
			sessionStorage.getItem("implementationPeriodStart");
			sessionStorage.getItem("implementationPeriodEnd");

			window.location.href = "assignment-management.jsp";
		}
	</script>
</body>

</html>