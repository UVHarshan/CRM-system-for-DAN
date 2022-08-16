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
															data-toggle="collapse" data-target="#staffInformation"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivAboutUs">About Us</div>
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

																	<input type="number" id="staffZipCode"
																		class="form-control" min="0" max="100">
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
																		class="form-control"> <span
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
																	<input type="text" id="staffFax" class="form-control">
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
																	<span id="pageSpanPermitDate"> Permit Date</span>
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
																	<span id="pageSpanPermitDate"> Permit Date</span>
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
																			type="checkbox" id="dispatchClassification1"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanWeeklyPayment"> Weekly Payment</span> <input
																			type="checkbox" id="dispatchClassification2"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanMonthlyPayment"> Monthly Payment</span> <input
																			type="checkbox" id="dispatchClassification3"
																			name="dispatchClassi" value="1"> <span
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
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Payroll Year</option>
																		<option value="1" id="selectOptionSelectGend">2018</option>
																		<option value="2" id="selectOptionSelectGen">2019</option>
																		<option value="3" id="selectOptionSelectGend">2020</option>
																		<option value="4" id="selectOptionSelectGend">2021</option>
																	</Select> <span id="pageSpanHelpPayrollYera"> Please
																		select the year of income tax to be applied when
																		calculating salary</span>
																</div>
																<div id="errorGender" style="color: red;"></div>
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
																		<option id="OptiontargetDate1" value="">The
																			End of the month</option>
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
																	<span id="pageSpanSalaryIncomeDeduction"> Salary
																		Income Deduction</span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Salary Income Deduction</option>
																		<option value="1" id="selectOptionSelectGend">
																			Apply</option>
																		<option value="2" id="selectOptionSelectGen">
																			Does not Apply</option>

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
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Use Logo</option>
																		<option value="1" id="selectOptionSelectGend">
																			Use</option>
																		<option value="2" id="selectOptionSelectGen">
																			Do not use</option>

																	</Select>
																</div>
																<div id="errorGender" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanURL"> URL</span>
																</div>
																<div>
																	<input type="text" id="companyInformationUrl"
																		class="form-control">
																</div>
																<div id="errorHomeTel" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoImage">
																	Logo Image</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffFacePhotoFile"
																			class="form-control" onchange="loadFile(event)">
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>
																	<span id="pageSpanHelpLogoImage"> Recommended
																		size: width 200px, height 80px </span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoPreview">
																	Preview</div>

																<img src="./dist-assets/images/faces/1.jpg" id="output"
																	style="width: 100px; height: 100px;" />
															</div>


															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveInformation">Save Information</button>
															</div>
														</div>

													</div>
												</div>
											</div>

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#transportationInformation"
															aria-expanded="false"
															aria-controls="transportationInformation">
															<div class="row">
																<div class="col-10"
																	style="text-align: left; white-space: pre-line;"
																	id="accordionRequestScreenDisplay">Request Screen Display Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="transportationInformation" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpRequest"> It
																		will be the content displayed to clients and staff on
																		the request screen. </span>
																</div>


															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Employee Comment </span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Please enter the employee's comment displayed on the
																		dispatch company details page</span>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Dispatch Staff Comment </span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Please enter the comment of the dispatch staff
																		displayed on the dispatch company details page</span>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Dispatch Company PR </span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Please enter the dispatch company PR statement
																		displayed on the request screen </span>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Staff PR </span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Please enter the staff PR statement displayed on the
																		request screen </span>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Message for clients </span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Please enter the message for the client displayed on
																		the request screen </span>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Message for dispatched staff </span>
																</div>
																<div>
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control"></textarea>
																	<span id="pageSpanmidnightOvertimeHolidayAllowance">
																		Please enter the message for dispatched staff
																		displayed on the request screen </span>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoImage">
																	Dispatch company photo</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffFacePhotoFile"
																			class="form-control" onchange="loadFile(event)">
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>
																	<span id="pageSpanHelpLogoImage"> You can
																		specify the dispatch company photo displayed in the
																		dispatch company details </span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoPreview">
																	Preview</div>

																<img src="./dist-assets/images/faces/1.jpg" id="output"
																	style="width: 100px; height: 100px;" />
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanEmployeePhoto">
																	Employee Photo</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffFacePhotoFile"
																			class="form-control" onchange="loadFile(event)">
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>
																	<span id="pageSpanHelpEmployeePhoto"> You can
																		specify the employee photo displayed in the dispatch
																		company details </span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoPreview">
																	Preview</div>

																<img src="./dist-assets/images/faces/1.jpg" id="output"
																	style="width: 100px; height: 100px;" />
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanDispatchedStaffPhoto">Dispatched
																	Staff Photo</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffFacePhotoFile"
																			class="form-control" onchange="loadFile(event)">
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>
																	<span id="pageSpanHelpDispatchedStaffPhoto"> You
																		can specify the photo of the dispatched staff
																		displayed on the request screen </span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanLogoPreview">
																	Preview</div>

																<img src="./dist-assets/images/faces/1.jpg" id="output"
																	style="width: 100px; height: 100px;" />
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanUseGraph"> Use Graph</span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Option</option>
																		<option value="1" id="selectOptionSelectGend">
																			Use</option>
																		<option value="2" id="selectOptionSelectGen">
																			Do not Use</option>

																	</Select> <span> Select "Use" to display the barometer
																		graph on the request screen. </span>
																</div>
																<div id="errorGender" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveRequestInfo">Save Information</button>
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
															data-target="#emailAddressInformation"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivEmailAddressInformation">Email
																	Address Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
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
																		class="pageSpanEmailSendHelp">The address to
																		send an email to the staff</span>
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailAddressReceived"> Email
																		Address (Received) </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255"> <span
																		class="pageSpanEmailReceivedHelp">This is the
																		address to receive the contents sent to the staff by
																		BCC.</span>
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailSendingUser"> Email
																		Sending User </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255"> <span
																		class="pageSpanEmailSendingUserHelp">Please
																		enter the sending account user specified by your email
																		provider</span>
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailPassword"> Email Password
																	</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255"> <span
																		class="pageSpanHelpEmailPassword"> Enter the
																		password you use to sign in to your outgoing account</span>
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailSendingPort"> Email
																		Sending Port </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255"> <span
																		class="pageSpanHelpEmailSendingPort"> Enter the
																		port of the outgoing mail server specified by your
																		email provider</span>
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailSendingHost"> Email
																		Sending Host </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255"> <span
																		class="pageSpanHelpEmailSendingHost"> Enter the
																		host name of the outgoing mail server specified by
																		your email provider</span>
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
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


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#financialInstitutionInformation1"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivFinancialInstitutionInformation1">
																	Financial Institution Information 1</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="financialInstitutionInformation1"
													class="collapse show" aria-labelledby="headingOne"
													data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpFinancialInstitution">
																		It will be the content displayed to the client on the
																		invoice as the transfer destination. </span>
																</div>


															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferFinancialInstitution">
																		Transfer Financial Institution Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBankCode"> Bank Code </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferBranch"> Transfer
																		Branch Name </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBranchCode"> Branch Code </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountType"> Account Type </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Account Type</option>
																		<option value="1" id="selectOptionSelectGend">
																			Usually</option>
																		<option value="2" id="selectOptionSelectGen">
																			Current</option>
																		<option value="3" id="selectOptionSelectGen">
																			Savings</option>
																		<option value="3" id="selectOptionSelectGen">
																			Others</option>

																	</Select>

																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountNumber"> Account Number
																	</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountName"> Account Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="accountName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
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


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#financialInstitutionInformation2"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivFinancialInstitutionInformation1">
																	Financial Institution Information 2</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="financialInstitutionInformation2"
													class="collapse show" aria-labelledby="headingOne"
													data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpFinancialInstitution">
																		It will be the content displayed to the client on the
																		invoice as the transfer destination. </span>
																</div>


															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferFinancialInstitution">
																		Transfer Financial Institution Name </span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBankCode"> Bank Code </span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferBranch"> Transfer
																		Branch Name </span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBranchCode"> Branch Code </span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountType"> Account Type </span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Account Type</option>
																		<option value="1" id="selectOptionSelectGend">
																			Usually</option>
																		<option value="2" id="selectOptionSelectGen">
																			Current</option>
																		<option value="3" id="selectOptionSelectGen">
																			Savings</option>
																		<option value="3" id="selectOptionSelectGen">
																			Others</option>

																	</Select>

																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountNumber"> Account Number
																	</span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountName"> Account Name </span>
																</div>
																<div>
																	<input type="text" id="accountName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>



															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveFinancialInformation2">Save
																	Information</button>
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
															data-target="#financialInstitutionInformation3"
															aria-expanded="false" aria-controls="staffInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivFinancialInstitutionInformation1">
																	Financial Institution Information 3</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="financialInstitutionInformation3"
													class="collapse show" aria-labelledby="headingOne"
													data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpFinancialInstitution">
																		It will be the content displayed to the client on the
																		invoice as the transfer destination. </span>
																</div>


															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferFinancialInstitution">
																		Transfer Financial Institution Name </span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBankCode"> Bank Code </span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferBranch"> Transfer
																		Branch Name </span>
																</div>
																<div>
																	<input type="text" id="emailAddressSend"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBranchCode"> Branch Code </span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountType"> Account Type </span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectG">Select
																			Account Type</option>
																		<option value="1" id="selectOptionSelectGend">
																			Usually</option>
																		<option value="2" id="selectOptionSelectGen">
																			Current</option>
																		<option value="3" id="selectOptionSelectGen">
																			Savings</option>
																		<option value="3" id="selectOptionSelectGen">
																			Others</option>

																	</Select>

																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountNumber"> Account Number
																	</span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountName"> Account Name </span>
																</div>
																<div>
																	<input type="text" id="accountName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorCompanyName" style="color: red;"></div>
															</div>



															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveFinancialInformation2">Save
																	Information</button>
															</div>
														</div>

													</div>
												</div>
											</div>

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#invoiceRemarkColumn"
															aria-expanded="false"
															aria-controls="transportationInformation">
															<div class="row">
																<div class="col-10"
																	style="text-align: left; white-space: pre-line;"
																	id="accordionInvoiceRemarkColumn">Invoice Remarks Column</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="invoiceRemarkColumn" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpInvoice"> It
																		will be the content displayed in the invoice remarks
																		column. </span>
																</div>


															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceRemarks"> Invoice
																		Remarks </span>
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
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveInvoiceRemarks">Save Information</button>
															</div>

														</div>
													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#workConfirmationInformation"
															aria-expanded="false"
															aria-controls="transportationInformation">
															<div class="row">
																<div class="col-10"
																	style="text-align: left; white-space: pre-line;"
																	id="accordionWorkConfirmationInformation">Work 	Confirmation Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="workConfirmationInformation" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubHeadingHelpWorkConfirmation">
																		Confirm the work of the staff and set the month to
																		calculate the salary. </span>
																</div>


															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConfirmedWorkMonth"> Confirmed
																		Work Month </span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="confirmedWorkMonth" class="form-control">
																		<option value="0" id="selectOptionAccountType">Select
																			Confirmed Work Month</option>
																		<option value="1" id="selectOptionAccountTypeUsually">
																			1 month ago</option>
																		<option value="2" id="selectOptionAccountTypeCurrent">
																			2 months ago</option>
																	</Select>
																</div>
																<div id="errorAccType" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks"> Remarks </span>
																</div>
																<div>
																	<textarea type="text" id="remarksWorkConfirmation"
																		class="form-control"></textarea>
																</div>
																<div id="errorMidnightOvertimeHolidayAllowance"
																	style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button onclick=""
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveInvoiceRemarks">Save Information</button>
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
        loadSelectedLanguage(pageLanguage,"staff");
    </script>

	<script src="./dist-assets/js/common-validations.js"></script>
	<script src="./dist-assets/js/staff-registration-validate.js"></script>

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

	<script>
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>
		";
		//const serverHTTP = "http://sola.ml/SOLA-API/";
		const GUID = localStorage.getItem("GUID");

		$(document)
				.ready(
						function() {
							//let dataSet = '{"uuid" : "'+searchUuid+'"}';
							drawDtataTable(lan);

							bankTransferLoad();

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
			loadSelectedLanguage(selectedLanguage, "staff");
			setLanguage(selectedLanguage);
			table.destroy();
			drawDtataTable(selectedLanguage);
		}

		function saveStaffInfo() {
			var staffName = document.getElementById("staffName").value;
			var staffNameKatakana = document
					.getElementById("staffNameKatakana").value;
			var staffZipCode = document.getElementById("staffZipCode").value;
			var staffPrefecture = document.getElementById("staffPrefecture").value;
			var staffAddress = document.getElementById("staffAddress").value;
			var staffAddressKatakana = document
					.getElementById("staffAddressKatakana").value;
			var staffDOB = document.getElementById("staffDOB").value;
			var staffGender = document.getElementById("staffGender").value;
			var staffMobile = document.getElementById("staffMobile").value;
			var staffHomeTel = document.getElementById("staffHomeTel").value;
			var staffFax = document.getElementById("staffFax").value;
			var staffAttributeclassification1 = document
					.getElementById("staffAttributeclassification1").value;
			var staffAttributeclassification2 = document
					.getElementById("staffAttributeclassification2").value;
			var staffLaborManagementAgreementExpirationDate = document
					.getElementById("staffLaborManagementAgreementExpirationDate").value != "" ? document
					.getElementById("staffLaborManagementAgreementExpirationDate").value
					: null;
			var staffAttribute = document.getElementById("staffAttribute").value;
			var staffBelongs = document.getElementById("staffBelongs").value;

			var dc1 = 0;
			var dc2 = 0;
			var dc3 = 0;
			var dc4 = 0;
			var dc5 = 0;

			var oc1 = 0;
			var oc2 = 0;
			var oc3 = 0;
			var oc4 = 0;
			var oc5 = 0;
			var oc6 = 0;
			var oc7 = 0;
			var oc8 = 0;

			var dispatchClassification1 = document
					.getElementById("dispatchClassification1");
			var dispatchClassification2 = document
					.getElementById("dispatchClassification2");
			var dispatchClassification3 = document
					.getElementById("dispatchClassification3");
			var dispatchClassification4 = document
					.getElementById("dispatchClassification4");
			var dispatchClassification5 = document
					.getElementById("dispatchClassification5");

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
			if (dispatchClassification5.checked == true) {
				dc5 = dispatchClassification5.value;
			}

			var occupationClassification1 = document
					.getElementById("occupationClassification1");
			var occupationClassification2 = document
					.getElementById("occupationClassification2");
			var occupationClassification3 = document
					.getElementById("occupationClassification3");
			var occupationClassification4 = document
					.getElementById("occupationClassification4");
			var occupationClassification5 = document
					.getElementById("occupationClassification5");
			var occupationClassification6 = document
					.getElementById("occupationClassification6");
			var occupationClassification7 = document
					.getElementById("occupationClassification7");
			//var occupationClassification8 = document.getElementById("staffOthers");

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
			//if (occupationClassification8.checked == true){  
			//     oc8 = occupationClassification8.value;  
			//  }

			let dataPassNode = {};
			dataPassNode['name'] = staffName.trim();
			dataPassNode['nameKatakana'] = staffNameKatakana.trim();
			dataPassNode['postalCode'] = staffZipCode.trim();
			dataPassNode['prefecture'] = staffPrefecture;
			dataPassNode['addressLine1'] = staffAddress.trim();
			dataPassNode['addressKatakana'] = staffAddressKatakana.trim();
			dataPassNode['dob'] = staffDOB;
			dataPassNode['gender'] = staffGender;
			dataPassNode['telMobile'] = staffMobile.trim();
			dataPassNode['telHome'] = staffHomeTel.trim();
			dataPassNode['fax'] = staffFax.trim();
			dataPassNode['attributeClassification1'] = staffAttributeclassification1;
			dataPassNode['attributeClassification2'] = staffAttributeclassification2;
			dataPassNode['laborManagementAgreementExpirationDate'] = staffLaborManagementAgreementExpirationDate;
			dataPassNode['attribute'] = staffAttribute;
			dataPassNode['belong'] = staffBelongs.trim();
			dataPassNode['dispatchClassification1'] = dc1;
			dataPassNode['dispatchClassification2'] = dc2;
			dataPassNode['dispatchClassification3'] = dc3;
			dataPassNode['dispatchClassification4'] = dc4;
			dataPassNode['dispatchClassification5'] = dc5;
			dataPassNode['occupationClassification1'] = oc1;
			dataPassNode['occupationClassification2'] = oc2;
			dataPassNode['occupationClassification3'] = oc3;
			dataPassNode['occupationClassification4'] = oc4;
			dataPassNode['occupationClassification5'] = oc5;
			dataPassNode['occupationClassification6'] = oc6;
			dataPassNode['occupationClassification7'] = oc7;
			dataPassNode['occupationClassification8'] = 0;

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostStaffInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 200) {
								document
										.getElementById("buttonSaveStaffInformation").disabled = true;
								localStorage.setItem("saveUuid",
										result.data3.uuid);
								saveUuid = localStorage.getItem('uuid');
								localStorage.setItem("saveStaffCode",
										result.data3.staffCode);
								saveStaffCode = localStorage
										.getItem('saveStaffCode');

								document.getElementById("staffStaffCode").value = result.data3.staffCode;

								showMessage('success', "E1087");
							} else {
								showMessage('error', "E1088");
								console.log("Sorry PostStaffInfo not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1088");
							console.log("Sorry PostStaffInfo not working");
							console.log(JSON.stringify(error));
						}
					});
		}

		function saveTransportInfo() {

			var staffNearestStation = document
					.getElementById("staffNearestStation").value;
			var staffTimeRequiredNearestStation = document
					.getElementById("staffTimeRequiredNearestStation").value;
			var staffTransportationToNearestStation = document
					.getElementById("staffTransportationToNearestStation").value;
			var staffBusSectionFrom = document
					.getElementById("staffBusSectionFrom").value;
			var pageSpanBusUseSectionTo = document
					.getElementById("staffBusSectionTo").value;
			var staffRoundTripBusFare = document
					.getElementById("staffRoundTripBusFare").value;

			saveUuid = localStorage.getItem('saveUuid');

			let dataPassNode = {};
			dataPassNode['uuid'] = saveUuid;
			dataPassNode['nearestStation'] = staffNearestStation.trim();
			dataPassNode['timeRequiredtoReachtheNearestStation'] = parseInt(staffTimeRequiredNearestStation
					.trim());
			dataPassNode['transportationtotheNearestStation'] = staffTransportationToNearestStation
					.trim();
			dataPassNode['busUseSectionFrom'] = staffBusSectionFrom.trim();
			dataPassNode['busUseSectionTo'] = pageSpanBusUseSectionTo.trim();
			dataPassNode['roundTripBusFare'] = parseInt(staffRoundTripBusFare
					.trim());

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostTransportationInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) {
								document
										.getElementById("buttonSaveTransportationInformation").disabled = true;
								showMessage('success', "E1089");
							} else {
								showMessage('error', "E1090");
								console
										.log("Sorry Transportation Info not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1090");
							console
									.log("Sorry Transportation Info not working");
							console.log(JSON.stringify(error));
						}
					});

		}

		function otherInfoPDFFileUplod() {
			saveUuid = localStorage.getItem('saveUuid');
			var filePath = "";

			if ($('#staffCvPdf')[0].files[0]) {
				var fileNode = $('#staffCvPdf')[0].files[0]

				var formDataObj = new FormData();
				//formDataObj.append('image', fileNode );
				formDataObj.append('file', fileNode);
				formDataObj.append('uuid', saveUuid);
				formDataObj.append('serviceId', 2);

				$.ajax({
					beforeSend : function(request) {
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
						console.log(result);
						filePath = result.data.filePath;
					},
					error : function(error) {
						console.log(error);
					}
				});
				return filePath;
			}
		}

		function saveResumeInfo() {
			var cvFilePath = otherInfoPDFFileUplod();

			var workHistoryCredentialsID = document
					.getElementsByName('staffWorkHistoryCredentialsID[]');
			var workHistoryCredentialsDateFrom = document
					.getElementsByName('staffWorkHistoryCredentialsDateFrom[]');
			var workHistoryCredentialsDateTo = document
					.getElementsByName('staffWorkHistoryCredentialsDateTo[]');
			var workDesignationCredentials = document
					.getElementsByName('staffDesignationCredentials[]');
			var workCompanyNameCredentials = document
					.getElementsByName('staffCompanyNameCredentials[]');
			var workExperienceTypeCredentials = document
					.getElementsByName('staffExperienceTypeCredentials[]');

			var educationalIDArray = document
					.getElementsByName('staffEducationalID[]');
			var educationDateFromArray = document
					.getElementsByName("staffEducationalBackgroundDateFrom[]");
			var educationDateToArray = document
					.getElementsByName("staffEducationalBackgroundDateTo[]");
			var instituteArray = document.getElementsByName("staffInstitute[]");
			var qualificationTypeArray = document
					.getElementsByName("staffQualification[]");

			var licenseQualificationIDArray = document
					.getElementsByName("licenseQualificationID[]");
			var licenceDateFromArray = document
					.getElementsByName("staffLicenseQualificationDateFrom[]");
			var licenceDateToArray = document
					.getElementsByName("staffLicenseQualificationDateTo[]");
			var licenceQualificationArray = document
					.getElementsByName("staffLicenceQualification[]");
			var licenceNumberArray = document
					.getElementsByName("staffLicenceNumber[]");
			var licenceOperatingItemArray = document
					.getElementsByName("staffLicenceOperatingItem[]");

			var hope = document.getElementById("staffHope").value != "" ? document
					.getElementById("staffHope").value.trim()
					: null;

			var dataNode = {};
			var dataArrayEducation = [];
			var dataArrayWork = [];
			var dataArrayLicence = [];

			for (var i = 0; i < educationalIDArray.length; i++) {
				//var educationID = educationalIDArray[i].value !=""? educationalIDArray[i].value : null ;
				var educationDateFrom = educationDateFromArray[i].value != "" ? educationDateFromArray[i].value
						: null;
				var educationDateTo = educationDateToArray[i].value != "" ? educationDateToArray[i].value
						: null;
				var institute = instituteArray[i].value != "" ? instituteArray[i].value
						.trim()
						: null;
				var qualificationType = qualificationTypeArray[i].value != "" ? qualificationTypeArray[i].value
						.trim()
						: null;

				var tempEducation = {
					"dateFrom" : educationDateFrom,
					"dateTo" : educationDateTo,
					"institute" : institute,
					"qualificationType1" : qualificationType
				};

				dataArrayEducation.push(tempEducation);
			}

			for (var i = 0; i < workHistoryCredentialsID.length; i++) {
				//var workIDCredentials = workHistoryCredentialsID[i].value !="" ? workHistoryCredentialsID[i].value : null;
				var CredentialsworkDateFrom = workHistoryCredentialsDateFrom[i].value != "" ? workHistoryCredentialsDateFrom[i].value
						: null;
				var CredentialsworkDateTo = workHistoryCredentialsDateTo[i].value != "" ? workHistoryCredentialsDateTo[i].value
						: null;
				var Credentialsdesignation = workDesignationCredentials[i].value != "" ? workDesignationCredentials[i].value
						.trim()
						: null;
				var CredentialscompanyName = workExperienceTypeCredentials[i].value != "" ? workExperienceTypeCredentials[i].value
						.trim()
						: null;
				var CredentialsexperienceType = workExperienceTypeCredentials[i].value != "" ? workExperienceTypeCredentials[i].value
						.trim()
						: null;

				var tempWork = {
					"dateFrom" : CredentialsworkDateFrom,
					"dateTo" : CredentialsworkDateTo,
					"designation" : Credentialsdesignation,
					"companyName" : CredentialscompanyName,
					"experienceType" : CredentialsexperienceType
				};

				dataArrayWork.push(tempWork);
			}

			for (var i = 0; i < licenseQualificationIDArray.length; i++) {
				//var licenseQualificationID = licenseQualificationIDArray[i].value !="" ? licenseQualificationIDArray[i].value :null;
				var licenceDateFrom = licenceDateFromArray[i].value != "" ? licenceDateFromArray[i].value
						: null;
				var licenceDateTo = licenceDateToArray[i].value != "" ? licenceDateToArray[i].value
						: null;
				var licenceQualification = licenceQualificationArray[i].value != "" ? licenceQualificationArray[i].value
						.trim()
						: null;
				var licenceNumber = licenceNumberArray[i].value != "" ? licenceNumberArray[i].value
						.trim()
						: null;
				var licenceOperatingItem = licenceOperatingItemArray[i].value != "" ? licenceOperatingItemArray[i].value
						.trim()
						: null;

				var tempLicence = {
					"dateFrom" : licenceDateFrom,
					"dateTo" : licenceDateTo,
					"licenceQualification" : licenceQualification,
					"licenceNumber" : licenceNumber,
					"licenceOperatingItem" : licenceOperatingItem
				};
				dataArrayLicence.push(tempLicence);
			}

			saveUuid = localStorage.getItem('saveUuid');

			dataNode['uuid'] = saveUuid;
			dataNode['user_educationInfos'] = dataArrayEducation;
			dataNode['user_workInfos'] = dataArrayWork;
			dataNode['user_licenceInfos'] = dataArrayLicence;
			dataNode['hope'] = hope;
			dataNode['cvLocation'] = cvFilePath;

			passData = JSON.stringify(dataNode);

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostResumeInfo',
						method : 'POST',
						contentType : 'application/json',
						data : passData,
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) {
								document
										.getElementById("buttonSaveResumeInformation").disabled = true;
								showMessage('success', "E1091");

							} else {
								console.log("Sorry Resume Info not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1092");
							console.log("Sorry Resume Info not working");
							console.log(JSON.stringify(error));
						}
					});
		}

		function savePayrollInfo() {

			var salaryPaymentMethod = document
					.getElementById("staffPaymentMethod").value;
			var salaryPaymentForm = document
					.getElementById("staffSalaryPaymentForm").value;
			var salaryStartDate = document.getElementById("staffPaidStartDate").value != "" ? document
					.getElementById("staffPaidStartDate").value
					: null;
			var salaryClosingDate = document
					.getElementById("staffSalaryClosingDate").value != "" ? document
					.getElementById("staffSalaryClosingDate").value
					: null;
			var dailySalaryUnitPrice = document.getElementById("dailySalary").value;
			var hourlyWageUnitPrice = document
					.getElementById("staffHourlyWageUnitPrice").value;
			var paidTarget = document.getElementById("staffPaidTarget").value;
			var transferFinancialInstitutionName = document
					.getElementById("staffFinancialInstitutionName").value;
			var transferBranchName = document.getElementById("staffBranchName").value;
			var bankCode = document.getElementById("staffBankCode").value;
			var branchCode = document.getElementById("staffBranchCode").value;
			var accountType = document.getElementById("staffAccountType").value;
			var accountNumber = document.getElementById("staffAccountNumber").value;
			var accountName = document.getElementById("staffAccountName").value;

			saveUuid = localStorage.getItem('saveUuid');

			let dataPassNode = {};
			dataPassNode['uuid'] = saveUuid;
			dataPassNode['salaryPaymentMethod'] = salaryPaymentMethod;
			dataPassNode['salaryPaymentForm'] = salaryPaymentForm;
			dataPassNode['salaryStartDate'] = salaryStartDate;
			dataPassNode['salaryClosingDate'] = salaryClosingDate;
			dataPassNode['dailySalaryUnitPrice'] = parseInt(dailySalaryUnitPrice
					.trim());
			dataPassNode['hourlyWageUnitPrice'] = parseInt(hourlyWageUnitPrice
					.trim());
			dataPassNode['paidTarget'] = paidTarget;
			dataPassNode['transferFinancialInstitutionName'] = transferFinancialInstitutionName
					.trim();
			dataPassNode['transferBranchName'] = transferBranchName.trim();
			dataPassNode['bankCode'] = bankCode.trim();
			dataPassNode['branchCode'] = branchCode.trim();
			dataPassNode['accountType'] = accountType;
			dataPassNode['accountNumber'] = accountNumber.trim();
			dataPassNode['accountName'] = accountName.trim();

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostPayrollInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) {
								document
										.getElementById("buttonSavePayrollInformation").disabled = true;
								showMessage('success', "E1093");
							} else {
								showMessage('error', "E1094");
								console.log("Sorry Payroll Info not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1094");
							console.log("Sorry Payroll Info not working");
							console.log(JSON.stringify(error));
						}
					});

		}

		function saveSocialInfo() {

			var myNumber = document.getElementById("staffMyNumber").value;
			var socialInsuranceCoverage = document
					.getElementById("staffSocialInsuranceCoverage").value;
			var healthInsuranceCoverage = document
					.getElementById("staffHealthInsuranceCoverage").value;
			var healthInsuranceGrade = document
					.getElementById("staffHealthInsuranceGrade").value;
			var welfarePensionInsuranceParticipationStatus = document
					.getElementById("staffWelfarePensionStatus").value;
			var welfarePensionInsuranceGrade = document
					.getElementById("staffWelfarePensionGrade").value;
			var longTermCareInsuranceParticipationStatus = document
					.getElementById("staffLongTermInsuranceStatus").value;
			var employmentInsuranceCoverage = document
					.getElementById("staffEmploymentInsuranceCoverage").value;
			var incomeTaxTaxpayerClassification = document
					.getElementById("staffIncomeTaxTaxpayer").value;
			var numberofDependents = document
					.getElementById("staffNumberDependents").value;
			var residentTaxClassification = document
					.getElementById("staffResidentTaxClassification").value;

			var dependentIDArray = document
					.getElementsByName("staffDependentsID[]");
			var familyNameArray = document
					.getElementsByName("staffDependentsName[]");
			var nameKatakanaArray = document
					.getElementsByName("staffDependentsNamekatakana[]");
			var dependentBirthdayArray = document
					.getElementsByName("staffDependentsBirthday[]");
			var dependentGenderArray = document
					.getElementsByName("staffDependentsGender[]");
			var dependentsRelationshipArray = document
					.getElementsByName("staffDependentsRelationship[]");
			var classificationArray = document
					.getElementsByName("staffDependentsClassification[]");
			var livingTogetherArray = document
					.getElementsByName("staffDependentsLivingtogether[]");
			var handicappedArray = document
					.getElementsByName("staffDependentsHandicapped[]");

			// var dataNode = {};
			var dataArrayDependent = [];

			for (var i = 0; i < dependentIDArray.length; i++) {
				//var dependentID = dependentIDArray[i].value !="" ? dependentIDArray[i].value : null;
				var familyName = familyNameArray[i].value != "" ? familyNameArray[i].value
						.trim()
						: null;
				var nameKatakana = nameKatakanaArray[i].value != "" ? nameKatakanaArray[i].value
						.trim()
						: null;
				var dependentBirthday = dependentBirthdayArray[i].value != "" ? dependentBirthdayArray[i].value
						: null;
				var dependentGender = dependentGenderArray[i].value != "" ? dependentGenderArray[i].value
						: null;
				var dependentsRelationship = dependentsRelationshipArray[i].value != "" ? dependentsRelationshipArray[i].value
						: null;
				var classification = classificationArray[i].value != "" ? classificationArray[i].value
						: null;
				var livingTogether = livingTogetherArray[i].value != "" ? livingTogetherArray[i].value
						: null;
				var handicapped = handicappedArray[i].value != "" ? handicappedArray[i].value
						: null;

				var tempDependent = {
					"familyName" : familyName,
					"nameKatakana" : nameKatakana,
					"dependentBirthday" : dependentBirthday,
					"dependentGender" : dependentGender,
					"dependentsRelationship" : dependentsRelationship,
					"classification" : classification,
					"livingTogether" : livingTogether,
					"handicapped" : handicapped
				};

				dataArrayDependent.push(tempDependent);
			}

			saveUuid = localStorage.getItem('saveUuid');
			let dataPassNode = {};
			dataPassNode['uuid'] = saveUuid;
			dataPassNode['myNumber'] = myNumber.trim();
			dataPassNode['socialInsuranceCoverage'] = socialInsuranceCoverage;
			dataPassNode['healthInsuranceCoverage'] = healthInsuranceCoverage;
			dataPassNode['healthInsuranceGrade'] = healthInsuranceGrade;
			dataPassNode['welfarePensionInsuranceParticipationStatus'] = welfarePensionInsuranceParticipationStatus;
			dataPassNode['welfarePensionInsuranceGrade'] = welfarePensionInsuranceGrade;
			dataPassNode['longTermCareInsuranceParticipationStatus'] = longTermCareInsuranceParticipationStatus;
			dataPassNode['employmentInsuranceCoverage'] = employmentInsuranceCoverage;
			dataPassNode['incomeTaxTaxpayerClassification'] = incomeTaxTaxpayerClassification;
			dataPassNode['numberofDependents'] = numberofDependents.trim();
			dataPassNode['residentTaxClassification'] = residentTaxClassification;

			dataPassNode['userDependentInfo'] = dataArrayDependent;
			passData = JSON.stringify(dataPassNode);

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostSocialInfo',
						method : 'POST',
						contentType : 'application/json',
						data : passData,
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) {
								document
										.getElementById("buttonSaveSocialInformation").disabled = true;
								showMessage('success', "E1095");
							} else {
								showMessage('error', "E1096");
								console.log("Sorry Social Info not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1096");
							console.log("Sorry Social Info not working");
							console.log(JSON.stringify(error));
						}
					});

		}

		function saveLoginInfo() {
			var email = document.getElementById("staffEmail").value;
			var conformEmail = document
					.getElementById("pageSpanEmailAddressConfirm").value;
			var password = 123;

			saveUuid = localStorage.getItem('saveUuid');

			let dataPassNode = {};
			dataPassNode['uuid'] = saveUuid;
			dataPassNode['email'] = email.trim();
			dataPassNode['email'] = email.trim();
			dataPassNode['password'] = password;
			dataPassNode['confirmPassword'] = password;

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostLoginInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 200) {
								document
										.getElementById("buttonSaveLoginInformation").disabled = true;
								showMessage('success', "E1097");
							} else {
								showMessage('error', "E1098");
								console.log("Sorry Login Info not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1098");
							console.log("Sorry Login Info not working");
							console.log(JSON.stringify(error));
						}
					});

		}

		function otherInfoFileUplod() {

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

				$
						.ajax({
							beforeSend : function(request) {
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

		function saveOtherInfo() {

			var profilePicturePath = otherInfoFileUplod();

			//var profilePicturePath = document.getElementById("staffCvPdf").value;
			var emergencyContactName = document
					.getElementById("staffEmergencyContactName").value;
			var emergencyContactNameKatakana = document
					.getElementById("staffEmergencyContactNameKatakana").value;
			var postalCode = document
					.getElementById("staffEmergencyPostalCode").value;
			var prefecture = document
					.getElementById("staffEmergencyPrefecture").value;
			var addressKatakana = document
					.getElementById("staffEmergencyAddress").value;
			var emergencyContactPhoneNumber = document
					.getElementById("staffEmergencyContactPhoneNumber").value;
			var relationship = document.getElementById("staffRelationship").value;
			var dateOfJoinInTheCompany = document
					.getElementById("staffCompanyJoiningDate").value;
			var inChargeStaff = document.getElementById("staffStaffStaff").value;
			var experience = document.getElementById("staffExperience").value;
			var staffMemo = document.getElementById("staffMemo").value;
			var staffInformationUpdateHistory = document
					.getElementById("staffInformationUpdate").value;
			var dateOfLeavingTheCompany = document
					.getElementById("staffDateofleavingthecompany").value != "" ? document
					.getElementById("staffDateofleavingthecompany").value
					: null;
			var validClassification = document
					.getElementById("staffValidClassification").value;

			saveUuid = localStorage.getItem('saveUuid');

			let dataPassNode = {};
			dataPassNode['uuid'] = saveUuid;
			//dataPassNode['staffCode'] = saveStaffCode;
			dataPassNode['profilePicturePath'] = profilePicturePath;
			dataPassNode['emergencyContactName'] = emergencyContactName.trim();
			dataPassNode['emergencyContactNameKatakana'] = emergencyContactNameKatakana
					.trim();
			dataPassNode['postalCode'] = parseInt(postalCode.trim());
			dataPassNode['prefecture'] = prefecture;
			dataPassNode['addressKatakana'] = addressKatakana.trim();
			dataPassNode['emergencyContactPhoneNumber'] = emergencyContactPhoneNumber
					.trim();
			dataPassNode['relationship'] = relationship.trim();
			dataPassNode['dateOfJoinInTheCompany'] = dateOfJoinInTheCompany;
			dataPassNode['inChargeStaff'] = inChargeStaff.trim();
			dataPassNode['experience'] = experience.trim();
			dataPassNode['staffMemo'] = staffMemo.trim();
			dataPassNode['staffInformationUpdateHistory'] = staffInformationUpdateHistory
					.trim();
			dataPassNode['dateOfLeavingTheCompany'] = dateOfLeavingTheCompany;
			dataPassNode['validClassification'] = validClassification;

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'users/PostOtherInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 200) {
								document
										.getElementById("buttonSaveOtherInformation").disabled = true;
								showMessage('success', "E1099");
							} else {
								showMessage('error', "E1100");
								console.log("Sorry Other Info not working");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							showMessage('error', "E1100");
							console.log("Sorry Other Info not working");
							console.log(JSON.stringify(error));
						}
					});
		}

		function addEducationalRow() {
			var $tr = $("#educationalTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#educationalTbodyId").append($clone);
		}

		function removeEducationalRow(element) {
			if ($('#staff_educational_table tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "E1101");
			}
		}

		function addWorkRow() {
			var $tr = $("#workTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#workTbodyId").append($clone);
		}

		function removeWorkRow(element) {
			if ($('#staff_work_table tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "E1101");
			}
		}

		function addLicenseRow() {
			var $tr = $("#licenceTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#licenceTbodyId").append($clone);
		}

		function removeLicenceRow(element) {
			if ($('#showLicenseQualification tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "E1101");
			}
		}

		function addDependentRow() {
			var $tr = $("#dependentTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdDependent").append($clone);
		}

		function removeDependentRow(element) {
			if ($('#search_staff_table4 tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "E1101");
			}
		}

		function copyDependentRow(element) {

			var $tr = $(element).closest('tr');
			var $clone = $tr.clone();

			$clone.find("select").each(function(i) {
				this.selectedIndex = $tr.find("select")[i].selectedIndex;
			})
			// $clone.find('select:value');
			$tr.after($clone);
		}

		function clearRow(element) {
			var $tr = $(element).closest('tr');
			$tr.find('input').val('');
		}

		function clearDependentRow(element) {
			var $tr = $(element).closest('tr');
			$tr.find('input').val('');
			$tr.find('select').val('');
		}

		function getAddressStaff(zipCodeId, addressId) {

			let endpoint = 'https://map.yahooapis.jp/search/zip/V1/zipCodeSearch?';
			let apiKey = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';
			let postalCode = document.getElementById(zipCodeId).value.trim();

			$
					.ajax({
						url : endpoint + "query=" + postalCode + "&appid="
								+ apiKey + "&output=json",
						method : 'GET',
						//contentType: 'application/json', 
						dataType : 'json',
						success : function(result, status, request) {

							if (result.Feature != null) {
								$('[data-prefecture]')
										.map(
												function() {
													if (result.Feature[0].Property.Address
															.match($(this)
																	.data(
																			'prefecture'))) {
														$(this).attr(
																'selected',
																'selected');
													}
												}).get();
								document.getElementById(addressId).value = result.Feature[0].Property.Address;
							} else {
								showMessage('info', "E1122");
							}

						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});

		}

		function getAddressOther(zipCodeId, addressId) {

			let endpoint = 'https://map.yahooapis.jp/search/zip/V1/zipCodeSearch?';
			let apiKey = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';
			let postalCode = document.getElementById(zipCodeId).value.trim();

			$
					.ajax({
						url : endpoint + "query=" + postalCode + "&appid="
								+ apiKey + "&output=json",
						method : 'GET',
						//contentType: 'application/json', 
						dataType : 'json',
						success : function(result, status, request) {

							if (result.Feature != null) {
								$('[data-prefecture2]')
										.map(
												function() {
													if (result.Feature[0].Property.Address
															.match($(this)
																	.data(
																			'prefecture2'))) {
														$(this).attr(
																'selected',
																'selected');
													}
												}).get();
								document.getElementById(addressId).value = result.Feature[0].Property.Address;
							} else {
								showMessage('info', "E1122");
							}

						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});

		}

		function showingMessage(messageType) {
			messageContent = notificationArray[localStorage.getItem('language')];
			Swal.fire({
				width : '25rem',
				// position: 'top-end',
				icon : messageType,
				title : "CV Uploaded Successfully",
				showConfirmButton : false,
				timer : 3000
			});
		}

		function showingErrorMessage(messageType) {
			messageContent = notificationArray[localStorage.getItem('language')];
			Swal.fire({
				width : '25rem',
				// position: 'top-end',
				icon : messageType,
				title : "Please select a PDF CV",
				showConfirmButton : false,
				timer : 3000
			});
		}
	</script>
</body>

</html>