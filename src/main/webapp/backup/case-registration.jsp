<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCaseRegistration">Case Registration</title>


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
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingCaseRegistration"> Case Registration</span>
										</h1>

									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">
												<button
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonSpanCreateMatter"> Create from this
														Case</span>
												</button>
												<div class="btn-group">
													<button
														class="DefaultButton btn btn-info TopButtonMinWidth  dropdown-toggle"
														type="button" data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<span id="buttonSpanCreateFromThisCustomer">
															Reports </span>
													</button>
													<div class="dropdown-menu" x-placement="bottom-start">
														<a class="dropdown-item" href="#"> <span
															id="workerDispatchIndividual" data-toggle="modal"
															data-target="#exampleModal1">Worker Dispatch
																Individual Contract Output</span>
														</a> <a class="dropdown-item" href="#"> <span
															id="dispatchSourceManagement" data-toggle="modal"
															data-target="#exampleModal2">Dispatch source
																management ledger output</span>
														</a> <a class="dropdown-item" href="#"> <span
															id="dispatchdestinationManagement" data-toggle="modal"
															data-target="#exampleModal3">Dispatch destination
																management ledger output</span>
														</a> <a class="dropdown-item"><span
															id="dispatchOutputofworking" data-toggle="modal"
															data-target="#exampleModal4">Output of working
																condition notification and working condition </span></a> <a
															class="dropdown-item"><span
															id="creationofdispatch" data-toggle="modal"
															data-target="#exampleModal5">Creation of dispatch
																notice </span></a>
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
										can modify the case and create an invoice related to this
										case. Information for each implementation date will be
										provided on the implementation information details screen.</p>
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
																	id="accordionCaseIntelligence">Case Information</div>
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
																	<span id="pageSpanCaseName"> (S) Case name </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="text" id="caseName" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCaseName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMatterNumber">Case number </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="text" readonly id="inputCaseNumber"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCaseNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanQuotationNumber"> Quotation
																		number</span><span class="RequiredStar"> *</span>
																</div>
																<div>
																<input type="hidden" id="quotationID" class="form-control" readonly="readonly">
																	<input type="text" readonly id="QuotationNumber"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorQuotationNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAssignmentClassification">Assignment
																		Classification</span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<Select id="assignmentClassification"
																		class="form-control">
																		<option value="" id="optionSelectAssignmentClassification">Select Assignment Classification</option>
																		<option value="1" id="optionSelectAssignmentClassificationAssignByDate">Assign By Date</option>
																		<option value="2" id="optionSelectAssignmentClassificationAssignByPeriod">Assign By Period</option>
																	</Select>
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
																		Classification</span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<Select id="dispatchClassification"
																		name="dispatchClassification" class="form-control"
																		role="combobox">
																		<option value="" id="optionDispatchClassification">Select Dispatch Classification</option>
																		<option value="1" id="optionDispatchClassificationGeneralDispatch">General Dispatch</option>
																		<option value="2" id="optionDispatchClassificationBusinessContract">Business Contract</option>
																		<option value="3" id="optionDispatchClassificationIntroductionDispatching">Introduction Dispatching</option>
																		<option value="4" id="optionDispatchClassificationRecruitment">Recruitment</option>
																		<option value="5" id="optionDispatchClassificationPartTime">Part Time</option>
																	</Select>
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
																	<Select id="DivisionByBusiness" class="form-control">	
																	<option value="0" id="optionDivisionByBusinessAdministrativecivilservant">Administrative civil servant</option>
																	<option value="1" id="optionDivisionByBusinessCorporategroupofficers" >Corporate / group officers</option>
																	<option value="2" id="optionDivisionByBusinessCorporategroupmanagementstaff">Corporate / group management staff</option>
																	<option value="3" id="optionDivisionByBusinessOtheradministrativeworkers">Other administrative workers</option>
																	<option value="4" id="optionDivisionByBusinessresearcher">researcher</option>
																	<option value="5" id="optionDivisionByBusinessAgricultureforestryandfisheriesengineers">Agriculture, forestry and fisheries engineers</option>
																	<option value="6" id="optionDivisionByBusinessManufacturingtechnician">Manufacturing technician</option>
																	<option value="7" id="optionDivisionByBusinessArchitectureCivilEngineeringSurveyor">Architecture / Civil Engineering / Surveyor</option>
																	<option value="8" id="optionDivisionByBusinessInformationprocessingcommunicationengineer">Information processing / communication engineer</option>
																	<option value="9" id="optionDivisionByBusinessOthertechnicians">Other technicians</option>
																	<option value="10" id="optionDivisionByBusinessDoctordentistveterinarianpharmacist">Doctor, dentist, veterinarian, pharmacist</option>
																	<option value="11" id="optionDivisionByBusinessPublichealthnursesmidwivesnurses">Public health nurses, midwives, nurses</option>
																	<option value="12" id="optionDivisionByBusinessMedicaltechnician">Medical technician</option>
																	<option value="13" id="optionDivisionByBusinessOtherhealthcareworkers">Other health care workers</option>
																	<option value="14" id="optionDivisionByBusinessSocialwelfareprofessionals">Social welfare professionals</option>
																	<option value="15" id="optionDivisionByBusinessLegalworker">Legal worker</option>
																	<option value="16" id="optionDivisionByBusinessProfessionalsinmanagementfinanceandinsurance">Professionals in management, finance, and insurance</option>
																	<option value="17" id="optionDivisionByBusinessTeacher">Teacher</option>
																	<option value="18" id="optionDivisionByBusinessReligiousperson">Religious person</option>
																	<option value="19" id="optionDivisionByBusinessWriterreportereditor">Writer, reporter, editor</option>
																	<option value="20" id="optionDivisionByBusinessArtistdesignerphotographerfilmmaker">Artist, designer, photographer, filmmaker</option>
																	<option value="21" id="optionDivisionByBusinessMusicianperformingarts">Musician, performing arts</option>
																	<option value="22" id="optionDivisionByBusinessOtherprofessionalworkers">Other professional workers</option>
																	<option value="23" id="optionDivisionByBusinessGeneralofficeworker">General office worker</option>
																	<option value="24" id="optionDivisionByBusinessAccountingclerk">Accounting clerk</option>
																	<option value="25" id="optionDivisionByBusinessProductionrelatedofficeworkers">Production-related office workers</option>
																	<option value="26" id="optionDivisionByBusinessSalessalesofficeworker">Sales / sales office worker</option>
																	<option value="27" id="optionDivisionByBusinessOutsideofficeworker">Outside office worker</option>
																	<option value="28" id="optionDivisionByBusinessTransportationandpostalofficeworkers">Transportation and postal office workers</option>
																	<option value="29" id="optionDivisionByBusinessOfficeequipmentoperator">Office equipment operator</option>
																	<option value="30" id="optionDivisionByBusinessProductsalesworker">Product sales worker</option>
																	<option value="31" id="optionDivisionByBusinessSaleslikeprofessionalworkers">Sales-like professional workers</option>
																	<option value="32" id="optionDivisionByBusinessSalespositionworker">Sales position worker</option>
																	<option value="33" id="optionDivisionByBusinessFamilylifesupportserviceprofessionalworker">Family life support service professional worker</option>
																	<option value="34" id="optionDivisionByBusinessLongtermcareserviceworker">Long-term care service worker</option>
																	<option value="35" id="optionDivisionByBusinessHealthcareserviceprofessionals">Health care service professionals</option>
																	<option value="36" id="optionDivisionByBusinessLifehygieneserviceworker">Life hygiene service worker</option>
																	<option value="37" id="optionDivisionByBusinessFoodanddrinkcook">Food and drink cook</option>
																	<option value="38" id="optionDivisionByBusinessCustomerservicewaiterworkers">Customer service / waiter workers</option>
																	<option value="39" id="optionDivisionByBusinessManagerofresidentialfacilitiesbuildings">Manager of residential facilities, buildings, etc.</option>
																	<option value="40" id="optionDivisionByBusinessOtherserviceworkers">Other service workers</option>
																	<option value="41" id="optionDivisionByBusinessSelfdefenseofficials">Self-defense officials, judicial police officers, etc.</option>
																	<option value="42" id="optionDivisionByBusinessAgriculturalist">Agriculturalist</option>
																	<option value="43" id="optionDivisionByBusinessForestryworkers">Forestry workers</option>
																	<option value="44" id="optionDivisionByBusinessFishermen">Fishermen</option>
																	<option value = "45" id="optionDivisionByBusinessProductionequipmentcontrol"> Production equipment control / monitoring worker</option>
																	<option value = "46" id="optionDivisionByBusinessMachineassemblyequipmentcontrol"> Machine assembly equipment control / monitoring worker</option>
																	<option value = "47" id="optionDivisionByBusinessProductmanufacturing"> Product manufacturing / processing workers</option>
																	<option value = "48" id="optionDivisionByBusinessMachineassembler"> Machine assembler</option>
																	<option value = "49" id="optionDivisionByBusinessMachinemaintenance"> Machine maintenance / repair workers</option>
																	<option value = "50" id="optionDivisionByBusinessProductinspector"> Product inspector</option>
																	<option value = "51" id="optionDivisionByBusinessMechanicalinspector"> Mechanical inspector</option>
																	<option value = "52" id="optionDivisionByBusinessProductionrelated"> Production-related / production-like workers </option>
																	<option value = "53" id="optionDivisionByBusinessRailwayoperator"> Railway operator </option>
																	<option value = "54" id="optionDivisionByBusinessCardriver"> Car driver </option>
																	<option value = "55" id="optionDivisionByBusinessShipaircraftoperator"> Ship / aircraft operator </option>
																	<option value = "56" id="optionDivisionByBusinessOthertransporters"> Other transporters </option>
																	<option value = "57" id="optionDivisionByBusinessStationaryconstructionmachineoperator"> Stationary / construction machine operator </option>
																	<option value = "58" id="optionDivisionByBusinessConstructionskeletonconstructionworker"> Construction skeleton construction worker </option>
																	<option value = "59" id="optionDivisionByBusinessConstructionworkers"> Construction workers (excluding construction workers) </option>
																	<option value = "60" id="optionDivisionByBusinessElectricalengineer"> Electrical engineer </option>
																	<option value = "61" id="optionDivisionByBusinessCivilengineer"> Civil engineer </option> 
																	<option value = "62" id="optionDivisionByBusinessMiner"> Miner </option>
																	<option value = "63" id="optionDivisionByBusinessTransporter"> Transporter </option>
																	<option value = "64" id="optionDivisionByBusinessCleaningworker"> Cleaning worker </option>
																	<option value = "65" id="optionDivisionByBusinessPackagingworker"> Packaging worker </option>
																	<option value = "66" id="optionDivisionByBusinessUnclassifiableoccupations"> Unclassifiable occupations </option>
																	<option value = "67" id="optionDivisionByBusinessInformationprocessingsystemdevelopment"> Information processing system development </option>
																	<option value = "68" id="optionDivisionByBusinessMechanicaldesign"> Mechanical design </option>
																	<option value = "69" id="optionDivisionByBusinessOfficeequipmentoperation"> Office equipment operation </option>
																	<option value = "70" id="optionDivisionByBusinessInterpretationtranslationshorthand"> Interpretation, translation, shorthand </option>
																	<option value = "71" id="optionDivisionByBusinessSecretary"> Secretary </option>
																	<option value = "72" id="optionDivisionByBusinessFiling"> Filing </option>
																	<option value = "73" id="optionDivisionByBusinessSurvey"> Survey </option>
																	<option value = "74" id="optionDivisionByBusinessTreasury"> Treasury </option>
																	<option value = "75" id="optionDivisionByBusinessTrade"> Trade </option>
																	<option value = "76" id="optionDivisionByBusinessDemonstration"> Demonstration </option>
																	<option value = "77" id="optionDivisionByBusinessTourguide"> Tour guide </option>
																	<option value = "78" id="optionDivisionByBusinessReceptionInformation"> Reception / Information </option>
																	<option value = "79" id="optionDivisionByBusinessRD"> R & D </option>
																	<option value = "80" id="optionDivisionByBusinessPlanningandplanningofprojectimplementationsystem"> Planning and planning of project implementation system </option>
																	<option value = "81" id="optionDivisionByBusinessProductioneditingofbooks"> Production / editing of books, etc. </Option>
																	<option value = "82" id="optionDivisionByBusinessSalesengineersalesfinancialproductsales"> Sales engineer sales, financial product sales </option>
																	<option value = "83" id="optionDivisionByBusinessAdvertisingdesign"> Advertising design </option>
																	<option value = "84" id="optionDivisionByBusinessOAinstructions"> OA instructions </option>																																										<option value=""></option>
																	</Select>
																</div>
																<div id="errorDivisionByBusiness" style="color: red;"></div>
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
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>

															<div class="row pt-3 pb-3 pl-3 pr-3" id="dispatchLoaderID"
																style="display: none">
																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanBusinessContent"> Business
																			content and degree of responsibility </span>
																	</div>
																	<div>
																		<input type="text" id="businessContent"
																			class="form-control" maxlength="255">
																	</div>
																	<div id="errorBusinessContent" style="color: red;"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanItemUnitPrice">Case unit
																			price setting </span><span class="RequiredStar"> *</span>
																	</div>
																	<div>
																		<Select id="ItemUnitPrice" class="form-control">
																			<option value="" id="optionSelectCaseUnitPriceSetting">Select Case unit price setting</option>
																			<option value="1" id="optionSelectCaseUnitPriceSettingDailySalary">Daily Salary</option>
																			<option value="2" id="optionSelectCaseUnitPriceSettingHourlyWage">Hourly Wage</option>
																			<option value="3" id="optionSelectCaseUnitPriceSettingFullMonthlySalary">Full Monthly Salary</option>
																			<option value="4" id="optionSelectCaseUnitPriceSettingDaytoMonth">Day to month</option>
																		</Select>
																	</div>
																	<div id="errorItemUnitPrice" style="color: red;"></div>
																</div>



																<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanWorklocation"> Work location</span>

																	</div>
																	<div>
																		<input type="text" id="worklocation"
																			class="form-control">
																	</div>
																	<div id="errorWorklocation" style="color: red;"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanRequiredQualifications">Required
																			qualifications</span>
																	</div>
																	<div>
																		<input type="text" id="RequiredQualifications"
																			class="form-control">
																	</div>
																	<div id="errorRequiredQualifications"
																		style="color: red;"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanRequiredNumberPeople">
																			Required number of people</span>
																	</div>
																	<div>
																		<input type="text" id="requiredNumberPeople"
																			class="form-control">
																	</div>
																	<div id="errorRequiredNumberPeople" style="color: red;"></div>
																</div>

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
															</div>

															<div class="row pt-3 pb-3 pl-3 pr-3" id="dispatchLoader2ID"
																style="display: none">

																<div
																	class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanBusinessContent"> Business
																			Content </span>
																	</div>
																	<div>
																		<textarea id="businessContent1" class="form-control"> </textarea>

																	</div>
																	<div id="errorBusinessContent" class="RequiredStar"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanWorkLocation"> Work Location
																		</span>
																	</div>
																	<div>
																		<input type="text" id="workLocation1"
																			class="form-control">
																	</div>
																	<div id="errorWorkLocation" class="RequiredStar"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanApplicationQualifications">
																			Application qualifications </span>
																	</div>
																	<div>
																		<input type="text" id="ApplicationQualifications"
																			class="form-control">
																	</div>
																	<div id="errorApplicationQualifications"
																		class="RequiredStar"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanRecruitmentPeriodStart">
																			Recruitment period (start)</span>
																	</div>
																	<div>
																		<input type="date" id="recruitmentPeriodStart"
																			class="form-control">
																	</div>
																	<div id="errorRecruitmentPeriodStart"
																		class="RequiredStar"></div>
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanRecruitmentPeriodEnd">
																			Recruitment period (end) </span>
																	</div>
																	<div>
																		<input type="date" id="recruitmentPeriodEnd"
																			class="form-control">
																	</div>
																	<div id="errorRecruitmentPeriodEnd"
																		class="RequiredStar"></div>
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
																		<span id="pageSpanNumberOfHires">Number of
																			Hires </span>
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

																<div
																	class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																	<div class="DetailsTitleText">
																		<span id="pageSpanRecruiterComments"> Recruiter
																			Comments </span>
																	</div>
																	<div>
																		<textarea id="recruiterComments" class="form-control"> </textarea>
																	</div>

																</div>

															</div>

															<div class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConflictDateBUnit"> Conflict
																		date (business unit)</span> 
																</div>
																<div>
																<textarea id="ConflictDate" class="form-control" readonly="readonly"> </textarea>
																	
																</div>
																<div id="errorConflictDate" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPersonInCharge"> The person in
																		charge of the case</span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<Select id="PersonInCharge" class="form-control">
																		<option value="" id="optionPersonInCharge">Select Person In Charge of the case</option>
																		<option value="1" id="optionPersonInCharge1">Person In Charge 1</option>
																		<option value="2" id="optionPersonInCharge2">Person In Charge 2</option>
																	</Select>
																</div>
																<div id="errorPersonInCharge" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalesRepresentative"> Sales
																		Representative</span>
																</div>
																<div>
																	<Select id="SalesRepresentative" class="form-control">
																		<option value="" id="selectSalesRepresentative">Select Sales Representative</option>
																		<option id="selectSalesRepresentative1" value="1">Sales Representative 1</option>
																		<option id="selectSalesRepresentative2" value="2">Sales Representative 2</option>
																	</Select>
																</div>
																<div id="errorSalesRepresentative" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCompanyName">Customer
																		company name</span>

																</div>
																<div>
																<input type="hidden" id="CustomerCompanyID" class="form-control" readonly="readonly"> 
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



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAssignmentDeadline">
																		Assignment deadline </span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="date" id="assignmentDeadline"
																		class="form-control">
																</div>
																<div id="errorAssignmentDeadline" class="RequiredStar"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanBusinessrelatedMaterials">Business-Related
																	materials</div>
																<div id="testTry">
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="hidden" value="" name="businessrelatedMaterialsId[]" />
																		<input type="file" id="staffBusinessrelatedMaterials" name="businessrelatedMaterials[]"
																			class="form-control" onchange="loadFile(event)">
																	</form>
																</div>
																<div>
																	<button id="AddNewFile" class="btn " onclick="addSkillSheetRow()">
																		Add New File</button>
																</div>
															</div>



															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCaseOpen"> Case open </span>
																</div>

																<div class="col-sm-6 col-md-3 col-lg-3">
																	<label class="container"><span
																		id="pageSpanCaseOpenHelp"> Publish the project
																			and recruit staff</span> <input type="checkbox"
																		id="CaseOpenCheck" name="dispatchClassi" value="1">
																		<span class="checkmark"></span> </label>
																</div>

																<div id="errorCaseOpen" style="color: red;"></div>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks</span>
																</div>
																<div>
																	<textarea type="text" id="companyRemarks"
																		class="form-control"></textarea>
																</div>
																<div id="errorRemarks" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDetailedInformationPractice">
																		(S) Detailed information about the practice (for
																		public use) </span>
																</div>
																<div>
																	<textarea type="text" id="DetailedInformationPractice"
																		class="form-control"></textarea>
																</div>
																<div id="errorDetailedInformationPractice"
																	style="color: red;"></div>
															</div>


															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveCase">Update Case</button>
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
																	id="accordionDivListofImplementationDates">List
																	of implementation dates</div>
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

															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered hover"
																		id="ImplementationDetailsTable" style="width: 100%">
																		<thead>
																			<tr>
																				<th class="text-center" id="#tableImplementationDetailsTHNo">No</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHDuplicateSelection">Duplicate selection</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHImplementationPeriod">Implementation period Invoice creation</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHWorkLocation">Work location</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHAssemblyTime">Assembly time</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHStartingTime">Starting time</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHEndingTime">Ending time</th>
																				<th class="TableTHMinWidth text-center" id="#tableImplementationDetailsTHRequiredNumberOfPeople">Required number of people</th>
																				<th style="width: 100px;"></th>
																			</tr>
																		</thead>

																		<tbody id="tbodyIdImplementationDetails">
																		<tr id="SkillSheetTrId">
			        
																		   <td style="width: 5%;"></td>
																		   <td style="width: 10%;" class="p-1"><input type="checkbox" value="" name="implementationDuplicateSelection[]" id="implementationDuplicateSelection" class="form-control"></td>
																		   <td></td>
																		   <td><input type="text" value="" name="implementationWorkLocation[]"  id="implementationWorkLocation" class="form-control"></td>
																		   <td><input type="text" value="" name="implementationAssemblyTime[]"id="implementationAssemblyTime" class="form-control"></td>
																		   <td><input type="text" value="" name="implementationStartTime[]"id="implementationStartTime" class="form-control"></td>
																		   <td><input type="text" value="" name="implementationEndTime[]"id="implementationEndTime" class="form-control"></td>
																		   <td></td>
																		   <td >
																			<button class="btn DetailsButton ml-1" onclick="viewDetails(result.data[i].caseId)" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>
																		   </td>
																		   </tr>  
																		</tbody>
																	</table>
																	<div id="errorSkillWorkHistory" class="RequiredStar"></div>
																	
																</div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 pt-2 ContentAlignRC">
																<button class="btn btn-success" onclick="disableBtn()" id="buttonImplementationInformationDuplicate">Duplicate the selected implementation date</button>
																<button class="btn btn-success" id="buttonImplementationInformationBatchUpdate">Implementation information batch update</button>
																<button class="btn btn-info" onclick="redirectCaseImplement()" id="buttonImplementationInformation">Update Implementation Information</button>
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


	<script src="./dist-assets/js/case-registration-validate.js"></script>


	<script>
		////////////////////////////

		/////////////////////////////
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>";
	    //const serverHTTP = "http://sola.ml/SOLA-API/";
		const GUID = localStorage.getItem("GUID");
		const quotationId = localStorage.getItem('quotationId');
		

		$(document).ready(function() {
			$("#staffPaymentMethod").change(function() {
				bankTransferLoad();
			});

			let dataSet = '{"quotationId": ' + quotationId + '}';
			$.ajax({
				beforeSend : function(request) {
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Case/GetCaseInfo',
				method : 'POST',
				contentType : 'application/json',
				data : dataSet,
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						getQuotationInfo(result);
					} else {
						console.log("Sorry getQuotationInfo error");
					}
				},
				error : function(error) {
					console.log(JSON.stringify(error));
				}
			});

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

		function getQuotationInfo(result) {
			$('#dispatchClassification').val(result.data.dispatchClassification);
			checkDispatch();
			loadDispatch();
			document.getElementById("caseName").value = result.data.caseName;
			document.getElementById("quotationID").value  =  result.data.quotationId;
			document.getElementById("CustomerCompanyID").value  =  result.data.customerId;
			document.getElementById("QuotationNumber").value = result.data.quotationNumber;
			document.getElementById("CustomerCompanyName").value = result.data.customerCompanyName;
			document.getElementById("CustomerRepresentativeName").value = result.data.customerRepresentativeName;

			$('#occupationClassification1').prop('checked',
					result.data.occupationClassification1);
			$('#occupationClassification2').prop('checked',
					result.data.occupationClassification2);
			$('#occupationClassification3').prop('checked',
					result.data.occupationClassification3);
			$('#occupationClassification4').prop('checked',
					result.data.occupationClassification4);
			$('#occupationClassification5').prop('checked',
					result.data.occupationClassification5);
			$('#occupationClassification6').prop('checked',
					result.data.occupationClassification6);
			$('#occupationClassification7').prop('checked',
					result.data.occupationClassification7);

			if (document.getElementById("dispatchClassification").value != 4) {
				document.getElementById("businessContent").value = result.data.businessContent;
				document.getElementById("worklocation").value = result.data.workLocation;
			} else {
				document.getElementById("workingHoursStart1").value = result.data.workingHoursStart;
				document.getElementById("workingHoursEnd1").value = result.data.workingHoursEnd;
				document.getElementById("businessContent1").value = result.data.businessContent;
				document.getElementById("workLocation1").value = result.data.workLocation;

			}
			
			document.getElementById("implementationPeriodStart").value = result.data.periodStartDate;
			document.getElementById("implementationPeriodEnd").value = result.data.periodEndDate;
			document.getElementById("requiredNumberPeople").value = result.data.requiredNoOfPeople;
			$('#SalesRepresentative').val(result.data.salesRepresentative);
			document.getElementById("ApplicationQualifications").value = result.data.necessaryQualification;
			document.getElementById("salary").value =  result.data.salary;
			document.getElementById("treatment").value =  result.data.treatment;
			document.getElementById("holiday").value =  result.data.holiday;
			document.getElementById("numberOfHires").value =  result.data.noOfHire;
			document.getElementById("recruitmentProcess").value =  result.data.recruitmentProcess;
			document.getElementById("recruiterComments").value =  result.data.recruiterComment;
			document.getElementById("ConflictDate").value =  result.data.contractDate;

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
			loadSelectedLanguage(selectedLanguage,"case");
			setLanguage(selectedLanguage);

		}

		function saveCaseInfo() {
			
			    var customerId = document.getElementById("CustomerCompanyID").value;
			    var quotationId = document.getElementById("quotationID").value;
			    var caseName = document.getElementById("caseName").value.trim();
			    var assignmentClassification = document.getElementById("assignmentClassification").value != "" ? document.getElementById("assignmentClassification").value : null;
			    var divisionByBusiness = document.getElementById("DivisionByBusiness").value != "" ? document.getElementById("DivisionByBusiness").value : null;
		        var dispatchClassification = document.getElementById("dispatchClassification").value != "" ? document.getElementById("dispatchClassification").value : null;
			    
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
				
				if(dispatchClassification!=4){
					
					var businessContent = document.getElementById("businessContent").value.trim();
					var workLocation = document.getElementById("worklocation").value != "" ? document.getElementById("worklocation").value.trim() : null;
					var qualifications = document.getElementById("RequiredQualifications").value.trim();
					var periodStartDate = document.getElementById("implementationPeriodStart").value != "" ? document.getElementById("implementationPeriodStart").value : null;
					var periodEndDate = document.getElementById("implementationPeriodEnd").value != "" ? document.getElementById("implementationPeriodEnd").value : null;
				}else{
					
					var businessContent = document.getElementById("businessContent1").value.trim();
					var workLocation = document.getElementById("workLocation1").value.trim();
					var qualifications = document.getElementById("ApplicationQualifications").value.trim();
					var periodStartDate = document.getElementById("recruitmentPeriodStart").value != "" ? document.getElementById("recruitmentPeriodStart").value : null;
					var periodEndDate = document.getElementById("recruitmentPeriodEnd").value != "" ? document.getElementById("recruitmentPeriodEnd").value : null;
					
				}
				
				var itemUnitPriceSetting = document.getElementById("ItemUnitPrice").value != "" ? document.getElementById("ItemUnitPrice").value : null;
				var requiredNoOfPeople = document.getElementById("requiredNumberPeople").value.trim();
				
				var workingHoursStart = document.getElementById("workingHoursStart1").value.trim();
				var workingHoursEnd = document.getElementById("workingHoursEnd1").value.trim();
				var salary = document.getElementById("salary").value.trim();
				var treatment = document.getElementById("treatment").value.trim();
				var holiday = document.getElementById("holiday").value.trim();
				var numberOfHires = document.getElementById("numberOfHires").value.trim();
				var recruitmentProcess = document.getElementById("recruitmentProcess").value.trim();
				var recruiterComments = document.getElementById("recruiterComments").value.trim();
				
				var personInChargeOfCase = document.getElementById("PersonInCharge").value != "" ? document.getElementById("PersonInCharge").value : null;
				var salesRepresentative = document.getElementById("SalesRepresentative").value != "" ? document.getElementById("SalesRepresentative").value : null;
				var deadline = document.getElementById("assignmentDeadline").value != "" ? document.getElementById("assignmentDeadline").value : null;
				var remarks = document.getElementById("companyRemarks").value.trim();
				
				var caseOpenCheck = 0;
				var caseOpen = document.getElementById("CaseOpenCheck");
				
				if (caseOpen.checked == true) {
					caseOpenCheck = caseOpen.value;
				}
				
				var detailInfo = document.getElementById("DetailedInformationPractice").value.trim();
				
				var businessrelatedMaterialsIdArray = document.getElementsByName("businessrelatedMaterialsId[]");
		    	var materialPathArray = document.getElementsByName("businessrelatedMaterials[]");
				
				 var dataArrayBusinessMaterial = [];
				 
				 for(var i = 0; i < businessrelatedMaterialsIdArray.length; i++)
					 {
					   // var businessrelatedMaterialsId = businessrelatedMaterialsIdArray[i].value !="" ? businessrelatedMaterialsIdArray[i].value : null;
		    	    	var materialPath = materialPathArray[i].value !="" ? materialPathArray[i].value.trim() : null;
		    	    	var materialType = null;
		    	    	
		    	    	var tempBusinessMaterial={
		    	    			"materialPath":materialPath,
		  					    "materialType":materialType
		  					   }
		    	    	
		    	    	dataArrayBusinessMaterial.push(tempBusinessMaterial);
					 }

			let caseNode = {};
			
			caseNode['customerId'] = customerId;
			caseNode['quotationId'] = quotationId;
			caseNode['caseName'] = caseName;
			caseNode['assignmentClassification'] = assignmentClassification;
			caseNode['divisionByBusiness'] = divisionByBusiness;
			caseNode['dispatchClassification'] = dispatchClassification;
			caseNode['occupationClassification1'] = oc1;
			caseNode['occupationClassification2'] = oc2;
			caseNode['occupationClassification3'] = oc3;
			caseNode['occupationClassification4'] = oc4;
			caseNode['occupationClassification5'] = oc5;
			caseNode['occupationClassification6'] = oc6;
			caseNode['occupationClassification7'] = oc7;
			caseNode['businessContent'] = businessContent;
			caseNode['itemUnitPriceSetting'] = itemUnitPriceSetting;
			caseNode['requiredNoOfPeople'] = requiredNoOfPeople;
			caseNode['workingHoursStart'] = workingHoursStart;
			caseNode['workingHoursEnd'] = workingHoursEnd;
			caseNode['salary'] = salary;
			caseNode['treatment'] = treatment;
			caseNode['holiday'] = holiday;
			caseNode['noOfHire'] = numberOfHires;
			caseNode['recruitmentProcess'] = recruitmentProcess;
			caseNode['recruiterComment'] = recruiterComments;
			caseNode['workLocation'] = workLocation;
			caseNode['necessaryQualification'] = qualifications;
			caseNode['periodStartDate'] = periodStartDate;
			caseNode['periodEndDate'] = periodEndDate;	
			caseNode['personInChargeOfCase'] = personInChargeOfCase;
			caseNode['salesRepresentative'] = salesRepresentative;
			caseNode['deadline'] = deadline;
			caseNode['caseOpen'] = caseOpenCheck;
			caseNode['remarks'] = remarks;
			caseNode['detailInfo'] = detailInfo;
			caseNode['businessMaterials'] = dataArrayBusinessMaterial;
			
			let caseNumber = "";
		$.ajax({
			beforeSend : function(request) {
				request.setRequestHeader("GUID", GUID);
			},
			url : serverHTTP + 'Case/SaveCaseInfo',
			method : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(caseNode),
			dataType : 'json',
			success : function(result, status, request) {
				if (result.status == 202) {
					console.log("Case Info working");
					localStorage.setItem("saveCaseId", result.data.id);
					caseId = localStorage.getItem('saveCaseId');
					caseNumber =  result.data.caseNumber;
					LoadImplementationInfo(caseId);
					
					document.getElementById("inputCaseNumber").value = caseNumber;
					document.getElementById("buttonSaveCase").disabled = true;
					checkMessage('success','N1231','N0000',caseNumber,"");

					
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
		}

		
		function addSkillSheetRow() {
			var $tr = $("#staffBusinessrelatedMaterials");
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#testTry").append($clone);
		}

		function addImplementDayRow(){
			var $tr = $("#SkillSheetTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdSkillSheet").append($clone);
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

		$("#dispatchClassification").change(function() {
			loadDispatch();
		});

		function loadDispatch() {

			if ($("#dispatchClassification").val() == "") {
				$('#dispatchLoaderID').hide();
				$('#dispatchLoader2ID').hide();
			} else if ($("#dispatchClassification").val() == 4) {
				$('#dispatchLoaderID').hide();
				$('#dispatchLoader2ID').show();
			} else {
				$('#dispatchLoader2ID').hide();
				$('#dispatchLoaderID').show();

			}
		}
		
		function checkDispatch(){
			if($("#dispatchClassification").val() == 4)
			{
				$("#dispatchClassification").prop("disabled",true);
			
			}
		}
		

		function redirectCaseImplement() {
			//sessionStorage.setItem("viewUuid", viewUuid);	
			
			localStorage.getItem('saveCaseId');
			window.location.href = "case-implementation-info.jsp";
		}
		
		function disableBtn() {
			const tableCheckNode = document.querySelectorAll('input[name="implementDuplicateelection[]"]:checked');
			if (tableCheckNode.length == 0) 
       	 {
				document.getElementById("buttonImplementationInformationDuplicate").disabled = true;
       	 }else
            {
		        document.getElementById("buttonImplementationInformationDuplicate").disabled = false;
            }
		}
		
		
				
				function LoadImplementationInfo(caseId) {
					$.ajax({
						beforeSend : function(request) {
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Case/SearchListOfImplementation',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify({"id":  caseId }),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 200) {
								console.log("Got the response");
								showSearchResult(result, request);
							} else {
								// showMessage("Sorry Data Loding Error");
							}
						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});
				}
		
		function showSearchResult(result, request) {
			
			if(result.data.length>0){ 
				 $("#tbodyIdImplementationDetails").empty();
				 }
			for(i=0; i<result.data.length; i++){
				   var newRowSkill= '<tr id="SkillSheetTrId">'+
			           '<input type="hidden" value="'+result.data[i].caseId+'"  name="caseId[]" >'+
			           '<input type="hidden" value="'+result.data[i].implementationId+'"  name="implementationId[]" >'+
					   '<td style="width: 5%;">' + (i+1) + '</td>'+
					   '<td style="width: 10%;" class="p-1"><input type="checkbox" value="" name="implementationDuplicateSelection[]" id="implementationDuplicateSelection" class="form-control"></td>'+
					   '<td>'+result.data[i].startImplementationDate+" ~ "+result.data[i].endImplementationDate+'</td>'+
					   '<td><input type="text" value="'+result.data[i].workLocation+'" name="implementationWorkLocation[]"  id="implementationWorkLocation" class="form-control"></td>'+
					   '<td><input type="text" value="'+result.data[i].assemblyTime+'" name="implementationAssemblyTime[]"id="implementationAssemblyTime" class="form-control"></td>'+
					   '<td><input type="text" value="'+result.data[i].startTime+'" name="implementationStartTime[]"id="implementationStartTime" class="form-control"></td>'+
					   '<td><input type="text" value="'+result.data[i].endTime+'" name="implementationEndTime[]"id="implementationEndTime" class="form-control"></td>'+
					   '<td>'+result.data[i].requiredNoOfPeople+'</td>'+
					   '<td >'+
						'<button class="btn DetailsButton ml-1" onclick="viewDetails(result.data[i].caseId)" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'+
					   '</td>'+
					   '</tr>';  
			           
			           
					   $("#ImplementationDetailsTable tbody").append(newRowSkill);     
					   
					   
			 	    }       
			drawDtataTable(getSiteLanguage());
		}

		
	</script>
</body>

</html>