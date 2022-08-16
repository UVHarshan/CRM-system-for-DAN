<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleQuotationDetails">Quotation Details</title>
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
												id="pageSpanHeadingQuotationDetails"> Quotation
												details </span>
										</h1>

										<p class="pb-0 mb-0"
											id="pageSpanSubHeadingQuotationDetails">You can revise a quote, create another quote or a case related to this quote.</p>
									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">

												<div class="btn-group">
													<button
														class="DefaultButton btn btn-info TopButtonMinWidth  dropdown-toggle"
														type="button" data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<span id="buttonSpanCreateFromThisQuotation">Create
															From This Quotation</span>
													</button>
													<div class="dropdown-menu" x-placement="bottom-start">
														<a class="dropdown-item" onclick="copyQuotation();"><span
															id="buttonValueSpanCopyAndCreateAnotherQuotatio">Copy
																And Create Another Quotation</span></a> <a class="dropdown-item"
															onclick="makeCaseByQuotation();"><span
															id="buttonValueSpanCustomerProposalCreation">Proposal
																creation</span></a> <a class="dropdown-item" href="#"><span
															id="buttonValueSpanCustomerInvoiceCreation">Invoice
																Creation</span></a>
													</div>
												</div>
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
																	id="accordionDivQuotationInformation">Quotation
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
																<div class="DetailsTitleText">
																	<span class="text-20" id="pageSpanQuotationInformation">
																		Quotation Information </span>
																</div>


															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMatterName"> Quotation Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>

																	<input type="hidden" id="quotationId"
																		class="form-control" readonly="readonly"> <input
																		type="text" id="quotationMatterName"
																		class="form-control">

																</div>
																<div id="errorMatterName" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanQuotationNumber"> Quotation
																		Number </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="quotationQuotationNumber"
																		class="form-control" readonly>

																</div>
																<div id="errorQuotationNumber" class="RequiredStar"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDateOfQuotation"> Date of
																		Quotation </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="quotationDateOfQuotation"
																		class="form-control">
																</div>
																<div id="errorDateOfQuotation" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalesRepresentative"> Sales
																		Representative </span>
																</div>
																<div>
																	<select id="quotationSalesRepresentative"
																		name="quotationSalesRepresentative"
																		class="form-control" role="combobox">
																		<option value=""
																			id="selectQuotationSalesRepresentative">Select
																			Sales Representative</option>
																		<option id="selectQuotationSalesRepresentative1" value="1">Sales Representative 1</option>
																		<option id="selectQuotationSalesRepresentative2" value="2">Sales Representative 2</option>
																	</select>

																</div>
																<div id="errorSalesRepresentative" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCompanyName"> Customer
																		Company Name </span>
																</div>
																<div>
																	<input type="hidden" id="quotationCustomerCompanyID"
																		class="form-control" readonly="readonly"> <input
																		type="text" id="quotationCustomerCompanyName"
																		class="form-control" readonly="readonly">
																</div>
																<div id="errorDateOfQuotation" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeName">
																		Customer Representative Name</span>
																</div>
																<div>
																	<input type="text"
																		id="quotationCustomerRepresentativeName"
																		class="form-control" readonly="readonly">
																</div>
																<div id="errorSalesRepresentative" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConsumptionTax"> Consumption
																		Tax </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="quotationConsumptionTax"
																		name="quotationConsumptionTax" class="form-control"
																		role="combobox">
																		<option value="" id="selectOptionSelectConsumptionTax">Select
																			Consumption Tax</option>
																		<option value="1">8%</option>
																		<option value="2">10%</option>
																	</select>
																</div>
																<div id="errorConsumptionTax" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanQuotationStatus"> Quotation
																		Status </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="quotationQuotationStatus"
																		name="quotationQuotationStatus" class="form-control"
																		role="combobox">
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
																		<option value="5" id="pageSpanOnHold">On Hold</option>
																		<option value="6" id="pageSpanCancel">Cancel</option>
																	</select>
																</div>
																<div id="errorQuotationStatus" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">&nbsp;</div>

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="text-20" id="pageSpanMatterInformation">
																		Case Information </span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<input type="hidden" id="caseId" class="form-control"
																	readonly="readonly">
																<div class="DetailsTitleText">
																	<span id="pageSpanDispatchClassification">
																		Dispatch Classification </span>
																</div>

																<div>
																	<select id="quotationDispatchClassification"
																		name="quotationDispatchClassification"
																		class="form-control" role="combobox">
																		<option value=""
																			id="selectOptionSelectDispatchClassification">Select
																			Dispatch Classification</option>
																		<option value="1" id="pageSpanGeneralDispatch">General
																			Dispatch</option>
																		<option value="2" id="pageSpanBusinessContract">Business
																			Contract</option>
																		<option value="3" id="pageSpanIntroductionDispatching">Introduction
																			Dispatching</option>
																		<option value="4" id="pageSpanRecruitment">Recruitment</option>
																	</select>
																</div>

															</div>


															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOccuClassification">Occupation
																		Classification</span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanOfficeSystem">Office System</span> <input
																			type="checkbox" id="occupationClassification1"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanSalesSystem">Sales / Sales System</span>
																			<input type="checkbox" id="occupationClassification2"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanITCreative">IT / Creative</span> <input
																			type="checkbox" id="occupationClassification3"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanMedicalWelfareSystem">Medical /
																				welfare system</span> <input type="checkbox"
																			id="occupationClassification4"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanManufacturingBusiness">Manufacturing
																				Business</span> <input type="checkbox"
																			id="occupationClassification5"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanProfessional">Professional</span> <input
																			type="checkbox" id="occupationClassification6"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanOthers">Others</span> <input
																			type="checkbox" id="occupationClassification7"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorOccuClassi" class="RequiredStar"></div>
															</div>

														</div>
														<div class="row pt-3 pb-3" id="dispatchLoaderID"
															style="display: none">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanImplementationPeriodStart">
																		Implementation Period (Start) </span>
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
																		Implementation Period (End) </span>
																</div>
																<div>
																	<input type="date" id="implementationPeriodEnd"
																		class="form-control">
																</div>
																<div id="errorImplementationPeriodEnd"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkingHoursStart"> Working
																		Hours (Start) </span>
																</div>
																<div>
																	<input type="time" id="workingHoursStart"
																		class="form-control">
																</div>
																<div id="errorWorkingHoursStart" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkingHoursEnd"> Working
																		Hours (End) </span>
																</div>
																<div>
																	<input type="time" id="workingHoursEnd"
																		class="form-control">
																</div>
																<div id="errorWorkingHoursEnd" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBusinessContentLoder1">
																		Business Content </span>
																</div>
																<div>
																	<input type="text" id="businessContent"
																		class="form-control">
																</div>
																<div id="errorBusinessContent" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRequiredNumberOfPeople">
																		Required Number of People </span>
																</div>
																<div>
																	<input type="text" id="requiredNumberOfPeople"
																		class="form-control">
																</div>
																<div id="errorRequiredNumberOfPeople"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocationLoder1"> Work
																		Location </span>
																</div>
																<div>
																	<textarea id="workLocation" class="form-control"> </textarea>
																</div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkAddress"> Work Address
																		(including contact information) </span>
																</div>
																<div>
																	<textarea id="workAddress" class="form-control"> </textarea>
																</div>

															</div>


														</div>



														<div class="row pt-3 pb-3" id="dispatchLoader2ID"
															style="display: none">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBusinessContent"> Business
																		Content </span>
																</div>
																<div>
																	<input type="text" id="businessContent1"
																		class="form-control">
																</div>
																<div id="errorBusinessContent" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkLocation"> Work Location </span>
																</div>
																<div>
																	<input type="text" id="workLocation1"
																		class="form-control">
																</div>
																<div id="errorWorkLocation" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkingHoursStartRecruitment">
																		Working Hours (Start) </span>
																</div>
																<div>
																	<input type="time" id="workingHoursStart1"
																		class="form-control">
																</div>
																<div id="errorWorkingHoursStartRecruitment"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkingHoursEndRecruitment">
																		Working Hours (End) </span>
																</div>
																<div>
																	<input type="time" id="workingHoursEnd1"
																		class="form-control">
																</div>
																<div id="errorWorkingHoursEndRecruitment"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalary"> Salary </span>
																</div>
																<div>
																	<input type="text" id="salary" class="form-control">
																</div>
																<div id="errorSalary" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTreatment"> Treatment </span>
																</div>
																<div>
																	<input type="text" id="treatment" class="form-control">
																</div>
																<div id="errorTreatment" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHoliday"> Holiday </span>
																</div>
																<div>
																	<input type="text" id="holiday" class="form-control">
																</div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanQualificationRequirements">
																		Qualification Requirements </span>
																</div>
																<div>
																	<input type="text" id="qualificationRequirements"
																		class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNumberOfHires">Number of Hires
																	</span>
																</div>
																<div>
																	<input type="text" id="numberOfHires"
																		class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRecruitmentProcess">
																		Recruitment Process</span>
																</div>
																<div>
																	<input type="text" id="recruitmentProcess"
																		class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRecruiterComments"> Recruiter
																		Comments </span>
																</div>
																<div>
																	<textarea id="recruiterComments" class="form-control"> </textarea>
																</div>

															</div>

														</div>

														<div class="row pt-3 pb-3">



															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="text-20" id="pageSpanQuotationDetails">Quotation
																		Details </span>
																</div>
															</div>
														</div>
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTemplate"> Template </span>
																</div>
																<div>
																	<select id="quotationTemplateID"
																		name="quotationTemplateID" class="form-control"
																		role="combobox">
																		<option value="" id="selectOptionSelectTemplate">Select
																			Template</option>
																	</select>
																</div>

															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered mb-0"
																		id="QuotationDetails_table" style="width: 100%">
																		<thead id="quotationDetailsTaxableTheadId">
																			<tr>
																				<th id="tableQuotationDetailsTHNo">No</th>
																				<th id="tableQuotationDetailsTHMajorItems"
																					style="width: 10%">Major Items</th>
																				<th id="tableQuotationDetailsTHItem">Item</th>
																				<th id="tableQuotationDetailsTHUnitPrice"
																					style="width: 10%">Unit Price</th>
																				<th id="tableQuotationDetailsTHQuantity"
																					style="width: 10%">Quantity</th>
																				<th id="tableQuotationDetailsTHAmountMoney"
																					style="width: 10%">Amount of Money</th>
																				<th id="tableQuotationDetailsTHRemarks">
																					Remarks</th>
																				<th id="tableQuotationDetailsTHConsumptionTax">Consumption
																					Tax</th>
																			</tr>
																		</thead>
																		<tbody id="quotationDetailsTaxableTbodyId">
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">1</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1" style="margin: auto;"> <span
																						class="checkmarkTablemajor" style="margin: auto;"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">2</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">3</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">4</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">5</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">6</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">7</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">8</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">9</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																			<tr id="quotationDetailsTaxableTrId">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class="">10</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItems" name="majorItemsTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemTaxableUnitPrice[]"
																					onfocusout="calTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemTaxableQuantity[]"
																					onfocusout="calTaxableQuantity(this)"
																					class="TaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxation"
																					name="tableQuotationDetailsTaxation">Taxation</span>
																				</td>
																			</tr>
																		</tbody>
																		<tfoot id="quotationDetailsTaxableTfootId">
																			<tr>
																				<th colspan="3"
																					id="tableQuotationDetailsSubtotalTaxable"
																					class="right-content">subtotal:</th>
																				<th colspan="2" style="border-right: none"></th>
																				<th colspan="1" class="amount-content-color">¥
																					<span id="tableQuotationDetailsSubtotalTaxableVal"
																					style="border-left: none; border-right: none;">0</span>
																				</th>
																				<th colspan="1"
																					style="border-right: none; border-left: none;">
																				</th>
																				<th colspan="1" class="center-content">
																					<button class="btn SuccessColor"
																						onclick="addTaxableQuotationItemRow()"
																						id="TaxableQuotationItemRowAdd">Add Row</button>
																				</th>
																			</tr>
																		</tfoot>
																	</table>


																	<table
																		class="display table table-striped table-bordered mt-0"
																		id="QuotationDetailsNonTaxable_table"
																		style="width: 100%">
																		<thead id="quotationDetailsNonTaxableTheadId">
																			<tr>
																				<th id="tableQuotationDetailsNonTaxableDetailsTHNo">
																					No</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHMajorItems"
																					style="width: 10%">Major Items</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHItem">
																					Item</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHUnitPrice"
																					style="width: 10%">Unit Price</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHQuantity"
																					style="width: 10%">Quantity</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHAmountMoney"
																					style="width: 10%">Amount of Money</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHRemarks">
																					Remarks</th>
																				<th
																					id="tableQuotationDetailsNonTaxableDetailsTHConsumptionTax">Consumption
																					Tax</th>
																			</tr>
																		</thead>
																		<tbody id="quotationDetailsNonTaxableTbodyId">
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">1</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">2</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">3</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">4</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">5</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">6</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">7</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">8</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">9</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>
																			<tr id="quotationDetailsNonTaxableTrId">
																				<input type="hidden"
																					name="quotationItemNonTaxableID[]">
																				<td class="">10</td>
																				<td class="center-content"><label
																					class="container"> <input type="checkbox"
																						id="majorItemsNon" name="majorItemsNonTaxable[]"
																						value="1"> <span class="checkmarkTablemajor"></span>
																				</label></td>
																				<td><input
																					name="quotationItemNonTaxableItemName[]"
																					type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableUnitPrice[]"
																					onfocusout="calNonTaxableUnitPrice(this)"
																					class="form-control no-border no-outline right-content"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableQuantity[]"
																					onfocusout="calNonTaxableQuantity(this)"
																					class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																				<td class="amount-content-color"
																					name="quotationItemNonTaxableAmountMoney[]"></td>
																				<td><input type="text"
																					name="quotationItemNonTaxableRemarks[]"
																					class="form-control no-border no-outline"></td>
																				<td class="last-td-color"><span
																					id="tableQuotationDetailsTaxExempt"
																					name="tableQuotationDetailsTaxExempt">Tax
																						exempt</span></td>
																			</tr>

																		</tbody>
																		<tfoot id="quotationDetailsTotalfootId">
																			<tr>
																				<th colspan="3" id="tableQuotationDetailsSubtotal"
																					class="right-content">Total (taxable + tax
																					exempt):</th>
																				<th colspan="2" style="border-right: none"></th>
																				<th colspan="1" class="amount-content-color">¥
																					<span id="tableQuotationDetailsFullTotalVal"
																					style="border-left: none; border-right: none;">0</span>
																				</th>
																				<th colspan="1"
																					style="border-right: none; border-left: none;">
																				</th>
																				<th colspan="1" class="center-content"></th>
																			</tr>
																		</tfoot>
																		<tfoot id="quotationDetailsNonTaxableTfootId">
																			<tr>
																				<th colspan="3"
																					id="tableQuotationDetailsSubtotalNonTaxable"
																					class="right-content">subtotal:</th>
																				<th colspan="2" style="border-right: none"></th>
																				<th colspan="1" class="amount-content-color">¥
																					<span
																					id="tableQuotationDetailsSubtotalNonTaxableVal"
																					style="border-left: none; border-right: none;">0</span>
																				</th>
																				<th colspan="1"
																					style="border-right: none; border-left: none;">
																				</th>
																				<th colspan="1" class="center-content">
																					<button class="btn SuccessColor"
																						onclick="addNonTaxableQuotationItemRow()"
																						id="NonTaxableQuotationItemRowAdd">Add
																						Row</button>
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
																<textarea class="form-control" id="quotationRemarks"
																	placeholder=""></textarea>
															</div>


														</div>

														<div
															class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
															<button class="btn btn-info"
																id="buttonUpdateQuoteDetails">Update Quotation</button>
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
	<!-- ============ Search UI Start ============= -->

	<!-- ============ Search UI End ============= -->

	<span id="spanScriptID"></span>
	<script src="./dist-assets/js/language_main.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"quotation");
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


	<script src="./dist-assets/js/quotation-details-validate.js"></script>
	<script>
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>";
	    //const serverHTTP = "http://sola.ml/SOLA-API/";
        const  GUID = localStorage.getItem("GUID");
        const  customerID = localStorage.getItem('customerId');   
        const  searchid = sessionStorage.getItem('id'); 

        
    $(document).ready(function () {
      
        let dataSet = '{"id": '+searchid+'}';
        
        $.ajax({
            beforeSend: function(request) {
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'Quotation/ViewQuotationInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	    getQuotationInfo(result);
            	 }else{
            		 console.log("Sorry getQuotationInfo error");
            	 }
             },
             error: function(error) {
             console.log(JSON.stringify(error));
	          }
	         });
        
        
        $.ajax({
            beforeSend: function(request) {
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'Quotation/ViewCaseInfo',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({"quotationId": searchid}),
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	    getCaseInfo(result);
            	    loadDispatch();
            	 }else{
            		 console.log("Sorry getCaseInfo error");
            	 }
             },
             error: function(error) {
             console.log(JSON.stringify(error));
	          }
	         });
        
        $.ajax({
            beforeSend: function(request) {
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'Quotation/ViewQuotationItem',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({"quotationId": searchid}),
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	 getQuotationItem(result);
            	
            	 }else{
            		 console.log("Sorry getCaseInfo error");
            	 }
             },
             error: function(error) {
             console.log(JSON.stringify(error));
	          }
	         });
        
        $.ajax({
            beforeSend: function(request) {
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'Quotation/SearchQuotationTempInfo',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({"quotationTemplate":{"templateName": null}}),
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	     searchQuotationTempInfo(result);
            	 }else{
            		 console.log("Sorry SearchQuotationTempInfo error");
            	 }
             },
             error: function(error) {
             console.log(JSON.stringify(error));
	          }
	         });

        
        $("#quotationTemplateID").change(function(){
        	
            templateID = $("#quotationTemplateID").val();
            let dataSet = '{"quotationTemplate": {"id": '+templateID+'}}';
            $.ajax({
              beforeSend: function(request) {
                 request.setRequestHeader("GUID", GUID);
              },
              url: serverHTTP +'Quotation/GetQuotationTempInfo',
              method: 'POST',
              contentType: 'application/json',
              data: dataSet,
              dataType: 'json',
               success: function(result, status, request){
               if(result.status==200)
              	 {
              	    getQuotationTempInfo(result);
              	 }else{
              		// showMessage("Sorry Data Loding Error");
              	 }
               },
               error: function(error) {
               console.log(JSON.stringify(error));
  	          }
  	         });
          
          });
        
        
        
        $("#quotationDispatchClassification").change(function(){
        	loadDispatch();
          });
	          
       });
    
	    function loadDispatch(){
	    	
	    	if( $("#quotationDispatchClassification").val()=="")
	    	{
	    		$('#dispatchLoaderID').hide();
	    		$('#dispatchLoader2ID').hide();
	    	}else if( $("#quotationDispatchClassification").val()==4)
	    	{
	    		$('#dispatchLoaderID').hide();
	    		$('#dispatchLoader2ID').show();
	    	}else
	    	{
	    		$('#dispatchLoader2ID').hide();
	    		$('#dispatchLoaderID').show();
	    		
	    	}
	    }
           
        
        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;
        

        function myFunction()
         {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }

 var table ;


 function setLanguageWithTables(selectedLanguage){
   
    loadSelectedLanguage(selectedLanguage,"quotation");
    setLanguage(selectedLanguage);

 }
  

	function getQuotationInfo(result)
	 { 
			var today = new Date();
			var dd = String(today.getDate()).padStart(2, '0');
			var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
			var yyyy = today.getFullYear();
			oldQuotationNumber = result.data.quotationNumber;
			today = mm + '-' + dd + '-' + yyyy;
		
		 document.getElementById("quotationDateOfQuotation").valueAsDate = new Date();
		 document.getElementById("quotationId").value  =  result.data.id;
		 document.getElementById("quotationCustomerCompanyID").value  =  result.data.customerId;
		 document.getElementById("quotationMatterName").value  =  result.data.quotationName;
		 document.getElementById("quotationQuotationNumber").value  =  result.data.quotationNumber;
		 document.getElementById("quotationSalesRepresentative").value  =  result.data.salesRepresentative;
		 document.getElementById("quotationCustomerCompanyName").value  =  result.data.customerCompanyName;
		 document.getElementById("quotationCustomerRepresentativeName").value  =  result.data.customerRepresentativeName;
		 document.getElementById("quotationConsumptionTax").value  =  result.data.consumptionTax;
		 document.getElementById("quotationQuotationStatus").value  =  result.data.quotationStatus;
		 document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML  = result.data.subTotalTaxable;
		 document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML  = result.data.subTotalNonTaxable;
		 document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML  = result.data.total;
		 document.getElementById("quotationRemarks").value =  result.data.remarks;
		
    }
	
	function getCaseInfo(result)
	 { 		    
		
		    document.getElementById("caseId").value =  result.data.id;
		    $('#quotationDispatchClassification').val(result.data.dispatchClassification);
		    
		    $('#occupationClassification1').prop('checked', result.data.occupationClassification1);
		    $('#occupationClassification2').prop('checked', result.data.occupationClassification2);
		    $('#occupationClassification3').prop('checked', result.data.occupationClassification3);
		    $('#occupationClassification4').prop('checked', result.data.occupationClassification4);
		    $('#occupationClassification5').prop('checked', result.data.occupationClassification5);
		    $('#occupationClassification6').prop('checked', result.data.occupationClassification6);
		    $('#occupationClassification7').prop('checked', result.data.occupationClassification7);
		    
			document.getElementById("implementationPeriodStart").value =  result.data.implementationPeriodStart;
			document.getElementById("implementationPeriodEnd").value =  result.data.implementationPeriodEnd;
			
			if(document.getElementById("quotationDispatchClassification").value != 4)
				{
					document.getElementById("workingHoursStart").value =  result.data.workingHoursStart;
					document.getElementById("workingHoursEnd").value =  result.data.workingHoursEnd;
					document.getElementById("businessContent").value =  result.data.businessContent;
					document.getElementById("workLocation").value =  result.data.workLocation;
				}
			else{
				document.getElementById("workingHoursStart1").value =  result.data.workingHoursStart;
				document.getElementById("workingHoursEnd1").value =  result.data.workingHoursEnd;
				document.getElementById("businessContent1").value =  result.data.businessContent;
				document.getElementById("workLocation1").value =  result.data.workLocation;
				
			}
			
			document.getElementById("requiredNumberOfPeople").value =  result.data.requiredNoOfPeople;
			document.getElementById("workAddress").value =  result.data.workAddress;
			document.getElementById("salary").value =  result.data.salary;
			document.getElementById("treatment").value =  result.data.treatment;
			document.getElementById("holiday").value =  result.data.holiday;
			document.getElementById("qualificationRequirements").value =  result.data.qualificationRequirement;
			document.getElementById("numberOfHires").value =  result.data.noOfHire;
			document.getElementById("recruitmentProcess").value =  result.data.recruitmentProcess;
			document.getElementById("recruiterComments").value =  result.data.recruiterComment;
		
   }

	
	function searchQuotationTempInfo(result)
	 { 
		$.each(result.data, function (i, item) {
		    $('#quotationTemplateID').append($('<option>', { 
		        value: item.id,
		        text : item.templateName 
		    }));
		});
    }
	
	
	
	
function  getQuotationItem(result)
   {

    var taxableItemsCount    =  result.data.quotationItemsTaxable.length;
    var nonTaxableItemsCount =  result.data.quotationItemsNonTaxable.length;
    let subTotalTaxable    =  0 ;
    let subTotalNonTaxable =  0 ;
    let fullTotal          =  0 ;
    
    
   //////////////// taxable start ////////////////
   // if(taxableItemsCount>0)
   //{
		 $("#quotationDetailsTaxableTbodyId").empty();
   //}
    
    for(i=0;i<taxableItemsCount;i++)
    {
    	var id = result.data.quotationItemsTaxable[i].id != null ? result.data.quotationItemsTaxable[i].id : "" ;
    	$('#majorItems').prop('checked', result.data.quotationItemsTaxable[i].majorItem);
    	var item = result.data.quotationItemsTaxable[i].item != null ? result.data.quotationItemsTaxable[i].item : "" ;
    	/* var unitPrice = result.data.quotationItemsTaxable[i].unitPrice != null ? result.data.quotationItemsTaxable[i].unitPrice : "" ;
    	var quantity = result.data.quotationItemsTaxable[i].quantity != null ? result.data.quotationItemsTaxable[i].quantity : "" ; */
    	var remarks = result.data.quotationItemsTaxable[i].remarks != null ? result.data.quotationItemsTaxable[i].remarks : "" ;
    	
    	unitPrice  =   parseFloat(result.data.quotationItemsTaxable[i].unitPrice);
    	quantity   =   parseFloat(result.data.quotationItemsTaxable[i].quantity);
    	itemAmount =   unitPrice*quantity;
    	subTotalTaxable = subTotalTaxable + itemAmount;
    	
    	
    	 let newRow = '<tr id="quotationDetailsTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemTaxableID[]" value="'+id+'">'+
						'<td  class="">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '+
							'<span class="checkmarkTablemajor"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemTaxableItemName[]" value="'+item+'" type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)" value="'+unitPrice+'" class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemTaxableQuantity[]"  onfocusout="calTaxableQuantity(this)"  value="'+quantity+'" class="TaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"> '+itemAmount+' </td>'+
						'<td ><input type="text" name="quotationItemTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
							'<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'+
						'</td>'+
				      '</tr>';
				      
		// majorItemsTaxableNode = document.getElementsByName("majorItemsTaxable[]");
		// $(majorItemsTaxableNode[i]).prop('checked', result.data.quotationTemplateItemsTaxable[i].majorItem);		      
    	 $("#QuotationDetails_table tbody").append(newRow);
    }
    
    document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML  = subTotalTaxable;
    		
    for(var i=taxableItemsCount;i<10;i++)
    {
           let newRow = '<tr id="quotationDetailsTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemTaxableID[]">'+
						'<td  class="">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '+
							'<span class="checkmarkTablemajor"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>'+
						'<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
							'<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'+
						'</td>'+
				      '</tr>';
				      
    	 $("#QuotationDetails_table tbody").append(newRow);
    }
    
    //////////////// taxable end ////////////////
    
    
    //////////////// non-taxable start ////////////////
    
   // if(nonTaxableItemsCount>0)
	// {
		 $("#quotationDetailsNonTaxableTbodyId").empty();
	// }
    
    for(i=0;i<nonTaxableItemsCount;i++)
    {
    	var id = result.data.quotationItemsNonTaxable[i].id != null ? result.data.quotationItemsNonTaxable[i].id : "" ; 
    	var item = result.data.quotationItemsNonTaxable[i].item != null ? result.data.quotationItemsNonTaxable[i].item : "" ;
    	$('#majorItems').prop('checked', result.data.quotationItemsNonTaxable[i].majorItem);
    	//var unitPrice = result.data.quotationItemsNonTaxable[i].unitPrice != null ? result.data.quotationItemsNonTaxable[i].unitPrice : "" ;
    	//var quantity = result.data.quotationItemsNonTaxable[i].quantity != null ? result.data.quotationItemsNonTaxable[i].quantity : "" ;
    	var remarks = result.data.quotationItemsNonTaxable[i].remarks != null ? result.data.quotationItemsNonTaxable[i].remarks : "" ;
    	
    	unitPrice  =   parseFloat(result.data.quotationItemsNonTaxable[i].unitPrice);
    	quantity   =   parseFloat(result.data.quotationItemsNonTaxable[i].quantity);
    	itemAmount =   unitPrice*quantity;
    	subTotalNonTaxable = subTotalNonTaxable + itemAmount;
    	

    	 let newRow = '<tr id="quotationDetailsNonTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemNonTaxableID[]" value="'+id+'">'+
						'<td  class="">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '+
							'<span class="checkmarkTablemajor"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemNonTaxableItemName[]" value="'+item+'" type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" value="'+unitPrice+'" class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)"  value="'+quantity+'" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> '+itemAmount+' </td>'+
						'<td ><input type="text" name="quotationItemNonTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
							'<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'+
						'</td>'+
				      '</tr>';
      			      
    	 $("#QuotationDetailsNonTaxable_table tbody").append(newRow);
    }
    
    document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML  = subTotalNonTaxable;

    for(var i=nonTaxableItemsCount;i<10;i++)
    {
           let newRow = '<tr id="quotationDetailsNonTaxableTrId">'+
					  		 '<input type="hidden" name="quotationItemNonTaxableID[]">'+
								'<td  class="">'+(i+1)+'</td>'+
								'<td  class="center-content">'+
									'<label class="container">'+
									'<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '+
									'<span class="checkmarkTablemajor"></span>'+
								  '</label>'+
								'</td>'+
								'<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'+
								'<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>'+
								'<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'+
								'<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>'+
								'<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>'+
								'<td class="last-td-color">'+
									'<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'+
								'</td>'+
						    '</tr>';
				      
    	 $("#QuotationDetailsNonTaxable_table tbody").append(newRow);
    }  
    
    fullTotal = subTotalTaxable + subTotalNonTaxable ;
    document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML  = fullTotal;
    
    //////////////// non-taxable end ////////////////
 }
 
function  getQuotationTempInfo(result)
{
// document.getElementById("quotationTemplateName").value = result.data.quotationTemplate.templateName;
// document.getElementById("quotationSortOrder").value = result.data.quotationTemplate.sortOrder;

 var taxableItemsCount    =  result.data.quotationTemplateItemsTaxable.length;
 var nonTaxableItemsCount =  result.data.quotationTemplateItemsNonTaxable.length;
 let subTotalTaxable    =  0 ;
 let subTotalNonTaxable =  0 ;
 let fullTotal          =  0 ;
 
 
//////////////// taxable start ////////////////
// if(taxableItemsCount>0)
//{
		 $("#quotationDetailsTaxableTbodyId").empty();
//}
 
 for(i=0;i<taxableItemsCount;i++)
 {
 	var id = result.data.quotationTemplateItemsTaxable[i].id != null ? result.data.quotationTemplateItemsTaxable[i].id : "" ;
 	var itemName = result.data.quotationTemplateItemsTaxable[i].itemName != null ? result.data.quotationTemplateItemsTaxable[i].itemName : "" ;
 	//var unitPrice = result.data.quotationTemplateItemsTaxable[i].unitPrice != null ? result.data.quotationTemplateItemsTaxable[i].unitPrice : "" ;
 	//var quantity = result.data.quotationTemplateItemsTaxable[i].quantity != null ? result.data.quotationTemplateItemsTaxable[i].quantity : "" ;
 	var remarks = result.data.quotationTemplateItemsTaxable[i].remarks != null ? result.data.quotationTemplateItemsTaxable[i].remarks : "" ;
 	
 	unitPrice  =   parseFloat(result.data.quotationTemplateItemsTaxable[i].unitPrice);
 	quantity   =   parseFloat(result.data.quotationTemplateItemsTaxable[i].quantity);
 	itemAmount =   unitPrice*quantity;
 	subTotalTaxable = subTotalTaxable + itemAmount;
 	
 	
 	 let newRow = '<tr id="quotationDetailsTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemTaxableID[]" value="'+id+'">'+
						'<td  class="">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '+
							'<span class="checkmarkTablemajor"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemTaxableItemName[]" value="'+itemName+'" type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)" value="'+unitPrice+'" class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemTaxableQuantity[]"  onfocusout="calTaxableQuantity(this)"  value="'+quantity+'" class="TaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"> '+itemAmount+' </td>'+
						'<td ><input type="text" name="quotationItemTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
							'<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'+
						'</td>'+
				      '</tr>';
				      
		// majorItemsTaxableNode = document.getElementsByName("majorItemsTaxable[]");
		// $(majorItemsTaxableNode[i]).prop('checked', result.data.quotationTemplateItemsTaxable[i].majorItem);		      
 	 $("#QuotationDetails_table tbody").append(newRow);
 }
 
 document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML  = subTotalTaxable;
 		
 for(var i=taxableItemsCount;i<10;i++)
 {
        let newRow = '<tr id="quotationDetailsTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemTaxableID[]">'+
						'<td  class="">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '+
							'<span class="checkmarkTablemajor"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>'+
						'<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
							'<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'+
						'</td>'+
				      '</tr>';
				      
 	 $("#QuotationDetails_table tbody").append(newRow);
 }
 
 //////////////// taxable end ////////////////
 
 
 //////////////// non-taxable start ////////////////
 
// if(nonTaxableItemsCount>0)
	// {
		 $("#quotationDetailsNonTaxableTbodyId").empty();
	// }
 
 for(i=0;i<nonTaxableItemsCount;i++)
 {
 	var id = result.data.quotationTemplateItemsTaxable[i].id != null ? result.data.quotationTemplateItemsTaxable[i].id : "" ; 
 	var itemName = result.data.quotationTemplateItemsNonTaxable[i].itemName != null ? result.data.quotationTemplateItemsNonTaxable[i].itemName : "" ;
 	//var unitPrice = result.data.quotationTemplateItemsNonTaxable[i].unitPrice != null ? result.data.quotationTemplateItemsNonTaxable[i].unitPrice : "" ;
 	//var quantity = result.data.quotationTemplateItemsNonTaxable[i].quantity != null ? result.data.quotationTemplateItemsNonTaxable[i].quantity : "" ;
 	var remarks = result.data.quotationTemplateItemsNonTaxable[i].remarks != null ? result.data.quotationTemplateItemsNonTaxable[i].remarks : "" ;
 	
 	unitPrice  =   parseFloat(result.data.quotationTemplateItemsNonTaxable[i].unitPrice);
 	quantity   =   parseFloat(result.data.quotationTemplateItemsNonTaxable[i].quantity);
 	itemAmount =   unitPrice*quantity;
 	subTotalNonTaxable = subTotalNonTaxable + itemAmount;
 	

 	 let newRow = '<tr id="quotationDetailsNonTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemNonTaxableID[]" value="'+id+'">'+
						'<td  class="">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '+
							'<span class="checkmarkTablemajor"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemNonTaxableItemName[]" value="'+itemName+'" type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" value="'+unitPrice+'" class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)"  value="'+quantity+'" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> '+itemAmount+' </td>'+
						'<td ><input type="text" name="quotationItemNonTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
							'<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'+
						'</td>'+
				      '</tr>';
   			      
 	 $("#QuotationDetailsNonTaxable_table tbody").append(newRow);
 }
 
 document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML  = subTotalNonTaxable;

 for(var i=nonTaxableItemsCount;i<10;i++)
 {
        let newRow = '<tr id="quotationDetailsNonTaxableTrId">'+
					  		 '<input type="hidden" name="quotationItemNonTaxableID[]">'+
								'<td  class="">'+(i+1)+'</td>'+
								'<td  class="center-content">'+
									'<label class="container">'+
									'<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '+
									'<span class="checkmarkTablemajor"></span>'+
								  '</label>'+
								'</td>'+
								'<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'+
								'<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>'+
								'<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'+
								'<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>'+
								'<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>'+
								'<td class="last-td-color">'+
									'<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'+
								'</td>'+
						    '</tr>';
				      
 	 $("#QuotationDetailsNonTaxable_table tbody").append(newRow);
 }  
 
 fullTotal = subTotalTaxable + subTotalNonTaxable ;
 document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML  = fullTotal;
 
 //////////////// non-taxable end ////////////////
}

	function calTaxableUnitPrice(node)
 {
		trNode = node.closest("tr");
		checkUnitPrice(node); //  For Validation
		
		TaxableUnitPrice =  parseFloat(node.value);
		TaxableQuantity  =  parseFloat($(trNode).find("td:eq(4) input[type='text']").val());
		itemAmount =  TaxableUnitPrice*TaxableQuantity;
		if(!isNaN(itemAmount) && !isNaN(node.value))
		{
			$(trNode).find("td:eq(5)").html(itemAmount);
			calculateTaxableSubtotal();
			calculateTotal();
		}else{
			$(trNode).find("td:eq(5)").html("");
			calculateTaxableSubtotal();
			calculateTotal();
		}
		console.log("itemAmount "+itemAmount);
		
 }

	function calTaxableQuantity(node)
	 {
			trNode = node.closest("tr");
			checkQuantity(node); //   For Validation
			
			TaxableQuantity   =  parseFloat(node.value);
			TaxableUnitPrice  =  parseFloat($(trNode).find("td:eq(3) input[type='text']").val());
			itemAmount =  TaxableUnitPrice*TaxableQuantity;
			if(!isNaN(itemAmount) && !isNaN(node.value))
			{
				$(trNode).find("td:eq(5)").html(itemAmount);
				calculateTaxableSubtotal();
				calculateTotal();
			}else
			{
				$(trNode).find("td:eq(5)").html("");
				calculateTaxableSubtotal();
				calculateTotal();
			}
			console.log("itemAmount "+itemAmount);
			
	 }

	
 function calNonTaxableUnitPrice(node)
 {
	    trNode = node.closest("tr");
	    checkUnitPrice(node); //  For Validation
	    
		NonTaxableUnitPrice =  parseFloat(node.value);
		NonTaxableQuantity  =  parseFloat($(trNode).find("td:eq(4) input[type='text']").val());
		itemAmount =  NonTaxableUnitPrice*NonTaxableQuantity;
		if(!isNaN(itemAmount) && !isNaN(node.value))
		{	
			$(trNode).find("td:eq(5)").html(itemAmount);
			calculateNonTaxableSubtotal();
			calculateTotal()
		}else
		{
			$(trNode).find("td:eq(5)").html("");
			calculateTaxableSubtotal();
			calculateTotal();
		}
		
		console.log("itemAmount "+itemAmount);
 }
 
 function calNonTaxableQuantity(node)
 {
	    trNode = node.closest("tr");
	    checkQuantity(node); //   For Validation
	    
	    NonTaxableQuantity  =  parseFloat(node.value);
		NonTaxableUnitPrice =  parseFloat($(trNode).find("td:eq(3) input[type='text']").val());
		itemAmount =  NonTaxableUnitPrice*NonTaxableQuantity;
		if(!isNaN(itemAmount) && !isNaN(node.value))
		{
			$(trNode).find("td:eq(5)").html(itemAmount);
			calculateNonTaxableSubtotal();
			calculateTotal()
		}else
		{
			$(trNode).find("td:eq(5)").html("");
			calculateTaxableSubtotal();
			calculateTotal();
		}
		console.log("itemAmount "+itemAmount);
 }
 
 function calculateTaxableSubtotal()
 {
	 ItemTaxableAmount = document.getElementsByName("quotationItemTaxableAmountMoney[]");
	 var TaxableSubtotal = 0
	 for(i=0;i<ItemTaxableAmount.length;i++)
	   {
		 if(ItemTaxableAmount[i].innerHTML.trim() !="" )
		 {
			 TaxableSubtotal  =  TaxableSubtotal + parseFloat( ItemTaxableAmount[i].innerHTML.trim());
			  
		 }
	   }
	 
	 document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML =  TaxableSubtotal;
 }
 
 function calculateNonTaxableSubtotal()
 {
	 ItemNonTaxableAmount = document.getElementsByName("quotationItemNonTaxableAmountMoney[]");
	 var NonTaxableSubtotal = 0
	 for(i=0;i<ItemNonTaxableAmount.length;i++)
	   {
		 if(ItemNonTaxableAmount[i].innerHTML.trim() !="" )
		 {
			 NonTaxableSubtotal  =  NonTaxableSubtotal + parseFloat( ItemNonTaxableAmount[i].innerHTML.trim());
			  
		 }
	   }
	 
	 document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML =  NonTaxableSubtotal; 
 }
 
 function calculateTotal()
 {
	 TaxableSubtotal = parseFloat(document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML.trim());
	 NonTaxableSubtotal = parseFloat(document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML.trim());
	 
	 total =	TaxableSubtotal + NonTaxableSubtotal ;
	 
	 document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML = total ;
 }

	
	function addTaxableQuotationItemRow()
	{
	    var $tr    = $("#quotationDetailsTaxableTrId").last('tr');
	    var rowCount = $('#QuotationDetails_table tr').length;
	    var $clone = $tr.clone();
	    $clone.find('input').val('');
	    $clone.find('input[name="majorItemsTaxable[]"]').val('1');
	    $clone.find('td[name="quotationItemTaxableAmountMoney[]"]').html('');
	    $clone.find('input[name="majorItemsTaxable[]"]').prop('checked', false);
	    $clone.find('td:eq(0)').html(rowCount-1);
	    $("#quotationDetailsTaxableTbodyId").append($clone);
	}
	
	function addNonTaxableQuotationItemRow()
	{
	    var $tr    = $("#quotationDetailsNonTaxableTrId").last('tr');
	    var rowCount = $('#QuotationDetailsNonTaxable_table tr').length;
	    var $clone = $tr.clone();
	    $clone.find('input').val('');
	    $clone.find('input[name="majorItemsNonTaxable[]"]').val('1');
	    $clone.find('td[name="quotationItemNonTaxableAmountMoney[]"]').html(''); 
	    $clone.find('input[name="majorItemsNonTaxable[]"]').prop('checked', false);
	    $clone.find('td:eq(0)').html(rowCount-2);
	    $("#quotationDetailsNonTaxableTbodyId").append($clone);
	}



	
	function saveQuotationInfo()
	{
		//quotation Info
		var id = document.getElementById("quotationId").value;
		var customerId = document.getElementById("quotationCustomerCompanyID").value;
		var quotationMatterName = document.getElementById("quotationMatterName").value.trim();
		var quotationDateOfQuotation = document.getElementById("quotationDateOfQuotation").value != "" ? document.getElementById("quotationDateOfQuotation").value : null;
		var quotationSalesRepresentative = document.getElementById("quotationSalesRepresentative").value != "" ? document.getElementById("quotationSalesRepresentative").value : null;
		var quotationConsumptionTax = document.getElementById("quotationConsumptionTax").value;
		var quotationQuotationStatus = document.getElementById("quotationQuotationStatus").value;
		var quotationSubTotalTaxable = parseFloat(document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML);
	    var quotationSubTotalNonTaxable = parseFloat(document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML);
	    var quotationTotal = parseFloat(document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML);
	    var quotationTemplateRemarks = document.getElementById("quotationRemarks").value.trim();
	    
		let dataPassNode = {};
		dataPassNode['id'] = id;
		dataPassNode['customerId'] = customerId;
		dataPassNode['quotationName'] = quotationMatterName;
		dataPassNode['dateOfQuotation'] = quotationDateOfQuotation;
		dataPassNode['salesRepresentative'] = quotationSalesRepresentative;
		dataPassNode['consumptionTax'] = quotationConsumptionTax;
		dataPassNode['quotationStatus'] = quotationQuotationStatus;
		dataPassNode['subTotalTaxable'] = quotationSubTotalTaxable;
		dataPassNode['subTotalNonTaxable'] = quotationSubTotalNonTaxable;
		dataPassNode['total'] = quotationTotal;
		dataPassNode['remarks'] = quotationTemplateRemarks;
	
	   
       	let quotationId = 0;
       	let quotationNumber = "";
       	
		$.ajax({
			beforeSend : function(request) {
				request.setRequestHeader("GUID", GUID);
			},
			url : serverHTTP + 'Quotation/SaveQuotationInfo',
			method : 'POST',
			async: false,
			contentType : 'application/json',
			data : JSON.stringify(dataPassNode),
			dataType : 'json',
			success : function(result, status, request) {
				if (result.status == 202) {
					
					quotationId = result.data.id;
					quotationNumber =  result.data.quotationNumber;
					
					

				} else {
					showMessage('error',"N1221");
				console.log("Sorry Quotation Info not working");
				}
			},
			error : function(error) {
				showMessage('error',"N1221");
				console.log("Sorry Quotation Info not working");
				console.log(JSON.stringify(error));
			}
	});	
		if(quotationId != 0){
			 //case Info
			    var caseId = document.getElementById("caseId").value;
		        var quotationDispatchClassification = document.getElementById("quotationDispatchClassification").value != "" ? document.getElementById("quotationDispatchClassification").value : null;;
			    
			    var oc1 = 0;
				var oc2 = 0;
				var oc3 = 0;
				var oc4 = 0;
				var oc5 = 0;
				var oc6 = 0;
				var oc7 = 0;
				
				var quotationOccupationClassification1 = document.getElementById("occupationClassification1");
				var quotationOccupationClassification2 = document.getElementById("occupationClassification2");
				var quotationOccupationClassification3 = document.getElementById("occupationClassification3");
				var quotationOccupationClassification4 = document.getElementById("occupationClassification4");
				var quotationOccupationClassification5 = document.getElementById("occupationClassification5");
				var quotationOccupationClassification6 = document.getElementById("occupationClassification6");
				var quotationOccupationClassification7 = document.getElementById("occupationClassification7");

				if (quotationOccupationClassification1.checked == true) {
					oc1 = quotationOccupationClassification1.value;
				}
				if (quotationOccupationClassification2.checked == true) {
					oc2 = quotationOccupationClassification2.value;
				}
				if (quotationOccupationClassification3.checked == true) {
					oc3 = quotationOccupationClassification3.value;
				}
				if (quotationOccupationClassification4.checked == true) {
					oc4 = quotationOccupationClassification4.value;
				}
				if (quotationOccupationClassification5.checked == true) {
					oc5 = quotationOccupationClassification5.value;
				}
				if (quotationOccupationClassification6.checked == true) {
					oc6 = quotationOccupationClassification6.value;
				}
				if (quotationOccupationClassification7.checked == true) {
					oc7 = quotationOccupationClassification7.value;
				}
				
				if(quotationDispatchClassification!=4){
					var workingHoursStart = document.getElementById("workingHoursStart").value.trim();
					var workingHoursEnd = document.getElementById("workingHoursEnd").value.trim();
					var businessContent = document.getElementById("businessContent").value.trim();
					var workLocation = document.getElementById("workLocation").value.trim();
					
				}else{
					var workingHoursStart = document.getElementById("workingHoursStart1").value.trim();
					var workingHoursEnd = document.getElementById("workingHoursEnd1").value.trim();
					var businessContent = document.getElementById("businessContent1").value.trim();
					var workLocation = document.getElementById("workLocation1").value.trim();
					
				}
				var implementationPeriodStart = document.getElementById("implementationPeriodStart").value != "" ? document.getElementById("implementationPeriodStart").value : null;
				var implementationPeriodEnd = document.getElementById("implementationPeriodEnd").value != "" ? document.getElementById("implementationPeriodEnd").value : null;
				
				var requiredNumberOfPeople = document.getElementById("requiredNumberOfPeople").value.trim();
				
				var workAddress = document.getElementById("workAddress").value.trim();
				
				var salary = document.getElementById("salary").value.trim();
				var treatment = document.getElementById("treatment").value.trim();
				var holiday = document.getElementById("holiday").value.trim();
				var qualificationRequirements = document.getElementById("qualificationRequirements").value.trim();
				var numberOfHires = document.getElementById("numberOfHires").value.trim();
				var recruitmentProcess = document.getElementById("recruitmentProcess").value.trim();
				var recruiterComments = document.getElementById("recruiterComments").value.trim();
				
				
				
				
			let caseNode = {};
			
			caseNode['id'] = caseId;
			caseNode['quotationId'] = quotationId;
			caseNode['dispatchClassification'] = quotationDispatchClassification;
			caseNode['occupationClassification1'] = oc1;
			caseNode['occupationClassification2'] = oc2;
			caseNode['occupationClassification3'] = oc3;
			caseNode['occupationClassification4'] = oc4;
			caseNode['occupationClassification5'] = oc5;
			caseNode['occupationClassification6'] = oc6;
			caseNode['occupationClassification7'] = oc7;
			caseNode['workLocation'] = workLocation;
			caseNode['businessContent'] = businessContent;
			caseNode['workingHoursStart'] = workingHoursStart;
			caseNode['workingHoursEnd'] = workingHoursEnd;
			caseNode['workAddress'] = workAddress;
			caseNode['requiredNoOfPeople'] = requiredNumberOfPeople;
			caseNode['implementationPeriodStart'] = implementationPeriodStart;
			caseNode['implementationPeriodEnd'] = implementationPeriodEnd;
			caseNode['salary'] = salary;
			caseNode['treatment'] = treatment;
			caseNode['holiday'] = holiday;
			caseNode['qualificationRequirement'] = qualificationRequirements;
			caseNode['noOfHire'] = numberOfHires;
			caseNode['recruitmentProcess'] = recruitmentProcess;
			caseNode['recruiterComment'] = recruiterComments;
		
		$.ajax({
			beforeSend : function(request) {
				request.setRequestHeader("GUID", GUID);
			},
			url : serverHTTP + 'Quotation/SaveCaseInfo',
			method : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(caseNode),
			dataType : 'json',
			success : function(result, status, request) {
				if (result.status == 202) {
					console.log("Case Info working");
				} else {
					showMessage('error',"N1222");
				console.log("Sorry Case Info not working");
				}
			},
			error : function(error) {
				showMessage('error',"N1222");
				console.log("Sorry Case Info not working");
				console.log(JSON.stringify(error));
			}
	});	
		
		 var dataNode = {};
		 var dataArrayQutationTempTaxableItems = [];
	     var dataArrayQutationTempNonTaxableItems = [];
		
	   //quotation Item
		 var quotationItemTaxableIDArray = document.getElementsByName("quotationItemTaxableID[]");
		 var quotationItemMajorItemsTaxableArray = document.getElementsByName("majorItemsTaxable[]");
	     var quotationItemTaxableItemNameArray = document.getElementsByName("quotationItemTaxableItemName[]");
	     var quotationItemTaxableUnitPriceArray = document.getElementsByName("quotationItemTaxableUnitPrice[]");
	     var quotationItemTaxableQuantityArray = document.getElementsByName("quotationItemTaxableQuantity[]");
	     var quotationItemTaxableAmountMoneyArray = document.getElementsByName("quotationItemTaxableAmountMoney[]");
	     var quotationItemTaxableRemarksArray = document.getElementsByName("quotationItemTaxableRemarks[]");
	     
	     var quotationItemNonTaxableIDArray = document.getElementsByName("quotationItemNonTaxableID[]");
		 var quotationItemMajorItemsNonTaxableArray = document.getElementsByName("majorItemsNonTaxable[]");
	     var quotationItemNonTaxableItemNameArray = document.getElementsByName("quotationItemNonTaxableItemName[]");
	     var quotationItemNonTaxableUnitPriceArray = document.getElementsByName("quotationItemNonTaxableUnitPrice[]");
	     var quotationItemNonTaxableQuantityArray = document.getElementsByName("quotationItemNonTaxableQuantity[]");
	     var quotationItemNonTaxableAmountMoneyArray = document.getElementsByName("quotationItemNonTaxableAmountMoney[]");
	     var quotationItemNonTaxableRemarksArray = document.getElementsByName("quotationItemNonTaxableRemarks[]");

	     for(var i = 0; i < quotationItemTaxableAmountMoneyArray.length; i++)
	     {
	    	 if(quotationItemTaxableAmountMoneyArray[i].innerHTML.trim() != "")
	    		 {
			    	 var quotationItemTaxableID = quotationItemTaxableIDArray[i].value != "" ? quotationItemTaxableIDArray[i].value :null;
			    	 var quotationItemMajorItemsTaxable = 0 ;
			    	 if (quotationItemMajorItemsTaxableArray[i].checked == true){  
			    		 quotationItemMajorItemsTaxable = quotationItemMajorItemsTaxableArray[i].value;  
			    	  } 
			         var quotationItemTaxableItemName = quotationItemTaxableItemNameArray[i].value != ""? quotationItemTaxableItemNameArray[i].value :null;
			         var quotationItemTaxableUnitPrice = quotationItemTaxableUnitPriceArray[i].value != "" ? quotationItemTaxableUnitPriceArray[i].value.trim() :null;
			         var quotationItemTaxableQuantity = quotationItemTaxableQuantityArray[i].value != "" ? quotationItemTaxableQuantityArray[i].value.trim() :null;
			         var quotationItemTaxableAmountMoney = quotationItemTaxableAmountMoneyArray[i].innerHTML.trim() != "" ? quotationItemTaxableAmountMoneyArray[i].innerHTML.trim() :null;
			         var quotationItemTaxableRemarks = quotationItemTaxableRemarksArray[i].value.trim() != "" ? quotationItemTaxableRemarksArray[i].value.trim() :null;
			    	
			         var tempTaxable = { "id":quotationItemTaxableID,
						                 "item": quotationItemTaxableItemName,
						                 "majorItem": quotationItemMajorItemsTaxable,
						                 "unitPrice": quotationItemTaxableUnitPrice,
						                 "quantity": quotationItemTaxableQuantity,
						                 "amount": quotationItemTaxableAmountMoney,
						                 "remarks": quotationItemTaxableRemarks,
						                 "tax": 1 }
			         
			         dataArrayQutationTempTaxableItems.push(tempTaxable);
	    		 }
				                 
	     }
	  
	     
	     for(var i = 0; i < quotationItemTaxableAmountMoneyArray.length; i++)
	     {
	    	 if(quotationItemNonTaxableAmountMoneyArray[i].innerHTML.trim() != "")
			 {
		    	 var quotationItemNonTaxableID = quotationItemNonTaxableIDArray[i].value !="" ? quotationItemNonTaxableIDArray[i].value :null;
		    	 var quotationItemMajorItemsNonTaxable = 0 ;
		    	 if (quotationItemMajorItemsNonTaxableArray[i].checked == true){  
		    		 quotationItemMajorItemsNonTaxable = quotationItemMajorItemsNonTaxableArray[i].value;  
		    	  } 
		         var quotationItemNonTaxableItemName = quotationItemNonTaxableItemNameArray[i].value != ""? quotationItemNonTaxableItemNameArray[i].value :null;
		         var quotationItemNonTaxableUnitPrice = quotationItemNonTaxableUnitPriceArray[i].value != "" ? quotationItemNonTaxableUnitPriceArray[i].value.trim() :null;
		         var quotationItemNonTaxableQuantity = quotationItemNonTaxableQuantityArray[i].value != "" ? quotationItemNonTaxableQuantityArray[i].value.trim() :null;
		         var quotationItemNonTaxableAmountMoney = quotationItemNonTaxableAmountMoneyArray[i].innerHTML.trim() != "" ? quotationItemNonTaxableAmountMoneyArray[i].innerHTML.trim() :null;
		         var quotationItemNonTaxableRemarks = quotationItemNonTaxableRemarksArray[i].value.trim() != "" ? quotationItemNonTaxableRemarksArray[i].value.trim() :null;
		    
		         var tempNonTaxable = {  "id":quotationItemNonTaxableID,
						                 "item": quotationItemNonTaxableItemName,
						                 "majorItem": quotationItemMajorItemsNonTaxable,
						                 "unitPrice": quotationItemNonTaxableUnitPrice,
						                 "quantity": quotationItemNonTaxableQuantity,
						                 "amount": quotationItemNonTaxableAmountMoney,
						                 "remarks": quotationItemNonTaxableRemarks,
						                 "tax": 0 }
						                 
		         dataArrayQutationTempNonTaxableItems.push(tempNonTaxable);
			 }
	     }
	     
		dataNode['quotationId'] = quotationId;
		dataNode['quotationItemsTaxable'] = dataArrayQutationTempTaxableItems;
      	dataNode['quotationItemsNonTaxable'] = dataArrayQutationTempNonTaxableItems;
       	passData = JSON.stringify(dataNode);
		
		$.ajax({
			beforeSend : function(request) {
				request.setRequestHeader("GUID", GUID);
			},
			url : serverHTTP + 'Quotation/SaveQuotationItem',
			method : 'POST',
			contentType : 'application/json',
			data : passData,
			dataType : 'json',
			success : function(result, status, request) {
				if (result.status == 202) {
					document.getElementById("quotationQuotationNumber").value = quotationNumber; 
					checkMessage('success','N0001','N0002', oldQuotationNumber,quotationNumber);
					oldQuotationNumber = quotationNumber ;

				} else {
					showMessage('error',"N1217");
				console.log("Sorry Quotation Info not working");
				}
			},
			error : function(error) {
				showMessage('error',"N1217");
				console.log("Sorry Quotation item not working");
				console.log(JSON.stringify(error));
			}
	});	
		} else
		{
			showMessage('error',"N1225");
		}
		
	}
	
	function copyQuotation()
	{
		sessionStorage.setItem("id", searchid);	
    	window.location.href = "quotation-duplicate.jsp";
	}
	
	function makeCaseByQuotation()
	{
		localStorage.setItem("quotationId", searchid);	
    	window.location.href = "case-registration.jsp";
	}
	
	$("#quotationDelete").click(function( event ) { 
    	
  	   var dataNode = {};     
  	   dataNode['id'] = searchid;  

    	   $.ajax({
             beforeSend: function(request) {
            	 document.getElementById("loaderNotify").style.display = "";
              request.setRequestHeader("GUID", GUID);
             },
             url: serverHTTP +'Quotation/DeleteQuotationInfo',
             method: 'POST',
             contentType: 'application/json',
             data: JSON.stringify(dataNode),
             dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
             {
              	showMessage('success',"N1228");
              	setTimeout(function(){
              		window.location.href = "quotation-management.jsp"; 
              		}, 3700);

             	 }
              else
              {
              	showMessage('error',"E1029");
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
	
        </script>
</body>

</html>