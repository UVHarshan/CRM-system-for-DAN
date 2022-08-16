<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleStaffInformation">Staff Information</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link href="../dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="../dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/fontawesome-5.css" />
    <link href="../dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/datatables.min.css" />
   
    <link href="../dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../dist-assets/css/mobios-site.css" />

   
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
			<%@ include file="common/staffleftMenu.jsp"%>
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
											<i class="fa fa-user text-30" role="generic"></i> <span
												id="pageSpanHeadingStaffInformation"> Staff Information</span>
										</h1>
									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">

											</div>
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
																	<span id="pageSpanName">Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  disabled="disabled" type="text" id="staffName" class="form-control">
																	<span id="pageSpanHelpTextName"> Please put a
																		space between the first and last name</span>
																</div>
																<div id="errorName" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNameKatakana">Name Katakana </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffNameKatakana"
																		class="form-control"> <span
																		id="pageSpanHelpTextNameKatakana"> Please put a
																		space between the first and last name</span>
																</div>
																<div id="errorNameKatakana" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanZipCode">Zip Code </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<!-- <div class="form-group">
                                                        <input disabled="disabled"  type="text" class="form-control" style=" float:left; width: 80%;" >
                                                        <button class="btn SuccessColor ml-1">Adress Search</button>
                                                       </div> -->

																	<input disabled="disabled"  type="number" id="staffZipCode"
																		class="form-control" min="0" max="100">
																	<div id="errorZip" class="RequiredStar"></div>

																</div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPrefecture">Prefecture</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<select  disabled="disabled"  id="staffPrefecture"   class="form-control">
																		<option value="" id="selectOptionSelectPrefectures">Select
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
																<div id="errorPrefecture" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAddress">Address</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffAddress"
																		class="form-control"> <span
																		id="pageSpanHelpAddress"> Please be sure to
																		enter the apartment name and building name</span>
																</div>
																<div id="errorAddress" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAddressKatakana">Address
																		Katakana</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffAddressKatakana"
																		class="form-control">
																</div>
																<div id="errorAddressKatakana" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDateofBirth">Date of Birth </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  type="date" id="staffDOB" class="form-control">
																</div>
																<div id="errorDob" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanGender">Gender</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<select  disabled="disabled"  id="staffGender" class="form-control">
																		<option value="" id="selectOptionSelectGender_1">Select
																			Gender</option>
																		<option value="1" id="selectOptionSelectGenderMale_1">Male</option>
																		<option value="2"
																			id="selectOptionSelectGenderFemale_1">Female</option>
																	</Select>
																</div>
																<div id="errorGender" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMobile">Mobile</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffMobile"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpMobile"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorMobile" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHomeParent"> Home (parent's
																		home)</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffHomeTel"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpHome"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorHomeTel" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanFax">Fax</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffFax" class="form-control" maxlength="11">
																	<span id="pageSpanHelpFax"> Please enter without
																		hyphens</span>
																</div>
																<div id="errorFax" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAttributeclassification1">Attribute
																		classification 1</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<select  disabled="disabled"  id="staffAttributeclassification1"
																		class="form-control">
																		<option id="pageOption1AttributeClassification1"
																			value="1">Inhouse Company Affiliated Staff</option>
																		<option id="pageOption2AttributeClassification1"
																			value="2">Out Sourcing</option>
																	</Select>
																</div>
																<div id="errorAttribute1" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAttributeclassification2">Attribute
																		classification 2</span>
																</div>
																<div>
																	<select  disabled="disabled"  id="staffAttributeclassification2"
																		class="form-control">
																		<option id="pageOption1AttributeClassification2"
																			value="1">Fixed-term employment worker</option>
																		<option id="pageOption2AttributeClassification2"
																			value="2">Fixed-term employment
																			workers(Dispatched Workers Subject to the agrrement</option>
																		<option id="pageOption3AttributeClassification2"
																			value="3">Permanent Worker</option>
																		<option id="pageOption4AttributeClassification2"
																			value="4">Permeanent Employment
																			Workers(Dispatched Workers Subject to the agrrement</option>
																	</Select>
																</div>
																<div id="errorAttribute2" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanLaborManagementExpirationDate">Labor-management
																		agreement expiration date</span>
																</div>
																<div>
																	<input disabled="disabled"  type="date"
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
																	<select  disabled="disabled"  id="staffAttribute" class="form-control">
																		<!--  <option id="pageOption0Attribute" value=""> Select Attribute</option>  -->
																		<option id="pageOption1Attribute" value="1">
																			Elderly</option>
																		<option id="pageOption2Attribute" value="2">
																			Foreign Student</option>
																		<option id="pageOption3Attribute" value="3">
																			Foreign worker</option>
																		<option id="pageOption4Attribute" value="4">
																			High schooler</option>
																	</Select>
																</div>
																<div id="errorAttribute" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBelongs">Belongs</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffBelongs"
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
																			<input disabled="disabled"  type="checkbox" id="dispatchClassification1"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanBusinessContract">Out Sourcing</span> <input disabled="disabled" 
																			type="checkbox" id="dispatchClassification2"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanIntroductionDispatching">Temp -to-
																				Perm</span> <input disabled="disabled"  type="checkbox"
																			id="dispatchClassification3" name="dispatchClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanRecruitment">Talent
																				Introduction/Recruiting/Placement</span> <input disabled="disabled" 
																			type="checkbox" id="dispatchClassification4"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanPartTime">Part Time</span> <input disabled="disabled" 
																			type="checkbox" id="dispatchClassification5"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errordispatchClassi" class="RequiredStar"></div>
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
																			id="pageSpanOfficeSystem">Office System</span> <input disabled="disabled" 
																			type="checkbox" id="occupationClassification1"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanSalesSystem">Sales / Sales System</span>
																			<input disabled="disabled"  type="checkbox" id="occupationClassification2"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanITCreative">IT / Creative</span> <input disabled="disabled" 
																			type="checkbox" id="occupationClassification3"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanMedicalWelfareSystem">Medical /
																				welfare system</span> <input disabled="disabled"  type="checkbox"
																			id="occupationClassification4"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanManufacturingBusiness">Manufacturing
																				Business</span> <input disabled="disabled"  type="checkbox"
																			id="occupationClassification5"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanProfessional">Professional</span> <input disabled="disabled" 
																			type="checkbox" id="occupationClassification6"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanOthers">Others</span> <input disabled="disabled" 
																			type="checkbox" id="occupationClassification7"
																			name="OccupationClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>

																</div>
																<div id="errorOccuClassi" class="RequiredStar"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConflictDate">Conflict date
																		(individual unit) list</span>
																</div>

																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="search_staff_table_wish" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="tableConflictDateTHNo">No.</th>
																				<th id="tableConflictDateTHProjectTitle">Project
																					Title</th>
																				<th id="tableConflictDateTHConflictDate">Conflict
																					date (individual unit)</th>

																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>&nbsp;</td>
																				<td>&nbsp;</td>
																				<td>&nbsp;</td>
																			</tr>
																			<!--  
                                                              <tr>
                                                                    <td>1</td>
                                                                    <td>Test Project 223</td>
                                                                    <td>5</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>5</td>
                                                                    <td>Test Project 275</td>
                                                                    <td>20</td>
                                                                </tr>
                                                                 -->
																		</tbody>
																	</table>
																</div>
														
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
																	<input disabled="disabled"  type="text" id="staffNearestStation"
																		class="form-control">
																</div>
																<div id="errorNearestStation" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTimeRequiredNearestStation">Time
																		required to reach the nearest station (minutes)</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffTimeRequiredNearestStation"
																		class="form-control">
																</div>
																<div id="errorTimeStation" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransportationNearestStation">Transportation
																		to the nearest station</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text"
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
																	<input disabled="disabled"  type="text" id="staffBusSectionFrom"
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
																	<input disabled="disabled"  type="text" id="staffBusSectionTo"
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
																	<input disabled="disabled"  type="text" id="staffRoundTripBusFare"
																		class="form-control"> <span
																		id="pageSpanHelpRoundTripBusFare">* Fill in
																		only for bus users to the nearest station</span>
																</div>
																<div id="errorBusFare" style="color: red;"></div>
															</div>

													
														</div>
													</div>
												</div>
											</div>
											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#credentials"
															aria-expanded="false" aria-controls="credentials">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivCredentialsInformation">Credentials</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>
												<div id="credentials" class="collapse"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">

														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanLicenceQualifi"> License
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
																					Operating item</th>
																				
																			</tr>
																		</thead>
																		<tbody id="licenceTbodyId">
																			<tr id="licenceTrId">
																				<input disabled="disabled"  type="hidden" name="licenseQualificationID[]">
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="month" id="staffLicenseQualificationDateFrom"
																					name="staffLicenseQualificationDateFrom[]"
																					class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="month" id="staffLicenseQualificationDateTo"
																					name="staffLicenseQualificationDateTo[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					id="staffLicenceQualification"
																					name="staffLicenceQualification[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					id="staffLicenceNumber" name="staffLicenceNumber[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					id="staffLicenceOperatingItem"
																					name="staffLicenceOperatingItem[]"
																					class="form-control"></td>
																				
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorLicenseQualification"
																		class="RequiredStar"></div>

																</div>
																<br>


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
																<div class="table-responsive">
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
																				
																			</tr>
																		</thead>
																		<tbody id="educationalTbodyId">
																			<tr id="educationalTrId">
																				<input disabled="disabled"  type="hidden" name="staffEducationalID[]">
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="month"
																					name="staffEducationalBackgroundDateFrom[]"
																					class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="month"
																					name="staffEducationalBackgroundDateTo[]"
																					class="form-control"></td>
																				<td><input disabled="disabled"  name="staffInstitute[]" type="text"
																					class="form-control"></td>
																				<td><input disabled="disabled"  type="text"
																					name="staffQualification[]" class="form-control"></td>
																				
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorEducationalBackground"
																		class="RequiredStar"></div>
																	
																</div>
															</div>
														</div>
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWorkHistory">Work History</span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
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
																				
																			</tr>
																		</thead>
																		<tbody id="workTbodyId">
																			<tr id="workTrId">
																				<input disabled="disabled"  type="hidden" value=""
																					name="staffWorkHistoryCredentialsID[]">
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="month"
																					name="staffWorkHistoryCredentialsDateFrom[]"
																					class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="month"
																					name="staffWorkHistoryCredentialsDateTo[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					name="staffDesignationCredentials[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					name="staffCompanyNameCredentials[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					name="staffExperienceTypeCredentials[]"
																					class="form-control"></td>
																		
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorWorkHistory" class="RequiredStar"></div>
																
																</div>
															</div>
														</div>
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHope">Hope</span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12">
																<textarea  disabled="disabled"  class="form-control" id="staffHope"
																	placeholder="If you have any particular requests regarding treatment, occupation, working hours, place of work, etc., enter them."></textarea>
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
																	<input disabled="disabled"  type="text" id="staffSalaryUnitPrice"
																		class="form-control"> <span
																		id="pageSpanHelpDailySalaryUnitPrice">* This
																		unit price will be referred to when the paid
																		calculation method is set to regular wages.</span>
																</div>

																<div id="errorDailySal" class="RequiredStar"></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSpanHourlyWageUnitPrice">Hourly
																		Wage Unit Price</span>
																</div>

																<input disabled="disabled"  type="text" id="staffHourlyWageUnitPrice"
																	class="form-control"> <span
																	id="pageSpanHelpHourlyWageUnitPrice">* Enter
																	this if the unit price is fixed regardless of the job
																	description.</span>
																<div id="errorHourlySal" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentMethod">Salary
																		Payment Method</span><span class="RequiredStar"> *</span>
																</div>

																<div>
																	<select  disabled="disabled"  id="staffPaymentMethod" class="form-control">
																		<option value="" id="selectOption">Select
																			Salary Payment Method</option>
																		<option value="1" id="selectOptionPersonalDelivery">Personal
																			delivery</option>
																		<option value="2" id="selectOptionTransfer">Transfer</option>
																	</Select> <span id="pageSpanHelpSalaryPaymentMethod">If
																		you choose to transfer, please enter your account
																		information</span>
																</div>

																<div id="errorSalaryPay" class="RequiredStar"></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentForm">Salary
																		Payment Form</span><span class="RequiredStar"> *</span>
																</div>

																<div>
																	<select  disabled="disabled"  id="staffSalaryPaymentForm"
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

																<div id="errorSalaryPayForm" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryClosingDate">Salary
																		Closing Date</span>
																</div>
																<div>
																	<div class="form-group">
																		<select  disabled="disabled"  id="staffSalaryClosingDate"
																			class="form-control">
																			<option value="0" id="selectOptionSalaryClosingDate">Select
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
																	<div id="errorstaffSalaryClosingDate"
																		class="RequiredStar"></div>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaidTarget">Paid Target</span>
																</div>
																<div>
																	<select  disabled="disabled"  id="staffPaidTarget" class="form-control">
																		<option value="0" id="selectOptionPaidTarget">Select
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
																	<input disabled="disabled"  type="date" id="staffPaidStartDate"
																		class="form-control">
																</div>
															</div>

														</div>

														<div class="row pb-4" id="transferMainDiv"
															style="display: none; border-top: 1px solid rgb(136, 136, 136, 0.5);">

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferFinancialInstitution">Transfer
																		Financial Institution Name</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffFinancialInstitutionName"
																		class="form-control">
																</div>
																<div id="errorTransferFinancial" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferBranchName">Transfer
																		Branch Name</span>
																</div>

																<div>
																	<input disabled="disabled"  type="text" id="staffBranchName"
																		class="form-control"> <span
																		id="pageSpanHelpTransferBranchName">For Japan
																		Post Bank, enter the store name (example: 1988)</span>
																</div>
																<div id="errorTransferBranch" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSpanBankCode">Bank Code</span>
																</div>

																<div>
																	<input disabled="disabled"  type="text" id="staffBankCode"
																		class="form-control">

																</div>
																<div id="errorBankCode" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSpanBranchCode">Branch Code</span>
																</div>

																<div>
																	<input disabled="disabled"  type="text" id="staffBranchCode"
																		class="form-control">

																</div>
																<div id="errorBranchCode" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountType">Account Type</span>
																</div>

																<div>
																	<select  disabled="disabled"  id="staffAccountType" class="form-control">
																		<option value="0" id="selectOptionAccountType">Select
																			Account Type</option>
																		<option value="1" id="selectOptionAccountTypeUsually">Usually</option>
																		<option value="2" id="selectOptionAccountTypeCurrent">Current</option>
																		<option value="3" id="selectOptionAccountTypeSavings">Savings</option>
																		<option value="4" id="selectOptionAccountTypeOthers">Others</option>
																	</Select>
																</div>
																<div id="errorAccType" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6"></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountNumber">Account Number</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffAccountNumber"
																		class="form-control">
																</div>
																<div id="errorAccNo" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountName">Account Name</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffAccountName"
																		class="form-control">
																</div>
															</div>
															<div id="errorAccName" style="color: red;"></div>
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
																	id="accordionDivSkillSheetInformation">Skill
																	Sheet Information</div>
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
																	<span id="pageSpanNameInitials">Name (initials
																		only)</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffSkillNameInit"
																		class="form-control">
																</div>
																<div id="errorSkillName" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCurrentAddress">Current
																		Address</span>
																</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffSkillCurrentAddress"
																		class="form-control">
																</div>
																<span id="pageSpanHelpCurrentAddress">Please
																	enter the information of the address you want to
																	display after the prefecture</span>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<div id="pageDivWorkHistory">Work history (for
																		skill sheet)</div>
																</div>
																<span id="pageSpanHelpWorkHistory">Describe the
																	career history since the last academic background.
																	Listed by industry / industry with the company name
																	hidden, such as "Trading company D", "Major advertising
																	agency", and "Service industry".</span>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="skill_sheet_information_table" style="width: 100%">
																		<thead>
																			<tr>
																				<th id="#tableWorkHistoryTHYear">Date From</th>
																				<th id="#tableWorkHistoryTHMonth">Date To</th>
																				<th id="#tableWorkHistoryTHDesignation">Designation</th>
																				<th id="#tableWorkHistoryTHCompany">Company</th>
																				<th id="#tableWorkHistoryTHContent">Experience</th>
																				
																			</tr>
																		</thead>

																		<tbody id="tbodyIdSkillSheet">
																			<tr id="SkillSheetTrId">
																				<input disabled="disabled"  type="hidden" name="staffWorkHistoryID[]">
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="date" name="staffWorkHistoryDateFrom[]"
																					id="staffWorkHistoryDateFrom" class="form-control"></td>
																				<td style="width: 15%;" class="p-1"><input disabled="disabled" 
																					type="date" name="staffWorkHistoryDateTo[]"
																					id="staffWorkHistoryDateTo" class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					name="staffDesignation[]" id="staffDesignation"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					name="staffCompanyName[]" id="staffCompanyName"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					name="staffExperienceType[]"
																					id="staffExperienceType" class="form-control"></td>
																			
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorSkillWorkHistory" class="RequiredStar"></div>
																
																</div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks</span>
																</div>
																<div>
																	<textarea  disabled="disabled"  class="form-control" id="staffSkillRemark"
																		placeholder="If you have any particular requests regarding treatment, occupation, working hours, place of work, etc., enter them."></textarea>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanCVFileUpload">CV
																	File Upload</div>
																<div>
																	<form method="POST" enctype="multipart/form-data"
																		id="fileUploadForm">
																		<input disabled="disabled"  type="file" id="staffCvPdf"
																			class="form-control">
																		<div id="errorStaffCvPdf" class="RequiredStar"></div>
																	</form>
																</div>
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
																<div class="DetailsTitleText" id="pageSpanMyNumber">My
																	Number</div>
																<div>
																	<input disabled="disabled"  type="text" id="staffMyNumber"
																		class="form-control">
																</div>
																<div id="errorMyNumber" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSocialInsuranceCoverage"> Social
																		Insurance Coverage</span> <span class="RequiredStar">*</span>
																</div>

																<div>
																	<select  disabled="disabled"  id="staffSocialInsuranceCoverage"
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

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

																<div class="DetailsTitleText"
																	id="pageSpanHealthInsuranceCoverage">Health
																	insurance coverage</div>

																<div>
																	<select  disabled="disabled"  id="staffHealthInsuranceCoverage"
																		class="form-control">
																		<option value=""
																			id="selectOptionHealthInsuranceCoverage">Select
																			Health insurance coverage</option>
																		<option value="1"
																			id="selectOptionHealthInsuranceCoverageNotSubscribed">Not
																			Subscribed</option>
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
																	<select  disabled="disabled"  id="staffHealthInsuranceGrade"
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

																	<select  disabled="disabled"  id="staffWelfarePensionStatus"
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
																	<select  disabled="disabled"  id="staffWelfarePensionGrade"
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
																	<select  disabled="disabled"  id="staffLongTermInsuranceStatus"
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
																	<select  disabled="disabled"  id="staffEmploymentInsuranceCoverage"
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
																	<select  disabled="disabled"  id="staffIncomeTaxTaxpayer"
																		class="form-control">
																		<option value="" id="selectIncomeTaxTaxpayer">Select
																			Income tax taxpayer classification</option>
																		<option value="1" id="selectOptionInstep">Instep</option>
																		<option value="2" id="selectOptionB">B</option>
																		<option value="3" id="selectOptionHinoe">Hinoe</option>
																	</Select>

																</div>
																<div id="errorIncomeTaxTaxpayer" style="color: red;"></div>
															</div>

															<!-- <div class="col-sm-12 col-md-6 col-lg-6 " ></div> -->

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">

																<div class="DetailsTitleText">
																	<span id="pageSpanNumberofDependents">Number of
																		dependents</span><span class="RequiredStar"> *</span>
																</div>

																<div>
																	<input disabled="disabled"  type="text" id="staffNumberDependents"
																		class="form-control "> <span
																		id="pageSpanHelpNumberOfDependents"> Please
																		enter the number of dependents directly. Please note
																		that the number of dependent relatives may not match
																		the actual number because the calculation method of
																		the dependent deduction amount differs depending on
																		the disability classification of the dependent
																		relatives. </span>
																	<div id="errorNumDependents" class="RequiredStar"></div>

																</div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-4 pl-3 pr-3">

																<div class="DetailsTitleText" id="pageSpanDependents">Dependents</div>

																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered"
																		id="search_Dependent_table" style="width: 100%">
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
																				

																			</tr>
																		</thead>
																		<tbody id="tbodyIdDependent">
																			<tr id="dependentTrId">
																				<input disabled="disabled"  type="hidden" value=""
																					name="staffDependentsID[]" />
																				<td class="p-1"><input disabled="disabled"  type="text"
																					id="staffFamilyName" name="staffDependentsName[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="text"
																					id="staffNameKatakana"
																					name="staffDependentsNamekatakana[]"
																					class="form-control"></td>
																				<td class="p-1"><input disabled="disabled"  type="date"
																					id="staffDependentBirthday"
																					name="staffDependentsBirthday[]"
																					class="form-control"></td>
																				<td class="p-1">
																				  <select  disabled="disabled"  disabled="disabled"  class="form-control" id="staffDependentGender" name="staffDependentsGender[]">
																				     <option value=""></option>
																				     <option id="dependentGenderMale" value="1">Male</option>
																					 <option id="dependentGenderFemale" value="2">Female</option>
																				  </select>
																				</td>
																				<td class="p-1"><select  disabled="disabled"  class="form-control"
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
																				<td class="p-1"><select  disabled="disabled"  class="form-control"
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
																				<td class="p-1"><select  disabled="disabled"  class="form-control"
																					id="staffLivingTogether"
																					name="staffDependentsLivingtogether[]">
																						<option value=""></option>
																						<option id="dependentLivingTogether" value="1">Live
																							together</option>
																						<option id="dependentSeparated" value="2">Separated</option>
																						<option id="dependentSeparatedOverseas" value="2">Separated
																							overseas</option>
																				</select></td>
																				<td class="p-1"><select  disabled="disabled"  class="form-control"
																					id="staffHandicapped"
																					name="staffDependentsHandicapped[]">
																						<option value=""></option>
																						<option id="dependentGeneralDisabled" value="1">General
																							disabled</option>
																						<option id="dependentSpeciallyDisabled" value="2">Specially
																							disabled</option>
																						<option id="dependentHealthy" value="3">Healthy</option>
																				</select></td>
																			
																			</tr>
																		</tbody>
																	</table>
																	<div id="errorsocialDependents" class="RequiredStar"></div>
																	
																</div>

																<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

																	<div class="DetailsTitleText"
																		id="pageSpanResidentTaxClassification">Resident
																		tax classification</div>

																	<div>
																		<select  disabled="disabled"  id="staffResidentTaxClassification"
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
																	<input   type="text" id="staffEmail" class="form-control">
																	<span id="pageSpanHelpEmail1"> * It will be the
																		ID to log in to the system </span><br> <span
																		id="pageSpanHelpEmail2"> * It will be the
																		address to receive the business contact email </span>
																</div>
																<div id="errorEmail" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 "></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanNewPassword">New
																	password</div>
																<div>
																	<input  type="text" id="staffNewPassword"
																		class="form-control">
																</div>
																<span id="pageSpanHelpNewPassword"> * 6
																	characters or more, half-width alphanumeric characters</span>
																<div id="errorNewPassword" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanNewPasswordConfirm">For new password
																	confirmation</div>
																<div>
																	<input  type="text" id="staffNewPasswordConfirmation"
																		class="form-control">
																</div>
																<div id="errorNewPasswordConfirm" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanRegistrationDivision">Registration
																	Division</div>
																<div>
																	<b> <span id="pageSpanMainRegistration">
																			Main registration</span>
																	</b>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanLineRegistration">LINE Registration</div>
																<div>
																	<b> <span id="pageSpanUnregistered">Unregistered</span></b>
																</div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 ContentAlignRC">
																<button onclick="checkLoginInfo()" class="btn btn-info"
																	id="buttonEditLoginInformation">Update Login
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
																	<input disabled="disabled"  type="text" id="staffStaffCode"
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
																		<input disabled="disabled"  type="file" id="staffFacePhotoFile"
																			class="form-control" onchange="loadFile(event)">
																		<div id="errorStaffFacePhotoFile" class="RequiredStar"></div>
																	</form>

																	<span id="pageSpanHelpFacePhoto"> * This is a
																		face photo to be displayed in the list and resume.</span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanPreview">Preview</div>

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
																	<input disabled="disabled"  id="staffEmergencyContactName" type="text"
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
																	<input disabled="disabled"  id="staffEmergencyContactNameKatakana"
																		type="text" placeholder="Example: Taro Yamada"
																		class="form-control"> <span
																		id="pageSpanHelpEmergencyContactNameKatakana">
																		Please put a space between the first and last name </span>
																</div>
																<div id="errorStaffEmergencyContactNameKatakana"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">

																<span class="DetailsTitleText" id="pageSpanPostalCode">Postal
																	Code</span>
																<div>
																	<input disabled="disabled"  id="staffEmergencyPostalCode" type="text"
																		placeholder="Example: 1234567" class="form-control">
																	
																</div>
																<div id="errorPostalCode" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText" id="pageSpanPrefectures">Prefectures</span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																	<select  disabled="disabled"  id="staffEmergencyPrefecture"
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
																<div id="errorOtherPrefecture" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText" id="pageSpanOtheAddress">Address</span>

																</div>
																<div>
																	<input disabled="disabled"  id="staffEmergencyAddress" type="text"
																		placeholder="Example: 1-11-11 Shibuya, Shibuya-ku ○○○○ Building 1F"
																		class="form-control"> <span
																		id="pageSpanOtherHelpAddress"> Please be sure
																		to enter the apartment name and building name</span>
																</div>
																<div id="errorOtherAddress" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="DetailsTitleText"
																		id="pageSpanEmergencyContactPhoneNumber">Emergency
																		Contact Phone Number</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  id="staffEmergencyContactPhoneNumber"
																		type="text" placeholder="Example: 09012345678"
																		class="form-control" maxlength="11"> <span
																		id="pageSpanHelpEmergencyContactPhoneNumber">Please
																		enter without hyphens</span>
																</div>
																<div id="errorOtherEmergencyNo" class="RequiredStar"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanRelationship">Relationship</div>
																<div>
																	<input disabled="disabled"  id="staffRelationship" type="text"
																		placeholder="Example: father" class="form-control">
																</div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDateofJoiningTheCompany"> Date
																		of Joining The Company</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input disabled="disabled"  type="date" id="staffCompanyJoiningDate"
																		class="form-control">
																</div>
																<div id="errorOtherDateJoin" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanStaffStaff">In
																	Charge Staff</div>
																<div>
																<select  disabled="disabled"  name="data[MailTemplate][codes]" class="form-control input-code" id="staffStaffStaff">
																<option value="" id="selectInchargeofStaff">Select InCharge Staff</option>
																</select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6"></div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanExperience">Experience</div>
																<div>
																	<textarea  disabled="disabled"  id="staffExperience"
																		placeholder="Example: Have sales experience.  Experienced as a leader in restaurants.  * You can search for input contents by free word from the search item 'Experience' in the staff list."
																		class="form-control"></textarea>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText" id="pageSpanStaffMemo">Staff
																	Memo</div>
																<div>
																	<textarea  disabled="disabled"  id="StaffMemo"
																		placeholder="Example: On February 1, a complaint occurred without following the business instructions of the dispatched company.  Be careful about the next assignment."
																		class="form-control"></textarea>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanStaffInformationUpdateHistory">Staff
																	Information Update History</div>
																<div>
																	<textarea  disabled="disabled"  id="StaffInformationUpdate"
																		placeholder="The update date / update staff is automatically registered, but it can also be used as an internal memo."
																		class="form-control"></textarea>
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
																	<select  disabled="disabled"  id="staffValidClassification"
																		class="form-control">
																		<option id="option0ValidClassification" value="">Selecct
																			Valid Classification</option>
																		<option id="option1ValidClassification" value="1">Valid</option>
																		<option id="option2ValidClassification" value="2">Invalid</option>
																	</select>
																</div>
																<div id="errorValdClassi" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanDateofleavingthecompany">Date of
																	leaving the company</div>
																<div>
																	<input disabled="disabled"  type="date" id="staffDateofleavingthecompany"
																		class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanGrievanceStatusFromStaff">Grievance
																	status from staff</div>
																<div>
																	<textarea  disabled="disabled"  class="form-control"
																		id="grievanceStatusFromStaff"></textarea>
																	<span id="pageSpanHelpGrievanceStatusFromStaff">*
																		The input contents will be reflected in the dispatch
																		source management ledger that is output in association
																		with this staff.</span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanContentOfEducationAndTraining">Date
																	and time and content of education and training</div>
																<div>
																	<textarea  disabled="disabled"  class="form-control"
																		id="contentOfEducationAndTraining"></textarea>
																	<span id="pageSpanHelpContentOfEducationAndTraining">*
																		The input contents will be reflected in the dispatch
																		source management ledger that is output in association
																		with this staff.</span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanContentOfCareerConsulting">Date and
																	content of career consulting</div>
																<div>
																	<textarea  disabled="disabled"  class="form-control"
																		id="contentOfCareerConsulting"></textarea>
																	<span id="pageSpanHelpContentOfCareerConsulting">*
																		The input contents will be reflected in the dispatch
																		source management ledger that is output in association
																		with this staff.</span>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-4 pl-3 pr-3">
																<div class="DetailsTitleText"
																	id="pageSpanDetailsOfEmploymentStabilizationMeasures">Details
																	of employment stabilization measures</div>
																<div>
																	<textarea  disabled="disabled"  class="form-control"
																		id="detailsOfEmploymentStabilizationMeasures"></textarea>
																	<span
																		id="pageSpanHelpDetailsOfEmploymentStabilizationMeasures">*
																		The input contents will be reflected in the dispatch
																		source management ledger that is output in association
																		with this staff.</span>
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
	<script src="./js/language_main_staff.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"staff");
    </script>

    <script src="../dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
    <script src="../dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
    <script src="../dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../dist-assets/js/scripts/tooltip.script.min.js"></script>
    <script src="../dist-assets/js/scripts/script.min.js"></script>
    <script src="../dist-assets/js/scripts/script_2.min.js"></script>
    <script src="../dist-assets/js/scripts/sidebar.large.script.min.js"></script>
    <script src="../dist-assets/js/plugins/feather.min.js"></script>
    <script src="../dist-assets/js/plugins/metisMenu.min.js"></script>
    <script src="../dist-assets/js/scripts/layout-sidebar-vertical.min.js"></script>
    <script src="../dist-assets/js/plugins/echarts.min.js"></script>
    <script src="../dist-assets/js/scripts/echart.options.min.js"></script>
    <script src="../dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
    <script src="../dist-assets/js/plugins/datatables.min.js"></script>
    <script src="../dist-assets/js/scripts/datatables.script.min.js"></script>

	<script src="./js/common-validations.js"></script>
	<script src="./js/staff-edit-validate.js"></script>
	<script>
	
	    const serverHTTP = "<%=serverHTTP%>";
        const  GUID = localStorage.getItem("GUID");
        const  searchUuid = localStorage.getItem("uuid"); 
        const role = localStorage.getItem("userRole");

        $(document).ready(function () {
      
        	let dataNode = '{"id" : 0, "authority": '+role+ '}';
			
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
				data : dataNode,
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
			
        let dataSet = '{"uuid" : "'+searchUuid+'"}';
        
        $.ajax({
            beforeSend: function(request) {
           	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetStaffInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	    getStaffInfo(result);
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
           
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetTransportationInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	      getTransportationInfo(result);
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
        
        
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetCredentialInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	      getCredentialInfo(result);
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
        
        
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetResumeInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	     getResumeInfo(result);
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
        
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetPayrollInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {       	
            	     getPayrollInfo(result);
            	     bankTransferLoad();
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
        
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetSkillSheetInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	    getSkillSheetInfo(result);
            	 }else{
            		//showMessage("Sorry SocialInfo Data Loding Error");
            	 }
             },
             complete:function(data){
          	   document.getElementById("loaderNotify").style.display = "none";
          	   },
             error: function(error) {
             console.log(JSON.stringify(error));
          }
        });  
        
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetSocialInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	    getSocialInfo(result);
            	 }else{
            		//showMessage("Sorry SocialInfo Data Loding Error");
            	 }
             },
             complete:function(data){
          	   document.getElementById("loaderNotify").style.display = "none";
          	   },
             error: function(error) {
             console.log(JSON.stringify(error));
          }
        });     
        
        
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetLoginInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	       getLoginInfo(result);
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
        
       
        $.ajax({
            beforeSend: function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'users/GetOtherInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	      getOtherInfo(result);
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

                    bankTransferLoad();

                    

                    $("#staffPaymentMethod").change(function() {
                    bankTransferLoad();
                     });
           
                  //onfocus="(this.type='date')"  id="dateOfBirthFrom" name="dateOfBirthFrom" placeholder="From"
                  $("#dateOfBirthFrom").focusout(function(){
                     this.type='text';
                     document.getElementById("dateOfBirthFrom").placeholder = "From";
                   });

                   $("#dateOfBirthTo").focusout(function(){
                     this.type='text';
                     document.getElementById("dateOfBirthTo").placeholder = "To";
                   });
                });
           
        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;
        

       
            var loadFile = function(event) {
                var output = document.getElementById('output');
                output.src = URL.createObjectURL(event.target.files[0]);
                output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
                }
            };


        function bankTransferLoad()
        {
            let value = $("#staffPaymentMethod").val();
           
            if(value == "2")
            {
                $('#transferMainDiv').show();
            }else{
                $('#transferMainDiv').hide();
            }
        }


        function myFunction()
         {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }

 var table ;

function drawDtataTable(language){
    if(language =="Japanese" )
    {
        search = "探す";
        info= "表示中 _START_ に _END_ の _TOTAL_ エントリ";
        lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
        zeroRecords = "何も見つかりません";
        infoEmpty = "記録はありません";
        infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
        previous ="前";
        next ="次";
        first  = "最初のページ"; 
        last = "最終ページ";

    }else{
        search = "Search";
        info= "Showing _START_ to _END_ of _TOTAL_ entries";// Showing 1 to 2 of 2 entries
        lengthMenu = "Display _MENU_ records per page";
        zeroRecords = "Nothing found";
        infoEmpty = "No records available";
        infoFiltered = "(filtered from _MAX_ total records)";
        previous ="Previous";
        next ="Next";
        first  = "First page"; 
        last = "Last page";
    }

    table= $('#search_staff_table').DataTable( {
            language: {
            search : search,
            info :info,
            lengthMenu : lengthMenu,
            zeroRecords : zeroRecords,
            infoEmpty : infoEmpty,
            infoFiltered :infoFiltered,
            "paginate": {
            previous : previous,
            next:next,
            first : first,
            last :last
            }
            }} );
}
function setLanguageWithTables(selectedLanguage){
	loadSelectedLanguage(selectedLanguage,"staff");
	setLanguage(selectedLanguage);
    table.destroy();
    drawDtataTable(selectedLanguage);
}
  

function  showUserAddress(result,request)
  {
     document.getElementById("staffZipCode").value = result.data.postalCode;
 
     $('#staffPrefecture').val('3');
  }


function  getStaffInfo(result)
{
    document.getElementById("staffName").value = result.data.name;
    document.getElementById("staffNameKatakana").value = result.data.nameKatakana;
    document.getElementById("staffZipCode").value = result.data.postalCode;
    $('#staffPrefecture').val(result.data.prefecture);
    document.getElementById("staffAddress").value = result.data.addressLine1;
    document.getElementById("staffAddressKatakana").value = result.data.addressKatakana;
    document.getElementById("staffDOB").value = result.data.dob;
    $('#staffGender').val(result.data.gender);	
    document.getElementById("staffMobile").value = result.data.telMobile;
    document.getElementById("staffHomeTel").value = result.data.telHome;
   // document.getElementById("staffEmail").value = result.data.email;
    document.getElementById("staffFax").value = result.data.fax
    $('#staffAttributeclassification1').val(result.data.attributeClassification1);
    $('#staffAttributeclassification2').val(result.data.attributeClassification2);
    $("#staffLaborManagementAgreementExpirationDate").val(result.data.laborManagementAgreementExpirationDate);
    $('#staffAttribute').val(result.data.attribute);
    document.getElementById("staffBelongs").value = result.data.belong;
    
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
  //  $('#staffGeneralDispatch').prop('checked', result.data.occupationClassification8);
  //  $('#staffGeneralDispatch').prop('checked', result.data.occupationClassification9); 
 }
 
 function getTransportationInfo(result)
 {
	 document.getElementById("staffNearestStation").value = result.data.nearestStation  ;
	 document.getElementById("staffTimeRequiredNearestStation").value = result.data.timeRequiredtoReachtheNearestStation;
	 document.getElementById("staffTransportationToNearestStation").value = result.data.transportationtotheNearestStation;
	 document.getElementById("staffBusSectionFrom").value = result.data.busUseSectionFrom;
	 document.getElementById("staffBusSectionTo").value = result.data.busUseSectionTo;
	 document.getElementById("staffRoundTripBusFare").value = result.data.roundTripBusFare;	 
 }

 function getEmergencyInfo(result,request)
 {
	
	 document.getElementById("staffEmergencyContactPhoneNumber").value = result.data.emergencyContactPhoneNumber; 
 }

 function getCredentialInfo(result)
 {
	 if(result.data.length>0)
	 {
		 $("#licenceTbodyId").empty();
	 }
	  for(i=0;i<result.data.length;i++){
		  licenceQualification = result.data[i].licenceQualification != null ? result.data[i].licenceQualification : "";
		  licenceNumber = result.data[i].licenceNumber != null ? result.data[i].licenceNumber : "";
		  licenceOperatingItem = result.data[i].licenceOperatingItem != null ? result.data[i].licenceOperatingItem : "";
	    let newRow =' <tr id="licenceTrId">'+
	                     '<input disabled="disabled"  type="hidden" value="'+result.data[i].id+'" name="licenseQualificationID[]">'+
                         '<td style="width: 15%;" class="p-1">'+
                          '<input disabled="disabled"  type="month" value="'+result.data[i].dateFrom+'" name="staffLicenseQualificationDateFrom[]" class="form-control">'+
                         '</td>'+
                         '<td style="width: 15%;"class="p-1">'+
                          '<input disabled="disabled"  type="month" value="'+result.data[i].dateTo+'" name="staffLicenseQualificationDateTo[]" class="form-control">'+
     				     '</td>'+
     				 	 '<td class="p-1"><input disabled="disabled"  type="text" name="staffLicenceQualification[]" value="'+licenceQualification+'" class="form-control"></td>'+
     					 '<td class="p-1"><input disabled="disabled"  type="text" name="staffLicenceNumber[]" value="'+licenceNumber+'" class="form-control"></td>'+
     					 '<td class="p-1"><input disabled="disabled"  type="text" name="staffLicenceOperatingItem[]" value="'+licenceOperatingItem+'" class="form-control"></td>'+
     					
  					 '</tr>';
  					
	    $("#showLicenseQualification tbody").append(newRow);
	  } 
 }
 
 
 function getResumeInfo(result)
 {
	 if(result.data3 != null)
	 {
	 document.getElementById("staffHope").value = result.data3.hope;
	 }
	 
	 if(result.data1.length>0)
	 {
		 $("#educationalTbodyId").empty();
	 }
	  for(i=0;i<result.data1.length;i++){
		  
		  institute = result.data1[i].institute != null ? result.data1[i].institute : "";
		  qualificationType1 = result.data1[i].qualificationType1 != null ? result.data1[i].qualificationType1 : "";
	    let newRow = '<tr id="educationalTrId">'+
	                    '<input disabled="disabled"  type="hidden" value="'+result.data1[i].id+'" name="staffEducationalID[]">'+
                        '<td style="width: 15%;" class="p-1">'+
        					'<input disabled="disabled"  type="month" value="'+result.data1[i].dateFrom+'"  name="staffEducationalBackgroundDateFrom[]" class="form-control">'+
     					'</td>'+
      					'<td style="width: 15%;"class="p-1">'+
        					'<input disabled="disabled"  type="month" value="'+result.data1[i].dateTo+'"  name="staffEducationalBackgroundDateTo[]" class="form-control">'+
      					'</td>'+
      					'<td class="p-1"><input disabled="disabled"  type="text" name="staffInstitute[]" value="'+institute+'" class="form-control"></td>'+
      					'<td class="p-1"><input disabled="disabled"  type="text" name="staffQualification[]" value="'+qualificationType1+'" class="form-control"></td>'+
      					
      				 '</tr>';
  					
	    $("#staff_educational_table tbody").append(newRow);
	  } 
	  
	  
	  if(result.data2.length>0)
		 {
			 $("#workTbodyId").empty();
		 }
		  for(i=0;i<result.data2.length;i++){
			  
			  designation = result.data2[i].designation != null ? result.data2[i].designation : "";
			  companyName = result.data2[i].companyName != null ? result.data2[i].companyName : "";
			  experienceType = result.data2[i].experienceType != null ? result.data2[i].experienceType : "";
			  
		    let newRow = '<tr id="workTrId">'+
		                    '<input disabled="disabled"  type="hidden" value="'+result.data2[i].id+'" name="staffWorkHistoryCredentialsID[]">'+ 
	                        '<td style="width: 15%;" class="p-1">'+
	        					'<input disabled="disabled"  type="month" value="'+result.data2[i].dateFrom+'"  name="staffWorkHistoryCredentialsDateFrom[]" class="form-control">'+
	     					'</td>'+
	      					'<td style="width: 15%;"class="p-1">'+
	        					'<input disabled="disabled"  type="month" value="'+result.data2[i].dateTo+'" name="staffWorkHistoryCredentialsDateTo[]" class="form-control">'+
	      					'</td>'+
	      					'<td class="p-1"><input disabled="disabled"  type="text" name="staffDesignationCredentials[]" value="'+designation+'" class="form-control"></td>'+
	      					'<td class="p-1"><input disabled="disabled"  type="text" name="staffCompanyNameCredentials[]" value="'+companyName+'" class="form-control"></td>'+
	      					'<td class="p-1"><input disabled="disabled"  type="text" name="staffExperienceTypeCredentials[]" value="'+experienceType+'" class="form-control"></td>'+
	      					
	      				 '</tr>';
	      				 
		    $("#staff_work_table tbody").append(newRow);
		  } 
      }
 
 function getPayrollInfo(result)
 {
	 document.getElementById("staffSalaryUnitPrice").value = result.data.dailySalaryUnitPrice ; 
	 document.getElementById("staffHourlyWageUnitPrice").value = result.data.hourlyWageUnitPrice ; 
	 $('#staffPaymentMethod').val(result.data.salaryPaymentMethod);
	 $('#staffSalaryPaymentForm').val(result.data.salaryPaymentForm);
	 $('#staffSalaryClosingDate').val(result.data.salaryClosingDate);
	 $('#staffPaidTarget').val(result.data.paidTarget);
	 document.getElementById("staffPaidStartDate").value = result.data.salaryStartDate ; 
	 
	 document.getElementById("staffFinancialInstitutionName").value = result.data.transferFinancialInstitutionName; 
	 document.getElementById("staffBranchName").value = result.data.transferBranchName; 
	 document.getElementById("staffBankCode").value = result.data.bankCode; 
	 document.getElementById("staffBranchCode").value = result.data.branchCode; 
	 $('#staffAccountType').val(result.data.accountType);
	 document.getElementById("staffAccountNumber").value = result.data.accountNumber; 
	 document.getElementById("staffAccountName").value = result.data.accountName; 
	 
	 
 }
 
 function getSkillSheetInfo(result)
 {
	 document.getElementById("staffSkillNameInit").value = result.data1.nameInitials;
	 document.getElementById("staffSkillCurrentAddress").value = result.data1.currentAddress ;
	 document.getElementById("staffSkillRemark").value = result.data1.remarks ;
	 
	 if(result.data2.length>0){ 
		 $("#tbodyIdSkillSheet").empty();
		 }
		
 	 for(i=0; i<result.data2.length; i++){
 		designation = result.data2[i].designation != null ? result.data2[i].designation : "";
		  companyName = result.data2[i].companyName != null ? result.data2[i].companyName : "";
		  experienceType = result.data2[i].experienceType != null ? result.data2[i].experienceType : "";
	   var newRowSkill= '<tr id="SkillSheetTrId">'+
           '<input disabled="disabled"  type="hidden" value="'+result.data2[i].id+'"  name="staffWorkHistoryID[]" >'+
		   '<td style="width: 15%;" class="p-1"><input disabled="disabled"  type="month" max="08-31-2021" value="'+result.data2[i].dateFrom+'" name="staffWorkHistoryDateFrom[]" id="staffWorkHistoryDateFrom" class="form-control"></td>'+
		   '<td style="width: 15%;" class="p-1"><input disabled="disabled"  type="month" value="'+result.data2[i].dateTo+'" name="staffWorkHistoryDateTo[]" id="staffWorkHistoryDateTo" class="form-control"></td>'+
		   '<td class="p-1"><input disabled="disabled"  type="text" value="'+designation+'" name="staffDesignation[]" id="staffDesignation" class="form-control"></td>'+
		   '<td class="p-1"><input disabled="disabled"  type="text" value="'+companyName+'" name="staffCompanyName[]"  id="staffCompanyName" class="form-control"></td>'+
		   '<td class="p-1"><input disabled="disabled"  type="text" value="'+experienceType+'" name="staffExperienceType[]"id="staffExperienceType" class="form-control"></td>'+
		   
		   '</tr>';  
           
           
		   $("#skill_sheet_information_table tbody").append(newRowSkill);     
		   
		   
 	    }       
     }
 
 function getSocialInfo(result)
 {
	 
	 if(result.data1!=null){
		 MyNumberTemp = result.data1.myNumber;
		 socialInsuranceCoverageTemp = result.data1.socialInsuranceCoverage;
		 healthInsuranceCoverageTemp = result.data1.healthInsuranceCoverage;
		 healthInsuranceGradeTemp = result.data1.healthInsuranceGrade;
		 WelfarePensionStatusTemp = result.data1.welfarePensionInsuranceParticipationStatus;
		 welfarePensionInsuranceGradeTemp = result.data1.welfarePensionInsuranceGrade; 
		 longTermCareInsuranceParticipationStatusTemp = result.data1.longTermCareInsuranceParticipationStatus;
		 employmentInsuranceCoverageTemp =result.data1.employmentInsuranceCoverage;
		 incomeTaxTaxpayerClassificationTemp = result.data1.incomeTaxTaxpayerClassification; 
		 numberofDependentsTemp = result.data1.numberofDependents; 
		 staffResidentTaxClassificationTemp = result.data1.residentTaxClassification;
		 
	 }
	 else{
		 MyNumberTemp = "";
		 socialInsuranceCoverageTemp = "";
		 healthInsuranceCoverageTemp = "";
		 healthInsuranceGradeTemp = "";
		 WelfarePensionStatusTemp = "";
		 welfarePensionInsuranceGradeTemp = "";
		 longTermCareInsuranceParticipationStatusTemp = "";
		 employmentInsuranceCoverageTemp =  "";
		 incomeTaxTaxpayerClassificationTemp = "";
		 numberofDependentsTemp = "";
		 staffResidentTaxClassificationTemp = "";
	 }
	 document.getElementById("staffMyNumber").value = MyNumberTemp;
	 $('#staffSocialInsuranceCoverage').val(socialInsuranceCoverageTemp);
	 $('#staffHealthInsuranceCoverage').val(healthInsuranceCoverageTemp);
	 $('#staffHealthInsuranceGrade').val(healthInsuranceGradeTemp);
	 document.getElementById("staffWelfarePensionStatus").value = WelfarePensionStatusTemp;
	 document.getElementById("staffWelfarePensionGrade").value = welfarePensionInsuranceGradeTemp
	 $('#staffLongTermInsuranceStatus').val(longTermCareInsuranceParticipationStatusTemp);
	 document.getElementById("staffEmploymentInsuranceCoverage").value =  employmentInsuranceCoverageTemp;
	 document.getElementById("staffIncomeTaxTaxpayer").value = incomeTaxTaxpayerClassificationTemp;
	 document.getElementById("staffNumberDependents").value = numberofDependentsTemp;
	 $('#staffResidentTaxClassification').val(staffResidentTaxClassificationTemp);
	 
	 
	 if(result.data2.length>0)
	 {
		 $("#tbodyIdDependent").empty();
	 }
	
 	 for(i=0; i<result.data2.length; i++){
         
 		familyName = result.data2[i].familyName != null ? result.data2[i].familyName: "";
 		nameKatakana = result.data2[i].nameKatakana != null ? result.data2[i].nameKatakana: "";
 		var newRowDependent ='<tr id="dependentTrId">'+
             '<td  class="p-1">'+
 		       '<input disabled="disabled"  type="hidden" value="'+result.data2[i].id+'" name="staffDependentsID[]" />'+
               '<input disabled="disabled"  type="text"   value="'+familyName+'" name="staffDependentsName[]" class="form-control"></td>'+
              '<td  class="p-1"><input disabled="disabled"  type="text" value="'+nameKatakana+'" name="staffDependentsNamekatakana[]" class="form-control"></td>'+
              '<td  class="p-1"><input disabled="disabled"  type="date" value="'+result.data2[i].dependentBirthday+'" name="staffDependentsBirthday[]" class="form-control"></td>'+
              '<td  class="p-1">'+
                  '<select  disabled="disabled"  id="staffDependentsGender" name="staffDependentsGender[]" class="form-control">'+
                   '<option value="0" id="selectOptionSelectGender"></option>'+
                   '<option value="1" id="selectOptionSelectGenderMale">Male</option>'+
                   '<option value="2" id="selectOptionSelectGenderFemale">Female</option>  '+                                                                  
                  '</select>   '+
             ' </td>'+
              '<td  class="p-1">'+
                  '<select  disabled="disabled"  name="staffDependentsRelationship[]" class="form-control">'+
                   '<option id="" value=""></option>'+
                   '<option id="dependentRelationshipWife" value="1">Wife</option>'+
                   '<option id="dependentRelationshipChild" value="2">Child</option>'+
                   '<option id="dependentRelationshipFather" value="3">Father</option>'+
                   '<option id="dependentRelationshipMother" value="4">Mother</option>'+
                   '<option id="dependentRelationshipOlderBrother" value="5">Older Brother</option>'+
                   '<option id="dependentRelationshipYoungerBrother" value="6">Younger Brother</option>'+
                   '<option id="dependentRelationshipSister" value="7">Sister</option>'+
                   '<option id="dependentRelationshipGrandchild" value="8">Grandchild</option>'+
                   '<option id="dependentRelationshipGrandfather" value="9">Grandfather</option>'+
                   '<option id="dependentRelationshipGrandmotherr" value="10">Grandmother</option>'+
                   '<option id="dependentRelationshipFather-in-law" value="11">Father-in-law</option>'+
                  '<option id="dependentRelationshipMother-in-law" value="12">Mother-in-law</option>'+
                  '<option id="dependentRelationshipGrandfather-in-law" value="13">Grandfather-in-law</option>'+
                  '<option id="dependentRelationshipGrandmother-in-law" value="14">Grandmother-in-law</option>'+
                  '<option id="dependentRelationshipOthers" value="15">Others</option>'+                                                       
                  ' </select>   '+
                 ' </td>'+
             ' <td  class="p-1">'+
             ' <select  disabled="disabled"  name="staffDependentsClassification[]" class="form-control">'+
                 ' <option value=""></option>'+
                  ' <option id="dependentClassificationGeneralDependents" value="1">General dependents</option>'+
                  '<option id="dependentClassificationSpecificDependents" value="2">Specific dependents</option>      '+
                  ' <option id="dependentClassificationDependentsOfElderly" value="3">Dependents of the elderly</option>        '+                                                            
                  '</select>   '+
                 ' </td>'+
             ' <td  class="p-1">'+
             ' <select  disabled="disabled"  name="staffDependentsLivingtogether[]" class="form-control">'+
                 ' <option value=""></option>'+
                  ' <option id="dependentLivingTogether" value="1">Living together</option>'+
                  ' <option id="dependentSeparated" value="2">Separated</option>   '+
                  ' <option id="dependentSeparatedOverseas" value="3">Separated overseas</option>        '+                                                           
                  ' </select>   '+
                 '</td>'+
             ' <td  class="p-1">'+
             '<select  disabled="disabled"   name="staffDependentsHandicapped[]" class="form-control">'+
                 '<option value=""></option>'+
                  '<option id="dependentGeneralDisabled" value="1">General disabled</option>'+
                  ' <option id="dependentSpeciallyDisabled" value="2">Specially disabled</option>  '+     
                  ' <option id="dependentHealthy" value="3">Healthy</option>  '+ 
                  '</select>   '+
                 '</td>'+
                
              '</tr>';
            
       
 		$("#search_Dependent_table tbody").append(newRowDependent);
        
        var staffDependentsGenderNodes = document.getElementsByName("staffDependentsGender[]");
        staffDependentsGenderNodes[i].value=result.data2[i].dependentGender;
      
        var staffDependentsRelationshipNodes = document.getElementsByName("staffDependentsRelationship[]");
         staffDependentsRelationshipNodes[i].value=result.data2[i].dependentsRelationship;
        
         var staffDependentsClassificationNodes = document.getElementsByName("staffDependentsClassification[]");
         staffDependentsClassificationNodes[i].value=result.data2[i].classification;
        
         var staffDependentsLivingtogetherNodes = document.getElementsByName("staffDependentsLivingtogether[]");
         staffDependentsLivingtogetherNodes[i].value=result.data2[i].livingTogether;
      
         var staffDependentsHandicappedNodes = document.getElementsByName("staffDependentsHandicapped[]");
         staffDependentsHandicappedNodes[i].value=result.data2[i].handicapped;
 	 }
 	switchLanguage(pageLanguage);
	 
 }
 

 function getLoginInfo(result)
 {
	 document.getElementById("staffEmail").value = result.data.email ; 
 }
 
 
 function getOtherInfo(result)
 {
	 document.getElementById("staffStaffCode").value = result.data.staffCode ;

	if(result.data.profilePicturePath != "")
	{
	 document.getElementById("output").src = result.data.profilePicturePath;
	}
	 document.getElementById("staffEmergencyContactName").value = result.data.emergencyContactName ;
	 document.getElementById("staffEmergencyContactNameKatakana").value = result.data.emergencyContactNameKatakana;
	 document.getElementById("staffEmergencyPostalCode").value = result.data.postalCode;
	 $('#staffEmergencyPrefecture').val(result.data.prefecture);
	 document.getElementById("staffEmergencyAddress").value = result.data.addressKatakana;
	 document.getElementById("staffEmergencyContactPhoneNumber").value = result.data.emergencyContactPhoneNumber;
	 document.getElementById("staffCompanyJoiningDate").value = result.data.dateOfJoinInTheCompany ;
	 document.getElementById("staffRelationship").value = result.data.relationship ;
	 document.getElementById("staffStaffStaff").value = result.data.inChargeStaff ;
	 document.getElementById("staffExperience").value = result.data.experience;
	 document.getElementById("StaffMemo").value = result.data.staffMemo ; 
	 document.getElementById("StaffInformationUpdate").value = result.data.staffInformationUpdateHistory ; 
	 $('#staffValidClassification').val(result.data.validClassification);
	 document.getElementById("staffDateofleavingthecompany").value = result.data.dateOfLeavingTheCompany; 
	 document.getElementById("grievanceStatusFromStaff").value = result.data.grievanceStatusFromStaff;
	 document.getElementById("contentOfEducationAndTraining").value = result.data.dateTimeAndContentOfEducationAndTraining;
	 document.getElementById("contentOfCareerConsulting").value = result.data.dateAndContentOfCareerConsulting;
	 document.getElementById("detailsOfEmploymentStabilizationMeasures").value = result.data.detailsofEmploymentStabilizationMeasures;
 }
 
 
 function editStaffInfo()
 {
	var staffName = document.getElementById("staffName").value;
	var staffNameKatakana = document.getElementById("staffNameKatakana").value;
	var staffZipCode = document.getElementById("staffZipCode").value;
	var staffPrefecture = document.getElementById("staffPrefecture").value;
	var staffAddress = document.getElementById("staffAddress").value;
	var staffAddressKatakana = document.getElementById("staffAddressKatakana").value;
	var staffDOB = document.getElementById("staffDOB").value;
	var staffGender = document.getElementById("staffGender").value;
	var staffMobile = document.getElementById("staffMobile").value;
	var staffHomeTel = document.getElementById("staffHomeTel").value;
	var staffFax = document.getElementById("staffFax").value;
	var staffAttributeclassification1 = document.getElementById("staffAttributeclassification1").value;
	var staffAttributeclassification2 = document.getElementById("staffAttributeclassification2").value;
	var staffLaborManagementAgreementExpirationDate = document.getElementById("staffLaborManagementAgreementExpirationDate").value !="" ? document.getElementById("staffLaborManagementAgreementExpirationDate").value :null;
	var staffAttribute = document.getElementById("staffAttribute").value;
	var staffBelongs = document.getElementById("staffBelongs").value;
	
	
	var dc1 = 0 ;
	var dc2 = 0 ;
	var dc3 = 0 ;
	var dc4 = 0 ;
	var dc5 = 0 ;
	
	var oc1 = 0 ;
	var oc2 = 0 ;
	var oc3 = 0 ;
	var oc4 = 0 ;
	var oc5 = 0 ;
	var oc6 = 0 ;
	var oc7 = 0 ;
	var oc8 = 0 ;
	
	var dispatchClassification1 = document.getElementById("dispatchClassification1"); 
	var dispatchClassification2 = document.getElementById("dispatchClassification2");
	var dispatchClassification3 = document.getElementById("dispatchClassification3");
	var dispatchClassification4 = document.getElementById("dispatchClassification4");
	var dispatchClassification5 = document.getElementById("dispatchClassification5");
	
	if (dispatchClassification1.checked == true){  
	     dc1 = dispatchClassification1.value;  
	  } 
	if (dispatchClassification2.checked == true){ 
	     dc2 = dispatchClassification2.value;
	  }
	if (dispatchClassification3.checked == true){  
	    dc3 = dispatchClassification3.value;  
	  } 
	if (dispatchClassification4.checked == true){ 
	    dc4 = dispatchClassification4.value;
	  }
	 if (dispatchClassification5.checked == true){ 
	     dc5 = dispatchClassification5.value;
	 }
	
	var occupationClassification1 = document.getElementById("occupationClassification1"); 
	var occupationClassification2 = document.getElementById("occupationClassification2");
	var occupationClassification3 = document.getElementById("occupationClassification3");
	var occupationClassification4 = document.getElementById("occupationClassification4");
	var occupationClassification5 = document.getElementById("occupationClassification5");
	var occupationClassification6 = document.getElementById("occupationClassification6");
	var occupationClassification7 = document.getElementById("occupationClassification7");
	//var occupationClassification8 = document.getElementById("staffOthers");

	if (occupationClassification1.checked == true){  
	     oc1 = occupationClassification1.value;  
	  } 
	if (occupationClassification2.checked == true){  
	     oc2 = occupationClassification2.value;  
	  } 
	if (occupationClassification3.checked == true){  
	     oc3 = occupationClassification3.value;  
	  } 
	if (occupationClassification4.checked == true){  
	     oc4 = occupationClassification4.value;  
	  } 
	if (occupationClassification5.checked == true){  
	     oc5 = occupationClassification5.value;  
	  } 
	if (occupationClassification6.checked == true){  
	     oc6 = occupationClassification6.value;  
	  } 
	if (occupationClassification7.checked == true){  
	     oc7 = occupationClassification7.value;
	  } 
	//if (occupationClassification8.checked == true){  
	//     oc8 = occupationClassification8.value;  
	//  }
	
	
		let dataPassNode = {};
		dataPassNode['uuid'] = searchUuid;
		dataPassNode['name'] = staffName.trim();
		dataPassNode['nameKatakana'] = staffNameKatakana.trim();
		dataPassNode['postalCode'] = staffZipCode.trim();
		dataPassNode['prefecture'] = staffPrefecture;
		dataPassNode['addressLine1'] = staffAddress.trim();
		dataPassNode['addressKatakana'] = staffAddressKatakana.trim();
		dataPassNode['dob'] = staffDOB;
		dataPassNode['gender'] = staffGender;
		dataPassNode['telMobile'] = staffMobile.trim();
		dataPassNode['telHome'] =  staffHomeTel.trim();
		dataPassNode['fax'] =  staffFax.trim();
		dataPassNode['attributeClassification1'] = staffAttributeclassification1;
		dataPassNode['attributeClassification2'] = staffAttributeclassification2;
		dataPassNode['laborManagementAgreementExpirationDate'] = staffLaborManagementAgreementExpirationDate;
		dataPassNode['laborManagementAgreementExpirationDate'] = staffLaborManagementAgreementExpirationDate;
		dataPassNode['attribute'] = staffAttribute;
		dataPassNode['belong'] = staffBelongs.trim();
		dataPassNode['dispatchClassification1'] = dc1;
		dataPassNode['dispatchClassification2'] = dc2;  	
		dataPassNode['dispatchClassification3'] = dc3;
		dataPassNode['dispatchClassification4'] = dc4;
		dataPassNode['dispatchClassification5'] = dc5;
		dataPassNode['occupationClassification1'] =  oc1;
		dataPassNode['occupationClassification2'] =  oc2;
		dataPassNode['occupationClassification3'] =  oc3;
		dataPassNode['occupationClassification4'] =  oc4;
		dataPassNode['occupationClassification5'] =  oc5;
		dataPassNode['occupationClassification6'] =  oc6;
		dataPassNode['occupationClassification7'] =  oc7;
		dataPassNode['occupationClassification8'] =  0;
		
			
	 $.ajax({
       beforeSend: function(request) {
        	 document.getElementById("loaderNotify").style.display = "";
          request.setRequestHeader("GUID", GUID);
       },
       url: serverHTTP +'users/PostStaffInfo',
       method: 'POST',
       contentType: 'application/json',
       data: JSON.stringify(dataPassNode),
       dataType: 'json',
        success: function(result, status, request){
        if(result.status==200)
       	 {
      	  
      	  showMessage('success',"E1102");
       	 }else{
       	  console.log("Sorry PostStaffInfo not working");
       	  showMessage('error',"E1103");
       	 }
        },
        complete:function(data){
     	   document.getElementById("loaderNotify").style.display = "none";
     	   },
        error: function(error) {
        console.log("Sorry PostStaffInfo not working");
        showMessage('error',"E1103");
        console.log(JSON.stringify(error));
     }
   });
}

	function editTransportInfo()
	{
		
		var staffNearestStation = document.getElementById("staffNearestStation").value;
		var staffTimeRequiredNearestStation = document.getElementById("staffTimeRequiredNearestStation").value;
		var staffTransportationToNearestStation = document.getElementById("staffTransportationToNearestStation").value;
		var staffBusSectionFrom = document.getElementById("staffBusSectionFrom").value;
		var pageSpanBusUseSectionTo = document.getElementById("staffBusSectionTo").value;
		var staffRoundTripBusFare = document.getElementById("staffRoundTripBusFare").value;

		saveUuid = localStorage.getItem('saveUuid');

		let dataPassNode = {};
		dataPassNode['uuid'] = searchUuid;
		dataPassNode['nearestStation'] = staffNearestStation.trim();
		dataPassNode['timeRequiredtoReachtheNearestStation'] = parseInt(staffTimeRequiredNearestStation.trim());
		dataPassNode['transportationtotheNearestStation'] = staffTransportationToNearestStation.trim();
		dataPassNode['busUseSectionFrom'] = staffBusSectionFrom.trim();
		dataPassNode['busUseSectionTo'] = pageSpanBusUseSectionTo.trim();
		dataPassNode['roundTripBusFare'] = parseInt(staffRoundTripBusFare.trim());

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
					// result.data.uuid;
					showMessage('success',"E1104");
				} else {
					console.log("Sorry Transportation Info not working");
					showMessage('error',"E1105");
				}
			},
			complete:function(data){
         	   document.getElementById("loaderNotify").style.display = "none";
         	   },
			error : function(error) {
				console.log("Sorry Transportation Info not working");
				showMessage('error',"E1105");
				console.log(JSON.stringify(error));
				
			}
		});

	}
	
	function editCredential(){
		
		 var licenseQualificationIDArray = document.getElementsByName("licenseQualificationID[]");
		 var licenceDateFromArray = document.getElementsByName("staffLicenseQualificationDateFrom[]");
         var licenceDateToArray = document.getElementsByName("staffLicenseQualificationDateTo[]");
         var licenceQualificationArray = document.getElementsByName("staffLicenceQualification[]");
         var licenceNumberArray = document.getElementsByName("staffLicenceNumber[]");
         var licenceOperatingItemArray = document.getElementsByName("staffLicenceOperatingItem[]");
         
         var dataPassNode = {};
         var dataArrayLicence = [];

         for(var i = 0; i < licenseQualificationIDArray.length; i++)
     	 {
        	 var licenseQualificationID = licenseQualificationIDArray[i].value !="" ? licenseQualificationIDArray[i].value :null;
             var licenceDateFrom = licenceDateFromArray[i].value !="" ? licenceDateFromArray[i].value :null;
             var licenceDateTo = licenceDateToArray[i].value!=""? licenceDateToArray[i].value :null;
             var licenceQualification = licenceQualificationArray[i].value!="" ? licenceQualificationArray[i].value.trim() :null;
             var licenceNumber = licenceNumberArray[i].value!="" ? licenceNumberArray[i].value.trim() :null;
             var licenceOperatingItem = licenceOperatingItemArray[i].value!="" ? licenceOperatingItemArray[i].value.trim() :null; 
     	 
             var tempLicence = {"id":licenseQualificationID,
            		 "dateFrom":licenceDateFrom,
 		 			"dateTo":licenceDateTo,
 		 			"licenceQualification":licenceQualification,
 		 			"licenceNumber":licenceNumber,
 		 			"licenceOperatingItem":licenceOperatingItem};
             dataArrayLicence.push(tempLicence);
     	 
     	 }
            
    		dataPassNode['uuid'] = searchUuid;
    		dataPassNode['user_licenceInfos']=dataArrayLicence;
    		
    		passData = JSON.stringify(dataPassNode);
    		
    		$.ajax({
    			beforeSend : function(request) {
                 	 document.getElementById("loaderNotify").style.display = "";
    				request.setRequestHeader("GUID", GUID);
    			},
    			url : serverHTTP + 'users/PostCredentialInfo',
    			method : 'POST',
    			contentType : 'application/json',
    			data : passData,
    			dataType : 'json',
    			success : function(result, status, request) {
    				if (result.status == 202) {
    					// result.data.uuid;
    					showMessage('success',"E1106");
    					
    				} else {
    					console.log("Sorry Credentials Info not working");
    					showMessage('error',"E1107");
    				}
    			},
    			complete:function(data){
             	   document.getElementById("loaderNotify").style.display = "none";
             	   },
    			error : function(error) {
    				console.log("Sorry Credentials Info not working");
    				showMessage('error',"E1107");
    				console.log(JSON.stringify(error));
    			}
    		});     

	}

	function editResumeInfo() 
	{     
		 
		var educationalIDArray = document.getElementsByName('staffEducationalID[]');
		var educationDateFromArray = document.getElementsByName("staffEducationalBackgroundDateFrom[]");
        var educationDateToArray = document.getElementsByName("staffEducationalBackgroundDateTo[]");
        var instituteArray = document.getElementsByName("staffInstitute[]");
        var qualificationTypeArray = document.getElementsByName("staffQualification[]");
		
    	var workHistoryCredentialsID = document.getElementsByName('staffWorkHistoryCredentialsID[]');
    	var workHistoryCredentialsDateFrom = document.getElementsByName('staffWorkHistoryCredentialsDateFrom[]'); 
    	var workHistoryCredentialsDateTo = document.getElementsByName('staffWorkHistoryCredentialsDateTo[]'); 
    	var workDesignationCredentials = document.getElementsByName('staffDesignationCredentials[]');  
    	var workCompanyNameCredentials = document.getElementsByName('staffCompanyNameCredentials[]'); 
    	var workExperienceTypeCredentials = document.getElementsByName('staffExperienceTypeCredentials[]');
        
        
        var hope = document.getElementById("staffHope").value!="" ? document.getElementById("staffHope").value.trim() :null;
    	
        var dataNode = {};
        var dataArrayEducation = [];
        var dataArrayWork = [];
        
    	for(var i = 0; i < educationalIDArray.length; i++)
    	{
    		var educationID = educationalIDArray[i].value !=""? educationalIDArray[i].value : null ;
    		var educationDateFrom = educationDateFromArray[i].value !=""? educationDateFromArray[i].value : null ;
            var educationDateTo = educationDateToArray[i].value !=""? educationDateToArray[i].value : null ;
            var institute = instituteArray[i].value !="" ? instituteArray[i].value.trim()  : null;
            var qualificationType = qualificationTypeArray[i].value !="" ? qualificationTypeArray[i].value.trim() : null;
            
            var tempEducation ={"id":educationID,
            		"dateFrom":educationDateFrom,
					"dateTo":educationDateTo,
					"institute":institute,
					"qualificationType1":qualificationType} ;

         dataArrayEducation.push(tempEducation);   
    	}
        
    	for(var i = 0; i < workHistoryCredentialsID.length; i++)
    	{
    		 var workIDCredentials = workHistoryCredentialsID[i].value !="" ? workHistoryCredentialsID[i].value : null;
    		 var CredentialsworkDateFrom = workHistoryCredentialsDateFrom[i].value !="" ? workHistoryCredentialsDateFrom[i].value : null;
    		 var CredentialsworkDateTo = workHistoryCredentialsDateTo[i].value !="" ? workHistoryCredentialsDateTo[i].value : null;
    		 var Credentialsdesignation = workDesignationCredentials[i].value !="" ? workDesignationCredentials[i].value.trim() : null;
    		 var CredentialscompanyName = workCompanyNameCredentials[i].value !="" ? workCompanyNameCredentials[i].value.trim() : null;
    		 var CredentialsexperienceType = workExperienceTypeCredentials[i].value !="" ? workExperienceTypeCredentials[i].value.trim() : null;
    		 
    		 var tempWork ={"id":workIDCredentials,
    				    "dateFrom":CredentialsworkDateFrom,
				        "dateTo":CredentialsworkDateTo,
				        "designation":Credentialsdesignation,
				        "companyName":CredentialscompanyName,
				        "experienceType":CredentialsexperienceType};
		 
		dataArrayWork.push(tempWork);
    	}
    	
    	dataNode['uuid'] = searchUuid; 
     	dataNode['user_educationInfos']=dataArrayEducation;
     	dataNode['user_workInfos']=dataArrayWork;
     	dataNode['user_licenceInfos'] = [{}];
     	dataNode['hope']=hope;
    	passData = JSON.stringify(dataNode);
		
		//saveUuid = localStorage.getItem('saveUuid');
		
		/* let dataPassNode = {};
		dataPassNode['uuid'] = searchUuid;
		dataPassNode['educationId'] = educationID;
		dataPassNode['educationDateFrom'] = educationDateFrom;
		dataPassNode['educationDateTo'] = educationDateTo;
		dataPassNode['institute'] = institute;
		dataPassNode['qualificationType'] = qualificationType;
		dataPassNode['workId'] = workIDCredentials;
		dataPassNode['workDateFrom'] = CredentialsworkDateFrom;
		dataPassNode['workDateTo'] = CredentialsworkDateTo;
		dataPassNode['designation'] = Credentialsdesignation;
		dataPassNode['companyName'] = CredentialscompanyName;
		dataPassNode['experienceType'] = CredentialsexperienceType; */
		
		//dataPassNode['hope'] = hope;
		
		$.ajax({
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
					// result.data.uuid;
					showMessage('success',"E1108");
				
				} else {
					console.log("Sorry Resume Info not working");
					showMessage('error',"E1109");
				}
			},
			complete:function(data){
         	   document.getElementById("loaderNotify").style.display = "none";
         	   },
			error : function(error) {
				console.log("Sorry Resume Info not working");
				showMessage('error',"E1109");
				console.log(JSON.stringify(error));
			}
		});
	}

function editPayrollInfo()
	{
		
		var salaryPaymentMethod = document.getElementById("staffPaymentMethod").value;
		var salaryPaymentForm = document.getElementById("staffSalaryPaymentForm").value;
		var salaryStartDate = document.getElementById("staffPaidStartDate").value != "" ? document.getElementById("staffPaidStartDate").value : null ;
		var salaryClosingDate = document.getElementById("staffSalaryClosingDate").value != "" ? document.getElementById("staffSalaryClosingDate").value : null ;
		var dailySalaryUnitPrice = document.getElementById("staffSalaryUnitPrice").value;
		var hourlyWageUnitPrice = document.getElementById("staffHourlyWageUnitPrice").value;
		var paidTarget = document.getElementById("staffPaidTarget").value != "" ? document.getElementById("staffPaidTarget").value : null ;
		var transferFinancialInstitutionName = document.getElementById("staffFinancialInstitutionName").value;
		var transferBranchName = document.getElementById("staffBranchName").value;
		var bankCode = document.getElementById("staffBankCode").value;
		var branchCode = document.getElementById("staffBranchCode").value;
		var accountType = document.getElementById("staffAccountType").value != "" ? document.getElementById("staffAccountType").value : null ;
		var accountNumber = document.getElementById("staffAccountNumber").value;
		var accountName = document.getElementById("staffAccountName").value;
		
		saveUuid = localStorage.getItem('saveUuid');
		
		let dataPassNode = {};
		dataPassNode['uuid'] = searchUuid;
		dataPassNode['salaryPaymentMethod'] = salaryPaymentMethod;
		dataPassNode['salaryPaymentForm'] = salaryPaymentForm;
		dataPassNode['salaryStartDate'] = salaryStartDate;
		dataPassNode['salaryClosingDate'] = salaryClosingDate;
		dataPassNode['dailySalaryUnitPrice'] = parseInt(dailySalaryUnitPrice.trim());
		dataPassNode['hourlyWageUnitPrice'] = parseInt(hourlyWageUnitPrice.trim());
		dataPassNode['paidTarget'] = paidTarget;
		dataPassNode['transferFinancialInstitutionName'] = transferFinancialInstitutionName.trim();
		dataPassNode['transferBranchName'] = transferBranchName.trim();
		dataPassNode['bankCode'] = bankCode.trim();
		dataPassNode['branchCode'] = branchCode.trim();
		dataPassNode['accountType'] = accountType;
		dataPassNode['accountNumber'] = accountNumber.trim();
		dataPassNode['accountName'] = accountName.trim();
		
		$.ajax({
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
					showMessage('success',"E1110");
					// result.data.uuid;
					
				} else {
					console.log("Sorry Payroll Info not working");
					showMessage('error',"E1111");
				}
			},
			complete:function(data){
         	   document.getElementById("loaderNotify").style.display = "none";
         	   },
			error : function(error) {
				console.log("Sorry Payroll Info not working");
				showMessage('error',"E1111");
				console.log(JSON.stringify(error));
			}
		});
		
	}
	
	function skillSheetPDFFileUplod()
	{ 
		    //saveUuid = localStorage.getItem('saveUuid');
	        var filePath = "";
	       
			if($('#staffCvPdf')[0].files[0]){
				var fileNode = $('#staffCvPdf')[0].files[0]	
				
				var formDataObj = new FormData();
				//formDataObj.append('image', fileNode );
				formDataObj.append('file', fileNode);
				formDataObj.append('uuid', searchUuid);
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
					method: 'POST',
					async: false,
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


	
    function editSkillSheet()
    {
    	var cvFilePath  =  skillSheetPDFFileUplod();
    	
    	var nameInit = document.getElementById("staffSkillNameInit").value !=""? document.getElementById("staffSkillNameInit").value : null;
    	var currentAddress = document.getElementById("staffSkillCurrentAddress").value !=""? document.getElementById("staffSkillCurrentAddress").value : null;
    	var remarks = document.getElementById("staffSkillRemark").value !=""? document.getElementById("staffSkillRemark").value : null;
    	
    	
    	var workHistoryID = document.getElementsByName('staffWorkHistoryID[]');
    	var workHistoryDateFrom = document.getElementsByName('staffWorkHistoryDateFrom[]'); 
    	var workHistoryDateTo = document.getElementsByName('staffWorkHistoryDateTo[]'); 
    	var workDesignation = document.getElementsByName('staffDesignation[]');  
    	var workCompanyName = document.getElementsByName('staffCompanyName[]'); 
    	var workExperienceType = document.getElementsByName('staffExperienceType[]');
    	
    	 var dataNode = {};
         var dataArrayWork = [];
    	
    	for(var i = 0; i < workHistoryID.length; i++)
    	{
    		 var SkillSheetWorkHistoryID = workHistoryID[i].value !="" ? workHistoryID[i].value : null;
    		 var SkillSheetWorkHistoryDateFrom = workHistoryDateFrom[i].value !="" ? workHistoryDateFrom[i].value : null;
    		 var SkillSheetWorkHistoryDateTo = workHistoryDateTo[i].value !="" ? workHistoryDateTo[i].value : null;
    		 var SkillSheetWorkDesignation = workDesignation[i].value !="" ? workDesignation[i].value.trim() : null;
    		 var SkillSheetWorkCompanyName = workCompanyName[i].value !="" ? workCompanyName[i].value.trim() : null;
    		 var SkillSheetWorkExperienceType = workExperienceType[i].value !="" ? workExperienceType[i].value.trim() : null;
    		 
    		 var tempWork ={"id":SkillSheetWorkHistoryID,
    				    "dateFrom":SkillSheetWorkHistoryDateFrom,
				        "dateTo":SkillSheetWorkHistoryDateTo,
				        "designation":SkillSheetWorkDesignation,
				        "companyName":SkillSheetWorkCompanyName,
				        "experienceType":SkillSheetWorkExperienceType};
		 
		dataArrayWork.push(tempWork);
    	}
    	
    	dataNode['uuid'] = searchUuid;
    	dataNode['nameInitials'] = nameInit;
    	dataNode['currentAddress'] = currentAddress;
    	dataNode['remarks'] = remarks;
     	dataNode['user_workInfos']=dataArrayWork;
     	dataNode['cvLocation']=cvFilePath;
    	passData = JSON.stringify(dataNode);
    	
	    /* let dataPassNode = {};
	    dataPassNode['uuid'] = searchUuid;
	    dataPassNode['name'] = nameInit;
		dataPassNode['currentAddress'] = currentAddress;
		dataPassNode['workId'] = skillWorkHistoryID;
	    dataPassNode['dateFrom'] = skillHistoryDateFrom;
		dataPassNode['dateTo'] = skillHistoryDateTo;
		dataPassNode['designation'] = skillDesignation;
		dataPassNode['companyName'] = skillCompanyName;
		dataPassNode['experienceType'] = skillExperienceType	;
		 */
		
		$.ajax({
			beforeSend : function(request) {
             	 document.getElementById("loaderNotify").style.display = "";
				request.setRequestHeader("GUID", GUID);
			},
			url : serverHTTP + 'users/PostSkillSheetInfo',
			method : 'POST',
			contentType : 'application/json',
			data : passData,
			dataType : 'json',
			success : function(result, status, request) {
				if (result.status == 202) {
					// result.data.uuid;
					showMessage('success',"E1112");
					
				} else {
					console.log("Sorry Skill Sheet Info not working");
					showMessage('error',"E1113");
				}
			},
			complete:function(data){
         	   document.getElementById("loaderNotify").style.display = "none";
         	   },
			error : function(error) {
				console.log("Sorry Skill Sheet Info not working");
				showMessage('error',"E1113");
				console.log(JSON.stringify(error));
			}
		});	
    	
    }
    
		
    function editSocialInfo()
    {	
    	var myNumber = document.getElementById("staffMyNumber").value;
    	var socialInsuranceCoverage = document.getElementById("staffSocialInsuranceCoverage").value;
    	var healthInsuranceCoverage = document.getElementById("staffHealthInsuranceCoverage").value;
    	var healthInsuranceGrade = document.getElementById("staffHealthInsuranceGrade").value;
    	var welfarePensionInsuranceParticipationStatus = document.getElementById("staffWelfarePensionStatus").value;
    	var welfarePensionInsuranceGrade = document.getElementById("staffWelfarePensionGrade").value;
    	var longTermCareInsuranceParticipationStatus = document.getElementById("staffLongTermInsuranceStatus").value;
    	var employmentInsuranceCoverage = document.getElementById("staffEmploymentInsuranceCoverage").value;
    	var incomeTaxTaxpayerClassification = document.getElementById("staffIncomeTaxTaxpayer").value;
    	var numberofDependents = document.getElementById("staffNumberDependents").value;
    	var residentTaxClassification = document.getElementById("staffResidentTaxClassification").value;
    	
    	
    	var dependentIDArray = document.getElementsByName("staffDependentsID[]");
    	var familyNameArray = document.getElementsByName("staffDependentsName[]");
    	var nameKatakanaArray = document.getElementsByName("staffDependentsNamekatakana[]");
    	var dependentBirthdayArray = document.getElementsByName("staffDependentsBirthday[]");
    	var dependentGenderArray = document.getElementsByName("staffDependentsGender[]");
    	var dependentsRelationshipArray = document.getElementsByName("staffDependentsRelationship[]");
    	var classificationArray = document.getElementsByName("staffDependentsClassification[]");
    	var livingTogetherArray = document.getElementsByName("staffDependentsLivingtogether[]");
    	var handicappedArray = document.getElementsByName("staffDependentsHandicapped[]");

        var dataArrayDependent = [];
        
    	for(var i = 0; i < dependentIDArray.length; i++)
    	{
    		    var dependentID = dependentIDArray[i].value !="" ? dependentIDArray[i].value : null;
    	    	var familyName = familyNameArray[i].value !="" ? familyNameArray[i].value.trim() : null;
    	    	var nameKatakana = nameKatakanaArray[i].value !="" ? nameKatakanaArray[i].value.trim() : null;
    	    	var dependentBirthday= dependentBirthdayArray[i].value !="" ? dependentBirthdayArray[i].value : null;
    	    	var dependentGender = dependentGenderArray[i].value !="" ? dependentGenderArray[i].value : null;
    	    	var dependentsRelationship = dependentsRelationshipArray[i].value !="" ? dependentsRelationshipArray[i].value : null;
    	    	var classification = classificationArray[i].value !="" ? classificationArray[i].value : null;
    	    	var livingTogether = livingTogetherArray[i].value !="" ? livingTogetherArray[i].value : null;
    	    	var handicapped = handicappedArray[i].value !="" ? handicappedArray[i].value : null;
    	    	
    	    	var tempDependent={"familyName":familyName,
 					   "nameKatakana":nameKatakana,
 					   "dependentBirthday":dependentBirthday,
 					   "dependentGender":dependentGender,
 					   "dependentsRelationship":dependentsRelationship,
 					   "classification":classification,
 					   "livingTogether":livingTogether,
 					   "handicapped":handicapped};
 	
 	           dataArrayDependent.push(tempDependent);
    	}
    	    	
    	    	let dataPassNode = {};
    	    	dataPassNode['uuid'] = searchUuid;
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
    			
    			dataPassNode['userDependentInfo']=dataArrayDependent;
    			passData = JSON.stringify(dataPassNode);
    			
    			/* dataPassNode['familyName'] = familyName;
    			dataPassNode['nameKatakana'] = nameKatakana;
    			dataPassNode['dependentBirthday'] = dependentBirthday;
    			dataPassNode['dependentGender'] = dependentGender;
    			dataPassNode['dependentsRelationship'] = dependentsRelationship;
    			dataPassNode['classification'] = classification;
    			dataPassNode['livingTogether'] = livingTogether;
    			dataPassNode['handicapped'] = handicapped; */
    			
    			$.ajax({
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
    						showMessage('success',"E1114");
    						// result.data.uuid;
    						
    					} else {
    						console.log("Sorry Social Info not working");
    						showMessage('error',"E1115");
    					}
    				},
    				complete:function(data){
    	            	   document.getElementById("loaderNotify").style.display = "none";
    	            	   },
    				error : function(error) {
    					console.log("Sorry Social Info not working");
    					showMessage('error',"E1115");
    					console.log(JSON.stringify(error));
    				}
    			});
    
    	//saveUuid = localStorage.getItem('saveUuid');

    }
		
	function editLoginInfo()
	{
		
		var email = document.getElementById("staffEmail").value;
		var password =  document.getElementById("staffNewPassword").value;
		var conformPassword =  document.getElementById("staffNewPasswordConfirmation").value;
		
		saveUuid = localStorage.getItem('saveUuid');
		
		let dataPassNode = {};
		dataPassNode['uuid'] = searchUuid;
		dataPassNode['email'] = email.trim();
		dataPassNode['password'] = password.trim();
		dataPassNode['confirmPassword'] = conformPassword.trim(); 
		
		$.ajax({
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
					showMessage('success',"E1116");
					// result.data.uuid;
			
				} else {
					console.log("Sorry Login Info not working");
					showMessage('error',"E1117");
				}
			},
			complete:function(data){
         	   document.getElementById("loaderNotify").style.display = "none";
         	   },
			error : function(error) {
				console.log("Sorry Login Info not working");
				showMessage('error',"E1117");
				console.log(JSON.stringify(error));
			}
		});

	}
	
	
	function otherInfoFileUplod()
	{
		//$('#fileUploadForm').submit(function(e) {
		//	e.preventDefault();
			//console.log("uploadFile");
			//console.log($('#staffFacePhotoFile')[0].files[0]);
			
		
           var imagePath = "";
           
			if($('#staffFacePhotoFile')[0].files[0]){
				var fileNode = $('#staffFacePhotoFile')[0].files[0]	
				console.log(fileNode);
				console.log(fileNode.size);
				console.log(fileNode.name);
				console.log(fileNode.type);
				

				var formDataObj = new FormData();
				formDataObj.append('image', fileNode );
				//formDataObj.append('file', fileNode);
				formDataObj.append('uuid', searchUuid);
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
					method: 'POST',
					async: false,
					success : function(result, status, request) {
						console.log(result);
						imagePath = result.data.imagePath;
					},
					error : function(error) {
						console.log(error);
					}
				});
				return imagePath;
			}
	//	});
		
	//	$('#fileUploadForm').submit();
	}
	
	function editOtherInfo()
	{
		
		var profilePicturePath = otherInfoFileUplod();


		//var profilePicturePath = document.getElementById("staffFacePhotoFile").value;
		var emergencyContactName = document.getElementById("staffEmergencyContactName").value;
		var emergencyContactNameKatakana = document.getElementById("staffEmergencyContactNameKatakana").value;
		var postalCode = document.getElementById("staffEmergencyPostalCode").value!= "" ? document.getElementById("staffEmergencyPostalCode").value : null;
		var prefecture = document.getElementById("staffEmergencyPrefecture").value;
		var addressKatakana = document.getElementById("staffEmergencyAddress").value;
		var emergencyContactPhoneNumber = document.getElementById("staffEmergencyContactPhoneNumber").value;
		var relationship = document.getElementById("staffRelationship").value;
		var dateOfJoinInTheCompany = document.getElementById("staffCompanyJoiningDate").value;
		var inChargeStaff = document.getElementById("staffStaffStaff").value != null ? document.getElementById("staffStaffStaff").value: "";
		var experience = document.getElementById("staffExperience").value;
		var staffMemo = document.getElementById("StaffMemo").value;
		var staffInformationUpdateHistory = document.getElementById("StaffInformationUpdate").value;
		var dateOfLeavingTheCompany = document.getElementById("staffDateofleavingthecompany").value  != "" ? document.getElementById("staffDateofleavingthecompany").value : null;
		var validClassification = document.getElementById("staffValidClassification").value;
		var grievanceStatusFromStaff = document.getElementById("grievanceStatusFromStaff").value;
		var dateTimeAndContentOfEducationAndTraining = document.getElementById("contentOfEducationAndTraining").value;
		var dateAndContentOfCareerConsulting = document.getElementById("contentOfCareerConsulting").value;
		var detailsofEmploymentStabilizationMeasures = document.getElementById("detailsOfEmploymentStabilizationMeasures").value;
		
		saveUuid = localStorage.getItem('saveUuid');
		
		let dataPassNode = {};
		dataPassNode['uuid'] = searchUuid;
		//dataPassNode['staffCode'] = saveStaffCode;
		dataPassNode['profilePicturePath'] = profilePicturePath;
		dataPassNode['emergencyContactName'] = emergencyContactName.trim();
		dataPassNode['emergencyContactNameKatakana'] = emergencyContactNameKatakana.trim();
		dataPassNode['postalCode'] = postalCode;
		dataPassNode['prefecture'] = prefecture;
		dataPassNode['addressKatakana'] = addressKatakana.trim();
		dataPassNode['emergencyContactPhoneNumber'] = emergencyContactPhoneNumber.trim();
		dataPassNode['relationship'] = relationship.trim();
		dataPassNode['dateOfJoinInTheCompany'] = dateOfJoinInTheCompany;
		dataPassNode['inChargeStaff'] = inChargeStaff.trim();
		dataPassNode['experience'] = experience.trim();
		dataPassNode['staffMemo'] = staffMemo.trim();
		dataPassNode['staffInformationUpdateHistory'] = staffInformationUpdateHistory.trim();
		dataPassNode['dateOfLeavingTheCompany'] = dateOfLeavingTheCompany;
		dataPassNode['validClassification'] = validClassification;
		dataPassNode['grievanceStatusFromStaff'] = grievanceStatusFromStaff.trim();
		dataPassNode['dateTimeAndContentOfEducationAndTraining'] = dateTimeAndContentOfEducationAndTraining.trim();
		dataPassNode['dateAndContentOfCareerConsulting'] = dateAndContentOfCareerConsulting.trim();
		dataPassNode['detailsofEmploymentStabilizationMeasures'] = detailsofEmploymentStabilizationMeasures.trim();
		
		$.ajax({
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
					// result.data.uuid;
					showMessage('success',"E1118");
			
				} else {
					console.log("Sorry Other Info not working");
					showMessage('error',"E1119");
				}
			},
			complete:function(data){
         	   document.getElementById("loaderNotify").style.display = "none";
         	   },
			error : function(error) {
				console.log("Sorry Other Info not working");
				showMessage('error',"E1119");
				console.log(JSON.stringify(error));
			}
		});
		
	}
	function addEducationalRow()
	{
	    var $tr    = $("#educationalTrId").first('tr');
	    var $clone = $tr.clone();
	    $clone.find('input').val('');
	    $("#educationalTbodyId").append($clone);
	}
	
	function removeEducationalRow(element)
	{
	    if($('#staff_educational_table tr').length>2){
	    	 $(element).closest('tr').remove();
	    }else{
	    	showMessage('info',"E1101");
	    }
	}
	
	function addWorkRow()
	{
	    var $tr    =  $("#workTrId").first('tr');
	    var $clone =  $tr.clone();
	    $clone.find('input').val('');
	    $("#workTbodyId").append($clone);
	}
	
	function removeWorkRow(element)
	{
	    if($('#staff_work_table tr').length>2){
	    	 $(element).closest('tr').remove();
	    }else{
	    	showMessage('info',"E1101");
	    }
	}
	
	function addSkillSheetRow()
	{
	    var $tr    =  $("#SkillSheetTrId").first('tr');
	    var $clone =  $tr.clone();
	    $clone.find('input').val('');
	    $("#tbodyIdSkillSheet").append($clone);
	}
	
	function removeSkillSheetRow(element)
	{
	    if($('#skill_sheet_information_table tr').length>2){
	    	 $(element).closest('tr').remove();
	    }else{
	    	showMessage('info',"E1101");
	    }
	}
		
	function addLicenseRow()
	{
	    var $tr    =  $("#licenceTrId").first('tr');
	    var $clone =  $tr.clone();
	    $clone.find('input').val('');
	    $("#licenceTbodyId").append($clone);
	}
	
	function removeLicenceRow(element)
	{
	    if($('#showLicenseQualification tr').length>2){
	    	 $(element).closest('tr').remove();
	    }else{
	    	showMessage('info',"E1101");
	    }
	}
	
	function addDependentRow()
	{
	    var $tr    =  $("#dependentTrId").first('tr');
	    var $clone =  $tr.clone();
	    $clone.find('input').val('');
	    $("#tbodyIdDependent").append($clone);
	}
	
	function removeDependentRow(element)
	{
	    if($('#search_Dependent_table tr').length>2){
	    	 $(element).closest('tr').remove();
	    }else{
	    	showMessage('info',"E1101");
	    }
	}
	
	function copyDependentRow(element)
	{
		
	    var $tr    =  $(element).closest('tr');
	    var $clone =  $tr.clone();
	    
	    $clone.find("select").each(function(i){
	        this.selectedIndex = $tr.find("select")[i].selectedIndex;
	    })
	   // $clone.find('select:value');
	    $tr.after($clone);
	}
	
	function clearRow(element)
	{
        var $tr    =  $(element).closest('tr');
        $tr.find('input').val('');
	}
	
	function clearDependentRow(element)
	{
        var $tr    =  $(element).closest('tr');
        $tr.find('input').val('');
        $tr.find('select').val('');
	}
	
	function loadDoc() {
		  
		}
	
	function getAddressStaff(zipCodeId, addressId)
	{
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
 
 function getAddressOther(zipCodeId, addressId){
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
		  	$('[data-prefecture2]').map(function() {
			  	if(result.Feature[0].Property.Address.match($(this).data('prefecture2')))
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
	 
 $("#userRegister").click(function( event ) { 
 	
	   var dataNode = {};     
	   dataNode['uuid'] = searchUuid;  

	   
	   $.ajax({
         beforeSend: function(request) {
          	 document.getElementById("loaderNotify").style.display = "";
          request.setRequestHeader("GUID", GUID);
         },
         url: serverHTTP +'users/RegisterStaffInfo',
         method: 'POST',
         contentType: 'application/json',
         data: JSON.stringify(dataNode),
         dataType: 'json',
          success: function(result, status, request){
          if(result.message=="Registration Successfully")
         	 {
          	showMessage('success',"N1243");
          	/* setTimeout(function(){
          		window.location.href = "staff-details.jsp"; 
          		}, 3600); */

         	 }
          else if(result.message=="Registration Unsuccessfully! staff already Registered")
      	 {
       	showMessage('error',"N1250");
       	/* setTimeout(function(){
       		window.location.href = "staff-details.jsp"; 
       		}, 3600); */

      	 }
          else
          {
          	showMessage('error',"N1251");
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
			
			   $("#userDelete").click(function( event ) { 
            	
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
			            	   dataNode['uuid'] = searchUuid;  

			            	   
			              	   $.ajax({
			                       beforeSend: function(request) {
			                        	 document.getElementById("loaderNotify").style.display = "";
			                        request.setRequestHeader("GUID", GUID);
			                       },
			                       url: serverHTTP +'users/DeleteStaffInfo',
			                       method: 'POST',
			                       contentType: 'application/json',
			                       data: JSON.stringify(dataNode),
			                       dataType: 'json',
			                        success: function(result, status, request){
			                        if(result.status==200)
			                       	 {
			                        	showMessage('success',"E1120");
			                        	setTimeout(function(){
			                        		window.location.href = "staff-management.jsp"; 
			                        		}, 3600);
				
			                       	 }
			                        else
			                        {
			                        	showMessage('error',"E1121");
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
						});
            	   
               });

			   
		
        </script>
</body>

</html>