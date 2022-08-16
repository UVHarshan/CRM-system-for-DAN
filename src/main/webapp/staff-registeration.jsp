<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleStaffRegistration">Staff Registration</title>
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
<link rel="stylesheet" href="./dist-assets/cropper/css/cropper.css">
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
												id="pageSpanHeadingStaffRegister"> Staff Registration</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingStaffDetails">You
											can modify the staff, check the shift schedule of this staff,
											and check the assignment status.</p>
									</div>
									<div class="col-md-8  ">
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
																	id="accordionDivStaffInformation">Staff
																	Information</div>
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
																	<span id="pageSpanName"> Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffName" class="form-control"
																		maxlength="255"> <span
																		id="pageSpanHelpTextName"> Please put a space
																		between the first and last name</span>
																</div>
																<div id="errorName" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNameKatakana">Name Katakana </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffNameKatakana"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanHelpTextNameKatakana"> Please put a
																		space between the first and last name</span>
																</div>
																<div id="errorNameKatakana" style="color: red;"></div>
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
																	<span id="pageSpanPrefecture">Prefecture</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffPrefecture" class="form-control"
																		required>
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

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAddress">Address</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffAddress"
																		class="form-control"> <span
																		id="pageSpanHelpAddress"> Please be sure to
																		enter the apartment name and building name</span>
																</div>
																<div id="errorAddress" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAddressKatakana">Address
																		Katakana</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffAddressKatakana"
																		class="form-control">
																</div>
																<div id="errorAddressKatakana" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDateofBirth">Date of Birth </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="staffDOB" class="form-control">
																</div>
																<div id="errorDob" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanGender">Gender</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectGender_1">Select
																			Gender</option>
																		<option value="1" id="selectOptionSelectGenderMale_1">Male</option>
																		<option value="2"
																			id="selectOptionSelectGenderFemale_1">Female</option>
																	</Select>
																</div>
																<div id="errorGender" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMobile">Mobile</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffMobile"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpMobile"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorMobile" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHomeParent"> Home (parent's
																		home)</span>
																</div>
																<div>
																	<input type="text" id="staffHomeTel"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpHome"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorHomeTel" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanFax">Fax</span>
																</div>
																<div>
																	<input type="text" id="staffFax" class="form-control"
																		maxlength="11"> <span id="pageSpanHelpFax">
																		Please enter without hyphens</span>
																</div>
																<div id="errorFax" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAttributeclassification1">Attribute
																		classification 1</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffAttributeclassification1"
																		class="form-control" disabled>
																		<option value=""
																			id="pageOption0AttributeClassification1">Select
																			Attribute classification 1</option>
																		<option value="1"
																			id="pageOption1AttributeClassification1" selected>
																			Inhouse Company Affiliated Staff</option>
																		<option value="2"
																			id="pageOption2AttributeClassification1">Out
																			Sourcing</option>
																	</Select>
																</div>
																<div id="errorAttribute1" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAttributeclassification2">Attribute
																		classification 2</span>
																</div>
																<div>
																	<Select id="staffAttributeclassification2"
																		class="form-control">
																		<option value=""
																			id="pageOption0AttributeClassification2">Select
																			Attribute classification 2</option>
																		<option value="1"
																			id="pageOption1AttributeClassification2">Fixed-term
																			employment worker</option>
																		<option value="2"
																			id="pageOption2AttributeClassification2">Fixed-term
																			employment workers(Dispatched Workers Subject to the
																			agrrement</option>
																		<option value="3"
																			id="pageOption3AttributeClassification2">Permanent
																			Worker</option>
																		<option value="4"
																			id="pageOption4AttributeClassification2">Permanent
																			Employment Workers(Dispatched Workers Subject to the
																			agrrement</option>
																	</Select>
																</div>
																<div id="errorAttribute2" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanLaborManagementExpirationDate">Labor-management
																		agreement expiration date</span>
																</div>
																<div>
																	<input type="date"
																		id="staffLaborManagementAgreementExpirationDate"
																		class="form-control">
																</div>
																<div id="errorLabourExpire" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAttribute">Attribute</span>
																</div>
																<div>
																	<Select id="staffAttribute" class="form-control">
																		<option value="" id="pageOption0Attribute">Select
																			Attribute</option>
																		<option value="1" id="pageOption1Attribute">Elderly</option>
																		<option value="2" id="pageOption2Attribute">Foreign
																			Student</option>
																		<option value="3" id="pageOption3Attribute">Foreign
																			worker</option>
																		<option value="4" id="pageOption4Attribute">Highschooler</option>
																	</Select>
																</div>
																<div id="errorAttribute" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBelongs">Belongs</span>
																</div>
																<div>
																	<input type="text" id="staffBelongs"
																		class="form-control">
																</div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDisClassification">Dispatch
																		classification </span>
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
																			id="pageSpanBusinessContract">Out Sourcing</span> <input
																			type="checkbox" id="dispatchClassification2"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanIntroductionDispatching">Temp -to-
																				Perm</span> <input type="checkbox"
																			id="dispatchClassification3" name="dispatchClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanRecruitment">Talent
																				Introduction/Recruiting/Placement</span> <input
																			type="checkbox" id="dispatchClassification4"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanPartTime">Part Time</span> <input
																			type="checkbox" id="dispatchClassification5"
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



															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button 
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveStaffInformation">Save Staff
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
															data-toggle="collapse"
															data-target="#transportationInformation"
															aria-expanded="false"
															aria-controls="transportationInformation">
															<div class="row">
																<div class="col-10"
																	style="text-align: left; white-space: pre-line;"
																	id="accordionDivTransportationInformation">
																	Transportation Information</div>
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
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNearestStation">Nearest
																		Station </span>
																</div>
																<div>
																	<input type="text" id="staffNearestStation"
																		class="form-control">
																</div>
																<div id="errorNearestStation" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTimeRequiredNearestStation">Time
																		required to reach the nearest station (minutes)</span>
																</div>
																<div>
																	<input type="number"
																		id="staffTimeRequiredNearestStation"
																		class="form-control">
																</div>
																<div id="errorTimeStation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransportationNearestStation">Transportation
																		to the nearest station</span>
																</div>
																<div>
																	<input type="text"
																		id="staffTransportationToNearestStation"
																		class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBusUseSectionFrom">Bus use
																		section From</span>
																</div>
																<div>
																	<input type="text" id="staffBusSectionFrom"
																		class="form-control"> <span
																		id="pageSpanHelpBusUseSectionFrom">* Fill in
																		only for bus users to the nearest station</span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBusUseSectionTo"> Bus use
																		section To</span>
																</div>
																<div>
																	<input type="text" id="staffBusSectionTo"
																		class="form-control"> <span
																		id="pageSpanHelpBusUseSectionTo">* Fill in only
																		for bus users to the nearest station</span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRoundTripBusFare">Round-trip
																		bus fare (yen)</span>
																</div>
																<div>
																	<input type="number" id="staffRoundTripBusFare"
																		class="form-control"> <span
																		id="pageSpanHelpRoundTripBusFare">* Fill in
																		only for bus users to the nearest station</span>
																</div>
																<div id="errorBusFare" style="color: red;"></div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveTransportationInformation">Save
																	Transportation Information</button>
															</div>

														</div>
													</div>
												</div>
											</div>

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#resumeInformation"
															aria-expanded="false" aria-controls="resumeInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivResumeInformation">Resume
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="resumeInformation" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEducationalBackground">Educational
																		Background </span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<div class="table-responsive ">
																	<table
																		class="display table table-striped table-bordered"
																		id="staff_educational_table" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="tableEducationalBackgroundTHDateFrom">
																					Date From</th>
																				<th id="tableEducationalBackgroundTHDateTo">
																					Date To</th>
																				<th id="tableEducationalBackgroundTHInstitute">
																					Institute / School</th>
																				<th
																					id="tableEducationalBackgroundTHQualificationType">
																					Qualification Type</th>
																				<th style="width: 95px;"></th>
																			</tr>
																		</thead>
																		<tbody id="educationalTbodyId">
																			<tr id="educationalTrId">
																				<td style="width: 15%;" class="p-1"><input
																					type="hidden" name="staffEducationalID[]"
																					class="form-control"> <input type="month"
																					name="staffEducationalBackgroundDateFrom[]"
																					class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input
																					type="month"
																					name="staffEducationalBackgroundDateTo[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					name="staffInstitute[]" class="form-control"></td>
																				<td class="p-1"><input type="text"
																					name="staffQualification[]" class="form-control">
																				</td>
																				<td>
																					<button class="btn btn-danger"
																						onclick="removeEducationalRow(this)">
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
																			onclick="addEducationalRow()" id="addEducationalRow">Add
																			Row</button>
																	</div>
																</div>
															</div>
														</div>

														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkHistory">Work History</span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="staff_work_table" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="tableWorkHistoryTHYear">Date From</th>
																				<th id="tableWorkHistoryTHMonth">Date To</th>
																				<th id="tableWorkHistoryTHDesignation">Designation</th>
																				<th id="tableWorkHistoryTHCompany">Company</th>
																				<th id="tableWorkHistoryTHContent">Experience</th>
																				<th style="width: 95px;"></th>
																			</tr>
																		</thead>
																		<tbody id="workTbodyId">
																			<tr id="workTrId">
																				<input type="hidden"
																					name="staffWorkHistoryCredentialsID[]">
																				<td style="width: 15%;" class="p-1"><input
																					type="month" id="staffWorkHistoryDateFrom"
																					name="staffWorkHistoryCredentialsDateFrom[]"
																					class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input
																					type="month" id="staffWorkHistoryDateTo"
																					name="staffWorkHistoryCredentialsDateTo[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffDesignation"
																					name="staffDesignationCredentials[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffCompanyName"
																					name="staffCompanyNameCredentials[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffExperienceType"
																					name="staffExperienceTypeCredentials[]"
																					class="form-control"></td>
																				<td>
																					<button class="btn btn-danger"
																						onclick="removeWorkRow(this)">
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
																	<div id="errorWorkHistory" class="RequiredStar"></div>
																	<div
																		class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
																		<button class="btn SuccessColor"
																			onclick="addWorkRow()" id="addWorkRow">Add
																			Row</button>
																	</div>
																</div>
															</div>
														</div>

														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanLicenceQualification">license
																		Qualification</span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="showLicenseQualification" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="tableLicenseTHDateFrom">Date From</th>
																				<th id="tableLicenseTHDateTo">Date To</th>
																				<th id="tableLicenseTHLicenseQualification">License
																					Qualification</th>
																				<th id="tableLicenseTHLicenseNumber">License
																					Number</th>
																				<th id="tableLicenseTHLiContents">License
																					Operating Item</th>
																				<th style="width: 95px;"></th>
																			</tr>
																		</thead>
																		<tbody id="licenceTbodyId">
																			<tr id="licenceTrId">
																				<input type="hidden" name="licenseQualificationID[]">
																				<td style="width: 15%;" class="p-1"><input
																					type="month" id="staffLicenseQualificationDateFrom"
																					name="staffLicenseQualificationDateFrom[]"
																					class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input
																					type="month" id="staffLicenseQualificationDateTo"
																					name="staffLicenseQualificationDateTo[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffLicenceQualification"
																					name="staffLicenceQualification[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffLicenceNumber" name="staffLicenceNumber[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffLicenceOperatingItem"
																					name="staffLicenceOperatingItem[]"
																					class="form-control"></td>
																				<td>
																					<button class="btn btn-danger"
																						onclick="removeLicenceRow(this)">
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
																	<div id="errorLicenseQualification"
																		class="RequiredStar"></div>

																	<div
																		class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
																		<button class="btn SuccessColor"
																			onclick="addLicenseRow()" id="addLicenseRow">Add
																			Row</button>
																	</div>
																</div>
															</div>
														</div>


														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHope">Hope</span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<textarea class="form-control" id="staffHope"
																	></textarea>

															</div>
														</div>

														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-6 col-lg-6 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanCVFileUpload">CV
																	File Upload</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffCvPdf"
																			class="form-control">
																		<div id="errorStaffCvPdf" class="RequiredStar"></div>
																	</form>

																</div>
															</div>
														</div>

														<div class="row pt-3 pb-3">
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 ContentAlignRC">
																<button onclick="checkResume()"
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveResumeInformation">Save Resume
																	Information</button>
															</div>
														</div>

													</div>
												</div>
											</div>

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingThree">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#payroleInformation"
															aria-expanded="false" aria-controls="payroleInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivPayrollInformation">Payroll
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="payroleInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-3">

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDailySalaryUnitPrice">Daily
																		salary unit price</span>
																</div>
																<div>
																	<input type="number" id="dailySalary"
																		class="form-control"> <span
																		id="pageSpanHelpDailySalaryUnitPrice">* This
																		unit price will be referred to when the paid
																		calculation method is set to regular wages.</span>
																</div>
																<div id="errorDailySal" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHourlyWageUnitPrice">Hourly
																		Wage Unit Price</span>
																</div>
																<input type="number" id="staffHourlyWageUnitPrice"
																	class="form-control"> <span
																	id="pageSpanHelpHourlyWageUnitPrice">* Enter
																	this if the unit price is fixed regardless of the job
																	description.</span>

																<div id="errorHourlySal" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentMethod">Salary
																		Payment Method</span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<Select id="staffPaymentMethod" class="form-control">
																		<option value="0" id="selectOption">Select
																			Salary Payment Method</option>
																		<option value="1" id="selectOptionPersonalDelivery">Personal
																			delivery</option>
																		<option value="2" id="selectOptionTransfer">Transfer</option>
																	</Select> <span id="pageSpanHelpSalaryPaymentMethod">If
																		you choose to transfer, please enter your account
																		information</span>
																</div>
																<div id="errorSalaryPay" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentForm">Salary
																		Payment Form</span> <span class="RequiredStar"> *</span>
																</div>
																<div>
																	<Select id="staffSalaryPaymentForm"
																		class="form-control">
																		<option value="0" id="selectOptionSalary">Select
																			Salary Payment Form</option>
																		<option value="1"
																			id="selectOptionSalaryPaymentFormDailyWeekly">Daily
																			/ Weekly payment</option>
																		<option value="2"
																			id="selectOptionSalaryPaymentFormMonthly">Monthly
																			Payment</option>
																	</Select>
																</div>
																<div id="errorSalaryPayForm" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryClosingDate">Salary
																		Closing Date</span>
																</div>
																<div>
																	<div class="form-group">
																		<Select id="staffSalaryClosingDate"
																			class="form-control">
																			<option value="" id="selectOptionSalaryClosingDate">Select
																				Salary Closing Date</option>
																			<option value="28"
																				id="selectOptionSalaryClosingDateTheEndOfTheMonth">The
																				end of the month</option>
																			<option value="1"
																				id="selectOptionSalaryClosingDate1Day">1
																				day</option>
																			<option value="2"
																				id="selectOptionSalaryClosingDate2Day">2
																				days</option>
																			<option value="3"
																				id="selectOptionSalaryClosingDate3Day">3
																				days</option>
																			<option value="4"
																				id="selectOptionSalaryClosingDate4Day">4
																				days</option>
																			<option value="5"
																				id="selectOptionSalaryClosingDate5Day">5
																				days</option>
																			<option value="6"
																				id="selectOptionSalaryClosingDate6Day">6
																				days</option>
																			<option value="7"
																				id="selectOptionSalaryClosingDate7Day">7
																				days</option>
																			<option value="8"
																				id="selectOptionSalaryClosingDate8Day">8
																				days</option>
																			<option value="9"
																				id="selectOptionSalaryClosingDate9Day">9
																				days</option>
																			<option value="10"
																				id="selectOptionSalaryClosingDate10Day">10
																				days</option>
																			<option value="11"
																				id="selectOptionSalaryClosingDate11Day">11
																				days</option>
																			<option value="12"
																				id="selectOptionSalaryClosingDate12Day">12
																				days</option>
																			<option value="13"
																				id="selectOptionSalaryClosingDate13Day">13
																				days</option>
																			<option value="14"
																				id="selectOptionSalaryClosingDate14Day">14
																				days</option>
																			<option value="15"
																				id="selectOptionSalaryClosingDate15Day">15
																				days</option>
																			<option value="16"
																				id="selectOptionSalaryClosingDate16Day">16
																				days</option>
																			<option value="17"
																				id="selectOptionSalaryClosingDate17Day">17
																				days</option>
																			<option value="18"
																				id="selectOptionSalaryClosingDate18Day">18
																				days</option>
																			<option value="19"
																				id="selectOptionSalaryClosingDate19Day">19
																				days</option>
																			<option value="20"
																				id="selectOptionSalaryClosingDate20Day">20
																				days</option>
																			<option value="21"
																				id="selectOptionSalaryClosingDate21Day">21
																				days</option>
																			<option value="22"
																				id="selectOptionSalaryClosingDate22Day">22
																				days</option>
																			<option value="23"
																				id="selectOptionSalaryClosingDate23Day">23
																				days</option>
																			<option value="24"
																				id="selectOptionSalaryClosingDate24Day">24
																				days</option>
																			<option value="25"
																				id="selectOptionSalaryClosingDate25Day">25
																				days</option>
																			<option value="26"
																				id="selectOptionSalaryClosingDate26Day">26
																				days</option>
																			<option value="27"
																				id="selectOptionSalaryClosingDate27Day">27
																				days</option>
																			<option value="28"
																				id="selectOptionSalaryClosingDate28Day">28
																				days</option>
																		</Select>
																	</div>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaidTarget">Paid Target</span>
																</div>
																<div>
																	<Select id="staffPaidTarget" class="form-control">
																		<option value="" id="selectOptionPaidTarget">Select
																			Paid Target</option>
																		<option value="1" id="selectOptionPaidTargetYes">Yes</option>
																		<option value="2" id="selectOptionPaidTargetNothing">Nothing</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaidStartDate">Paid start date</span>
																</div>
																<div>
																	<input type="date" id="staffPaidStartDate"
																		class="form-control">
																</div>
															</div>



														</div>

														<div class="row pb-4" id="transferMainDiv"
															style="display: none; border-top: 1px solid rgb(136, 136, 136, 0.5);">

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferFinancialInstitution">Transfer
																		Financial Institution Name</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffFinancialInstitutionName"
																		class="form-control">
																</div>
																<div id="errorTransferFinancial" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferBranchName">Transfer
																		Branch Name</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffBranchName"
																		class="form-control"> <span
																		id="pageSpanHelpTransferBranchName">For Japan
																		Post Bank, enter the store name (example: 1988)</span>
																</div>
																<div id="errorTransferBranch" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBankCode">Bank Code</span>

																</div>
																<div>
																	<input type="number" id="staffBankCode"
																		class="form-control">

																</div>
																<div id="errorBankCode" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBranchCode">Branch Code</span>

																</div>
																<div>
																	<input type="number" id="staffBranchCode"
																		class="form-control">

																</div>
																<div id="errorBranchCode" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountType">Account Type</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffAccountType" class="form-control">
																		<option value="0" id="selectOptionAccountType">Select
																			Account Type</option>
																		<option value="1" id="selectOptionAccountTypeUsually">Usually</option>
																		<option value="2" id="selectOptionAccountTypeCurrent">Current</option>
																		<option value="3" id="selectOptionAccountTypeSavings">Savings</option>
																		<option value="4" id="selectOptionAccountTypeOthers">Others</option>
																	</Select>
																</div>
																<div id="errorAccType" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6"></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountNumber">Account Number</span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="number" id="staffAccountNumber"
																		class="form-control">
																</div>
																<div id="errorAccNo" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountName">Account Name</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffAccountName"
																		class="form-control">
																</div>
																<div id="errorAccName" style="color: red;"></div>
															</div>

														</div>
														<div class="row pt-3 pb-3">
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSavePayrollInformation">Save Payroll
																	Information</button>
															</div>
														</div>


													</div>
												</div>
											</div>

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#insuranceTaxInformation"
															aria-expanded="false"
															aria-controls="insuranceTaxInformation">

															<div class="row">
																<div class="col-10"
																	style="text-align: left; white-space: pre-line;"
																	id="accordionDivSocialInsuranceInformation">
																	Social Insurance / Income Tax / Resident Tax
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="insuranceTaxInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanMyNumber">MyNumber</div>
																<div>
																	<input type="number" id="staffMyNumber"
																		class="form-control">
																</div>
																<div id="errorMyNumber" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSocialInsuranceCoverage"> Social
																		insurance Coverage</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffSocialInsuranceCoverage"
																		class="form-control">
																		<option value=""
																			id="selectOptionSocialInsuranceCoverage">Select
																			Social Insurance Coverage</option>
																		<option value="1"
																			id="selectOptionSocialInsuranceCoverageNotSubscribed">Not
																			Subscribed</option>
																		<option value="2"
																			id="selectOptionSocialInsuranceCoverageSubscribed">Subscribed</option>
																	</Select>
																</div>
																<div id="errorSocialInsurance" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-12  p-3"
																id="pageSpanOpensocialinsurance">
																insurance / income tax / resident tax information</a>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanHealthInsuranceCoverage">Health
																	insurance coverage</div>
																<div>
																	<Select id="staffHealthInsuranceCoverage"
																		class="form-control">
																		<option value=""
																			id="selectOptionHealthInsuranceCoverage">Select
																			Health insurance coverage</option>
																		<option value="1"
																			id="selectOptionHealthInsuranceCoverageNotSubscribed">NotSubscribed</option>
																		<option value="2"
																			id="selectOptionHealthInsuranceCoverageSubscribed">Subscribed</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanHealthInsuranceGrade">Health
																	insurance grade</div>
																<div>
																	<Select id="staffHealthInsuranceGrade"
																		class="form-control">
																		<option value="" id="selectOptionHealthInsuranceGrade">Select
																			Health insurance grade</option>
																		<option value="1"
																			id="selectOptionHealthInsuranceGradeNotSubscribed">Not
																			Subscribed</option>
																		<option value="2"
																			id="selectOptionHealthInsuranceGradeGrade1">Grade
																			1 to 63,000</option>
																		<option value="3"
																			id="selectOptionHealthInsuranceGradeGrade2">2nd
																			Grade 63,000 to 73,000</option>
																		<option value="4"
																			id="selectOptionHealthInsuranceGradeGrade3">3rd
																			Grade 73,000 to 83,000</option>
																		<option value="5"
																			id="selectOptionHealthInsuranceGradeGrade4">4th
																			Grade 83,000 to 93,000</option>
																		<option value="6"
																			id="selectOptionHealthInsuranceGradeGrade5">5th
																			Grade 93,000 to 101,000</option>
																		<option value="7"
																			id="selectOptionHealthInsuranceGradeGrade6">6th
																			Grade 101,000 to 107,000</option>
																		<option value="8"
																			id="selectOptionHealthInsuranceGradeGrade7">7th
																			Grade 107,000 to 114,000</option>
																		<option value="9"
																			id="selectOptionHealthInsuranceGradeGrade8">8th
																			Grade 114,000 to 122,000</option>
																		<option value="10"
																			id="selectOptionHealthInsuranceGradeGrade9">9th
																			Grade 122,000 to 130,000</option>
																		<option value="11"
																			id="selectOptionHealthInsuranceGradeGrade10">10th
																			Grade 130,000 to 138,000</option>
																		<option value="12"
																			id="selectOptionHealthInsuranceGradeGrade11">11th
																			Grade 138,000 to 146,000</option>
																		<option value="13"
																			id="selectOptionHealthInsuranceGradeGrade12">12th
																			Grade 146,000 to 155,000</option>
																		<option value="14"
																			id="selectOptionHealthInsuranceGradeGrade13">13th
																			Grade 155,000 to 165,000</option>
																		<option value="15"
																			id="selectOptionHealthInsuranceGradeGrade14">14th
																			Grade 165,000 to 175,000</option>
																		<option value="16"
																			id="selectOptionHealthInsuranceGradeGrade15">15th
																			Grade 175,000 to 185,000</option>
																		<option value="17"
																			id="selectOptionHealthInsuranceGradeGrade16">16th
																			Grade 185,000 to 195,000</option>
																		<option value="18"
																			id="selectOptionHealthInsuranceGradeGrade17">17th
																			Grade 195,000 to 210,000</option>
																		<option value="19"
																			id="selectOptionHealthInsuranceGradeGrade18">18th
																			Grade 210,000 to 230,000</option>
																		<option value="20"
																			id="selectOptionHealthInsuranceGradeGrade19">19th
																			Grade 230,000 to 250,000</option>
																		<option value="21"
																			id="selectOptionHealthInsuranceGradeGrade20">20th
																			Grade 250,000 to 270,000</option>
																		<option value="22"
																			id="selectOptionHealthInsuranceGradeGrade21">21st
																			Grade 270,000 to 290,000</option>
																		<option value="23"
																			id="selectOptionHealthInsuranceGradeGrade22">22nd
																			Grade 290,000 to 310,000</option>
																		<option value="24"
																			id="selectOptionHealthInsuranceGradeGrade23">23rd
																			Grade 310,000 to 330,000</option>
																		<option value="25"
																			id="selectOptionHealthInsuranceGradeGrade24">24th
																			Grade 330,000 to 350,000</option>
																		<option value="26"
																			id="selectOptionHealthInsuranceGradeGrade25">25th
																			Grade 350,000 to 370,000</option>
																		<option value="27"
																			id="selectOptionHealthInsuranceGradeGrade26">26th
																			Grade 370,000 to 395,000</option>
																		<option value="28"
																			id="selectOptionHealthInsuranceGradeGrade27">27th
																			Grade 395,000 to 425,000</option>
																		<option value="29"
																			id="selectOptionHealthInsuranceGradeGrade28">28th
																			Grade 425,000 to 455,000</option>
																		<option value="30"
																			id="selectOptionHealthInsuranceGradeGrade29">29th
																			Grade 455,000 to 485,000</option>
																		<option value="31"
																			id="selectOptionHealthInsuranceGradeGrade30">30th
																			Grade 485,000 to 515,000</option>
																		<option value="32"
																			id="selectOptionHealthInsuranceGradeGrade31">31st
																			Grade 515,000 to 545,000</option>
																		<option value="33"
																			id="selectOptionHealthInsuranceGradeGrade32">32nd
																			Grade 545,000 to 575,000</option>
																		<option value="34"
																			id="selectOptionHealthInsuranceGradeGrade33">33rd
																			Grade 575,000 to 605,000</option>
																		<option value="35"
																			id="selectOptionHealthInsuranceGradeGrade34">34th
																			Grade 605,000 to 635,000</option>
																		<option value="36"
																			id="selectOptionHealthInsuranceGradeGrade35">35th
																			Grade 635,000 to 665,000</option>
																		<option value="37"
																			id="selectOptionHealthInsuranceGradeGrade36">36th
																			Grade 665,000 to 695,000</option>
																		<option value="38"
																			id="selectOptionHealthInsuranceGradeGrade37">37th
																			Grade 695,000 to 730,000</option>
																		<option value="39"
																			id="selectOptionHealthInsuranceGradeGrade38">38th
																			Grade 730,000 to 770,000</option>
																		<option value="40"
																			id="selectOptionHealthInsuranceGradeGrade39">39rd
																			Grade 770,000 to 810,000</option>
																		<option value="41"
																			id="selectOptionHealthInsuranceGradeGrade40">40th
																			Grade 810,000 to 855,000</option>
																		<option value="42"
																			id="selectOptionHealthInsuranceGradeGrade41">41st
																			Grade 855,000 to 905,000</option>
																		<option value="43"
																			id="selectOptionHealthInsuranceGradeGrade42">42nd
																			Grade 905,000 to 965,000</option>
																		<option value="44"
																			id="selectOptionHealthInsuranceGradeGrade43">43rd
																			Grade 965,000 to 1,005,000</option>
																		<option value="45"
																			id="selectOptionHealthInsuranceGradeGrade44">44th
																			Grade 1,005,000 to 1,055,000</option>
																		<option value="46"
																			id="selectOptionHealthInsuranceGradeGrade45">45th
																			Grade 1,055,000 to 1,115,000</option>
																		<option value="47"
																			id="selectOptionHealthInsuranceGradeGrade46">46th
																			Grade 1,115,000 to 1,175,000</option>
																		<option value="48"
																			id="selectOptionHealthInsuranceGradeGrade47">47th
																			Grade 1,175,000 to 1,235,000</option>
																		<option value="49"
																			id="selectOptionHealthInsuranceGradeGrade48">48th
																			Grade 1,235,000 to 1,295,000</option>
																		<option value="50"
																			id="selectOptionHealthInsuranceGradeGrade49">49th
																			Grade 1,295,000 to 1,355,000</option>
																		<option value="51"
																			id="selectOptionHealthInsuranceGradeGrade50">50th
																			Grade 1,355,000 ~</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanWelfarePensionInsurance">Welfare
																	pension insurance participation status</div>
																<div>
																	<Select id="staffWelfarePensionStatus"
																		class="form-control">
																		<option value=""
																			id="selectOptionWelfareHealthInsuranceCoverage">Select
																			Welfare pension insurance participation status</option>
																		<option value="1"
																			id="selectOptionWelfareHealthInsuranceCoverageNotSubscribed">Not
																			Subscribed</option>
																		<option value="2"
																			id="selectOptionWelfareHealthInsuranceCoverageSubscribed">Subscribed</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanWelfarePensionInsuranceGrade">Welfare
																	pension insurance grade</div>
																<div>
																	<Select id="staffWelfarePensionGrade"
																		class="form-control">
																		<option value=""
																			id="selectOptionWelfarePensionInsuranceGrade">Select
																			Welfare pension insurance grade</option>
																		<option value="1"
																			id="selectOptionWelfarePensionInsuranceGradeNotSubscribed">Not
																			Subscribed</option>
																		<option value="2"
																			id="selectOptionWelfarePensionInsuranceGrade2">Grade
																			1 - 93,000</option>
																		<option value="3"
																			id="selectOptionWelfarePensionInsuranceGrade3">2nd
																			Grade 93,000 - 101,000</option>
																		<option value="4"
																			id="selectOptionWelfarePensionInsuranceGrade4">3rd
																			Grade 101,000 - 107,000</option>
																		<option value="5"
																			id="selectOptionWelfarePensionInsuranceGrade5">4th
																			Grade 107,000 - 114,000</option>
																		<option value="6"
																			id="selectOptionWelfarePensionInsuranceGrade6">5th
																			Grade 114,000 - 122,000</option>
																		<option value="7"
																			id="selectOptionWelfarePensionInsuranceGrade7">6th
																			Grade 122,000 - 130,000</option>
																		<option value="8"
																			id="selectOptionWelfarePensionInsuranceGrade8">7th
																			Grade 130,000 - 138,000</option>
																		<option value="9"
																			id="selectOptionWelfarePensionInsuranceGrade9">8th
																			Grade 138,000 - 146,000</option>
																		<option value="10"
																			id="selectOptionWelfarePensionInsuranceGrade10">9th
																			Grade 146,000 - 155,000</option>
																		<option value="11"
																			id="selectOptionWelfarePensionInsuranceGrade11">10th
																			Grade 155,000 - 165,000</option>
																		<option value="12"
																			id="selectOptionWelfarePensionInsuranceGrade12">11th
																			Grade 165,000 - 175,000</option>
																		<option value="13"
																			id="selectOptionWelfarePensionInsuranceGrade13">12th
																			Grade 175,000 - 185,000</option>
																		<option value="14"
																			id="selectOptionWelfarePensionInsuranceGrade14">13th
																			Grade 185,000 - 195,000</option>
																		<option value="15"
																			id="selectOptionWelfarePensionInsuranceGrade15">14th
																			Grade 195,000 - 210,000</option>
																		<option value="16"
																			id="selectOptionWelfarePensionInsuranceGrade16">15th
																			Grade 210,000 - 230,000</option>
																		<option value="17"
																			id="selectOptionWelfarePensionInsuranceGrade17">16th
																			Grade 230,000 - 250,000</option>
																		<option value="18"
																			id="selectOptionWelfarePensionInsuranceGrade18">17th
																			Grade 250,000 - 270,000</option>
																		<option value="19"
																			id="selectOptionWelfarePensionInsuranceGrade19">18th
																			Grade 270,000 - 290,000</option>
																		<option value="20"
																			id="selectOptionWelfarePensionInsuranceGrade20">19th
																			Grade 290,000 - 310,000</option>
																		<option value="21"
																			id="selectOptionWelfarePensionInsuranceGrade21">20th
																			Grade 310,000 - 330,000</option>
																		<option value="22"
																			id="selectOptionWelfarePensionInsuranceGrade22">21st
																			Grade 330,000 - 350,000</option>
																		<option value="23"
																			id="selectOptionWelfarePensionInsuranceGrade23">22nd
																			Grade 350,000 - 370,000</option>
																		<option value="24"
																			id="selectOptionWelfarePensionInsuranceGrade24">23rd
																			Grade 370,000 - 395,000</option>
																		<option value="25"
																			id="selectOptionWelfarePensionInsuranceGrade25">24th
																			Grade 395,000 - 425,000</option>
																		<option value="26"
																			id="selectOptionWelfarePensionInsuranceGrade26">25th
																			Grade 425,000 - 455,000</option>
																		<option value="27"
																			id="selectOptionWelfarePensionInsuranceGrade27">26th
																			Grade 455,000 - 485,000</option>
																		<option value="28"
																			id="selectOptionWelfarePensionInsuranceGrade28">27th
																			Grade 485,000 - 515,000</option>
																		<option value="29"
																			id="selectOptionWelfarePensionInsuranceGrade29">28th
																			Grade 515,000 - 545,000</option>
																		<option value="30"
																			id="selectOptionWelfarePensionInsuranceGrade30">29th
																			Grade 545,000 - 575,000</option>
																		<option value="31"
																			id="selectOptionWelfarePensionInsuranceGrade31">30th
																			Grade 575,000 - 605,000</option>
																		<option value="32"
																			id="selectOptionWelfarePensionInsuranceGrade32">31st
																			Grade 605,000 ~</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanLongTermCareInsuranceParticipation">Long-term
																	care insurance participation status</div>
																<div>
																	<Select id="staffLongTermInsuranceStatus"
																		class="form-control">
																		<option value=""
																			id="selectOptionLongTermInsuranceStatus">Select
																			Long-term care insurance participation status</option>
																		<option value="1"
																			id="selectOptionLongTermInsuranceStatus1">Not
																			Subscribed</option>
																		<option value="2"
																			id="selectOptionLongTermInsuranceStatus2">Subscribed</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanEmploymentInsuranceCoverage">Employment
																	insurance coverage</div>
																<div>
																	<Select id="staffEmploymentInsuranceCoverage"
																		class="form-control">
																		<option value=""
																			id="selectOptionEmploymentInsuranceCoverage">Select
																			Employment insurance coverage</option>
																		<option value="1"
																			id="selectOptionEmploymentInsuranceCoverageNotSubscribed">Not
																			Subscribed</option>
																		<option value="2"
																			id="selectOptionEmploymentInsuranceCoverageSubscribed">Subscribed</option>
																	</Select> <span id="pageSpanHelpEmploymentInsuranceCoverage1">
																		Condition (1) Scheduled to work 20 hours or more per
																		week, Condition (2) Scheduled to be employed for 31
																		days or more </span> <br>* <span
																		id="pageSpanHelpEmploymentInsuranceCoverage2">
																		However, please note that students are not eligible in
																		principle</span>
																</div>
															</div>
															<!-- <div class="col-sm-12 col-md-6 col-lg-6 " ></div> -->

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncomeTaxTaxpayerClassification">
																		Income tax taxpayer classification</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffIncomeTaxTaxpayer"
																		class="form-control">
																		<option value="" id="selectIncomeTaxTaxpayer">Select
																			Income tax taxpayer classification</option>
																		<option value="1" id="selectOptionInstep">Instep</option>
																		<option value="2" id="selectOptionB">B</option>
																		<option value="3" id="selectOptionHinoe">Hinoe</option>
																	</Select>


																	<div id="errorIncomeTaxTaxpayer" style="color: red;"></div>

																</div>
															</div>
															<!-- <div class="col-sm-12 col-md-6 col-lg-6 " ></div> -->

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNumberofDependents">Number of
																		dependents</span><span class="RequiredStar"> *</span>
																</div>
																<div>
																	<input type="number" id="staffNumberDependents"
																		class="form-control "> <span
																		id="pageSpanHelpNumberOfDependents"> Please
																		enter the number of dependents directly. Please note
																		that the number of dependent relatives may not match
																		the actual number because the calculation method of
																		the dependent deduction amount differs depending on
																		the disability classification of the dependent
																		relatives. </span>
																	<div id="errorNumDependents" style="color: red;"></div>

																</div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanDependents">Dependents</div>

																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="search_staff_table4" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="tableConflictDateTHFamilyName">family
																					name</th>
																				<th id="tableConflictDateTHNameKatakana">Name
																					katakana</th>
																				<th id="tableConflictDateTHBirthday">Birthday</th>
																				<th id="tableConflictDateTHGender">Gender</th>
																				<th id="tableConflictDateTHRelationship">Relationship</th>
																				<th id="tableConflictDateTHClassification">Classification</th>
																				<th id="tableConflictDateTHLivingTogether">Living
																					together</th>
																				<th id="tableConflictDateTHHandicapped">handicapped</th>
																				<th id="tableConflictDateTHDuplicateOptions"
																					style="width: 142px;"></th>

																			</tr>
																		</thead>
																		<tbody id="tbodyIdDependent">
																			<tr id="dependentTrId">
																				<input type="hidden" value=""
																					name="staffDependentsID[]" />
																				<td class="p-1"><input type="text"
																					id="staffFamilyName" name="staffDependentsName[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="text"
																					id="staffNameKatakana"
																					name="staffDependentsNamekatakana[]"
																					class="form-control"></td>
																				<td class="p-1"><input type="date"
																					id="staffDependentBirthday"
																					name="staffDependentsBirthday[]"
																					class="form-control"></td>
																				<td class="p-1"><select class="form-control"
																					id="staffDependentGender"
																					name="staffDependentsGender[]">
																						<option value=""></option>
																						<option id="dependentGenderMale" value="1">Male</option>
																						<option id="dependentGenderFemale" value="2">Female</option>
																				</select></td>
																				<td class="p-1"><select class="form-control"
																					id="staffDependentRelationship"
																					name="staffDependentsRelationship[]">
																						<option value=""></option>
																						<option id="dependentRelationshipWife" value="1">Wife</option>
																						<option id="dependentRelationshipChild" value="2">Child</option>
																						<option id="dependentRelationshipFather" value="3">Father</option>
																						<option id="dependentRelationshipMother" value="4">Mother</option>
																						<option id="dependentRelationshipOlderBrother"
																							value="5">Older Brother</option>
																						<option id="dependentRelationshipYoungerBrother"
																							value="6">Younger Brother</option>
																						<option id="dependentRelationshipSister" value="7">Sister</option>
																						<option id="dependentRelationshipGrandchild"
																							value="8">Grandchild</option>
																						<option id="dependentRelationshipGrandfather"
																							value="9">Grandfather</option>
																						<option id="dependentRelationshipGrandmotherr"
																							value="10">Grandmother</option>
																						<option id="dependentRelationshipFather-in-law"
																							value="11">Father-in-law</option>
																						<option id="dependentRelationshipMother-in-law"
																							value="12">Mother-in-law</option>
																						<option
																							id="dependentRelationshipGrandfather-in-law"
																							value="13">Grandfather-in-law</option>
																						<option
																							id="dependentRelationshipGrandmother-in-law"
																							value="14">Grandmother-in-law</option>
																						<option id="dependentRelationshipOthers"
																							value="15">Others</option>

																				</select></td>
																				<td class="p-1"><select class="form-control"
																					id="staffClassification"
																					name="staffDependentsClassification[]">
																						<option value=""></option>
																						<option
																							id="dependentClassificationGeneralDependents"
																							value="1">General dependents</option>
																						<option
																							id="dependentClassificationSpecificDependents"
																							value="2">Specific dependents</option>
																						<option
																							id="dependentClassificationDependentsOfElderly"
																							value="3">Dependents of the elderly</option>
																				</select></td>
																				<td class="p-1"><select class="form-control"
																					id="staffLivingTogether"
																					name="staffDependentsLivingtogether[]">
																						<option value=""></option>
																						<option id="dependentLivingTogether" value="1">Live
																							together</option>
																						<option id="dependentSeparated" value="2">Separated</option>
																						<option id="dependentSeparatedOverseas" value="2">Separated
																							overseas</option>
																				</select></td>
																				<td class="p-1"><select class="form-control"
																					id="staffHandicapped"
																					name="staffDependentsHandicapped[]">
																						<option value=""></option>
																						<option id="dependentGeneralDisabled" value="1">General
																							disabled</option>
																						<option id="dependentSpeciallyDisabled" value="2">Specially
																							disabled</option>
																						<option id="dependentHealthy" value="3">Healthy</option>
																				</select></td>
																				<td>
																					<button class="btn SuccessColor"
																						style="color: white;"
																						onclick="copyDependentRow(this)">
																						<span id="btnSpanDuplicate"><i
																							class="far fa-clone"></i></span>
																					</button>
																					<button class="btn btn-danger"
																						onclick="removeDependentRow(this)">
																						<i class="fa fa-trash"></i>
																					</button>
																					<button class="btn btn-danger"
																						onclick="clearDependentRow(this)">
																						<i class="fa fa-eraser"></i>
																					</button>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorsocialDependents" class="RequiredStar"></div>
																	<div
																		class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
																		<button class="btn SuccessColor"
																			onclick="addDependentRow()" id="addDependentRow">Add
																			Row</button>
																	</div>
																</div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanResidentTaxClassification">Resident
																	tax classification</div>
																<div>
																	<select id="staffResidentTaxClassification"
																		class="form-control">
																		<option value=""
																			id="SelectStaffResidentTaxClassification">Select
																			Resident tax classification</option>
																		<option value="1" id="pageSpanNormalCollection">Normal
																			Collection</option>
																		<option value="2" id="pageSpanSpecialCollection">Special
																			Collection</option>
																	</select>
																</div>
															</div>


														</div>
														<div class="row pt-3 pb-3">
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveSocialInformation">Save Social
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
															data-toggle="collapse" data-target="#loginInformation"
															aria-expanded="false" aria-controls="loginInformation">

															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivLoginInformation">Login
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="loginInformation" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmail">Email address</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="staffEmail" class="form-control">
																	<span id="pageSpanHelpEmail1"> * It will be the
																		ID to log in to the system </span><br> <span
																		id="pageSpanHelpEmail2"> * It will be the
																		address to receive the business contact email </span>
																</div>
																<div id="errorEmail" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanEmailAddressConfirm">Email Address
																	Confirmation</div>
																<div>
																	<input type="text" id="staffEmailAddressConfirmation"
																		class="form-control">
																</div>
																<div id="errorNewPasswordConfirm" style="color: red;"></div>
															</div>





															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanRegistrationDivision">Registration
																	Division</div>
																<div>
																	<b> <span id="pageSpanTemporaryRegistration">
																			Temporary registration</span>
																	</b>
																</div>
															</div>



														</div>
														<div class="row pt-3 pb-3">
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 ContentAlignRC">
																<button onclick="checkLoginInfo()"
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveLoginInformation">Save Login
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
															data-toggle="collapse" data-target="#otherInformation"
															aria-expanded="false" aria-controls="otherInformation">

															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivOtherInformation">Other
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="otherInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanStaffCode">Staff
																	Code</div>
																<div>
																	<input type="text" id="staffStaffCode"
																		class="form-control" disabled>
																</div>
																<div id="errorStaffCode" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6"></div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanFacePhoto">Face
																	Photo</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input type="file" id="staffFacePhotoFile" class="form-control" accept="image/*">
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>
																	<span id="pageSpanHelpFacePhoto"> * This is a
																		face photo to be displayed in the list and resume. </span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanPreview">Face
																	Photo Preview</div>

																<img src="./dist-assets/images/faces/1.jpg" id="output"
																	style="width: 100px; height: 100px;" />
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText"
																		id="pageSpanEmergencyContactName">Emergency
																		Contact Name</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input id="staffEmergencyContactName" type="text"
																		placeholder="Example: Taro Yamada"
																		class="form-control"> <span
																		id="pageSpanHelpEmergencyContactName">Please
																		put a space between the first and last name</span>
																</div>
																<div id="errorStaffEmergencyContactName"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText"
																		id="pageSpanEmergencyContactNameKatakana">Emergency
																		Contact Name Katakana</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input id="staffEmergencyContactNameKatakana"
																		type="text" placeholder="Example: Taro Yamada"
																		class="form-control"> <span
																		id="pageSpanHelpEmergencyContactNameKatakana">
																		Please put a space between the first and last name </span>
																</div>
																<div id="errorStaffEmergencyContactNameKatakana"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanPostalCode">Postal
																	Code</div>
																<div>
																	<input id="staffEmergencyPostalCode" type="number"
																		placeholder="Example: 1234567" class="form-control">
																	<button
																		onclick="getAddressOther('staffEmergencyPostalCode','staffEmergencyAddress')"
																		class="btn btn-info" id="buttonSpanAddressSearch">Address
																		Search</button>
																	<span id="buttonSpanHelpAddressSearch"> Please
																		enter without hyphens</span>
																</div>
																<div id="errorPostalCode" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText" id="pageSpanPrefectures">Prefectures</span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																	<Select id="staffEmergencyPrefecture"
																		class="form-control">
																		<option value="" id="#pageOption0Prefecture">
																			Select Prefecture</option>
																		<option value="1" data-Prefecture2="北海道"
																			id="#pageOption1Prefecture">Hokkaido</option>
																		<option value="2" data-Prefecture2="青森県"
																			id="#pageOption2Prefecture">Aomori</option>
																		<option value="3" data-Prefecture2="岩手県"
																			id="#pageOption3Prefecture">Iwate</option>
																		<option value="4" data-Prefecture2="宮城県"
																			id="#pageOption4Prefecture">Miyagi</option>
																		<option value="5" data-Prefecture2="秋田県"
																			id="#pageOption5Prefecture">Akita</option>
																		<option value="6" data-Prefecture2="山形県"
																			id="#pageOption6Prefecture">Yamagata</option>
																		<option value="7" data-Prefecture2="福島県"
																			id="#pageOption7Prefecture">Fukushima</option>
																		<option value="8" data-Prefecture2="茨城県"
																			id="#pageOption8Prefecture">Ibaraki</option>
																		<option value="9" data-Prefecture2="栃木県"
																			id="#pageOption9Prefecture">Tochigi</option>
																		<option value="10" data-Prefecture2="群馬県"
																			id="#pageOption10Prefecture">Gunma</option>
																		<option value="11" data-Prefecture2="埼玉県"
																			id="#pageOption11Prefecture">Saitama</option>
																		<option value="12" data-Prefecture2="千葉県"
																			id="#pageOption12Prefecture">Chiba</option>
																		<option value="13" data-Prefecture2="東京都"
																			id="#pageOption13Prefecture">Tokyo</option>
																		<option value="14" data-Prefecture2="神奈川県"
																			id="#pageOption14Prefecture">Kanagawa</option>
																		<option value="15" data-Prefecture2="新潟県"
																			id="#pageOption15Prefecture">Niigata</option>
																		<option value="16" data-Prefecture2="富山県"
																			id="#pageOption16Prefecture">Toyama</option>
																		<option value="17" data-Prefecture2="石川県"
																			id="#pageOption17Prefecture">Ishikawa</option>
																		<option value="18" data-Prefecture2="福井県"
																			id="#pageOption18Prefecture">Fukui</option>
																		<option value="19" data-Prefecture2="山梨県"
																			id="#pageOption19Prefecture">Yamanashi</option>
																		<option value="20" data-Prefecture2="長野県"
																			id="#pageOption20Prefecture">Nagano</option>
																		<option value="21" data-Prefecture2="岐阜県"
																			id="#pageOption21Prefecture">Gifu</option>
																		<option value="22" data-Prefecture2="静岡県"
																			id="#pageOption22Prefecture">Shizuoka</option>
																		<option value="23" data-Prefecture2="愛知県"
																			id="#pageOption23Prefecture">Aichi</option>
																		<option value="24" data-Prefecture2="三重県"
																			id="#pageOption24Prefecture">Mie</option>
																		<option value="25" data-Prefecture2="滋賀県"
																			id="#pageOption25Prefecture">Shiga</option>
																		<option value="26" data-Prefecture2="京都府"
																			id="#pageOption26Prefecture">Kyoto</option>
																		<option value="27" data-Prefecture2="大阪府"
																			id="#pageOption27Prefecture">Osaka</option>
																		<option value="28" data-Prefecture2="兵庫県"
																			id="#pageOption28Prefecture">Hyogo</option>
																		<option value="29" data-Prefecture2="奈良県"
																			id="#pageOption29Prefecture">Nara</option>
																		<option value="30" data-Prefecture2="和歌山県"
																			id="#pageOption30Prefecture">Wakayama</option>
																		<option value="31" data-Prefecture2="鳥取県"
																			id="#pageOption31Prefecture">Tottori</option>
																		<option value="32" data-Prefecture2="島根県"
																			id="#pageOption32Prefecture">Shimane</option>
																		<option value="33" data-Prefecture2="岡山県"
																			id="#pageOption33Prefecture">Okayama</option>
																		<option value="34" data-Prefecture2="広島県"
																			id="#pageOption34Prefecture">Hiroshima</option>
																		<option value="35" data-Prefecture2="山口県"
																			id="#pageOption35Prefecture">Yamaguchi</option>
																		<option value="36" data-Prefecture2="徳島県"
																			id="#pageOption36Prefecture">Tokushima</option>
																		<option value="37" data-Prefecture2="香川県"
																			id="#pageOption37Prefecture">Kagawa</option>
																		<option value="38" data-Prefecture2="愛媛県"
																			id="#pageOption38Prefecture">Ehime</option>
																		<option value="39" data-Prefecture2="高知県"
																			id="#pageOption39Prefecture">Kochi</option>
																		<option value="40" data-Prefecture2="福岡県"
																			id="#pageOption40Prefecture">Fukuoka</option>
																		<option value="41" data-Prefecture2="佐賀県"
																			id="#pageOption41Prefecture">Saga</option>
																		<option value="42" data-Prefecture2="長崎県"
																			id="#pageOption42Prefecture">Nagasaki</option>
																		<option value="43" data-Prefecture2="熊本県"
																			id="#pageOption43Prefecture">Kumamoto</option>
																		<option value="44" data-Prefecture2="大分県"
																			id="#pageOption44Prefecture">Oita</option>
																		<option value="45" data-Prefecture2="宮崎県"
																			id="#pageOption45Prefecture">Miyazaki</option>
																		<option value="46" data-Prefecture2="鹿児島県"
																			id="#pageOption46Prefecture">Kagoshima</option>
																		<option value="47" data-Prefecture2="沖縄県"
																			id="#pageOption47Prefecture">Okinawa</option>
																	</Select>
																</div>
																<div id="errorOtherPrefecture" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText" id="pageSpanOtheAddress">Address</span>

																</div>
																<div>
																	<input id="staffEmergencyAddress" type="text"
																		placeholder="Example: 1-11-11 Shibuya, Shibuya-ku ○○○○ Building 1F"
																		class="form-control"> <span
																		id="pageSpanOtherHelpAddress"> Please be sure
																		to enter the apartment name and building name</span>
																</div>
																<div id="errorOtherAddress" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText"
																		id="pageSpanEmergencyContactPhoneNumber">Emergency
																		Contact Phone Number</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input id="staffEmergencyContactPhoneNumber"
																		type="text" placeholder="Example: 09012345678"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpEmergencyContactPhoneNumber">Please
																		enter without hyphens</span>
																</div>
																<div id="errorOtherEmergencyNo" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanRelationship">Relationship</div>
																<div>
																	<input id="staffRelationship" type="text"
																		placeholder="Example: father" class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDateofJoiningTheCompany"> Date
																		of Joining The Company</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="staffCompanyJoiningDate"
																		class="form-control">
																</div>
																<div id="errorOtherDateJoin" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanStaffStaff">In
																	Charge Staff</div>
																<div>			
																<select name="data[MailTemplate][codes]" class="form-control input-code" id="staffStaffStaff">
																<option value="" id="selectInchargeofStaff">Select InCharge Staff</option>
																
																</select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6"></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanExperience">Experience</div>
																<div>
																	<textarea id="staffExperience" class="form-control"></textarea>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanStaffMemo">Staff
																	Memo</div>
																<div>
																	<textarea id="staffMemo" class="form-control"></textarea>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanStaffInformationUpdateHistory">Staff
																	Information Update History</div>
																<div>
																	<textarea id="StaffInformationUpdate" class="form-control"></textarea>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText"
																		id="pageSpanValidClassification">Valid
																		Classification </span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="staffValidClassification"
																		class="form-control">
																		<option id="option0ValidClassification" value=""
																			selected>Select Valid Classification</option>
																		<option id="option1ValidClassification" value="1">Valid</option>
																		<option id="option2ValidClassification" value="2">Invalid</option>
																	</select>
																</div>
																<div id="errorValdClassi" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanDateofleavingthecompany">Date of
																	leaving the company</div>
																<div>
																	<input type="date" class="form-control"
																		id="staffDateofleavingthecompany">
																</div>
															</div>

														</div>

														<div class="row pt-3 pb-3">
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 ContentAlignRC">
																<button onclick="checkOther()"
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveOtherInformation">Save Other
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
	  <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="headingCropTheImage">Crop the image</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="img-container">
              <img id="image" src="https://avatars0.githubusercontent.com/u/3456749">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal" id="btnCropCancel">Cancel</button>
            <button type="button" class="btn btn-info" id="crop">Crop</button>
          </div>
        </div>
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
    <script src="./dist-assets/cropper/js/cropper.js"></script>
	<script>

	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const role = localStorage.getItem("userRole");

		var cropper;
	    var cropperSecond;
	    
		$(document).ready(function() {
							
							drawDtataTable(lan);

							bankTransferLoad();

							let dataSet = '{"id" : 0, "authority": '+role+ '}';
							
							$("#staffPaymentMethod").change(function() {
								bankTransferLoad();
							});
							
							$.ajax({
								beforeSend : function(request) {
									document.getElementById("loaderNotify").style.display = "";
									request.setRequestHeader("GUID", GUID);
								},
								url : serverHTTP + 'Employee/GetInchargeOfStaff',
								method : 'POST',
								contentType : 'application/json',
								data : dataSet,
								dataType : 'json',
								success : function(result, status, request) {
									if (result.status == 200) {
										console.log("ok")
										var select  = document.getElementById('staffStaffStaff');
			
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

							
			                   $('[data-toggle="tooltip"]').tooltip();
			                   var staffFacePhotoFileNode = document.getElementById('staffFacePhotoFile');
			                   var image = document.getElementById('image');
			                   var $modal = $('#modal');
			                   
			                   
			                   staffFacePhotoFileNode.addEventListener('change', function (e) {
			                	   console.log(".addEventListener('change',");
			                       var files = e.target.files;
			                       var done = function (url) {
			                    	 staffFacePhotoFileNode.value = '';
			                         image.src = url;
			                         //$alert.hide();
			                         $modal.modal('show');
			                       };
			                       var reader;
			                       var file;
			                       var url;

			                       if (files && files.length > 0) {
			                         file = files[0];

			                         if (URL) {
			                           done(URL.createObjectURL(file));
			                         } else if (FileReader) {
			                           reader = new FileReader();
			                           reader.onload = function (e) {
			                             done(reader.result);
			                           };
			                           reader.readAsDataURL(file);
			                         }
			                       } 
			                     });
			                   
			                   $modal.on('shown.bs.modal', function () {
			                	   if(cropper == null){
			                           cropper = new Cropper(image, {
			                           });
			                    	   }else{
			                    		   cropper.destroy("hidden.bs.modal");
			                               cropper = null;
			                               cropper = new Cropper(image, {
			                               });
			                    	   }
			                     }).on('hidden.bs.modal', function () {
			                      // cropper.destroy("hidden.bs.modal");
			                      // cropper = null;
			                     });
			                   
			                   
			                   document.getElementById('crop').addEventListener('click', function () {
			                       var initialAvatarURL;
			                       var canvas;
			                       $modal.modal('hide');
			                       //wishwa33
			                       
					            if (cropper) 
		                         {
			                         canvas = cropper.getCroppedCanvas({
			                           width: 720,
			                           height: 720,
			                         });
		
		                         canvas.toBlob(function (blob) 
			                        {
			                         var output = document.getElementById('output');
			                         var objectURL = URL.createObjectURL(blob);
			                         output.src = objectURL;
			                         output.onload = function() 
				                         {
				                          URL.revokeObjectURL(output.src) // free memory
				                         }
			                         });
		                         }
			/*                        if (cropper) {
			                         canvas = cropper.getCroppedCanvas({
			                           width: 160,
			                           height: 160,
			                         });
			                         //initialAvatarURL = avatar.src;
			                         //avatar.src = canvas.toDataURL();
			                        // $progress.show();
			                        // $alert.removeClass('alert-success alert-warning');
			                         canvas.toBlob(function (blob) {
			                           var formData = new FormData();

			                           formData.append('avatar', blob, 'avatar.jpg');
			                           $.ajax('https://jsonplaceholder.typicode.com/posts', {
			                             method: 'POST',
			                             data: formData,
			                             processData: false,
			                             contentType: false,

			                             xhr: function () {
			                               var xhr = new XMLHttpRequest();

			                               xhr.upload.onprogress = function (e) {
			                                 var percent = '0';
			                                 var percentage = '0%';

			                                 if (e.lengthComputable) {
			                                   percent = Math.round((e.loaded / e.total) * 100);
			                                   percentage = percent + '%';
			                                  // $progressBar.width(percentage).attr('aria-valuenow', percent).text(percentage);
			                                 }
			                               };

			                               return xhr;
			                             },

			                             success: function () {
			                            	 
			                              // $alert.show().addClass('alert-success').text('Upload success');
			                             },

			                             error: function () {
			                              // avatar.src = initialAvatarURL;
			                              // $alert.show().addClass('alert-warning').text('Upload error');
			                             },

			                             complete: function () {
			                             //  $progress.hide();
			                             },
			                           });
			                         });
			                       } */
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

			$.ajax({
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

			$.ajax({
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

/* 		function otherInfoFileUplod() {

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

				$.ajax({
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

		} */

		
		function otherInfoFileUplod()
		{
			//wishwa33
			   var imagePath = "";
			   if (cropper) {
	                         canvas = cropper.getCroppedCanvas({
	                           width: 720,
	                           height: 720,
	                         });

	                         canvas.toBlob(function (blob) {
	                         var newFile = new File([blob], "PNG");
	                     	 var formDataObj = new FormData();
	            				formDataObj.append('image', newFile );
	            				//formDataObj.append('file', fileNode);
	            				formDataObj.append('uuid', saveUuid);
	            				formDataObj.append('serviceId', 2);
	            			
	            				$.ajax({
	            					beforeSend : function(request) {
	            					  request.setRequestHeader("GUID", GUID);
	            					},
	            					url : serverHTTP + 'Content/save-content',
	            			        enctype: 'multipart/form-data',
	            					data : formDataObj,
	            					cache: false,
	            					contentType: false,
	            					processData: false,
	            					async: false,
	            					method: 'POST',
	            					success : function(result, status, request) {
	            						console.log("imagePath created");
	            						console.log(result);
	            						saveOtherInfoSecond(result.data.imagePath)
	            						//imagePath = result.data.imagePath;
	            					},
	            					error : function(error) {
	            						console.log(error);
	            						showMessage('error',"E1119");
	            					}
	            				});
	            				console.log("imagePath return2");
	            				//return imagePath;
	                         });
				}else{
					saveOtherInfoSecond(imagePath)
				}
		}
		
		
		function saveOtherInfo() {
			 otherInfoFileUplod();
			 
	/* 		var profilePicturePath = otherInfoFileUplod();

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
					.getElementById("StaffInformationUpdate").value;
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
					}); */
		}
		
		function saveOtherInfoSecond(imagePath) {
			
			 
			var profilePicturePath = imagePath

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
					.getElementById("StaffInformationUpdate").value;
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
			let dataPassNode = {};
			dataPassNode['postalCode'] = document.getElementById(zipCodeId).value
					.trim();
			dataPassNode['appId'] = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Address/SearchAddressInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							var result = JSON.parse(result.data);
							if (result.Feature != null) {
								$('[data-prefecture]')
										.map(
												function() {
													if (result.Feature[0].Property.Address
															.match($(this)
																	.data(
																			'prefecture'))) {
														$(this).removeAttr(
																"selected");
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
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});
		}

		function getAddressOther(zipCodeId, addressId) {
			let dataPassNode = {};
			dataPassNode['postalCode'] = document.getElementById(zipCodeId).value
					.trim();
			dataPassNode['appId'] = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Address/SearchAddressInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataPassNode),
						dataType : 'json',
						success : function(result, status, request) {
							var result = JSON.parse(result.data);
							if (result.Feature != null) {
								$('[data-prefecture2]')
										.map(
												function() {
													if (result.Feature[0].Property.Address
															.match($(this)
																	.data(
																			'prefecture2'))) {
														$(this).removeAttr(
																"selected");
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
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
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