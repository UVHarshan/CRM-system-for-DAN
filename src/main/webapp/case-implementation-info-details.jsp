<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCaseImplementInfo">Case Implementation
	Information</title>


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
												id="pageSpanHeadingDetailsofImplementation">Details
												of Implementation Information</span>
										</h1>

									</div>
									<div class="col-md-4  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">

												<div class="btn-group">
													<button
														class="DefaultButton btn btn-danger TopButtonMinWidth  dropdown-toggle mr-2"
														type="button" data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<span id="buttonSpanCaseDelete">Delete</span>
													</button>
													<div class="dropdown-menu" x-placement="bottom-start">
														<button class="dropdown-item" id="caseDelete" href="#">
															<span id="buttonValueSpanCaseImplementationDelete">Delete
																Case Implementation</span>
														</button>
													</div>
												</div>

												<button onclick="window.history.back();"
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonSpanReturn">Return</span>
												</button>
											</div>
										</div>
									</div>
								</div>

								<div class="row ml-2">
									<p class="pb-0 mb-0" id="pageSpanSubHeadingCaseRegistration">You
										can set the shift for each implementation date. Staff
										assignments are made on the assignment management screen, and
										settings for each staff are made on the assignment staff
										details screen.</p>
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
																	<input type="text" id="nameofDispatcher"
																		class="form-control">
																</div>
																<div id="errorNameofDispatcher" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanContacInformationOfDispatcher">
																		Contact information of dispatcher </span>
																</div>
																<div>
																	<input type="text" id="contacInformationOfDispatcher"
																		class="form-control" maxlength="11">
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
																	<input type="text" id="nameOfDispatcherGrievance"
																		class="form-control">
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
																	<input type="text" id="contactInfoDispatcherGrievance"
																		class="form-control" maxlength="11">
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
																	<input type="text" id="commanderName"
																		class="form-control">
																</div>
																<div id="errorCommanderName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCommanderContact"> Commander
																		Contact </span>
																</div>
																<div>
																	<input type="text" id="commanderContact"
																		class="form-control" maxlength="11">
																</div>
																<div id="errorCommanderContact" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOfficerName"> Officer name </span>
																</div>
																<div>
																	<input type="text" id="officerName"
																		class="form-control">
																</div>
																<div id="errorOfficerName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanResponsibleContact">
																		Responsible contact</span>
																</div>
																<div>
																	<input type="text" id="responsibleContact"
																		class="form-control" maxlength="11">
																</div>
																<div id="errorResponsibleContact" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanComplaintContactName">
																		Complaint contact name </span>
																</div>
																<div>
																	<input type="text" id="complaintContactName"
																		class="form-control">
																</div>
																<div id="errorComplaintContactName" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanComplaintContactInformation">
																		Complaint contact information </span>
																</div>
																<div>
																	<input type="text" id="complaintContactInformation"
																		class="form-control" maxlength="11">
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
																	<Select id="EmploymentStatus" class="form-control">
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
																	<Select id="AgeStatus" class="form-control">
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


															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdateCase">Update Case information</button>
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

												<div id="implementationInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pt-3"
															id="assignmentClassificationPeriodLoader"
															style="display: none">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanImplementationPeriodStart">
																		(S)Implementation Period (Start) </span> <span
																		class="RequiredStar"> * </span>
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
																		(S)Implementation Period (End) </span> <span
																		class="RequiredStar"> * </span>
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
																		Implementation date </span> <span class="RequiredStar">
																		* </span>
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
																			type="checkbox" id="workingDays1"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysMonday">Monday</span> <input
																			type="checkbox" id="workingDays2"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysTuesday">Tuesday</span> <input
																			type="checkbox" id="workingDays3"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysWednesday">Wednesday</span> <input
																			type="checkbox" id="workingDays4"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysThursday">Thursday</span> <input
																			type="checkbox" id="workingDays5"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysFriday">Friday</span> <input
																			type="checkbox" id="workingDays6"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWorkingDaysSaturday">Saturday</span> <input
																			type="checkbox" id="workingDays7"
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
																			type="checkbox" id="holiday1" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayMonday">Monday</span> <input
																			type="checkbox" id="holiday2" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayTuesday">Tuesday</span> <input
																			type="checkbox" id="holiday3" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayWednesday">Wednesday</span> <input
																			type="checkbox" id="holiday4" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayThursday">Thursday</span> <input
																			type="checkbox" id="holiday5" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidayFriday">Friday</span> <input
																			type="checkbox" id="holiday6" name="OccupationClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanHolidaySaturday">Saturday</span> <input
																			type="checkbox" id="holiday7" name="OccupationClassi"
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
																	<textarea type="text" id="companyRemarks"
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
																	id="buttonUpdateImplementInfo">Update Case</button>
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
																	<input type="text" id="NearestStation"
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
																	<input type="text" id="MeetingPlace"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMeetingPlace" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOfficeName"> Office Name </span>
																</div>
																<div>
																	<input type="text" id="OfficeName" class="form-control"
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
																	<input type="text" id="OrganizationName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorOrganizationName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocation"> (S) Work
																		Location </span> <span class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="text" id="workLocation"
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
																	<input type="text" id="WorkAddress"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorWorkAddress" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryUnitPrice">Salary unit
																		price</span> <span class="RequiredStar"> *</span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanProjectUnitPrice">Project unit
																				price</span> <input type="radio" id="salaryUnitPriceRadio1"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanStaffUnitPrice">Staff unit price</span> <input
																			type="radio" id="salaryUnitPriceRadio2"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorSalaryUnitPrice" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBasicSalary">Basic Salary
																		(hourly wage)</span> <span class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="text" id="basicSalary"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBasicSalary" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBilledAmount">Billed Amount
																		(for 1 person, hourly wage)</span> <span class="RequiredStar">
																		*</span>
																</div>
																<div>
																	<input type="text" id="billedAmount"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBilledAmount" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBillingUnitPriceSetting">Billing
																		Unit Price Setting</span> <span class="RequiredStar">
																		*</span>
																</div>
																<div>
																	<Select id="billingUnitPriceSetting"
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
																	<input type="text" id="WorkLocationTransportation"
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
																	<input type="time" id="StationArrivalTime"
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
																	<input type="time" id="StationMeetingTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationScheduledStartTime">Scheduled
																		Start Time </span>
																</div>
																<div>
																	<input type="text" id="StationScheduledStartTime"
																		class="form-control" maxlength="5">
																</div>
																<div id="errorScheduledStartTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationScheduledEndTime">Scheduled
																		End Time </span>
																</div>
																<div>
																	<input type="text" id="StationScheduledEndTime"
																		class="form-control" maxlength="5">
																</div>
																<div id="errorScheduledEndTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStationScheduledActualWorkTime">Scheduled
																		actual work time </span>
																</div>
																<div>
																	<input type="text" id="StationScheduledActualWorkTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorScheduledActualWorkTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanScheduleBreaktimeTime">Scheduled
																		break time </span>
																</div>
																<div>
																	<input type="text" id="ScheduleBreaktimeTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorScheduleBreaktime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDepartureTime">Scheduled
																		departure time </span>
																</div>
																<div>
																	<input type="time" id="DepartureTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorStationArrivalTime" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightBreakingTime">
																		(Inside) Scheduled midnight break time </span>
																</div>
																<div>
																	<input type="text" id="MidnightBreakingTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMidnightBreakingTime" style="color: red;"></div>
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
																	<textarea type="text" id="WorkRemarks"
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
																	<Select id="overtimePaymentUnit" class="form-control">
																		<option value="" id="optionOvertimePaymentUnit"></option>
																		<option value="1" id="optionOvertimePaymentUnitDaily">Daily</option>
																	</Select>
																</div>
																<div id="errorBillingUnitPriceSetting"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdateWorkLocation">Update Case</button>
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
																		/ overtime / holiday allowance </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaymentTerms"> Payment terms </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text" id="PaymentTerms"
																		class="form-control"></textarea>
																</div>
																<div id="errorPaymentTerms" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAnnualPaidLeave"> Annual paid
																		leave </span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text" id="annualPaidLeave"
																		class="form-control"></textarea>
																</div>
																<div id="errorAnnualPaidLeave" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimeHolidayWork"> Overtime
																		/ holiday work </span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text" id="overtimeHolidayWork"
																		class="form-control"></textarea>
																</div>
																<div id="errorOvertimeHolidayWork" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSafetyAndHygiene"> Safety and
																		hygiene </span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text" id="safetyAndHygiene"
																		class="form-control"></textarea>
																</div>
																<div id="errorSafetyAndHygiene" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentStabilizationMeasures">
																		Employment stabilization measures for dispatched
																		workers taken by canceling the dispatch contract </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text"
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
																		Grievance related matters </span><span class="RequiredStar">
																		*</span>
																</div>
																<div>
																	<textarea type="text" id="grievanceRelatedMatters"
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
																		insurance insured qualification notification</span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text"
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
																		of welfare facilities, etc.</span><span class="RequiredStar">
																		*</span>
																</div>
																<div>
																	<textarea type="text" id="useOfWelfareFacilities"
																		class="form-control"></textarea>
																</div>
																<div id="errorUseOfWelfareFacilities"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRetirementRelatedMatters">
																		Retirement related matters </span><span class="RequiredStar">
																		*</span>
																</div>
																<div>
																	<textarea type="text" id="retirementRelatedMatters"
																		class="form-control"></textarea>
																</div>
																<div id="errorRetirementRelatedMatters"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanContractRenewalRelated">
																		Contract renewal related matters </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text" id="contractRenewalRelated"
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
																		dispatched workers </span><span class="RequiredStar">
																		*</span>
																</div>
																<div>
																	<textarea type="text" id="conflictPreventionMeasures"
																		class="form-control"></textarea>
																</div>
																<div id="errorConflictPreventionMeasures"
																	style="color: red;"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks"> Remarks </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<textarea type="text" id="workConditionRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorRemarksNotification" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdateWorkConditions">Update Case</button>
															</div>
														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">

												<div class="card-header  pt-2 pb-2" id="headingThree">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#SkillSheetInformation"
															aria-expanded="false"
															aria-controls="SkillSheetInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivAssignmentInformation">Assignment
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="SkillSheetInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">

													<div class="card-body SDAccordionCardBody">

														<div class="row pb-3">
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRequiredNumberOfStaff">Required
																		number of staff </span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="text" id="requiredNumberOfStaff"
																		class="form-control">
																</div>
																<div id="errorRequiredNumberOfStaff"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
																<button id="buttonAssignmentManagementbutton"
																	class="DefaultButton btn btn-info TopButtonMinWidth mt-4 ml-5"
																	role='button' onclick="redirectAssignmentManagement()">
																	<span id="buttonAssignmentManagement">Assignment
																		Management</span>
																</button>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="assignmentInfo_table" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="#tableAssignmentInformationTHNo">No</th>
																				<th id="#tableAssignmentInformationTHAssignStaff">Assign
																					Staff</th>
																				<th id="#tableAssignmentInformationTHConflictDate">Conflict
																					date (individual unit)</th>
																				<th id="#tableAssignmentInformationTHNotification">Notification
																					date and time</th>
																				<th
																					id="#tableAssignmentInformationTHAssignOtherProjects">Assign
																					other projects</th>
																				<th style="width: 100px;"></th>
																			</tr>
																		</thead>

																		<tbody id="tbodyAssignmentInfo">
																			<tr id="assignmentInfoTrId">
																				<input type="hidden" name="assignmentInfoID[]">
																				<td style="width: 15%;" class="p-1"></td>
																				<td style="width: 15%;" class="p-1"></td>
																				<td class="p-1"><input type="date"
																					name="assignmentInfoConflictDate[]"
																					id="assignmentInfoConflictDate"
																					class="form-control"></td>
																				<td class="p-1"></td>
																				<td class="p-1"></td>
																				<td>
																					<button class="btn DetailsButton ml-1" onclick=""
																						title="Details" role="button"
																						id="tableButtonDetails_3___">
																						<i class="fa fa-info-circle"></i>
																					</button>


																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorSkillWorkHistory" class="RequiredStar"></div>

																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceCreation">Invoice
																		creation</span>
																</div>
																<div>
																	<Select id="InvoiceCreation" class="form-control">
																		<option value="" id="optionInvoiceCreation">Select
																			Invoice Creation</option>
																		<option value="1" id="optionInvoiceCreationNotCreated">Not
																			Created</option>
																		<option value="2" id="optionInvoiceCreationCreated">Created</option>
																	</Select>
																</div>

																<div id="errorAssignmentInfoTable" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAssignmentRemarks">Remarks</span>
																</div>
																<div>
																	<textarea class="form-control" id="staffSkillRemark"></textarea>
																</div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 pt-2 ContentAlignRC">
																<button class="btn btn-info"
																	id="buttonUpdateAssignmentInfo">Update
																	Implementation Information</button>
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


	<script src="./dist-assets/js/case-implementation-details-validate.js"></script>


	<script>
		////////////////// 
		function addSkillSheetRow() {
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

		///////////////////
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>";
		//const serverHTTP = "http://sola.ml/SOLA-API/";
		const GUID = localStorage.getItem("GUID");
		const caseId = sessionStorage.getItem('caseId');
		const implementationId = sessionStorage.getItem('implementationId');
		localStorage.setItem("caseID", caseId);
		localStorage.setItem("implementationIDDetails", implementationId);

		let dataSet = '{"id" :' + caseId + '}';
		let dataNode = '{"id" :' + implementationId + '}';
		let dataPass = '{"implementationId" :' + implementationId + '}';

		let dataPassAssignment = '{"implementId" :' + implementationId + '}'; //// Uvindu////

		$(document).ready(
						function() {

							drawDtataTable(lan);

							//bankTransferLoad();

							$("#staffPaymentMethod").change(function() {
								bankTransferLoad();
							});

							//onfocus="(this.type='date')"  id="dateOfBirthFrom" name="dateOfBirthFrom" placeholder="From"
							$("#dateOfBirthFrom").focusout(function() {
												this.type = 'text';
												document.getElementById("dateOfBirthFrom").placeholder = "From";
											});

							$("#dateOfBirthTo")
									.focusout(
											function() {
												this.type = 'text';
												document.getElementById("dateOfBirthTo").placeholder = "To";
											});

							$.ajax({
										beforeSend : function(request) {
											request.setRequestHeader("GUID",GUID);
										},
										url : serverHTTP + 'Case/ViewCaseInfo',
										method : 'POST',
										contentType : 'application/json',
										data : dataSet,
										dataType : 'json',
										//async: false, 
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
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$.ajax({
										beforeSend : function(request) {
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP + 'Case/ViewDetailOfCases',
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
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$.ajax({
										beforeSend : function(request) {
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
											} else {
												console.log("Sorry getQuotationInfo error");
											}
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$.ajax({
										beforeSend : function(request) {
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
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$.ajax({
										beforeSend : function(request) {
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
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$.ajax({
										beforeSend : function(request) {
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/ViewAssignmentDetail',
										method : 'POST',
										contentType : 'application/json',
										data : dataNode,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												getAssignmentInfo(result);
											} else {
												console
														.log("Sorry getQuotationInfo error");
											}
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							//// Uvindu////
							$.ajax({//wishwa
										beforeSend : function(request) {
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Case/GetAssignStaff',
										method : 'POST',
										contentType : 'application/json',
										data : dataPassAssignment,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												console.log("Got the result");
												getAssignmentTableInfo(result);
											} else {
												console
														.log("Sorry getQuotationInfo error");
											}
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});
							//// Uvindu////

						});

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
			loadSelectedLanguage(selectedLanguage, "case");
			setLanguage(selectedLanguage);
		}

		function getCaseInfo(result) {
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
				$('#DivisionByBusiness')
						.val(
								divisionByBusinessArray[result.data.divisionByBusiness]);
			}

			if (result.data.personInChargeOfCase != "") {
				$('#PersonInCharge').val(
						personInChargeArray[result.data.personInChargeOfCase]);
			}

			if (result.data.salesRepresentative != "") {
				$('#SalesRepresentative')
						.val(
								salesRepresentativeArray[result.data.salesRepresentative]);
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

			const assignmentClassification = document.getElementById("AssignmentClassificationId").value.trim();
            //wishwa
            //console.log("assignmentClassification : "+assignmentClassification);
            document.getElementById("implementationDateStart").value = result.data.startImplementationDate;
			if (assignmentClassification != 1) {
				document.getElementById("implementationPeriodStart").value = result.data.startImplementationDate;
				document.getElementById("implementationPeriodEnd").value = result.data.endImplementationDate;
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
		}

		function getWorkLocation(result) {

			document.getElementById("NearestStation").value = result.data.nearestStation;
			document.getElementById("MeetingPlace").value = result.data.meetingPlace;
			document.getElementById("OfficeName").value = result.data.officeName;
			document.getElementById("OrganizationName").value = result.data.organizationName;
			document.getElementById("workLocation").value = result.data.workLocation;
			document.getElementById("WorkAddress").value = result.data.workAddress;
			$('#salaryUnitPriceRadio1').prop('checked', result.data.projectUnitPrice);
			$('#salaryUnitPriceRadio2').prop('checked', result.data.staffUnitPrice);
			if(result.data.staffUnitPrice)
			{
			document.getElementById("basicSalary").readOnly = true;
			}
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

		function getAssignmentInfo(result) {

			document.getElementById("requiredNumberOfStaff").value = result.data.requiredNoOfStaff;
			document.getElementById("InvoiceCreation").value = result.data.invoiceCreation;
			document.getElementById("staffSkillRemark").value = result.data.remarks;

		}

		//// Uvindu ////

		function getAssignmentTableInfo(result) {
			if (result.data.length > 0) {
				$("#tbodyAssignmentInfo").empty();
			}

			for (i = 0; i < result.data.length; i++) {

				matterAssignMailSendDateTime = result.data[i].matterAssignMailSendDateTime != null ? result.data[i].matterAssignMailSendDateTime
						: "";

				confirmedDateTime = result.data[i].confirmedDateTime != null ? result.data[i].confirmedDateTime
						: "";
				departureReportDateTime = result.data[i].departureReportDateTime != null ? result.data[i].departureReportDateTime
						: "";
				arrivalReportDateTime = result.data[i].arrivalReportDateTime != null ? result.data[i].arrivalReportDateTime
						: "";
				closingReportDateTime = result.data[i].closingReportDateTime != null ? result.data[i].closingReportDateTime
						: "";
				expenseReportDateTime = result.data[i].expenseReportDateTime != null ? result.data[i].expenseReportDateTime
						: "";
				closingReportConfirmedDateTime = result.data[i].closingReportConfirmedDateTime != null ? result.data[i].closingReportConfirmedDateTime
						: "";
				expenseReportConfirmedDateTime = result.data[i].expenseReportConfirmedDateTime != null ? result.data[i].expenseReportConfirmedDateTime
						: "";

				console.log(result.data[i].otherImplementationDtoList);

				let otherProjectsList = "";

				for (j = 0; j < result.data[i].otherImplementationDtoList.length; j++) {
					otherProjectsList = otherProjectsList
							+ " <span style='color:black;'> "
							+ result.data[i].otherImplementationDtoList[j].caseName
							+ "</span> <br/>";

				}

				console.log(otherProjectsList);

				let newRow = ' <tr id="assignmentInfoTrId">'
						+ '<input type="hidden" value="'+implementationId+'" name="assignmentInfoImplementID[]">'
						+ '<input type="hidden" value="'+result.data[i].staffId+'" name="assignmentInfoStaffID[]">'
						+ '<td style="width: 15%;" class="p-1">'
						+ (i + 1)
						+ '</td>'
						+ '<td style="width: 15%;"class="p-1">'
						+ '<span name="assignStaff[]">'
						+ result.data[i].staffName
						+ '</span>'
						+ '</td>'
						+ '<td class="p-1"><input type="date" name="assignmentInfoConflictDate[]" value="'+result.data[i].conflictDate+'" class="form-control"></td>'
						+ '<td class="p-1">'
						+ "Project Allocation : "
						+ '<span name="projectAllocateDate[]">'
						+ matterAssignMailSendDateTime
						+ '</span>'
						+ '<br/>'
						+ "Confirmed Day : "
						+ '<span name="confirmedDate[]">'
						+ confirmedDateTime
						+ '</span>'
						+ '<br/>'
						+ "Departure Report : "
						+ '<span name="departureReportDate[]">'
						+ departureReportDateTime
						+ '</span>'
						+ '<br/>'
						+ "Arrival Report : "
						+ '<span name="arrivalReportDate[]">'
						+ arrivalReportDateTime
						+ '</span>'
						+ '<br/>'
						+ "Closing Report : "
						+ '<span name="closingReportDate[]">'
						+ closingReportDateTime
						+ '</span>'
						+ '<br/>'
						+ "Expense Report : "
						+ '<span name="expenseReportDate[]">'
						+ expenseReportDateTime
						+ '</span>'
						+ '<br/>'
						+ "Closing Report Confirmed : "
						+ '<span name="closingReportConfirmedDate[]">'
						+ closingReportConfirmedDateTime
						+ '</span>'
						+ '<br/>'
						+ "Expense Report Confirmed : "
						+ '<span name="expenseReportConfirmedDate[]">'
						+ expenseReportConfirmedDateTime
						+ '</span>'
						+ '<br/>'
						+ '</td>'
						+ '<td class="p-1">'
						+ otherProjectsList
						+ '</td>'
						+ '<td>'
						+ '<button class="btn DetailsButton ml-1" onclick="loadUserImplementation('
						+ implementationId
						+ ','
						+ result.data[i].staffId
						+ ')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
						+ '</td>' + '</tr>';

				$("#assignmentInfo_table tbody").append(newRow);
			}
		}

		function loadUserImplementation(implementationID, userID) {
			localStorage.setItem("implementationIDDetails", implementationID);
			localStorage.setItem("userIDDetails", userID);
			let implementationDateVAl = document.getElementById("implementationDateStart").value; 
			localStorage.removeItem("implementDate");
			localStorage.setItem("implementDate", implementationDateVAl);
			window.location.href = "assignment-details.jsp";
		}

		//// Uvindu ////

		function saveCaseInformation() {

			var nameofDispatcher = document.getElementById("nameofDispatcher").value
					.trim();
			var contacInformationOfDispatcher = document
					.getElementById("contacInformationOfDispatcher").value
					.trim();
			var nameOfDispatcherGrievance = document
					.getElementById("nameOfDispatcherGrievance").value.trim();
			var contactInfoDispatcherGrievance = document
					.getElementById("contactInfoDispatcherGrievance").value
					.trim();
			var commanderName = document.getElementById("commanderName").value
					.trim();
			var commanderContact = document.getElementById("commanderContact").value
					.trim();
			var officerName = document.getElementById("officerName").value
					.trim();
			var responsibleContact = document
					.getElementById("responsibleContact").value.trim();
			var complaintContactName = document
					.getElementById("complaintContactName").value.trim();
			var complaintContactInformation = document
					.getElementById("complaintContactInformation").value.trim();
			var EmploymentStatus = document.getElementById("EmploymentStatus").value
					.trim();
			var AgeStatus = document.getElementById("AgeStatus").value.trim();

			let dataPassNode = {};

			dataPassNode['caseId'] = caseId;
			dataPassNode['implementationId'] = implementationId;
			dataPassNode['nameOfDispatcher'] = nameofDispatcher;
			dataPassNode['contactDispatcher'] = contacInformationOfDispatcher;
			dataPassNode['nameDispatcherGrievance'] = nameOfDispatcherGrievance;
			dataPassNode['contactNameDispatcherGrievance'] = contactInfoDispatcherGrievance;
			dataPassNode['commanderName'] = commanderName;
			dataPassNode['commanderContact'] = commanderContact;
			dataPassNode['officeName'] = officerName;
			dataPassNode['officeContact'] = responsibleContact;
			dataPassNode['complaintName'] = complaintContactName;
			dataPassNode['complaintContact'] = complaintContactInformation;
			dataPassNode['agreementClassification'] = EmploymentStatus;
			dataPassNode['ageClassification'] = AgeStatus;

			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/SaveDetailOfCases',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 202) {
						console.log("detail of case info working");
						showMessage('success', "N1233");
					} else {
						showMessage('error', "N1234");
						console.log("detail of case info not working");
					}
				},
				error : function(error) {
					showMessage('error', "N1234");
					console.log("detail of case info not working");
					console.log(JSON.stringify(error));
				}
			});
		}

		function saveImplementationInformation() {

			const assignmentClassification = document
					.getElementById("AssignmentClassificationId").value.trim();
			if (assignmentClassification != 1) {
				var implementationPeriodStart = document
						.getElementById("implementationPeriodStart").value != "" ? document
						.getElementById("implementationPeriodStart").value
						: null;
				var implementationPeriodEnd = document
						.getElementById("implementationPeriodEnd").value != "" ? document
						.getElementById("implementationPeriodEnd").value
						: null;
			} else {
				var implementationPeriodStart = document.getElementById("implementationDateStart").value != "" ? document.getElementById("implementationDateStart").value : null;
			}

			var workingDays1Check = 0;
			var workingDays2Check = 0;
			var workingDays3Check = 0;
			var workingDays4Check = 0;
			var workingDays5Check = 0;
			var workingDays6Check = 0;
			var workingDays7Check = 0;

			var workingDays1 = document.getElementById("workingDays1");
			var workingDays2 = document.getElementById("workingDays2");
			var workingDays3 = document.getElementById("workingDays3");
			var workingDays4 = document.getElementById("workingDays4");
			var workingDays5 = document.getElementById("workingDays5");
			var workingDays6 = document.getElementById("workingDays6");
			var workingDays7 = document.getElementById("workingDays7");

			if (workingDays1.checked == true) {
				workingDays1Check = workingDays1.value;
			}
			if (workingDays2.checked == true) {
				workingDays2Check = workingDays2.value;
			}
			if (workingDays3.checked == true) {
				workingDays3Check = workingDays3.value;
			}
			if (workingDays4.checked == true) {
				workingDays4Check = workingDays4.value;
			}
			if (workingDays5.checked == true) {
				workingDays5Check = workingDays5.value;
			}
			if (workingDays6.checked == true) {
				workingDays6Check = workingDays6.value;
			}
			if (workingDays7.checked == true) {
				workingDays7Check = workingDays7.value;
			}

			var holiday1Check = 0;
			var holiday2Check = 0;
			var holiday3Check = 0;
			var holiday4Check = 0;
			var holiday5Check = 0;
			var holiday6Check = 0;
			var holiday7Check = 0;

			var holiday1 = document.getElementById("holiday1");
			var holiday2 = document.getElementById("holiday2");
			var holiday3 = document.getElementById("holiday3");
			var holiday4 = document.getElementById("holiday4");
			var holiday5 = document.getElementById("holiday5");
			var holiday6 = document.getElementById("holiday6");
			var holiday7 = document.getElementById("holiday7");

			if (holiday1.checked == true) {
				holiday1Check = holiday1.value;
			}
			if (holiday2.checked == true) {
				holiday2Check = holiday2.value;
			}
			if (holiday3.checked == true) {
				holiday3Check = holiday3.value;
			}
			if (holiday4.checked == true) {
				holiday4Check = holiday4.value;
			}
			if (holiday5.checked == true) {
				holiday5Check = holiday5.value;
			}
			if (holiday6.checked == true) {
				holiday6Check = holiday6.value;
			}
			if (holiday7.checked == true) {
				holiday7Check = holiday7.value;
			}

			sessionStorage.setItem("implementationPeriodStart",
					implementationPeriodStart);
			sessionStorage.setItem("implementationPeriodEnd",
					implementationPeriodEnd);

			var companyRemarks = document.getElementById("companyRemarks").value;

			let dataPassNode = {};
			dataPassNode['caseId'] = caseId;
			dataPassNode['implementationId'] = implementationId;
			dataPassNode['startImplementationDate'] = implementationPeriodStart;
			dataPassNode['endImplementationDate'] = implementationPeriodEnd;
			dataPassNode['workingDay1'] = workingDays1Check;
			dataPassNode['workingDay2'] = workingDays2Check;
			dataPassNode['workingDay3'] = workingDays3Check;
			dataPassNode['workingDay4'] = workingDays4Check;
			dataPassNode['workingDay5'] = workingDays5Check;
			dataPassNode['workingDay6'] = workingDays6Check;
			dataPassNode['workingDay7'] = workingDays7Check;

			dataPassNode['holiday1'] = holiday1Check;
			dataPassNode['holiday2'] = holiday2Check;
			dataPassNode['holiday3'] = holiday3Check;
			dataPassNode['holiday4'] = holiday4Check;
			dataPassNode['holiday5'] = holiday5Check;
			dataPassNode['holiday6'] = holiday6Check;
			dataPassNode['holiday7'] = holiday7Check;

			dataPassNode['internalCommunication'] = companyRemarks.trim();

			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/SaveImplementationDetail',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 202) {
						console.log("case Implementation info working");
						showMessage('success', "N1235");
					} else {
						showMessage('error', "N1236");
						console.log("case Implementation info not working");
					}
				},
				error : function(error) {
					showMessage('error', "N1236");
					console.log("case Implementation info not working");
					console.log(JSON.stringify(error));
				}
			});
		}

		function saveWorkLocation() {

			var salaryUnitPriceRadio1checked = 0;
			var salaryUnitPriceRadio2checked = 0;

			var projectUnitPrice = document
					.getElementById("salaryUnitPriceRadio1");
			var staffUnitPrice = document
					.getElementById("salaryUnitPriceRadio2");
			var basicSalary = document.getElementById("basicSalary").value.trim();
			if (projectUnitPrice.checked == true) {
				salaryUnitPriceRadio1checked = projectUnitPrice.value;
				basicSalary = document.getElementById("basicSalary").value.trim();
			}
			if (staffUnitPrice.checked == true) {
				salaryUnitPriceRadio2checked = staffUnitPrice.value;
				basicSalary = 0;
			}

			var NearestStation = document.getElementById("NearestStation").value
					.trim();
			var MeetingPlace = document.getElementById("MeetingPlace").value
					.trim();
			var OfficeName = document.getElementById("OfficeName").value.trim();
			var OrganizationName = document.getElementById("OrganizationName").value
					.trim();
			var workLocation = document.getElementById("workLocation").value
					.trim();
			var WorkAddress = document.getElementById("WorkAddress").value
					.trim();
			
			var billedAmount = document.getElementById("billedAmount").value
					.trim();
			var billingUnitPriceSetting = document
					.getElementById("billingUnitPriceSetting").value.trim();
			var WorkLocationTransportation = document
					.getElementById("WorkLocationTransportation").value.trim();
			var StationArrivalTime = document
					.getElementById("StationArrivalTime").value.trim();
			var StationMeetingTime = document
					.getElementById("StationMeetingTime").value.trim();
			var StationScheduledStartTime = document
					.getElementById("StationScheduledStartTime").value.trim();
			var StationScheduledEndTime = document
					.getElementById("StationScheduledEndTime").value.trim();
			var StationScheduledActualWorkTime = document
					.getElementById("StationScheduledActualWorkTime").value
					.trim();
			var ScheduleBreaktimeTime = document
					.getElementById("ScheduleBreaktimeTime").value.trim();
			var DepartureTime = document.getElementById("DepartureTime").value
					.trim();
			var MidnightBreakingTime = document
					.getElementById("MidnightBreakingTime").value.trim();
			var WorkRemarks = document.getElementById("WorkRemarks").value
					.trim();
			var overtimePaymentUnit = document
					.getElementById("overtimePaymentUnit").value.trim();

			let dataPassNode = {};
			dataPassNode['caseId'] = caseId;
			dataPassNode['implementationId'] = implementationId;
			dataPassNode['nearestStation'] = NearestStation;
			dataPassNode['meetingPlace'] = MeetingPlace;
			dataPassNode['officeName'] = OfficeName;
			dataPassNode['organizationName'] = OrganizationName;
			dataPassNode['workLocation'] = workLocation;
			dataPassNode['workAddress'] = WorkAddress;
			dataPassNode['projectUnitPrice'] = salaryUnitPriceRadio1checked;
			dataPassNode['staffUnitPrice'] = salaryUnitPriceRadio2checked;
			dataPassNode['workLocationTransportation'] = WorkLocationTransportation;
			dataPassNode['dailyBasicSalary'] = basicSalary;
			dataPassNode['billedAmountHourly'] = billedAmount;
			dataPassNode['billingUnitPriceSetting'] = billingUnitPriceSetting;
			dataPassNode['arrivalTime'] = StationArrivalTime;
			dataPassNode['meetingTime'] = StationMeetingTime;
			dataPassNode['scheduledStartTime'] = StationScheduledStartTime;
			dataPassNode['scheduledEndTime'] = StationScheduledEndTime;
			dataPassNode['scheduledActualWorkTime'] = StationScheduledActualWorkTime;
			dataPassNode['scheduledBreakTime'] = ScheduleBreaktimeTime;
			dataPassNode['scheduledDepartureTime'] = DepartureTime;
			dataPassNode['scheduledMidnightBreakTime'] = MidnightBreakingTime;
			dataPassNode['workRemarks'] = WorkRemarks;
			dataPassNode['overtimePaymentUnit'] = overtimePaymentUnit;

			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/SaveWorkLocationDetail',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 202) {
						console.log("work location info working");
						showMessage('success', "N1237");
					} else {
						showMessage('error', "N1238");
						console.log("work location info not working");
					}
				},
				error : function(error) {
					showMessage('error', "N1238");
					console.log("work location info not working");
					console.log(JSON.stringify(error));
				}
			});

		}

		function saveWorkingCondition() {

			var midnightOvertimeHolidayAllowance = document
					.getElementById("midnightOvertimeHolidayAllowance").value
					.trim();
			var PaymentTerms = document.getElementById("PaymentTerms").value
					.trim();
			var annualPaidLeave = document.getElementById("annualPaidLeave").value
					.trim();
			var overtimeHolidayWork = document
					.getElementById("overtimeHolidayWork").value.trim();
			var safetyAndHygiene = document.getElementById("safetyAndHygiene").value
					.trim();
			var employmentStabilizationMeasures = document
					.getElementById("employmentStabilizationMeasures").value
					.trim();
			var grievanceRelatedMatters = document
					.getElementById("grievanceRelatedMatters").value.trim();
			var reasonForNotSubmittingEmployment = document
					.getElementById("reasonForNotSubmittingEmployment").value
					.trim();
			var useOfWelfareFacilities = document
					.getElementById("useOfWelfareFacilities").value.trim();
			var retirementRelatedMatters = document
					.getElementById("retirementRelatedMatters").value.trim();
			var contractRenewalRelated = document
					.getElementById("contractRenewalRelated").value.trim();
			var conflictPreventionMeasures = document
					.getElementById("conflictPreventionMeasures").value.trim();
			var workConditionRemarks = document
					.getElementById("workConditionRemarks").value.trim();

			let dataPassNode = {};
			dataPassNode['caseId'] = caseId;
			dataPassNode['implementationId'] = implementationId;
			dataPassNode['midnightOvertimeHolidayAllowance'] = midnightOvertimeHolidayAllowance;
			dataPassNode['paymentTerms'] = PaymentTerms;
			dataPassNode['annualPaidLeave'] = annualPaidLeave;
			dataPassNode['overtimeHolidayWork'] = overtimeHolidayWork;
			dataPassNode['safetyAndHygiene'] = safetyAndHygiene;
			dataPassNode['stabilizationMeasures'] = employmentStabilizationMeasures;
			dataPassNode['grievanceRelatedCase'] = grievanceRelatedMatters;
			dataPassNode['qualificationNotification'] = reasonForNotSubmittingEmployment;
			dataPassNode['welfareFacilities'] = useOfWelfareFacilities;
			dataPassNode['retirementRelatedCase'] = retirementRelatedMatters;
			dataPassNode['contractRenewalCase'] = contractRenewalRelated;
			dataPassNode['conflictPreventionMeasure'] = conflictPreventionMeasures;
			dataPassNode['remarks'] = workConditionRemarks;

			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/SaveWorkingCondition',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 202) {
						console.log("work condition info working");
						showMessage('success', "N1239");
					} else {
						showMessage('error', "N1240");
						console.log("work condition info not working");
					}
				},
				error : function(error) {
					showMessage('error', "N1240");
					console.log("work condition info not working");
					console.log(JSON.stringify(error));
				}
			});
		}

		function saveAssignmentInformation() {

			var requiredNumberOfStaff = document
					.getElementById("requiredNumberOfStaff").value.trim();
			var InvoiceCreation = document.getElementById("InvoiceCreation").value
					.trim();
			var staffSkillRemark = document.getElementById("staffSkillRemark").value
					.trim();

			let dataPassNode = {};
			dataPassNode['caseId'] = caseId;
			dataPassNode['implementationId'] = implementationId;
			dataPassNode['requiredNoOfStaff'] = requiredNumberOfStaff;
			dataPassNode['invoiceCreation'] = InvoiceCreation;
			dataPassNode['remarks'] = staffSkillRemark;

			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/SaveAssignmentDetail',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 202) {
						console.log("assignment info working");
						showMessage('success', "N1241");
					} else {
						showMessage('error', "N1242");
						console.log("assignment info not working");
					}
				},
				error : function(error) {
					showMessage('error', "N1242");
					console.log("assignment info not working");
					console.log(JSON.stringify(error));
				}
			});
			saveConflictDate(); //// Uvindu ////

		}

		//// Uvindu ////
		function saveConflictDate() {

			var staffIdArray = document.getElementsByName("assignmentInfoStaffID[]");
			var implementationIdArray = document.getElementsByName("assignmentInfoImplementID[]");
			var conflictDateArray = document.getElementsByName("assignmentInfoConflictDate[]");

			var dataPassNode = {};
			var dataArray = [];

			for (var i = 0; i < staffIdArray.length; i++) {
				var staffId = staffIdArray[i].value != "" ? staffIdArray[i].value: null;
				var implementationId = implementationIdArray[i].value != "" ? implementationIdArray[i].value: null;
				var conflictDate = conflictDateArray[i].value != "" ? conflictDateArray[i].value: null;

				var tempObj = {
					"staffId" : staffId,
					"implementationId" : implementationId,
					"conflictDate" : conflictDate
				}

				dataArray.push(tempObj);
			}

			dataPassNode['listOfConflictDate'] = dataArray;

			passData = JSON.stringify(dataPassNode);
			console.log(passData);			
			
			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Assignment/AddConflictDate',
				method : 'POST',
				contentType : 'application/json',
				data : passData,
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						showMessage('success', "N1241");
						console.log("Conflict Data Saved");
					} else {
						showMessage('error', "N1242");
						console.log("Conflict Data not working");
					}
				},
				error : function(error) {
					showMessage('error', "N1242");
					console.log("Conflict Date info not working");
					console.log(JSON.stringify(error));
				}
			});
		}
		//// Uvindu ////

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

		$("#caseDelete").click(function(event) {
		     cancelText = notificationArray["N0004"];
				titleText = notificationArray["N1262"];
				confirmText = notificationArray["N0005"];
				 
				 Swal.fire({
					  width: '25rem',
					  title: titleText,
					  //text: "You won't be able to revert this!",
					  icon: 'warning',
					  showCancelButton: true,
					  cancelButtonText: cancelText,
					  confirmButtonColor: '#003473',
					  cancelButtonColor: '#f44336',
					  confirmButtonText: confirmText
					}).then((result) => {
					  if (result.isConfirmed) {
			
							       var dataNode = {};
							       dataNode['id'] = implementationId;

							        $.ajax({
										beforeSend : function(request) {
											document.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",GUID);
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

			localStorage.getItem('caseID');
			localStorage.getItem('implementationIDDetails');

			window.location.href = "assignment-for-cases.jsp";
		}
	</script>
</body>

</html>