<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitle">Staff List</title>
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
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeading"> Staff List</span>
										</h1>
									</div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<a href="staff-registeration.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonSpanStaffReg">Staff
													Registration</span>
											</button> </a> <a href="batch-registration.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-upload mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonSpanBatchReg">Batch
													Registration</span>
											</button></a>
										<button
											class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
											role='button' id="btnOutputStaffListCSV">
											<i class="fa fa-table mr-2 text-20 cursor-pointer"
												role="generic"></i><span id="buttonSpanStaffListCSV">Staff
												List CSV Output</span>
										</button>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-md-12 col-xl-12 mt-3">
										<div class="row ">
											<div class="col-lg-10 col-md-12 col-sm-12 pr-0">
												<!-- <div class="card SearchBox"> -->
												<div class="card ml-3 SearchCardDiv">
													<div class="card-body">
														<div class="card-title">
															<i class="fa fa-search text-18" role="generic"></i><span
																id="pageSpanSearch"> Search</span>
														</div>
														<form id="searchForm" method="post">
															<div class="row">
																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="givenNames" id="pageLabelGivenNames">Given
																			Names</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user"></i>
																				</div>
																			</div>
																			<input id="givenNames" name="givenNames"
																				placeholder="Enter Given Names" class="form-control"
																				role="textbox">

																		</div>
																		<div id="errorGivenName" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<label for="nameKatakana" id="pageLabelNameKatakana">Name
																			Katakana</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user"></i>
																				</div>
																			</div>
																			<input id="nameKatakana" name="nameKatakana"
																				placeholder="Enter Name Katakana"
																				class="form-control" role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label for="staffCode" id="pageLabelStaffCode">Staff
																			Code</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user-circle"></i>
																				</div>
																			</div>
																			<input id="staffCode" name="staffCode"
																				placeholder="Enter Staff Code" class="form-control"
																				role="textbox">
																		</div>
																		<div id="errorStaffCode" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<label for="prefectures" id="pageLabelPrefectures">Prefectures</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-map"></i>
																				</div>
																			</div>
																			<select id="prefectures" name="prefectures"
																				class="form-control" role="combobox">
																				<option value="0" id="selectOptionSelectPrefectures">Select
																					Prefecture</option>
																				<option value="1" id="pageOption1Prefecture">
																					Hokkaido</option>
																				<option value="2" id="pageOption2Prefecture">
																					Aomori</option>
																				<option value="3" id="pageOption3Prefecture">
																					Iwate</option>
																				<option value="4" id="pageOption4Prefecture">
																					Miyagi</option>
																				<option value="5" id="pageOption5Prefecture">
																					Akita</option>
																				<option value="6" id="pageOption6Prefecture">
																					Yamagata</option>
																				<option value="7" id="pageOption7Prefecture">
																					Fukushima</option>
																				<option value="8" id="pageOption8Prefecture">
																					Ibaraki</option>
																				<option value="9" id="pageOption9Prefecture">
																					Tochigi</option>
																				<option value="10" id="pageOption10Prefecture">
																					Gunma</option>
																				<option value="11" id="pageOption11Prefecture">
																					Saitama</option>
																				<option value="12" id="pageOption12Prefecture">
																					Chiba</option>
																				<option value="13" id="pageOption13Prefecture">
																					Tokyo</option>
																				<option value="14" id="pageOption14Prefecture">
																					Kanagawa</option>
																				<option value="15" id="pageOption15Prefecture">
																					Niigata</option>
																				<option value="16" id="pageOption16Prefecture">
																					Toyama</option>
																				<option value="17" id="pageOption17Prefecture">
																					Ishikawa</option>
																				<option value="18" id="pageOption18Prefecture">
																					Fukui</option>
																				<option value="19" id="pageOption19Prefecture">
																					Yamanashi</option>
																				<option value="20" id="pageOption20Prefecture">
																					Nagano</option>
																				<option value="21" id="pageOption21Prefecture">
																					Gifu</option>
																				<option value="22" id="pageOption22Prefecture">
																					Shizuoka</option>
																				<option value="23" id="pageOption23Prefecture">
																					Aichi</option>
																				<option value="24" id="pageOption24Prefecture">
																					Mie</option>
																				<option value="25" id="pageOption25Prefecture">
																					Shiga</option>
																				<option value="26" id="pageOption26Prefecture">
																					Kyoto</option>
																				<option value="27" id="pageOption27Prefecture">
																					Osaka</option>
																				<option value="28" id="pageOption28Prefecture">
																					Hyogo</option>
																				<option value="29" id="pageOption29Prefecture">
																					Nara</option>
																				<option value="30" id="pageOption30Prefecture">
																					Wakayama</option>
																				<option value="31" id="pageOption31Prefecture">
																					Tottori</option>
																				<option value="32" id="pageOption32Prefecture">
																					Shimane</option>
																				<option value="33" id="pageOption33Prefecture">
																					Okayama</option>
																				<option value="34" id="pageOption34Prefecture">
																					Hiroshima</option>
																				<option value="35" id="pageOption35Prefecture">
																					Yamaguchi</option>
																				<option value="36" id="pageOption36Prefecture">
																					Tokushima</option>
																				<option value="37" id="pageOption37Prefecture">
																					Kagawa</option>
																				<option value="38" id="pageOption38Prefecture">
																					Ehime</option>
																				<option value="39" id="pageOption39Prefecture">
																					Kochi</option>
																				<option value="40" id="pageOption40Prefecture">
																					Fukuoka</option>
																				<option value="41" id="pageOption41Prefecture">
																					Saga</option>
																				<option value="42" id="pageOption42Prefecture">
																					Nagasaki</option>
																				<option value="43" id="pageOption43Prefecture">
																					Kumamoto</option>
																				<option value="44" id="pageOption44Prefecture">
																					Oita</option>
																				<option value="45" id="pageOption45Prefecture">
																					Miyazaki</option>
																				<option value="46" id="pageOption46Prefecture">
																					Kagoshima</option>
																				<option value="47" id="pageOption47Prefecture">
																					Okinawa</option>
																			</Select>
																		</div>
																		<div id="errorPrefecture" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<label for="streetAddress" id="pageLabelStreetAddress">Street
																			Address</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg ">
																					<i class="far fa-building"></i>
																				</div>
																			</div>
																			<input id="streetAddress" name="streetAddress"
																				placeholder="Enter Street Address"
																				class="form-control" role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label for="dateOfBirthFrom" id="pageLabelDOB">Date
																			of Birth</label>
																		<div class="input-group ">
																			<div
																				class="col-sm-12 col-md-12 col-lg-6  SizerRight ">
																				<input onfocus="(this.type='date')"
																					id="dateOfBirthFrom" name="dateOfBirthFrom"
																					placeholder="From" title="Date of Birth From"
																					class="form-control" role="textbox">
																			</div>
																			<div class="col-sm-12 col-md-12 col-lg-6  SizerLeft ">
																				<input onfocus="(this.type='date')"
																					id="dateOfBirthTo" name="dateOfBirthTo"
																					placeholder="To" title="Date of Birth To"
																					class="form-control" role="textbox">
																			</div>
																		</div>
																		<div id="errorDob" style="color: red;"></div>
																	</div>

																</div>

																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="mobilePhone" id="pageLabelMobilePhone">Mobile
																			Phone</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="fa fa-mobile-alt"></i>
																				</div>
																			</div>
																			<input id="mobilePhone" name="mobilePhone"
																				placeholder="Enter Mobile Number"
																				class="form-control" role="textbox">
																		</div>
																		<div id="errorMobile" style="color: red;"></div>

																	</div>
																	<div class="row">
																		<label for="staffInChargeStaff"
																			id="pageLabelStaffStaff">In Charge Staff</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user-circle"></i>
																				</div>
																			</div>
																			<select name="staffStaff" class="form-control input-code" id="selectStaffInChargeStaff">
																				<option value="" id="selectInchargeofStaff">Select InCharge Staff</option>
																			</select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="mailAddress" id="pageLabelMailAddress">Mail
																			Address</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-envelope"></i>
																				</div>
																			</div>
																			<input id="mailAddress" name="mailAddress"
																				placeholder="Enter Mail Address"
																				class="form-control" role="textbox">
																		</div>
																		<div id="errorMail" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<label for="experience" id="pageLabelExperience">Experience</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clock"></i>
																				</div>
																			</div>
																			<input id="experience" name="experience"
																				placeholder="Enter Experience" class="form-control"
																				role="textbox">
																		</div>
																	</div>
																	<div class="row">
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
																					Registration Devision</option>
																				<option value="1"
																					id="selectOptionSelectRegistrationDevision2">Temporary
																					registration</option>
																				<option value="2"
																					id="selectOptionSelectRegistrationDevision1">Main
																					registration</option>
																			</select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="dispatchClassification"
																			id="pageLabelDispatchClassification">Dispatch
																			Classification</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<select id="dispatchClassification"
																				name="dispatchClassification" class="form-control"
																				role="combobox">
																				<option value=""
																					id="selectOptionSelectDispatchClassification">Select
																					Dispatch Classification</option>
																				<option value="1" id="pageSpanGeneralDispatch">General
																					dispatch</option>
																				<option value="2" id="pageSpanBusinessContract">Out
																					Sourcing</option>
																				<option value="3"
																					id="pageSpanIntroductionDispatching">Temp
																					-to- Perm</option>
																				<option value="4" id="pageSpanRecruitment">Talent
																					Introduction/Recruiting/Placement</option>
																				<option value="5" id="pageSpanPartTime">Part
																					time</option>
																			</select>

																		</div>
																	</div>

																</div>
																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="occupationClassification"
																			id="pageLabelOccupationClassification">Occupation
																			Classification</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<select id="occupationClassification"
																				name="occupationClassification" class="form-control"
																				role="combobox">
																				<option value=""
																					id="selectOptionSelectOccupationClassification">Select
																					Occupation Classification</option>
																				<option value="1" id="pageSpanOfficeSystem">Office
																					system</option>
																				<option value="2" id="pageSpanSalesSystem">Slaes/sales
																					system</option>
																				<option value="3" id="pageSpanITCreative">IT
																					/ Creative</option>
																				<option value="4" id="pageSpanMedicalWelfareSystem">Medical
																					/ Welfare system</option>
																				<option value="5" id="pageSpanManufacturingBusiness">Manufacturing
																					business</option>
																				<option value="6" id="pageSpanProfessional">Professional</option>
																				<option value="7" id="pageSpanOthers">Others</option>
																			</select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="attributeW" id="pageSpanAttributeclassification1">Attribute
																		classification 1</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<!-- <Select id="attributeW" name="attributeW"
																				class="form-control" role="combobox">
																				<option id="pageOption0Attribute" value="">Select
																					Attribute</option>
																				<option id="pageOption1Attribute" value="1">
																					Elderly</option>
																				<option id="pageOption2Attribute" value="2">
																					Foreign Student</option>
																				<option id="pageOption3Attribute" value="3">
																					Foreign worker</option>
																				<option id="pageOption4Attribute" value="4">
																					Highschooler</option>
																			</Select> -->
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
																	</div>
																	<div class="row">
																		<label for="validClassification"
																			id="pageLabelValidClassification">Valid
																			Classification</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<select id="validClassification"
																				name="validClassification" class="form-control"
																				role="combobox">
																				<option value="" id="option0ValidClassification">Select
																					Valid Classification</option>
																				<option value="1" id="option1ValidClassification">Valid</option>
																				<option value="2" id="option2ValidClassification">Invalid</option>
																			</select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="unitPriceFrom"
																			id="pageLabelCurrentUnitPrice">Current Unit
																			Price</label>
																		<div class="input-group">
																			<div class="input-group-prepend"></div>
																			<div class="col-sm-12 col-md-12 col-lg-6 SizerRight">
																				<input id="unitPriceFrom" name="unitPriceFrom"
																					placeholder="From" title="Unit Price From"
																					class="form-control" role="textbox">
																				<div id="errorUnitPriceFrom" style="color: red;"></div>
																			</div>
																			<div class="col-sm-12 col-md-12 col-lg-6 SizerLeft">
																				<input id="unitPriceTo" name="unitPriceTo"
																					placeholder="To" title="Unit Price To"
																					class="form-control" role="textbox">
																				<div id="errorUnitPriceTo" style="color: red;"></div>
																			</div>
																		</div>
																		
																		
																	</div>
																	<div class="row">
																		<label for="belongs" id="pageLabelBelongs">Belongs</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="fa fa-bold"></i>
																				</div>
																			</div>
																			<input id="belongs" name="belongs"
																				placeholder="Enter Belongs" class="form-control"
																				role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label for="gender" id="pageLabelGender">Gender</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="fa fa-venus-mars"></i>
																				</div>
																			</div>
																			<select id="gender" name="gender"
																				class="form-control" role="combobox">
																				<option id="selectOptionSelectGender">Select
																					Gender</option>
																				<option value="1" id="selectOptionSelectGenderMale">Male</option>
																				<option value="2"
																					id="selectOptionSelectGenderFemale">Female</option>
																			</select>
																		</div>
																	</div>
																	<div class="row pt-1 ContentRight">
																		<button id="clearAllBtn"
																			class="btn btn-danger SearchButton-2  mr-1"
																			role="button" type="reset">Clear All</button>
																		<button onclick="checkSearch()" id="searchBtn"
																			class="btn btn-info SearchButton-2   ml-0 mr-0"
																			role="button">Search</button>

																	</div>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>


											<div class="col-lg-2 col-md-12 col-sm-12  p-0 m-0">

												<!-- <div class="row" style="background-color: blueviolet; ">  -->
												<!-- <div class="col-md-12 col-lg-12 col-xl-12">  -->
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-1 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 " id="pageCardDivTotalStaff">Total
																Number of Staff</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalNumber"></p>
															</div>
														</div>
													</div>
												</div>

												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 " id="pageCardDivTotalActiveStaff">Total
																Active Staff</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalActive"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalAvailableStaff">Total
																Available Staff</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalAvailable"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-4 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalPendingStaff">Total Pending
																Staff</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalPending"></p>
															</div>
														</div>
													</div>
												</div>
												<!--  <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-5 cardBodyDiv "  >
                                        <div class="card-body pt-1 pb-1 mt-1 mb-1" >
                                            <div class="row pt-1 pb-1 mt-1 mb-1"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalPendingStaff">Total Inactive Staff</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalInactive"></p></div>
                                            </div>
                                        </div>
                                    </div>  -->
											</div>

										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">



										<div class="card m-3">
											<div class="card-body">
												<div class="card-title">
													<i class="i-File-Clipboard-File--Text cursor-pointer"
														role="generic"></i><span id="pageSpanSearchStaffDetails">
														Search Staff Details</span>
												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_staff_table" style="width: 100%">
														<thead>
	
															<tr class="thClass">
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"></th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchStaffTHNo">No</th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchStaffTHChoice">Choice
																</td>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHName">Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHNameKatakana">Name Katakana</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHAttribute">Attribute</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHStaffCode">Staff Code</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHStaffStaff">In Charge Staff</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHCellPhone">Cell Phone</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHEmailAddress">Email Address</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHDispatchClassification">Dispatch
																	Classification</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHPrefecture">Prefecture</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHPostalCode">Postal Code</th>
																<th
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHExperience">Experience</th>
																<th
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHAddress">Address</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHOccupationClassification">Occupation
																	Classification</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDOB">Date of
																	Birth/Age/Gender</th>
																<th style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHRegistrationCategory">Registration
																	Category/Valid Category</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHUnitPrice">Current Unit
																	Price</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHAttributeclassification1">Attribute classification</th>
																<th class="TableButtonTH"></th>
															</tr>
														</thead>
														<tbody id="tbodyId">
														</tbody>

													</table>

												</div>
											</div>
										</div>

										<div class="card m-3">
											<div class="card-body">
												<div id="loadTest"></div>
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
														<button id="batchChangeBtn"
															class="btn btn-info DefaultButton mr-3" role="button"
															onclick="changeChargeStaff();">
															<span id="buttonSpanBatchChange">Change In Charge
																Staff</span>
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
					<div class="loading" id="loaderNotify" style="display: none;">
						<div class="spinner-bubble spinner-bubble-primary m-7"></div>
					</div>
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
	<div class="modal fade " id="confirmDeleteModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Batch
						Deletion</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<h4 id="modalH4AreYouSure">Are You Sure?</h4>
					<h4 id="modalH4ReallyWantToDelete">Do You Really Want to
						Delete this Records ?</h4>
					<h4 id="modalH4CannotBeUndone">This Process Cannot be Undone.</h4>
					<br>

					<table class="display table table-striped table-bordered hover"
						id="confirm_staff_table" style="width: 100%">
						<thead>
							<tr class="thClass">
								<th style="background: rgb(245, 249, 253); color: #647a8e;"
									id="tableModalSearchStaffTHNo">Record No</th>
								<th class="color-1"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalSearchStaffTHName">Name</th>
								<th class="TableTHMinWidth text-center"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalSearchStaffTHNameKatakana">Name Katakana</th>
								<th class="TableTHMinWidth text-center"
									style="background: #a0dade; color: #647a8e;"
									id="tableModalSearchStaffTHStaffCode">Staff Code</th>
							</tr>
						</thead>
						<tbody id="tBodyBatchDelete">

						</tbody>
					</table>
				</div>
				<div class="modal-footer pt-2 pb-2">
					<button class="btn btn-danger SearchButton-2  mr-1"
						id="batchDeleteConfirm" type="button">Confirm</button>
					<button class="btn btn-info SearchButton-2   ml-0 mr-0"
						id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>

	</div>
	
	<!-- in charge staff batch change -->
  <div class="modal fade " id="inChargeStaffBatchChangeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitleInchargeStaff">In Charge Staff Batch Change</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<div class="row">
					  <div class="col-5"><h4 id="titleSelectStaffInCharge">Select In Charge Staff</h4></div>
					  <div class="col-7">
					  <select name="staffStaff" class="form-control input-code" id="selectStaffInChargeStaffBatchChange">
						<option value="" id="selectInchargeofStaffBatchChange">Select InCharge Staff</option>
					  </select>
					  </div>
					</div>
					
					<br>

					<table class="display table table-striped table-bordered hover" id="confirm_InChargeStaffBatchChange_table" style="width: 100%">
						<thead>
							<tr class="thClass">
								<th style="background: rgb(245, 249, 253); color: #647a8e;"
									id="tableModalSelectInChargeTHNo">Record No</th>
								<th class="color-1"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalSelectInChargeTHName">Name</th>
								<th class="TableTHMinWidth text-center"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalSelectInChargeTHNameKata">Name Katakana</th>
								<th class="TableTHMinWidth text-center" style="background: #a0dade; color: #647a8e;" id="tableModalSelectInChargeTHStaffCode">Staff Code</th>
							</tr>
						</thead>
						<tbody id="tBodyInChargeStaffBatchChange">

						</tbody>
					</table>
				</div>
				<div class="modal-footer pt-2 pb-2">
					<button class="btn btn-danger SearchButton-2   mr-1"
						id="inchargebatchChangeClose" type="button" data-dismiss="modal">Close</button>
					<button class="btn btn-info SearchButton-2  ml-0 mr-0 "
						id="inchargebatchChangeConfirm" type="button">Confirm</button>
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
        loadSelectedLanguage(pageLanguage,"staff");
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
	
	<script src="./dist-assets/js/search_Validations.js"></script>


	<script>
         
         const serverHTTP = "<%=serverHTTP%>";
         const  GUID = localStorage.getItem("GUID");
         const  searchUuid = localStorage.getItem("uuid");   
         const role = localStorage.getItem("userRole");
         
         document.getElementById("dateOfBirthFrom").setAttribute("max",getToday());
         saveUuid = localStorage.getItem('saveUuid');  
 
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
 						var select  = document.getElementById('selectStaffInChargeStaff');
 						var selectBatchChange  = document.getElementById('selectStaffInChargeStaffBatchChange');

 						if(result.data != null)
 						{
 							for(i=0 ; i<result.data.length; i++)
 							{	
 								select.options[select.options.length] = new Option(result.data[i].name, result.data[i].value);
 								selectBatchChange.options[selectBatchChange.options.length] = new Option(result.data[i].name, result.data[i].value);
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
            
                  drawDtataTable(lan); 

                  $("#dateOfBirthFrom").focusout(function(){
                     this.type='text';
                     document.getElementById("dateOfBirthFrom").placeholder = "From";
                   });

                   $("#dateOfBirthTo").focusout(function(){
                     this.type='text';
                     document.getElementById("dateOfBirthTo").placeholder = "To";
                   });
                   
                   
              	   $.ajax({
                       beforeSend: function(request) {
                      	document.getElementById("loaderNotify").style.display = "";
                        request.setRequestHeader("GUID", GUID);
                       },
                       url: serverHTTP +'users/GetUserAccount',
                       method: 'GET',
                       contentType: 'application/json',
                     //  data: templateNameReqNode,
                       dataType: 'json',
                        success: function(result, status, request){
                        if(result.status==200)
                       	 {
                        	$("#pTotalNumber").html(result.data.totalNumberOfStaff);
                        	$("#pTotalActive").html(result.data.activeStaff);
                        	$("#pTotalAvailable").html(result.data.availableStaff);
                        	$("#pTotalPending").html(result.data.pendingStaff);
                        	$("#pTotalInactive").html(result.data.inActiveStaff);
                       	 }
                        else
                        {
                       		console.log("Sorry card Data Loding Error");
                       	 }
                        },
                        complete:function(data){
                     	   document.getElementById("loaderNotify").style.display = "none";
                     	   },
                        error: function(error) {
                        console.log(JSON.stringify(error));
                     }
                   });
                   
              	 $("#clearAllBtn").click(function( event ) {
              		$("#errorGivenName").html("");
              		$("#errorStaffCode").html("");
              		$("#errorPrefecture").html("");
              		$("#errorMobile").html("");
              		$("#errorMail").html("");
              		$("#errorDob").html("");
              		$("#errorUnitPrice").html("");
              		$("#errorUnitPriceFrom").html("");

              		$("input").removeClass("errorVal");
              		
              	 });

       
                   
                   $("#batchDeleteConfirm").click(function( event ) { 
                	   var batchdeleteUuidArray = document.getElementsByName("batchdeleteUuid[]");
                	   $("#batchDeleteConfirm").prop("disabled",true);
                	   var dataNode = {};
                	   var dataArray = [];
                	   for(var i = 0; i < batchdeleteUuidArray.length ; i++)
                   		{ 
                		   var dependentID ={"uuid":batchdeleteUuidArray[i].value} ;
                		   dataArray.push(dependentID);    
                   		}
                	   
                	   dataNode['userBasicInfoList'] = dataArray;
                	   passData = JSON.stringify(dataNode);
                	   
                  	   $.ajax({
                           beforeSend: function(request) {
                          	 document.getElementById("loaderNotify").style.display = "";
                            request.setRequestHeader("GUID", GUID);
                           },
                           url: serverHTTP +'users/BulkDeleteStaffInfo',
                           method: 'POST',
                           contentType: 'application/json',
                           data: passData,
                           dataType: 'json',
                            success: function(result, status, request){
                            if(result.status==200)
                           	 {
                                showMessage('success',"E1084");
                            	setTimeout(function(){
                            		window.location.href = "staff-management.jsp"; 
                            		}, 3600);
                           	 }
                            else
                            {
                            	showMessage('error',"E1085");
                            	$("#batchDeleteConfirm").prop("disabled",false);
                           		// showMessage("Sorry Data Loding Error");
                           	 }
                            },
                            complete:function(data){
                         	   document.getElementById("loaderNotify").style.display = "none";
                         	   },
                            error: function(error) {
                            console.log(JSON.stringify(error));
                            $("#batchDeleteConfirm").prop("disabled",false);
                         }
                       });
                   });
                   
                   
                   
                   $("#inchargebatchChangeConfirm").click(function( event ) { 
                	   let batchChangeUuidArray = document.getElementsByName("batchChangeUuid[]");
                	   let staffInChargeID = document.getElementById("selectStaffInChargeStaffBatchChange").value;
                	   //$("#inchargebatchChangeConfirm").prop("disabled",true);
                	  let dataNode = {};
                	  let dataArray = [];
                	   for(var i = 0; i < batchChangeUuidArray.length ; i++)
                   		{ 
                		   var dependentID ={"uuid":batchChangeUuidArray[i].value} ;
                		   dataArray.push(dependentID);    
                   		}

                	   dataNode['inchargeStaff'] = staffInChargeID;
                	   dataNode['basicInfoDtoList'] = dataArray;
                	   passData = JSON.stringify(dataNode);
                	   
                  	   $.ajax({
                           beforeSend: function(request) {
                          	document.getElementById("loaderNotify").style.display = "";
                            request.setRequestHeader("GUID", GUID);
                           },
                           url: serverHTTP +'users/bulkChangeIncharge',
                           method: 'POST',
                           contentType: 'application/json',
                           data: passData,
                           dataType: 'json',
                            success: function(result, status, request){
                            if(result.status==200)
                           	 {
                                showMessage('success',"N1266");
                            	setTimeout(function(){
                            		window.location.href = "staff-management.jsp"; 
                            		}, 3600);
                           	 }
                            else
                            {
                            	showMessage('error',"N1265");
                            	//$("#inchargebatchChangeConfirm").prop("disabled",false);
                           		// showMessage("Sorry Data Loding Error");
                           	 }
                            },
                            complete:function(data){
                         	   document.getElementById("loaderNotify").style.display = "none";
                         	   },
                            error: function(error) {
                            console.log(JSON.stringify(error));
                            //$("#inchargebatchChangeConfirm").prop("disabled",false);
                         }
                       });
                   });
                   
           });
         
         /// Search for Staff//
             function runStaffSearch() {
                	   //event.preventDefault();
                	   
                	   var dispatchClassification = document.getElementById("dispatchClassification").value;         	  
                	   var occupationClassification = document.getElementById("occupationClassification").value;
   
                	   
                	   var templateNameReqNode = {};
                       templateNameReqNode['name'] = document.getElementById("givenNames").value.trim()!="" ? document.getElementById("givenNames").value.trim() : null ; 
                       templateNameReqNode['nameKatakana'] = document.getElementById("nameKatakana").value.trim()!="" ? document.getElementById("nameKatakana").value.trim() : null ;
                       templateNameReqNode['mobile'] = document.getElementById("mobilePhone").value.trim()!="" ? document.getElementById("mobilePhone").value.trim() : null ;
                       templateNameReqNode['email'] = document.getElementById("mailAddress").value.trim()!="" ? document.getElementById("mailAddress").value.trim() : null ;
                       templateNameReqNode['staffCode'] = document.getElementById("staffCode").value.trim()!="" ? document.getElementById("staffCode").value.trim() : null ;null 
                       templateNameReqNode['addressLine'] = document.getElementById("streetAddress").value.trim()!="" ? document.getElementById("streetAddress").value.trim() : null ; 
                       templateNameReqNode['dobTo'] = document.getElementById("dateOfBirthTo").value.trim()!="" ? document.getElementById("dateOfBirthTo").value.trim() : null ; 
                       templateNameReqNode['dobFrom'] = document.getElementById("dateOfBirthFrom").value.trim()!="" ? document.getElementById("dateOfBirthFrom").value.trim() : null ;    

                       templateNameReqNode['prefecture'] = document.getElementById("prefectures").value!="" ? parseInt(document.getElementById("prefectures").value) : null ; 
             	       templateNameReqNode['staffInCharge'] = document.getElementById("selectStaffInChargeStaff").value.trim()!="" ? document.getElementById("selectStaffInChargeStaff").value.trim() : null ;
                       templateNameReqNode['experienceType'] = document.getElementById("experience").value.trim()!="" ? document.getElementById("experience").value.trim() : null ; 
                       templateNameReqNode['registrationDivision'] =  document.getElementById("registrationDevision").value.trim()!="" ? parseInt(document.getElementById("registrationDevision").value) : null ; 
                       templateNameReqNode['attribute'] = document.getElementById("attributeW").value!="" ? parseInt(document.getElementById("attributeW").value) : null ; 
                       templateNameReqNode['validClassification'] = document.getElementById("validClassification").value!="" ? parseInt(document.getElementById("validClassification").value) : null ; 
                       templateNameReqNode['unitPriceFrom'] = document.getElementById("unitPriceFrom").value.trim()!="" ? parseInt(document.getElementById("unitPriceFrom").value.trim()) : null ;
                       templateNameReqNode['unitPriceTo'] = document.getElementById("unitPriceTo").value.trim()!="" ? parseInt(document.getElementById("unitPriceTo").value.trim()): null ;
                       templateNameReqNode['belong'] = document.getElementById("belongs").value.trim()!="" ? document.getElementById("belongs").value.trim() : null ; 
                       templateNameReqNode['gender'] = document.getElementById("gender").value != "" ? parseInt(document.getElementById("gender").value) : null ; 
                         
                       templateNameReqNode['dispatchClassification1'] = dispatchClassification == 1? 1:null;
                       templateNameReqNode['dispatchClassification2'] = dispatchClassification == 2? 1:null;
                       templateNameReqNode['dispatchClassification3'] = dispatchClassification == 3? 1:null;
                       templateNameReqNode['dispatchClassification4'] = dispatchClassification == 4? 1:null;
                       templateNameReqNode['dispatchClassification5'] = dispatchClassification == 5? 1:null;
                       
                       templateNameReqNode['occupationClassification1'] = occupationClassification == 1? 1:null;
                       templateNameReqNode['occupationClassification2'] = occupationClassification == 2? 1:null;
                       templateNameReqNode['occupationClassification3'] = occupationClassification == 3? 1:null;
                       templateNameReqNode['occupationClassification4'] = occupationClassification == 4? 1:null;
                       templateNameReqNode['occupationClassification5'] = occupationClassification == 5? 1:null;
                       templateNameReqNode['occupationClassification6'] = occupationClassification == 6? 1:null;
                       templateNameReqNode['occupationClassification7'] = occupationClassification == 7? 1:null;
                       templateNameReqNode['occupationClassification8'] = occupationClassification == 8? 1:null;
                       
                	   $.ajax({
                           beforeSend: function(request) {
                          	 document.getElementById("loaderNotify").style.display = "";
                            request.setRequestHeader("GUID", GUID);
                           },
                           url: serverHTTP +'users/GetUserFromSearch',
                           method: 'POST',
                           contentType: 'application/json',
                           data: JSON.stringify(templateNameReqNode),
                           dataType: 'json',
                            success: function(result, status, request){
                            if(result.status==200)
                           	 {
                            	showSearchResult(result,request);
                           	 }
                            else
                            {
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
        
         $("#btnOutputStaffListCSV").click(function( event ) { 
         	   $.ajax({
                   beforeSend: function(request) {
                	 document.getElementById("loaderNotify").style.display = "";
                    request.setRequestHeader("GUID", GUID);
                   },
                   url: serverHTTP +'users/StaffCSVOutput',
                   method: 'GET',
                   contentType: 'application/json',
                   //data: passData,
                   dataType: 'json',
                    success: function(result, status, request){
                    if(result.status==200)
                   	 {
                  	  window.location = result.data.filePath;
                   	 }
                    else
                    {
                    	//showMessage('error',"E1024");
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
          

           var table ;
           var dataList;
           
        function drawDtataTable(language){
            if(language =="Japanese" )
            {
                search = "探す";
                info= "ページを表示しています _PAGE_ の _PAGES_";
                lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
                zeroRecords = "見つからない - すいません";
                infoEmpty = "記録はありません";
                infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
                previous ="前";
                next ="次";
                first  = "最初のページ"; 
                last = "最終ページ";

            }else{
                search = "Search";
                info= "Showing page _PAGE_ of _PAGES_";
                lengthMenu = "Display _MENU_ records per page";
                zeroRecords = "Nothing found";
                infoEmpty = "No records available";
                infoFiltered = "(filtered from _MAX_ total records)";
                previous ="Previous";
                next ="Next";
                first  = "First page"; 
                last = "Last page";
            }

            table= $('#search_staff_table').DataTable({
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
                    },
                    responsive: true,
                    responsive: {
                        details: {
                            type: 'column',
                            target: 'tr'
                        }
                    },
                    columnDefs: [ 
                    	{
                        className: 'control',
                        orderable: false,
                        targets:   0
                       }  ,  
                       { orderable: false, targets: 2 },
                       { orderable: false, targets: 20 },
                     { responsivePriority: 1, targets: 20 },
                     { responsivePriority: 2, targets: 3 },
                  ],
                    order: [ 1, 'asc' ]   
                });
        }
        
        function setLanguageWithTables(selectedLanguage){
        	pageLanguage = selectedLanguage
        	loadSelectedLanguage(selectedLanguage,"staff");
            setLanguage(selectedLanguage);
            table.destroy();
            drawDtataTable(selectedLanguage);
        }

        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;
        
        function myFunction() {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }
 
        function showSearchResult(result,request)
        {
        	 table.destroy();
        	 $("#tbodyId").empty();
        	 for(i=0;i<result.data.length;i++){

        		 dispatchClassification1Value = result.data[i].dispatchClassification1 == 1 ?  dispatchClassificationArray[1] +" , ": "" ; 
        		 dispatchClassification2Value = result.data[i].dispatchClassification2 == 1 ?  dispatchClassificationArray[2] +" , ": "" ; 
        		 dispatchClassification3Value = result.data[i].dispatchClassification3 == 1 ?  dispatchClassificationArray[3] +" , ": "" ; 
        		 dispatchClassification4Value = result.data[i].dispatchClassification4 == 1 ?  dispatchClassificationArray[4] +" , ": "" ; 
        		 dispatchClassification5Value = result.data[i].dispatchClassification5 == 1 ?  dispatchClassificationArray[5] : "" ;
        		 
        		 occupationClassification1Value = result.data[i].occupationClassification1 == 1 ?  occupationClassificationArray[1] +" , ": "" ; 
        		 occupationClassification2Value = result.data[i].occupationClassification2 == 1 ?  occupationClassificationArray[2] +" , ": "" ; 
        		 occupationClassification3Value = result.data[i].occupationClassification3 == 1 ?  occupationClassificationArray[3] +" , ": "" ; 
        		 occupationClassification4Value = result.data[i].occupationClassification4 == 1 ?  occupationClassificationArray[4] +" , ": "" ; 
        		 occupationClassification5Value = result.data[i].occupationClassification5 == 1 ?  occupationClassificationArray[5] +" , ": "" ; 
        		 occupationClassification6Value = result.data[i].occupationClassification6 == 1 ?  occupationClassificationArray[6] +" , ": "" ; 
        		 occupationClassification7Value = result.data[i].occupationClassification7 == 1 ?  occupationClassificationArray[7] : "" ; 
        		 
        	     //occupationClassification1Value = result.data[i].occupationClassification1 == 1 ? " / Talent Indtroduction/Recruiting/Placement" : "" ; 
        		searchName = result.data[i].name != null ? result.data[i].name : "";
        		searchNameKatakna = result.data[i].nameKatakna != null ? result.data[i].nameKatakna : "";
        		searchAttribute = attributeArray[result.data[i].attribute] != undefined ? attributeArray[result.data[i].attribute] :"";
        		searchStaffCode = result.data[i].staffCode != null ?result.data[i].staffCode :"";
        		searchInChargeStaff = result.data[i].inChargeStaff !=null ? result.data[i].inChargeStaff :"";
        		searchMobile = result.data[i].telMobile !=null ? result.data[i].telMobile : ""; 
        		searchEmail = result.data[i].email !=null ? result.data[i].email : ""; 
        		searchPrefecture = prefectureArray[result.data[i].prefecture] != undefined ? prefectureArray[result.data[i].prefecture] :"";
        		searchPostalCode = result.data[i].postalCode !=null ? result.data[i].postalCode : "";
        		searchExperienceType1 = result.data[i].experienceType1  !=null ?   result.data[i].experienceType1  : "";
        		searchAddressLine =  result.data[i].addressLine1  !=null ? result.data[i].addressLine1  : "";
        		searchDob = result.data[i].dob !=null ? result.data[i].dob : "";
        		searchAge = result.data[i].age  !=null ? result.data[i].age  : "";
        		searchGender = genderArray[result.data[i].gender] !=undefined ? genderArray[result.data[i].gender] : "";
        		searchValidClassification = validClassificationArray[result.data[i].validClassification] !=undefined ?  validClassificationArray[result.data[i].validClassification] : "";
        		searchDailySalary = result.data[i].dailySalaryUnitPrice   !=null ?  result.data[i].dailySalaryUnitPrice : "";
        		let AttributeclassificationVal =  attributeClassificationArray[result.data[i].attribute];
        		ageText = ageTextArray[1];
        		
        		let newRow=' <tr>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;"></td>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;">'+(i+1)+'</td>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;">'+
                              '<label class="container">'+
                              '<input type="checkbox" id="tableCheck" name="tableCheck[]" class="tableCheckClass" value="'+result.data[i].uuid+'">'+
                             ' <span class="checkmark"></span>'+
                             '</label>'+
                    '</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchName+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchNameKatakna+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchAttribute+'</td>'+
                    '<td >'+searchStaffCode+'</td>'+
                    '<td >'+searchInChargeStaff+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchMobile+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchEmail+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+dispatchClassification1Value+dispatchClassification2Value+dispatchClassification3Value+dispatchClassification4Value+dispatchClassification5Value+'</td>'+//dispatch5
                    '<td>'+searchPrefecture+'</td>'+
                    '<td>'+searchPostalCode+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchExperienceType1+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchAddressLine+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+occupationClassification1Value+occupationClassification2Value+occupationClassification3Value+occupationClassification4Value+occupationClassification5Value+occupationClassification6Value+occupationClassification7Value+'</td>'+
                    '<td>'+searchDob+' / '+searchAge+' <span id="pageSpanAge" name="pageSpanAge">' +ageText + ' </span> '+searchGender+'</td>'+
                    '<td>'+searchValidClassification+'</td>'+
                    '<td>¥'+searchDailySalary+'</td>'+
                    '<td>'+AttributeclassificationVal+'</td>'+
                    '<td style="background: rgb(255 255 255);color: #647a8e;">'+
                        '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''+result.data[i].uuid+'\')" role="button" id="tableButtonDetails_3___" name="viewDetails"><i class="fa fa-info-circle"></i></button>'+
                        '<button class="btn ScheduleButton ml-1" onclick="viewShiftSchedule(\''+result.data[i].id+'\')" role="button" id="tableButtonScheduleShift_3___" name="shiftSchedule"><i class="fa fa-calendar"></i></button>'+
                        '<button class="btn ScheduleButton ml-1" onclick="viewAttendence(\''+result.data[i].id+'\')" role="button" id="tableButtonAssignmentList_3___" name="assignmentList"><i class="fa fa-list"></i></button>'+
                    '</td>'+
                '</tr>' ;           
               $("#search_staff_table tbody").append(newRow);
        	 }
        	 drawDtataTable(getSiteLanguage());
        	 loadSelectedLanguage(getSiteLanguage(),"staff");
        }

        function viewDetails(viewUuid)
        {
        	sessionStorage.setItem("viewUuid", viewUuid);	
        	window.location.href = "staff-details.jsp";
        }
        
        function viewShiftSchedule(staffUserID)
        {
        	let url = "staff-shift-schedule-management.jsp";
			let form = $('<form action="' + url + '" method="post">' +
				         // '<input type="hidden" name="staffUuid" value="'+viewUuid+'" />' +
				          '<input type="hidden" name="staffStaffId" value="'+staffUserID+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
        }
        
        function viewAttendence(staffStaffId)
        {
        	let url = "attendances-management.jsp";
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="staffStaffId" value="'+staffStaffId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
        }
        
        function checkAll()
        {
        	
          checkboxes = document.getElementsByName('tableCheck[]');
          for(var i=0, n=checkboxes.length;i<n;i++)
          {
        	  $(checkboxes[i]).prop('checked', true);
          }
        }
        
        
        function unCheckAll()
        {
        	checkboxes = document.getElementsByName('tableCheck[]');
            for(var i=0, n=checkboxes.length;i<n;i++)
            {
          	  $(checkboxes[i]).prop('checked', false);
            }
        }
        
        
        function  batchDelete()
        {
        	 $("#tBodyBatchDelete").empty();
        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck[]"]:checked');
        	 if (tableCheckNode.length == 0) 
        	 {
        		 showSystemMessage('info',"E1086"); 
        	 }else
             {
        		// $("#confirm_staff_table tbody").empty();
        		 for(i=0;i<tableCheckNode.length;i++){
        		  parentRow =  $(tableCheckNode[i]).closest('tr'); 
        		  
        		  // $("#loadTest").append(parentRow);
        		  tNo = parentRow.find("td:eq(1)").text();
        		  tName = parentRow.find("td:eq(3)").text();
        		  tNameKatakana = parentRow.find("td:eq(4)").text();
        		  tStaffCode = parentRow.find("td:eq(6)").text();
        		  tUuid = parentRow.find("input:checkbox").val();
        		 
        	  let newRow=' <tr>'+
        	          '<input type="hidden" name="batchdeleteUuid[]" value="'+tUuid+'">'+
        	          '<td>'+tNo+'</td>'+
        	          '<td>'+tName+'</td>'+
        	          '<td>'+tNameKatakana+'</td>'+
        	          '<td>'+tStaffCode+'</td>';
                  
        		  $("#confirm_staff_table tbody").append(newRow);
             }
        		 $('#confirmDeleteModal').modal('show');
        		 
             }
        }
        
        
        function  changeChargeStaff()
        {
        	$("#tBodyInChargeStaffBatchChange").empty();
        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck[]"]:checked');
       	    if (tableCheckNode.length == 0) 
       	    {
       	         showSystemMessage('info',"E1086"); 
       	    }else
       	    {
        		
       		 for(i=0;i<tableCheckNode.length;i++){
       		  parentRow =  $(tableCheckNode[i]).closest('tr'); 
       		  
       		  // $("#loadTest").append(parentRow);
       		  tNo = parentRow.find("td:eq(1)").text();
       		  tName = parentRow.find("td:eq(3)").text();
       		  tNameKatakana = parentRow.find("td:eq(4)").text();
       		  tStaffCode = parentRow.find("td:eq(6)").text();
       		  tUuid = parentRow.find("input:checkbox").val();
       		 
       	       let newRow=' <tr>'+
       	          '<input type="hidden" name="batchChangeUuid[]" value="'+tUuid+'">'+
       	          '<td>'+tNo+'</td>'+
       	          '<td>'+tName+'</td>'+
       	          '<td>'+tNameKatakana+'</td>'+
       	          '<td>'+tStaffCode+'</td>';
                 
       		  $("#confirm_InChargeStaffBatchChange_table tbody").append(newRow);
            }
       		 $('#inChargeStaffBatchChangeModal').modal('show');
       		 
            }
        }
        
        
        </script>
</body>

</html>