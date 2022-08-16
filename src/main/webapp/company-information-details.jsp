<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCompanyInformationDetails">Company
	Information Details</title>
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
									<div class="col-md-8">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingCompanyInformationDetails">
												Company Information Details</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingCompanyInformation">You
											can correct the company information.</p>
									</div>
									<div class="col-md-4">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv"></div>
										</div>
									</div>
								</div>



								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div id="accordion" class="m-3 ">

											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															 data-target="#staffInformation"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivAboutUs">About Us</div>
																<div class="col-2" style="text-align: right;">
																	
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="staffInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelp"> It will be
																		displayed to clients and dispatched staff as company
																		information. </span>
																</div>


															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCompanyName"> Company Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="companyName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCompanyNameFurigana">Company
																		Name Furigana </span>
																</div>
																<div>
																	<input type="text" id="companyNameFurigana"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyNameFurigana" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRepresentativeName">
																		Representative Name </span>
																</div>
																<div>
																	<input type="text" id="representativeName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorRepresentativeName" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRepresentativeNameFurigana">Representative
																		Name Furigana </span>
																</div>
																<div>
																	<input type="text" id="representativeNameFurigana"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorRepresentativeNameFurigana"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRepresentativePosition">Representative
																		Position</span>
																</div>
																<div>
																	<input type="text" id="representativePosition"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorRepresentativePosition"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanZipCode">Zip Code</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<!-- <div class="form-group">
                                                          <input type="text" class="form-control" style=" float:left; width: 80%;" >
                                                          <button class="btn SuccessColor ml-1">Adress Search</button>
                                                         </div> -->

																	<input type="text" id="staffZipCode"
																		class="form-control" maxlength="7">
																	<div id="errorZip" style="color: red;"></div>
																	<button
																		onclick="getAddressStaff('staffZipCode','staffAddress')"
																		class="btn btn-info" id="btnAddressSearch">Address
																		Search</button>
																	<span id="pageSpanHelpZipCode"> Please
																		enterwithout hyphens</span>

																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAddress">Address</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffAddress"
																		class="form-control">
																</div>
																<div id="errorAddress" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPhoneNumber">Phone number</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="phoneNumber"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpMobile"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorphoneNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanFax">Fax</span>
																</div>
																<div>
																	<input type="text" id="staffFax" class="form-control" maxlength="10">
																	<span id="pageSpanHelpFax"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorFax" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkerDispatchBusinessPermit">
																		Worker Dispatch Business Permit number</span>
																</div>
																<div>
																	<input type="text" id="workerDispatchBusinessPermit"
																		class="form-control">
																</div>
																<div id="errorWorkerDispatchBusinessPermit"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPermitDate1"> Permit Date</span>
																</div>
																<div>
																	<input type="date" id="permitDate" class="form-control">
																</div>
																<div id="errorPermitDate" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentAgencyBusinessPermit">
																		Employment Agency Business Permit Number</span>
																</div>
																<div>
																	<input type="text" id="employmentAgencyBusinessPermit"
																		class="form-control">
																</div>
																<div id="errorEmploymentAgencyBusinessPermit"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPermitDate2"> Permit Date</span>
																</div>
																<div>
																	<input type="date" id="permitDateEmploymentAgency"
																		class="form-control">
																</div>
																<div id="errorPermitDateEmploymentAgency"
																	style="color: red;"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDisClassification">Dispatch
																		classification </span><span class="RequiredStar"> * </span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanGeneralDispatch">General Dispatch</span>
																			<input type="checkbox" id="dispatchClassification1"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanDispatchBusinessContract">
																				Business contract</span> <input type="checkbox"
																			id="dispatchClassification2" name="dispatchClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanDispatchIntroductionDispatching">
																				Introduction Dispatching</span> <input type="checkbox"
																			id="dispatchClassification3" name="dispatchClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanDispatchRecruitment"> Recruitment
																		</span> <input type="checkbox" id="dispatchClassification4"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errordispatchClassi" style="color: red;"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOccuClassification">Occupation
																		Classification</span> <span class="RequiredStar">*</span>
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

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBusinessArea">Business Area</span><span
																		class="RequiredStar"> *</span>
																</div>
																<div>
																	<Select id="staffPrefecture" class="form-control"
																		required >
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
																<div id="errorPrefecture" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentSupport"> Salary
																		Payment Support</span><span class="RequiredStar"> * </span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanDailyPayment"> Daily Payment</span> <input
																			type="checkbox" id="salaryPaymentDaily"
																			name="salaryPayment" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="salaryPaymentWeekly"> Weekly Payment</span> <input
																			type="checkbox" id="dispatchClassification2"
																			name="salaryPayment" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="salaryPaymentMonthly"> Monthly Payment</span> <input
																			type="checkbox" id="dispatchClassification3"
																			name="salaryPayment" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorSalaryPayment" style="color: red;"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanfeesDispatchedWorkers"> Fees
																		for Dispatched Workers </span>
																</div>
																<div>
																	<input type="text" id="feesDispatchedWorkers"
																		class="form-control">
																</div>
																<div id="errorFeesDispatchedWorkers" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPayrollYear"> Payroll Year</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="payrollYear" class="form-control">
																		<option value="" id="selectOptionSelectG">Select Payroll Year</option>
																		<option value="1" >2018</option>
																		<option value="2" >2019</option>
																		<option value="3" >2020</option>
																		<option value="4" >2021</option>
																	</Select> <span id="pageSpanHelpPayrollYera"> Please
																		select the year of income tax to be applied when
																		calculating salary</span>
																</div>
																<div id="errorPayrollYear" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryClosingDate"> Salary
																		Closing Date</span>
																</div>
																<div>
																	<Select id="salaryClosingDate" name="targetDate"
																		class="form-control" role="combobox">
																		<option id="OptiontargetDate" value="">Select
																			Salary Closing Date</option>
																		<option id="OptiontargetDate1" value="">1 st</option>
																		<option id="OptiontargetDate2" value="">2 nd</option>
																		<option id="OptiontargetDate3" value="">3 rd</option>
																		<option id="OptiontargetDate4" value="">4 th</option>
																		<option id="OptiontargetDate5" value="">5 th</option>
																		<option id="OptiontargetDate6" value="">6 th</option>
																		<option id="OptiontargetDate7" value="">7 th</option>
																		<option id="OptiontargetDate8" value="">8 th</option>
																		<option id="OptiontargetDate9" value="">9 th</option>
																		<option id="OptiontargetDate10" value="">10
																			th</option>
																		<option id="OptiontargetDate11" value="">11
																			th</option>
																		<option id="OptiontargetDate12" value="">12
																			th</option>
																		<option id="OptiontargetDate13" value="">13
																			th</option>
																		<option id="OptiontargetDate14" value="">14
																			th</option>
																		<option id="OptiontargetDate15" value="">15
																			th</option>
																		<option id="OptiontargetDate16" value="">16
																			th</option>
																		<option id="OptiontargetDate17" value="">17
																			th</option>
																		<option id="OptiontargetDate18" value="">18
																			th</option>
																		<option id="OptiontargetDate19" value="">19
																			th</option>
																		<option id="OptiontargetDate20" value="">20
																			th</option>
																		<option id="OptiontargetDate21" value="">21
																			th</option>
																		<option id="OptiontargetDate22" value="">22
																			th</option>
																		<option id="OptiontargetDate23" value="">23
																			th</option>
																		<option id="OptiontargetDate24" value="">24
																			th</option>
																		<option id="OptiontargetDate25" value="">25
																			th</option>
																		<option id="OptiontargetDate26" value="">26
																			th</option>
																		<option id="OptiontargetDate27" value="">27
																			th</option>
																		<option id="OptiontargetDate28" value="">28
																			th</option>
																		<option id="OptiontargetDate29" value="">29
																			th</option>
																		<option id="OptiontargetDate30" value="">30
																			th</option>
																		<option id="OptiontargetDate31" value="">31
																			st</option>
																	</Select>
																</div>
																<div id="errorGender" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryIncomeDeduction"> Salary Income Deduction</span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionIncomeDeduction">Select Salary Income Deduction</option>
																		<option value="1" id="selectOptionIncomeDeductionApply">Apply</option>
																		<option value="2" id="selectOptionIncomeDeductionDoesnotApply">Does not Apply</option>
																	</Select>
																</div>
																<div id="errorGender" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanUseLogo"> Use Logo </span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="useLogo" class="form-control">
																		<option value="" id="selectOptionUseLogo">Select Use Logo</option>
																		<option value="1" id="selectOptionUseLogoUse">Use</option>
																		<option value="2" id="selectOptionUseLogoDonotUse">Do not use</option>

																	</Select>
																</div>
																<div id="errorUseLogo" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanURL"> URL</span>
																</div>
																<div>
																	<input type="text" id="companyWebsiteURL"
																		class="form-control">
																</div>
																<div id="errorURL" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoImage">
																	Logo Image</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffFacePhotoFile"
																			class="form-control" onchange="loadFile(event)" >
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>
																	<span id="pageSpanHelpLogoImage"> Recommended
																		size: width 200px, height 80px </span>
																</div>
																<div id="errorStaffFacePhoto" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoPreview">
																	Preview</div>

																<img src="./dist-assets/images/faces/1.jpg" id="output"
																	style="width: 100px; height: 100px;" />
															</div>
															
														</div>

													</div>
												</div>
											</div>
											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-target="#emailAddressInformation"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivEmailAddressInformation">Email
																	Address Information</div>
																<div class="col-2" style="text-align: right;">
																
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="emailAddressInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpEmail"> This is
																		the content used to send and receive emails from the
																		system. </span>
																</div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailAddressSend"> Email
																		Address (Send) </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanEmailSendHelp">The address to
																		send an email to the staff</span>
																</div>
																<div id="errorEmailAddressSend" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailAddressReceived"> Email
																		Address (Received) </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressReceived"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanEmailReceivedHelp">This is the
																		address to receive the contents sent to the staff by
																		BCC.</span>
																</div>
																<div id="errorEmailAddressReceived" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailSendingUser"> Email
																		Sending User </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailSendingUser"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanEmailSendingUserHelp">Please
																		enter the sending account user specified by your email
																		provider</span>
																</div>
																<div id="errorEmailSendingUser" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailPassword"> Email Password
																	</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="password" id="emailPassword"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanHelpEmailPassword"> Enter the
																		password you use to sign in to your outgoing account</span>
																</div>
																<div id="errorEmailPassword" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailSendingPort"> Email
																		Sending Port </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailSendingPort"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanHelpEmailSendingPort"> Enter the
																		port of the outgoing mail server specified by your
																		email provider</span>
																</div>
																<div id="errorEmailSendingPort" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailSendingHost"> Email
																		Sending Host </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailSendingHost"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanHelpEmailSendingHost"> Enter the
																		host name of the outgoing mail server specified by
																		your email provider</span>
																</div>
																<div id="errorEmailSendingHost" style="color: red;"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveInformationEmailAddress">Save
																	Information</button>
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
        loadSelectedLanguage(pageLanguage,"company-information-details");    
    </script>

	<script src="./dist-assets/js/common-validations.js"></script>
	

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
	
	<script src="./dist-assets/js/company-information-details-validate.js"></script>

	<script>
	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");

	$(document).ready(function() {
						
		drawDtataTable(lan);
		let dataSet = '{"id" : "1"}';
        
        $.ajax({
            beforeSend: function(request) {
            	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'MasterAdminTax/ViewCompanyInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	 ViewCompanyInfo(result);
            	 }
             else{
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

		window.onscroll = function() {
			myFunction()
		};

		var topNewBar = document.getElementById("topNewBar");
		var sticky = topNewBar.offsetTop;

		var loadFile = function(event) {
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
			output.onload = function() {
				URL.revokeObjectURL(output.src) // free memory
			}
		};

		function bankTransferLoad() {
			let value = $("#staffPaymentMethod").val();

			if (value == "2") {
				$('#transferMainDiv').show();
			} else {
				$('#transferMainDiv').hide();
			}
		}

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
			loadSelectedLanguage(selectedLanguage,"company-information-details");
			setLanguage(selectedLanguage);
			}

		function ViewCompanyInfo(result){
			
			if(result.data.logoImage != "")
			{
			 document.getElementById("output").src = result.data.logoImage;
			}
			document.getElementById("companyName").value= result.data.companyName;
			document.getElementById("companyNameFurigana").value= result.data.companyNameFurigana;
			document.getElementById("representativeName").value= result.data.representativeName;
			document.getElementById("representativeNameFurigana").value= result.data.representativeNameFurigana;
			document.getElementById("representativePosition").value= result.data.representativePosition;
			document.getElementById("staffZipCode").value= result.data.companyPostalCode;
			document.getElementById("staffAddress").value= result.data.companyAddress;
			document.getElementById("phoneNumber").value= result.data.companyTel;
			document.getElementById("staffFax").value= result.data.companyFax;
			document.getElementById("workerDispatchBusinessPermit").value= result.data.workerDispatchBusinessPermitNumber;
			document.getElementById("permitDate").value= result.data.workerDispatchBusinessPermitDate;
			document.getElementById("employmentAgencyBusinessPermit").value= result.data.employmentAgencyBusinessPermitNumber;
			document.getElementById("permitDateEmploymentAgency").value= result.data.employmentAgencyBusinessPermitDate;
			
			$('#dispatchClassification1').prop('checked', result.data.dispatchClassification1);
		    $('#dispatchClassification2').prop('checked', result.data.dispatchClassification2);
		    $('#dispatchClassification3').prop('checked', result.data.dispatchClassification3);
		    $('#dispatchClassification4').prop('checked', result.data.dispatchClassification4);
		    $('#dispatchClassification5').prop('checked', result.data.dispatchClassification5);
		  
		    $('#occupationClassification1').prop('checked', result.data.occupationClassification1);
		    $('#occupationClassification2').prop('checked', result.data.occupationClassification2);
		    $('#occupationClassification3').prop('checked', result.data.occupationClassification3);
		    $('#occupationClassification4').prop('checked', result.data.occupationClassification4);
		    $('#occupationClassification5').prop('checked', result.data.occupationClassification5);
		    $('#occupationClassification6').prop('checked', result.data.occupationClassification6);
		    $('#occupationClassification7').prop('checked', result.data.occupationClassification7);
		    
			document.getElementById("staffPrefecture").value = result.data.businessArea;
			
			$('#salaryPaymentDaily').prop('checked', result.data.salaryPaymentSupportDaily);
		    $('#salaryPaymentWeekly').prop('checked', result.data.salaryPaymentSupportWeekly);
		    $('#salaryPaymentMonthly').prop('checked', result.data.salaryPaymentSupportMonthly);
		    
			document.getElementById("feesDispatchedWorkers").value = result.data.feesDispatchedWorkers;
			document.getElementById("payrollYear").value = result.data.payrollYear;
			document.getElementById("salaryClosingDate").value = result.data.salaryClosingDate != null ? result.data.salaryClosingDate : "";
			document.getElementById("staffGender").value = result.data.salaryIncomeDeduction != null ? result.data.salaryIncomeDeduction : "";
			document.getElementById("useLogo").value = result.data.useLogo;
			document.getElementById("companyWebsiteURL").value = result.data.url;
			document.getElementById("emailAddressSend").value = result.data.emailAddressSend;
			document.getElementById("emailAddressReceived").value = result.data.emailAddressReceived;
			document.getElementById("emailSendingUser").value = result.data.companyEmail;
			document.getElementById("emailPassword").value = result.data.emailPassword;
			document.getElementById("emailSendingPort").value = result.data.emailSendingPort;
			document.getElementById("emailSendingHost").value = result.data.emailSendingHost;
	
		}
	
		function imageUpload() {

			var imagePath = "";

			if ($('#staffFacePhotoFile')[0].files[0]) {
				var fileNode = $('#staffFacePhotoFile')[0].files[0]
				console.log(fileNode);
				console.log(fileNode.size);
				console.log(fileNode.name);
				console.log(fileNode.type);

				saveUuid = localStorage.getItem('saveUuid');

				var formDataObj = new FormData();
				formDataObj.append('image', fileNode);
				//formDataObj.append('file', null);
				formDataObj.append('uuid', saveUuid);
				formDataObj.append('serviceId', 2);

				$.ajax({beforeSend : function(request) {
						document.getElementById("loaderNotify").style.display = "";
						request.setRequestHeader("GUID", GUID);
					},
					url : serverHTTP + 'Content/save-content',
					enctype : 'multipart/form-data',
					data : formDataObj,
					cache : false,
					contentType : false,
					processData : false,
					method : 'POST',
					async : false,
					success : function(result, status, request) {

						imagePath = result.data.imagePath;

					},
					complete : function(data) {
						document.getElementById("loaderNotify").style.display = "none";
					},
					error : function(error) {
						console.log(error);
					}
				});
				return imagePath;
			}

		}
		
		function saveStaffInfo() {
			
			var logoImage = imageUpload();
			
			var companyName = document.getElementById("companyName").value.trim();
			var companyNameFurigana = document.getElementById("companyNameFurigana").value.trim();
			var representativeName = document.getElementById("representativeName").value.trim();
			var representativeNameFurigana = document.getElementById("representativeNameFurigana").value.trim();
			var representativePosition = document.getElementById("representativePosition").value.trim();
			var companyPostalCode = document.getElementById("staffZipCode").value.trim();
			var companyAddress = document.getElementById("staffAddress").value.trim();
			var companyTel = document.getElementById("phoneNumber").value.trim();
			var companyFax = document.getElementById("staffFax").value.trim();
			var workerDispatchBusinessPermitNumber = document.getElementById("workerDispatchBusinessPermit").value.trim();
			var workerDispatchBusinessPermitDate = document.getElementById("permitDate").value;
			var employmentAgencyBusinessPermitNumber = document.getElementById("employmentAgencyBusinessPermit").value.trim();
			var employmentAgencyBusinessPermitDate = document.getElementById("permitDateEmploymentAgency").value;

			var dc1 = 0;
			var dc2 = 0;
			var dc3 = 0;
			var dc4 = 0;
			//var dc5 = 0;

			var oc1 = 0;
			var oc2 = 0;
			var oc3 = 0;
			var oc4 = 0;
			var oc5 = 0;
			var oc6 = 0;
			var oc7 = 0;
			var oc8 = 0;

			var dispatchClassification1 = document.getElementById("dispatchClassification1");
			var dispatchClassification2 = document.getElementById("dispatchClassification2");
			var dispatchClassification3 = document.getElementById("dispatchClassification3");
			var dispatchClassification4 = document.getElementById("dispatchClassification4");
			//var dispatchClassification5 = document.getElementById("dispatchClassification5");

			if (dispatchClassification1.checked == true) {
				dc1 = dispatchClassification1.value;
			}
			if (dispatchClassification2.checked == true) {
				dc2 = dispatchClassification2.value;
			}
			if (dispatchClassification3.checked == true) {
				dc3 = dispatchClassification3.value;
			}
			if (dispatchClassification4.checked == true) {
				dc4 = dispatchClassification4.value;
			}
/* 			if (dispatchClassification5.checked == true) {
				dc5 = dispatchClassification5.value;
			}
 */
			var occupationClassification1 = document.getElementById("occupationClassification1");
			var occupationClassification2 = document.getElementById("occupationClassification2");
			var occupationClassification3 = document.getElementById("occupationClassification3");
			var occupationClassification4 = document.getElementById("occupationClassification4");
			var occupationClassification5 = document.getElementById("occupationClassification5");
			var occupationClassification6 = document.getElementById("occupationClassification6");
			var occupationClassification7 = document.getElementById("occupationClassification7");

			if (occupationClassification1.checked == true) {
				oc1 = occupationClassification1.value;
			}
			if (occupationClassification2.checked == true) {
				oc2 = occupationClassification2.value;
			}
			if (occupationClassification3.checked == true) {
				oc3 = occupationClassification3.value;
			}
			if (occupationClassification4.checked == true) {
				oc4 = occupationClassification4.value;
			}
			if (occupationClassification5.checked == true) {
				oc5 = occupationClassification5.value;
			}
			if (occupationClassification6.checked == true) {
				oc6 = occupationClassification6.value;
			}
			if (occupationClassification7.checked == true) {
				oc7 = occupationClassification7.value;
			}
			
			var businessArea = document.getElementById("staffPrefecture").value;
			
			var salaryPaymentSupportDaily = 0;
			var salaryPaymentSupportWeekly = 0;
			var salaryPaymentSupportMonthly = 0;
			
			var salaryPaymentDaily = document.getElementById("salaryPaymentDaily");
			var salaryPaymentWeekly = document.getElementById("salaryPaymentWeekly");
			var salaryPaymentMonthly = document.getElementById("salaryPaymentMonthly");
			
			if (salaryPaymentDaily.checked == true) {
				salaryPaymentSupportDaily = salaryPaymentDaily.value;
			}
			if (salaryPaymentWeekly.checked == true) {
				salaryPaymentSupportWeekly = salaryPaymentWeekly.value;
			}
			if (salaryPaymentSupportMonthly.checked == true) {
				salaryPaymentSupportMonthly = salaryPaymentMonthly.value;
			}

		    var feesDispatchedWorkers = document.getElementById("feesDispatchedWorkers").value.trim();
		    var payrollYear = document.getElementById("payrollYear").value;
		    var salaryClosingDate = document.getElementById("salaryClosingDate").value;
		    var salaryIncomeDeduction = document.getElementById("staffGender").value;
		    var useLogo = document.getElementById("useLogo").value;
		    var url = document.getElementById("companyWebsiteURL").value.trim();
		    var emailAddressSend = document.getElementById("emailAddressSend").value.trim();
		    var emailAddressReceived = document.getElementById("emailAddressReceived").value.trim();
		    var companyEmail = document.getElementById("emailSendingUser").value.trim();
		    var emailPassword = document.getElementById("emailPassword").value.trim();
		    var emailSendingPort = document.getElementById("emailSendingPort").value.trim();
		    var emailSendingHost = document.getElementById("emailSendingHost").value.trim();

			let dataPassNode = {};
			
			dataPassNode['id'] = 1;
			dataPassNode['companyName'] = companyName;
			dataPassNode['companyNameFurigana'] = companyNameFurigana;
			dataPassNode['representativeName'] = representativeName;
			dataPassNode['representativeNameFurigana'] = representativeNameFurigana;
			dataPassNode['representativePosition'] = representativePosition;
			dataPassNode['companyPostalCode'] = companyPostalCode;
			dataPassNode['companyAddress'] = companyAddress;
			dataPassNode['companyTel'] = companyTel;
			dataPassNode['companyFax'] = companyFax;
			dataPassNode['workerDispatchBusinessPermitNumber'] = workerDispatchBusinessPermitNumber;
			dataPassNode['workerDispatchBusinessPermitDate'] = workerDispatchBusinessPermitDate;
			dataPassNode['employmentAgencyBusinessPermitNumber'] = employmentAgencyBusinessPermitNumber;
			dataPassNode['employmentAgencyBusinessPermitDate'] = employmentAgencyBusinessPermitDate;
			dataPassNode['dispatchClassification1'] = dc1;
			dataPassNode['dispatchClassification2'] = dc2;
			dataPassNode['dispatchClassification3'] = dc3;
			dataPassNode['dispatchClassification4'] = dc4;
			dataPassNode['dispatchClassification5'] = 0;
			dataPassNode['occupationClassification1'] = oc1;
			dataPassNode['occupationClassification2'] = oc2;
			dataPassNode['occupationClassification3'] = oc3;
			dataPassNode['occupationClassification4'] = oc4;
			dataPassNode['occupationClassification5'] = oc5;
			dataPassNode['occupationClassification6'] = oc6;
			dataPassNode['occupationClassification7'] = oc7;
			dataPassNode['businessArea'] = businessArea;
			dataPassNode['salaryPaymentSupportDaily'] = salaryPaymentSupportDaily;
			dataPassNode['salaryPaymentSupportWeekly'] = salaryPaymentSupportWeekly;
			dataPassNode['salaryPaymentSupportMonthly'] = salaryPaymentSupportMonthly;
			dataPassNode['feesDispatchedWorkers'] = feesDispatchedWorkers;
			dataPassNode['payrollYear'] = payrollYear;
			dataPassNode['salaryClosingDate'] = salaryClosingDate;
			dataPassNode['salaryIncomeDeduction'] = salaryIncomeDeduction;
			dataPassNode['useLogo'] = useLogo;
			dataPassNode['logoImage'] = logoImage;
			dataPassNode['url'] = url;
			dataPassNode['emailAddressSend'] = emailAddressSend;
			dataPassNode['emailAddressReceived'] = emailAddressReceived;
			dataPassNode['companyEmail'] = companyEmail;
			dataPassNode['emailPassword'] = emailPassword;
			dataPassNode['emailSendingPort'] = emailSendingPort;
			dataPassNode['emailSendingHost'] = emailSendingHost;

			$.ajax({beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'MasterAdminTax/PostCompanyInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) 
							{
								showMessage('success',"N1266");	
							} 
							else 
							{
								 showMessage('error',"N1265");
								console.log("Sorry PostStaffInfo not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "N1265");
							console.log("Sorry PostStaffInfo not working");
							console.log(JSON.stringify(error));
						}
					});
		}





function getAddressStaff(zipCodeId, addressId) {
	let dataPassNode = {};
	dataPassNode['postalCode'] = document.getElementById(zipCodeId).value.trim();
	dataPassNode['appId'] = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';

	$.ajax({
	beforeSend : function(request) {
	document.getElementById("loaderNotify").style.display = "";
	request.setRequestHeader("GUID", GUID);
	},
	url : serverHTTP +'Address/SearchAddressInfo',
	method : 'POST',
	contentType : 'application/json',
	data : JSON.stringify(dataPassNode),
	dataType: 'json',
	success: function(result, status, request){
	var result = JSON.parse(result.data);
	if(result.Feature!=null)
	{
	$('[data-prefecture]').map(function() {
	if(result.Feature[0].Property.Address.match($(this).data('prefecture')))
	{
	$(this).removeAttr("selected");
	$(this).attr('selected', 'selected');
	}
	}).get();
	document.getElementById(addressId).value = result.Feature[0].Property.Address;
	}
	else
	{
	showMessage('info',"E1122");
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

	</script>
</body>

</html>