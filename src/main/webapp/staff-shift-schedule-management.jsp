<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitle">Staff Shift Schedule Management</title>

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

<link href="./dist-assets/css/plugins/fontawesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />
 
 <link rel="stylesheet" href="./dist-assets/css/plugins/datatables.min.css" />
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.2.0/css/fixedHeader.dataTables.css"/>
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedcolumns/4.0.1/css/fixedColumns.dataTables.css"/> 

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
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Output Shift Schedule List CSV</button> 
                       </div>
                    
                </div> -->
				<!-- <div class="separator-breadcrumb border-top"></div>  -->
				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-md-6 ">
										<h1>
											<i class="fa fa-list-alt text-30" role="generic"></i> 
											<span id="pageSpanHeadingStaffShift">Staff Shift Schedule List</span>
										</h1>
										<br />
										<p id="pageSpanHeadingHelpStaffShift">You can check the
											staff shift schedule in a list. You can send a remainder
											email to staff who have not submitted shift schedule</p>

									</div>
									<div class="col-md-6  pt-0 pr-4 TopButDiv">
										<a href="staff-registeration.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonOutputShiftSchedule">Output
													Shift Schedule List CSV</span>
											</button> </a>

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
														<input type="hidden" id="staffYear">
														<input type="hidden" id="staffMonth">
														<input type="hidden" id="staffStaffID">
															<div class="row">
																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">

																		<label for="targetYear" id="pageLabelTargetYear">Target Year</label><span class="RequiredStar"> *</span>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-calendar"></i>
																				</div>
																			</div>
																			<input id="targetYear" name="targetYear"
																				placeholder="Enter Target Year" class="form-control"
																				role="textbox">

																		</div>
																		<div id="errorTargetYear" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<label for="targetname" id="pageLabelName">Name</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user"></i>
																				</div>
																			</div>
																			<input id="shiftScheduleName" name="name"
																				placeholder="Enter Name" class="form-control"
																				role="dropdown">
																		</div>
																		<div id="errorShiftScheduleName" style="color: red;"></div>

																	</div>
																	<div class="row">
																		<label for="dispathClassification"
																			id="pageLabelDispathClassification">Dispatch
																			Classification</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<Select id="dispathClassification"
																				name="shiftSubmissionCategory" class="form-control"
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
																				<!-- <option value="5" id="pageSpanPartTime">Part
																					time</option> -->

																			</Select>
																		</div>
																	</div>
																	<div class="row">
																		<label  id="pageTargetDate">Target
																			Date</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-calendar"></i>
																				</div>
																			</div>
																			<Select id="targetDate" 
																				class="form-control" role="combobox">
																				<option id="OptiontargetDate" value="">Select
																					Target Date</option>
																				<option id="OptiontargetDate1" value="1">1
																					st</option>
																				<option id="OptiontargetDate2" value="2">2
																					nd</option>
																				<option id="OptiontargetDate3" value="3">3
																					rd</option>
																				<option id="OptiontargetDate4" value="4">4
																					th</option>
																				<option id="OptiontargetDate5" value="5">5
																					th</option>
																				<option id="OptiontargetDate6" value="6">6
																					th</option>
																				<option id="OptiontargetDate7" value="7">7
																					th</option>
																				<option id="OptiontargetDate8" value="8">8
																					th</option>
																				<option id="OptiontargetDate9" value="9">9
																					th</option>
																				<option id="OptiontargetDate10" value="10">10
																					th</option>
																				<option id="OptiontargetDate11" value="11">11
																					th</option>
																				<option id="OptiontargetDate12" value="12">12
																					th</option>
																				<option id="OptiontargetDate13" value="13">13
																					th</option>
																				<option id="OptiontargetDate14" value="14">14
																					th</option>
																				<option id="OptiontargetDate15" value="15">15
																					th</option>
																				<option id="OptiontargetDate16" value="16">16
																					th</option>
																				<option id="OptiontargetDate17" value="17">17
																					th</option>
																				<option id="OptiontargetDate18" value="18">18
																					th</option>
																				<option id="OptiontargetDate19" value="19">19
																					th</option>
																				<option id="OptiontargetDate20" value="20">20
																					th</option>
																				<option id="OptiontargetDate21" value="21">21
																					th</option>
																				<option id="OptiontargetDate22" value="22">22
																					th</option>
																				<option id="OptiontargetDate23" value="23">23
																					th</option>
																				<option id="OptiontargetDate24" value="24">24
																					th</option>
																				<option id="OptiontargetDate25" value="25">25
																					th</option>
																				<option id="OptiontargetDate26" value="26">26
																					th</option>
																				<option id="OptiontargetDate27" value="27">27
																					th</option>
																				<option id="OptiontargetDate28" value="28">28
																					th</option>
																				<option id="OptiontargetDate29" value="29">29
																					th</option>
																				<option id="OptiontargetDate30" value="30">30
																					th</option>
																				<option id="OptiontargetDate31" value="31">31
																					th</option>

																			</Select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="address" id="pageLabelAddress">
																			Address</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg ">
																					<i class="far fa-building"></i>
																				</div>
																			</div>
																			<input id="address" name="address"
																				placeholder="Enter Address" class="form-control"
																				role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label  id="pageLabelExperience">Experience</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg ">
																					<i class="far fa-clock"></i>
																				</div>
																			</div>
																			<input id="experience"
																				placeholder="Enter Experience" title="Experience"
																				class="form-control" role="textbox">

																		</div>

																	</div>



																</div>

																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="targetMonth" id="pageLabelTargetMonth">Target Month</label><span class="RequiredStar"> *</span>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="fa fa-calendar"></i>
																				</div>
																			</div>
																			<Select id="targetMonth" name="shiftSubmissionCategory" class="form-control">
																				<option id="pageOptionSelectTargetMonth" value="">Select Target Month</option>
																				<option id="pageOptionJanuary" value="1">January</option>
																				<option id="pageOptionFebruary" value="2">February</option>
																				<option id="pageOptionMarch" value="3">March</option>
																				<option id="pageOptionApril" value="4">April</option>
																				<option id="pageOptionMay" value="5">May</option>
																				<option id="pageOptionJune" value="6">June</option>
																				<option id="pageOptionJuly" value="7">July</option>
																				<option id="pageOptionAugust" value="8">August</option>
																				<option id="pageOptionSeptember" value="9">September</option>
																				<option id="pageOptionOctober" value="10">October</option>
																				<option id="pageOptionNovember" value="11">November</option>
																				<option id="pageOptionDecember" value="12">December</option>
																			</Select>
																		</div>
																		<div id="errorTargetMonth" style="color: red;"></div>


																	</div>
																	<div class="row">
																		<label for="staffInChargeStaff" id="pageLabelStaff">
																			In charge staff</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user"></i>
																				</div>
																			</div>
																			<select name="staffStaff" class="form-control input-code" id="selectStaffInChargeStaff">
																				<option value="" id="selectInchargeofStaff">Select InCharge Staff</option>
																			</select>
																			
																		</div>
																	</div>
																	<div class="row">
																		<label for="occupationClassification"
																			id="pageLabeloccupationClassification">Occupation
																			Classification</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<Select id="occupationClassification"
																				class="form-control" role="combobox">
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

																			</Select>
																		</div>
																	</div>
																	<div class="row">
																		<label 
																			id="pageLabelAttendanceStatus">Attendance Status</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clock"></i>
																				</div>
																			</div>
																			<Select id="attendanceStatus"
																				name="attendance Status" class="form-control"
																				role="combobox">
																				<option id="OptionattendanceStatusSelectAttendance" value="">Select Attendance Status</option>	
																				<option value="1" style="font-weight: bold;">o</option>
                                                                                <option value="2" style="font-weight: bold;">△</option>
                                                                                <option value="0" style="font-weight: bold;">×</option>
                                                                                <option id="selectWorkAvailabilityUnanswered" value="4"> Unanswered</option>
																				
																			</Select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="dateofBirthFrom"
																			id="pageLabelDateofBirthFrom">Date of Birth
																			From</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-calendar"></i>
																				</div>
																			</div>
																			<input id="dateofBirthFrom" type="date"
																				name="dateofBirthFrom"
																				placeholder="Date of Birth From"
																				class="form-control" role="textbox">
																		</div>
																		<div id="errorDateofBirthFrom" style="color: red;"></div>

																	</div>

																	<div class="row">
																		<label for="attribute" id="pageLabelAttribute">Attribute</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg ">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			
																			<Select id="attributeShed" name="attributeW"
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
																			</Select>

																		</div>

																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="staffCode" id="pageLabelstaffCode">Staff
																			Code </label>
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
																		<label for="attributeW" id="pageLabelShiftSubmissionCategory">Shift
																			Submission Category</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<Select id="shiftSubmissionCategory"
																				name="shiftSubmissionCategory" class="form-control"
																				role="combobox">
																				<option id="pageOptionSelectShiftSubmissionCategory"
																					value="">Select Shift Submission Category</option>
																				<option id="pageOptionShiftnotSubmitted" value="0">Shift not Submitted</option>
																				<option id="pageOptionShiftSubmitted" value="1">Shift Submitted</option>

																			</Select>
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
																		<label for="prefectures" id="pageLabelPrefectures">Prefectures</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-map"></i>
																				</div>
																			</div>
																	            <select  id="prefectures" name="prefectures" class="form-control"  role="combobox">
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
																	</div>
																	<div class="row">
																		<label for="dateofBirth" id="pageLabelDateofBirthTo">Date
																			of Birth To</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-calendar"></i>
																				</div>
																			</div>
																			<input id="dateofBirthTo" name="dateofBirth"
																				type="date" placeholder="Enter Date of Birth"
																				class="form-control" role="textbox">
																		</div>
																		<div id="errorDateofBirthTo" style="color: red;"></div>

																	</div>
																	<div class="row">
																		<label for="gender" id="pageLabelGender">Gender</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="fa fa-venus-mars"></i>
																				</div>
																			</div>
																			<Select id="gender" name="gender"
																				class="form-control" role="combobox">
																				<option id="selectOptionSelectGender">Select
																					Gender</option>
																				<option value="1" id="selectOptionSelectGenderMale">Male</option>
																				<option value="2"
																					id="selectOptionSelectGenderFemale">Female</option>

																			</Select>
																		</div>
																	</div>
																	<div class="row pt-1 ContentRight">
																		<button id="clearAllBtn"
																			class="btn btn-danger SearchButton-2  mr-1"
																			role="button" type="reset">Clear All</button>
																		<button  id="searchBtn" class="btn btn-info SearchButton-2   ml-0 mr-0" role="button">Search</button>

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
															<div class="col-12 p-0 "
																id="pageCardDivTotalNumberofShiftSchedule">Total
																Number of Shift Schedule</div>
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
															<div class="col-12 p-0 "
																id="pageCardDivTotalNumberofStaffShiftSchedule">Total
																Number of Staff Shift Schedule</div>
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
																id="pageCardDivSubmittedShiftSchedule">Submitted
																Shift Schedule</div>
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
																id="pageCardDivPendingShiftSchedule">Pending Shift
																Schedule</div>
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
													<table class="display table table-striped table-bordered hover" id="search_staff_table" style="width: 100%">
														<thead>
															<tr class="thClass">
														
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
																	id="tableSearchStaffTHMobileE-MailAddress">Mobile/E-Mail
																	Address</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHPrefectureAttribute">Prefecture/Attribute</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHStaffCode">Staff Code</th>
																<th class="TableButtonTH"
																	style="background: #a0dade; color: #647a8e;"></th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHPrivateMemo">Private Memo</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHSubmissionDateandTime">Submission
																	Date and Time</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchStaffTHStaffstaff">Staff staff</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate1">1</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate2">2</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate3">3</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate4">4</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate5">5</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate6">6</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate7">7</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate8">8</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate9">9</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate10">10</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate11">11</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate12">12</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate13">13</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate14">14</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate15">15</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate16">16</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate17">17</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate18">18</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate19">19</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate20">20</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate21">21</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate22">22</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate23">23</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate24">24</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate25">25</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate26">26</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate27">27</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate28">28</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate29">29</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate30">30</th>
																<th class="TableTH text-left"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableSearchStaffTHDate31">31</th>

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
													<div class="col-sm-6 col-md-6 col-lg-3 TopButLCDiv">
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

													<div class="col-sm-6 col-md-6 col-lg-4 TopButDiv">
														<button class="btn btn-secondary DefaultButton" onclick="sendNotificationEmail()" id="sendNotification-btn" type="button" role="button">
															<i class="far fa-envelope text-15 mr-2"></i>
															<span id="buttonsendNotificationEmail">Send Notification Email in Bulk</span>
														</button>

													</div>
													<div class="col-sm-6 col-md-6 col-lg-5 TopButDiv">
														<button class="btn btn-secondary DefaultButton" onclick="sendSubmissionRemainderEmail()"
															id="submissionRemainder-btn" type="button" role="button">
															<i class="far fa-envelope text-15 mr-2"></i> <span
																id="buttonSubmissionRemainderEmail">Submission
																Remainder Email Batch Transmission</span>
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
	<div class="modal fade " id="BulkNotificationEmailModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitleSendBulkNotificationEmail">Send Bulk Notification Email</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body text-center">

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
									id="tableModalSearchStaffTHMobileEmail">Mobile/Email</th>
								<th class="TableTHMinWidth text-center"
									style="background: #a0dade; color: #647a8e;"
									id="tableModalSearchStaffTHStaffCode">Staff Code</th>
							</tr>
						</thead>
						<tbody id="tBodySendBulkNotificationEmail">

						</tbody>
					</table>
				</div>
				<div class="modal-footer pt-2 pb-2">
					
					<button class="btn btn-danger SearchButton-2   ml-0 mr-0"
						id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
					<button class="btn btn-info SearchButton-2  mr-1"
						id="ConfirmSendBulkNotificationEmail" type="button">Confirm</button>	
				</div>
			</div>
		</div>
	</div>



  <div class="modal fade " id="SubmissionRemainderEmailBatchModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitleSendBatchSubmissionRemainderEmail">Send Batch Submission Remainder Email</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body text-center">

					<br>

					<table class="display table table-striped table-bordered hover"
						id="confirm_SubmissionRemainder_table" style="width: 100%">
						<thead>
							<tr class="thClass">
								<th style="background: rgb(245, 249, 253); color: #647a8e;"
									id="tableModalSubmissionRemainderTHNo">Record No</th>
								<th class="color-1"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalSubmissionRemainderTHName">Name</th>
								<th class="TableTHMinWidth text-center"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableModalSubmissionRemainderTHMobileEmail">Mobile/Email</th>
								<th class="TableTHMinWidth text-center"
									style="background: #a0dade; color: #647a8e;"
									id="tableModalSubmissionRemainderTHStaffCode">Staff Code</th>
							</tr>
						</thead>
						<tbody id="tBodySendBulkSubmissionRemainderEmail">

						</tbody>
					</table>
				</div>
				<div class="modal-footer pt-2 pb-2">
					
					<button class="btn btn-danger SearchButton-2   ml-0 mr-0"
						id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
					<button class="btn btn-info SearchButton-2  mr-1"
						id="ConfirmSendBulkSubmissionRemainderEmail" type="button">Confirm</button>	
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
        loadSelectedLanguage(pageLanguage,"staffShiftSchedule");
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
	 <script type="text/javascript" src="https://cdn.datatables.net/fixedcolumns/4.0.1/js/dataTables.fixedColumns.js"></script> 
     <script type="text/javascript" src="https://cdn.datatables.net/fixedheader/3.2.0/js/dataTables.fixedHeader.js"></script> 
    
    
	<script src="./dist-assets/js/staff-shift-schedule-management-validate.js"></script>

	<script>
        const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const searchUuid = localStorage.getItem("uuid");
		const role = localStorage.getItem("userRole");
		
		localStorage.removeItem("saveUuid");

		let staffStaffId = "<%= request.getParameter("staffStaffId")%>" ;
		 if(staffStaffId != "" )
	       {
			 
			 const date = new Date();
		     const currentYear  = date.getFullYear();
		     const currentMonth = date.getMonth()+1;
			 document.getElementById("staffYear").value    = currentYear;
			 document.getElementById("staffMonth").value   = currentMonth;
			 document.getElementById("targetYear").value    = currentYear;
			 document.getElementById("targetMonth").value   = currentMonth;
			 document.getElementById("staffStaffID").value = staffStaffId;
			 runSearch();
	       }
		

		$(document).ready(function() {
			
	      drawDtataTable(getSiteLanguage());
	      
       	   $.ajax({
               beforeSend: function(request) {
              	document.getElementById("loaderNotify").style.display = "";
                request.setRequestHeader("GUID", GUID);
               },
               url: serverHTTP +'ShiftSchedule/GetCountShiftSchedule',
               method: 'GET',
               contentType: 'application/json',
               dataType: 'json',
                success: function(result, status, request){
                if(result.status==200)
               	 {
                    $("#pTotalNumber").html(result.data.countTotalShiftSchedule);
                	$("#pTotalActive").html(result.data.countTotalNumberStaffShiftSchedule);
                	$("#pTotalAvailable").html(result.data.countSubmittedShiftSchedule);
                	$("#pTotalPending").html(result.data.countPendingShiftSchedule);
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
       	   
      	 	let dataNode = '{"id" : 0, "authority": '+role+ '}';
       	   
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

 						if(result.data != null)
 						{
 							for(i=0 ; i<result.data.length; i++)
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
		});

		
		var table;
		var dataList;

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
				zeroRecords = "Nothing found";
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
				},
		        
		     /*    scrollX : true,
                scrollCollapse : true,
		        fixedColumns:   {
		            left: 7
		        },
		        fixedHeader: {
		            left: 7
		        }, */
				columnDefs : [ {
					className : 'control',
					orderable : false,
					targets : 0
				} ],
				order : [ 1, 'asc' ]
			});
		}

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "staffShiftSchedule");
			setLanguage(selectedLanguage);
			table.destroy();
			drawDtataTable(selectedLanguage);
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
		
		
		function runSearch(){   
		  
			
     	   var dispatchClassification = document.getElementById("dispathClassification").value;         	  
     	   var occupationClassification = document.getElementById("occupationClassification").value;

     	    var templateNameReqNode = {};
     	    targetYear  = document.getElementById("targetYear").value.trim()!="" ? document.getElementById("targetYear").value.trim() : null ; 
    	    targetMonth = document.getElementById("targetMonth").value.trim()!="" ? document.getElementById("targetMonth").value.trim() : null ;
    	    staffIDValue = null;
    	    if(staffStaffId != "" )
	        {
    	    	staffStaffId = "";
     	    	targetYear   = document.getElementById("staffYear").value.trim()!="" ? document.getElementById("staffYear").value.trim() : null ; 
     	    	targetMonth  = document.getElementById("staffMonth").value.trim()!="" ? document.getElementById("staffMonth").value.trim() : null ; 
     	    	staffIDValue = document.getElementById("staffStaffID").value.trim()!="" ? document.getElementById("staffStaffID").value.trim() : null ; 
	        }
     	    templateNameReqNode['targetYear'] = targetYear ;
            templateNameReqNode['targetMonth'] = targetMonth; 
            templateNameReqNode['staffId'] = staffIDValue; 
            templateNameReqNode['staffCode'] = document.getElementById("staffCode").value.trim()!="" ? document.getElementById("staffCode").value.trim() : null ;
            templateNameReqNode['name'] = document.getElementById("shiftScheduleName").value.trim()!="" ? document.getElementById("shiftScheduleName").value.trim() : null ;
            templateNameReqNode['inChargesStaff'] = document.getElementById("selectStaffInChargeStaff").value.trim()!="" ? document.getElementById("selectStaffInChargeStaff").value.trim() : null ; // CHANGE IDDDDDDD
            templateNameReqNode['submissionStatus'] = document.getElementById("shiftSubmissionCategory").value.trim()!="" ? document.getElementById("shiftSubmissionCategory").value.trim() : null ; 
            
            templateNameReqNode['belong'] = document.getElementById("belongs").value.trim()!="" ? document.getElementById("belongs").value.trim() : null ; 
            templateNameReqNode['date'] = document.getElementById("targetDate").value.trim()!="" ? document.getElementById("targetDate").value.trim() : null ;    
            templateNameReqNode['availability'] = document.getElementById("attendanceStatus").value!="" ? parseInt(document.getElementById("attendanceStatus").value) : null ; 
  	        templateNameReqNode['prefecture'] = document.getElementById("prefectures").value.trim()!="" ? document.getElementById("prefectures").value.trim() : 0 ;
            templateNameReqNode['addressLine'] = document.getElementById("address").value.trim()!="" ? document.getElementById("address").value.trim() : null ; 
            templateNameReqNode['dobTo'] =  document.getElementById("dateofBirthTo").value.trim()!="" ? document.getElementById("dateofBirthTo").value : null ; 
            templateNameReqNode['dobFrom'] = document.getElementById("dateofBirthFrom").value!="" ? document.getElementById("dateofBirthFrom").value : null ; 
            templateNameReqNode['experienceType'] = document.getElementById("experience").value!="" ? document.getElementById("experience").value.trim() : null ; 
            templateNameReqNode['gender'] = document.getElementById("gender").value.trim()!="" ? parseInt(document.getElementById("gender").value) : 0 ;
            templateNameReqNode['attribute'] = document.getElementById("attributeShed").value !="" ? parseInt(document.getElementById("attributeShed").value): null ;
         
            /*  templateNameReqNode['belong'] = document.getElementById("belongs").value.trim()!="" ? document.getElementById("belongs").value.trim() : null ; 
            templateNameReqNode['gender'] = document.getElementById("gender").value != "" ? parseInt(document.getElementById("gender").value) : null ; 
               */
            templateNameReqNode['dispatchClassification1'] = dispatchClassification == 1? 1:0;
            templateNameReqNode['dispatchClassification2'] = dispatchClassification == 2? 1:0;
            templateNameReqNode['dispatchClassification3'] = dispatchClassification == 3? 1:0;
            templateNameReqNode['dispatchClassification4'] = dispatchClassification == 4? 1:0;
            templateNameReqNode['dispatchClassification5'] = dispatchClassification == 5? 1:0;
            
            templateNameReqNode['occupationClassification1'] = occupationClassification == 1? 1:0;
            templateNameReqNode['occupationClassification2'] = occupationClassification == 2? 1:0;
            templateNameReqNode['occupationClassification3'] = occupationClassification == 3? 1:0;
            templateNameReqNode['occupationClassification4'] = occupationClassification == 4? 1:0;
            templateNameReqNode['occupationClassification5'] = occupationClassification == 5? 1:0;
            templateNameReqNode['occupationClassification6'] = occupationClassification == 6? 1:0;
            templateNameReqNode['occupationClassification7'] = occupationClassification == 7? 1:0;
            templateNameReqNode['occupationClassification8'] = occupationClassification == 8? 1:0;
            templateNameReqNode['occupationClassification9'] = occupationClassification == 9? 1:0;
            
     	   $.ajax({
                beforeSend: function(request) {
               	 document.getElementById("loaderNotify").style.display = "";
                 request.setRequestHeader("GUID", GUID);
                },
                url: serverHTTP +'ShiftSchedule/SearchShiftSchedule',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(templateNameReqNode),
                dataType: 'json',
                 success: function(result, status, request){
                 if(result.status==200)
                	 {
                	 console.log(result);
                 	 showSearchResult(result,request,targetYear,targetMonth);
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
		
        function showSearchResult(result,request,targetYear,targetMonth)
        {
        	 const AvailabilityArray = {"":"", 1 : "○", 2 : "△", 0 : "×", 4 : ""}
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
        		searchMobile = result.data[i].mobile !=null ? result.data[i].mobile : "";
        		searchEmail = result.data[i].email !=null ? result.data[i].email : ""; 
        		searchMobileAndsearchEmail = searchMobile != "" && searchEmail != "" ? searchMobile + " / " + searchEmail : searchMobile +" "+ searchEmail
        		searchPrefecture = prefectureArray[result.data[i].prefecture] != undefined ? prefectureArray[result.data[i].prefecture] :"";
        		searchAttribute = attributeArray[result.data[i].attribute] != undefined ? attributeArray[result.data[i].attribute] :"";
        		searchPrefectureAndsearchAttribute = searchPrefecture != "" && searchAttribute != "" ? searchPrefecture + " / " + searchAttribute : searchPrefecture +" "+ searchAttribute
        		searchStaffCode = result.data[i].staffCode != null ?result.data[i].staffCode :"";
        		searchPrivateMemo = result.data[i].privateMemo !=null ? result.data[i].privateMemo : "";		
        		searchSubmissionDate = result.data[i].submissionDate !=null ? result.data[i].submissionDate : "";
        		searchInChargeStaff = result.data[i].inChargeStaff !=null ? result.data[i].inChargeStaff :"";
        		
        		
        		//searchNameKatakna = result.data[i].nameKatakna != null ? result.data[i].nameKatakna : "";
        		
        		searchPostalCode = result.data[i].postalCode !=null ? result.data[i].postalCode : "";
        		searchExperienceType1 = result.data[i].experienceType1  !=null ?   result.data[i].experienceType1  : "";
        		searchAddressLine =  result.data[i].addressLine1  !=null ? result.data[i].addressLine1  : "";
        		
        		searchAge = result.data[i].age  !=null ? result.data[i].age  : "";
        		searchGender = genderArray[result.data[i].gender] !=undefined ? genderArray[result.data[i].gender] : "";
        		searchValidClassification = validClassificationArray[result.data[i].validClassification] !=undefined ?  validClassificationArray[result.data[i].validClassification] : "";
        		searchDailySalary = result.data[i].dailySalaryUnitPrice   !=null ?  result.data[i].dailySalaryUnitPrice : "";
        		
        		let rowDate =   '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+ 
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+ 
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+ 
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>'+
				                '<td></td>';
				                       
        		if(result.data[i].scheduleDateDtoList.length !=0 ){
        			rowDate  =  '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[0].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[1].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[2].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[3].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[4].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[5].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[6].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[7].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[8].availability]+'</td>'+ 
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[9].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[10].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[11].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[12].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[13].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[14].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[15].availability]+'</td>'+ 
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[16].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[17].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[18].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[19].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[20].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[21].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[22].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[23].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[24].availability]+'</td>'+ 
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[25].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[26].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[27].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[28].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[29].availability]+'</td>'+
				                '<td>'+AvailabilityArray[result.data[i].scheduleDateDtoList[30].availability]+'</td>';
        		 /* for(w=0 ; result.data[i].scheduleDateDtoList.length ; w++)
        		  {
	        		  searchAvailability = AvailabilityArray[result.data[i].scheduleDateDtoList] != undefined ? AvailabilityArray[result.data[i].prefecture] :"";
	        		  rowSingleDate =	'<td>'+searchAvailability+'</td>';
	        		  
	        		 // rowDate.concat(rowSingleDate); 
        		  }	 */
        		}
        		let newRow=' <tr>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;">'+(i+1)+'</td>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;">'+
                              '<label class="container">'+
                              '<input type="checkbox" id="tableCheck" name="tableCheck[]" class="tableCheckClass" value="'+result.data[i].staffId+'">'+
                             ' <span class="checkmark"></span>'+
                             '</label>'+
                    '</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchName+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchMobileAndsearchEmail+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchPrefectureAndsearchAttribute+'</td>'+
                    '<td >'+searchStaffCode+'</td>'+
                    '<td >'+
                    '<button class="btn DetailsButton ml-1" onclick="viewShiftSchedule(\''+result.data[i].staffId+'\',\''+targetYear+'\',\''+targetMonth+'\',\''+result.data[i].shiftScheduleId+'\')"  role="button" name="tableButtonViewShiftSchedule" id="tableButtonViewShiftSchedule"><i class="fa fa-arrow-circle-up"></i></button>'+
                    '</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchPrivateMemo+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchSubmissionDate+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+searchInChargeStaff+'</td>'
                    +rowDate+
                  '</tr>' ;           
               $("#search_staff_table tbody").append(newRow);
        	 }
        	 drawDtataTable(getSiteLanguage()); 
        	 loadSelectedLanguage(getSiteLanguage(),"staff");
        }
     
        function  sendNotificationEmail()
        {
        	$("#tBodySendBulkNotificationEmail").empty();
        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck[]"]:checked');
        	 if (tableCheckNode.length == 0) 
        	 {
        		 showSystemMessage('info',"N1094"); 
        	 }else
             {
        		 for(i=0;i<tableCheckNode.length;i++){
        		  parentRow =  $(tableCheckNode[i]).closest('tr'); 
        		  
        		  // $("#loadTest").append(parentRow);
        		  tNo = parentRow.find("td:eq(0)").text();
        		  tName = parentRow.find("td:eq(2)").text();
        		  tMobMail = parentRow.find("td:eq(3)").text();
        		  tStaffCode = parentRow.find("td:eq(5)").text();
        		  tUuid = parentRow.find("input:checkbox").val();
        		 
        	  let newRow=' <tr>'+
        	          '<input type="hidden" name="BulkNotificationEmailStaffID[]" value="'+tUuid+'">'+
        	          '<td>'+tNo+'</td>'+
        	          '<td>'+tName+'</td>'+
        	          '<td>'+tMobMail+'</td>'+
        	          '<td>'+tStaffCode+'</td>';
                  
        		  $("#confirm_staff_table tbody").append(newRow);
             }
        		 $('#BulkNotificationEmailModal').modal('show');
        		 
             }
        }
        
        
        $("#ConfirmSendBulkNotificationEmail").click(function( event ) { 
     	   var batchSendBulkNotificationEmailArray = document.getElementsByName("BulkNotificationEmailStaffID[]");
     	   $("#ConfirmSendBulkNotificationEmail").prop("disabled",true);
     	   var dataNode = {};
     	   var dataArray = [];
     	   for(var i = 0; i < batchSendBulkNotificationEmailArray.length ; i++)
        		{ 
     		   var staffIdOBJ ={"staffId":batchSendBulkNotificationEmailArray[i].value} ;
     		   dataArray.push(staffIdOBJ);    
        		}
     	   
     	   dataNode['mailSendList'] = dataArray;
     	   passData = JSON.stringify(dataNode);
     	   
       	   $.ajax({
                beforeSend: function(request) {
               	 document.getElementById("loaderNotify").style.display = "";
                 request.setRequestHeader("GUID", GUID);
                },
                url: serverHTTP +'ShiftSchedule/SendNotificationMail',
                method: 'POST',
                contentType: 'application/json',
                data: passData,
                dataType: 'json',
                 success: function(result, status, request){
                 if(result.status==200)
                	 {
                     showMessage('success',"N1266");
                 	 setTimeout(function(){
                 		 $('#BulkNotificationEmailModal').modal('hide');
                 		 $("#ConfirmSendBulkNotificationEmail").prop("disabled",false);
                 		}, 3600);
                	 }
                 else
                 {
                 	showMessage('error',"N1265");
                 	$("#ConfirmSendBulkNotificationEmail").prop("disabled",false);
                	 }
                 },
                 complete:function(data){
              	   document.getElementById("loaderNotify").style.display = "none";
              	   },
                 error: function(error) {
                 console.log(JSON.stringify(error));
                 $("#ConfirmSendBulkNotificationEmail").prop("disabled",false);
              }
            });
        });
        
        
        
	     function  sendSubmissionRemainderEmail()
	        {
	        	$("#tBodySendBulkSubmissionRemainderEmail").empty();
	        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck[]"]:checked');
	        	let selectedYear = document.getElementById("targetYear").value;
	        	let selectedMonth = document.getElementById("targetMonth").value;
	        	 if (tableCheckNode.length == 0 || (selectedYear == "" || selectedMonth == "")) 
	        	 {
	        		 showSystemMessage('info',"N1094"); 
	        	 }else
	             {
	        		 for(i=0;i<tableCheckNode.length;i++){
	        		  parentRow =  $(tableCheckNode[i]).closest('tr'); 
	        		  
	        		  tNo = parentRow.find("td:eq(0)").text();
	        		  tName = parentRow.find("td:eq(2)").text();
	        		  tMobMail = parentRow.find("td:eq(3)").text();
	        		  tStaffCode = parentRow.find("td:eq(5)").text();
	        		  tUuid = parentRow.find("input:checkbox").val();
	        		 
	        	  let newRow=' <tr>'+
	        	          '<input type="hidden" name="BulkSubmissionRemainderEmailStaffID[]" value="'+tUuid+'">'+
	        	          '<td>'+tNo+'</td>'+
	        	          '<td>'+tName+'</td>'+
	        	          '<td>'+tMobMail+'</td>'+
	        	          '<td>'+tStaffCode+'</td>';
	                  
	        		  $("#confirm_SubmissionRemainder_table tbody").append(newRow);
	             }
	        		 $('#SubmissionRemainderEmailBatchModal').modal('show');
	        		 
	             }
	        }
	        
	        
	        $("#ConfirmSendBulkSubmissionRemainderEmail").click(function( event ) { 
	     	   let batchSubmissionRemainderEmailArray = document.getElementsByName("BulkSubmissionRemainderEmailStaffID[]");
	     	   $("#ConfirmSendBulkSubmissionRemainderEmail").prop("disabled",true);
	     	   let dataNode = {};
	     	   let dataArray = [];
	     	   for(var i = 0; i < batchSubmissionRemainderEmailArray.length ; i++)
	        		{ 
	     		   var staffIdOBJ ={"staffId":batchSubmissionRemainderEmailArray[i].value} ;
	     		   dataArray.push(staffIdOBJ);    
	        		}
	     	   let selectedYear = document.getElementById("targetYear").value;
	           let selectedMonth = document.getElementById("targetMonth").value;
	     	   dataNode['targetYear'] = selectedYear;
	     	   dataNode['targetMonth'] = selectedMonth;
	     	   dataNode['mailSendList'] = dataArray;
	     	   passData = JSON.stringify(dataNode);
	     	   
	       	   $.ajax({
	                beforeSend: function(request) {
	               	 document.getElementById("loaderNotify").style.display = "";
	                 request.setRequestHeader("GUID", GUID);
	                },
	                url: serverHTTP +'ShiftSchedule/SendSubmissionReminderMail',
	                method: 'POST',
	                contentType: 'application/json',
	                data: passData,
	                dataType: 'json',
	                 success: function(result, status, request){
	                 if(result.status==200)
	                	 {
	                     showMessage('success',"N1266");
	                 	 setTimeout(function(){
	                 		 $('#SubmissionRemainderEmailBatchModal').modal('hide');
	                 		 $("#ConfirmSendBulkSubmissionRemainderEmail").prop("disabled",false);
	                 		}, 3600);
	                	 }
	                 else
	                 {
	                 	showMessage('error',"N1265");
	                 	$("#ConfirmSendBulkSubmissionRemainderEmail").prop("disabled",false);
	                	 }
	                 },
	                 complete:function(data){
	              	   document.getElementById("loaderNotify").style.display = "none";
	              	   },
	                 error: function(error) {
	                 console.log(JSON.stringify(error));
	                 $("#ConfirmSendBulkSubmissionRemainderEmail").prop("disabled",false);
	              }
	            });
	        });
        
        
        
        
        
        
        
		// Staff Search table result dropdown values load using below arrays, So If we are doing some changes we have to update this arrays too.

		function viewShiftSchedule(staffID,targetYear,targetMonth,shiftScheduleId) {
		/* 	localStorage.setItem("staffIDShiftSchedule", staffID);
			localStorage.setItem("targetYearShiftSchedule", targetYear);
			localStorage.setItem("targetMonthShiftSchedule", targetMonth); */

			let url = "staff-shift-schedule-details.jsp";
			let form = $('<form action="' + url + '" method="post">' +
			  '<input type="hidden" name="staffIDShiftSchedule" value="'+staffID+'" />' +
			  '<input type="hidden" name="targetYearShiftSchedule" value="'+targetYear+'" />' +
			  '<input type="hidden" name="targetMonthShiftSchedule" value="'+targetMonth+'" />' +
			  '<input type="hidden" name="shiftScheduleId" value="'+shiftScheduleId+'" />' +
			  '</form>');
			$('body').append(form);
			form.submit();
		}

		function checkAll() {

			checkboxes = document.getElementsByName('tableCheck[]');
			for (var i = 0, n = checkboxes.length; i < n; i++) {
				$(checkboxes[i]).prop('checked', true);
			}
		}

		function unCheckAll() {
			checkboxes = document.getElementsByName('tableCheck[]');
			for (var i = 0, n = checkboxes.length; i < n; i++) {
				$(checkboxes[i]).prop('checked', false);
			}
		}

		function changeChargeStaff() {
			const tableCheckNode = document
					.querySelectorAll('input[name="tableCheck[]"]:checked');
			if (tableCheckNode.length == 0) {
				showSystemMessage('info', "E1086");
			} else {

			}
		}
	</script>
</body>

</html>