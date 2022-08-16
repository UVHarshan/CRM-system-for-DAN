<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleAssignmentManagement">Assignment Management</title>
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
<!-- <link rel="stylesheet" href="./dist-assets/css/plugins/calendar/fullcalendar.min.css" /> -->
<!-- <link rel="stylesheet" href="./dist-assets/powerful-calendar/style.css" />
<link rel="stylesheet" href="./dist-assets/powerful-calendar/theme.css" /> -->
<link rel="stylesheet" href="./responsive-calendar/css/calendar.css" />

	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/materia/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
	<link rel="stylesheet" href="./dist-assets/responsive-calendar/css/calendar.css">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment-with-locales.min.js"></script>
    <script src="./dist-assets/responsive-calendar/js/calendar.js"></script>
<style>
.text-hidden {
	transform: scaleX(0);
	transform-origin: 0% 40%;
	transition: all .5s ease;
}

.text {
	transform: scaleX(1);
}

.SelectedDateStyle
{
    background-color: #ffd6b2;
    color: rgb(22, 21, 21);
}

.notAvailableDates
 {
	background-color : #d9d9d9 !important;
	color : #ffffff !important;
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
									<div class="col-md-8 ">
										<h1>
											<i class="fa fa-file text-30" role="generic"></i><span
												id="pageSpanHeadingAssignmentManagement"> Assignment
												Management </span>
										</h1>
										<span id="pageSpanAssignmentManagementNote">You can
											assign the staff of the staff list to the case selected in
											the case list.
											</p>
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

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="salesAssignmentClassification"
																		id="pageLabelAssignmentClassification">Assignment
																		Classification</label> <span class="RequiredStar"> *</span>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>

																		<Select id="assignmentClassification"
																			class="form-control">
																			<option value=""
																				id="optionSelectAssignmentClassification">Select
																				Assignment Classification</option>
																			<option value="1"
																				id="optionSelectAssignmentClassificationAssignByDate">Assign
																				By Date</option>
																			<option value="2"
																				id="optionSelectAssignmentClassificationAssignByPeriod">Assign
																				By Period</option>
																		</Select>
																	</div>
																	<div id="errorAssignmentClassification"
																		style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber"
																		id="pageLabelProposalNumber">Case Number </label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="caseNumber" name="caseNumber"
																			placeholder="Enter Case Number" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorCaseNumber" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="quotationNumber" id="pageLabelCustomerName">
																		Customer Name</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="customerName" name="customerName"
																			placeholder="Enter Customer Name"
																			class="form-control" role="textbox">

																	</div>
																	<div id="errorCustomerName" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodStart"
																		id="pageLabelImplementationPeriodStart">Implementation
																		Period (Start)</label> <span class="RequiredStar"> *</span>

																	<div>
																		<input type="date" id="implementationPeriodStart"
																			class="form-control">
																	</div>
																	<div id="errorImplementationPeriodStart"
																		class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodEnd"
																		id="pageLabelImplementationPeriodEnd">
																		Implementation Period End</label> <span class="RequiredStar">
																		*</span>

																	<div>
																		<input type="date" id="implementationPeriodEnd"
																			class="form-control">
																	</div>
																	<div id="errorImplementationPeriodEnd"
																		class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="projectTitle" id="pageLabelWorkLocation">
																		Work Location</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="workLocation" name="workLocation"
																			placeholder="Enter Work Location"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorStaffCode" style="color: red;"></div>
																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
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
																	<div id="errorPostalCode" style="color: red;"></div>
																</div>


																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ThePersonInCharge"
																		id="pageLabelThePersonInCharge">The person in
																		charge of the case</label>

																	<div id="errorPersonInCharge" style="color: red;"></div>


																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-clone"></i>
																			</div>
																		</div>
																		<Select id="PersonInCharge" class="form-control">
																			<option value="" id="optionPersonInCharge">Select Person In Charge of the case</option>
																			
																		</Select>

																	</div>



																</div>




															</div>
															<div class="row pt-1 ContentRight">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
																<button id="searchBtn"
																	class="btn btn-info SearchButton-2 ml-0 mr-2 "
																	role="button">Search</button>

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
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 " id="pageCardDivTotalAssignments">Total Number of Assignments</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalNumber"></p>
															</div>
														</div>
													</div>
												</div>

												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivStaffAssignedAssignments">Number of Assignments By Date</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalActive"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivOngoingAssignments">Number of Assignments By Period</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalAvailable"></p>
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
                                          </div>  </div>  -->
											</div>

										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">



										<div class="card m-3">
											<div class="card-body">
												<div class="card-title">

													<div class="row">

														<div class="col-lg-12 col-md-12 pl-2 pr-2">
															<i class="i-File-Clipboard-File--Text cursor-pointer"
																role="generic"></i> <span id="pageSpanSearchCaseList">
																Case List</span>

														</div>

														<div class="col-lg-12 col-md-12 pl-2 pr-2">
															<span id="pageSpanDataTableNote">After confirming
																the assigned staff, select the staff name in the
																assigned staff column and send the "Case assignment
																email".</span>
														</div>

													</div>


												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_table" style="width: 100%">
														<thead>
															<tr class="thClass">
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHNo">No</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHCase">Case</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHWorkInformation">Work Information</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHAssignStaff">Assign Staff</th>
																<th class="TableButtonTH"
																	style="width: 40px; background: rgb(255, 255, 255); color: #647a8e;"></th>
															</tr>
														</thead>
														<tbody id="tbodyId">
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



								<!-- <div class="row">
									<div class="col-lg-12 col-md-12 col-xl-12 mt-3">
										<div class="row ">
											<div class="col-lg-12 col-md-12 col-sm-12">
												<div class="card SearchBox">
												<div class="card m-3 SearchCardDiv">
													<div class="card-body">
														<div class="card-title">
															<i class="fa fa-search text-18" role="generic"></i><span
																id="pageSpanStaffList"> Staff List</span>
														</div>
														<form id="searchForm" method="post">
															<div class="row">

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
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
																	<label for="quotationNumber" id="pageLabelStaffName">
																		Staff Name</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file "></i>
																			</div>
																		</div>
																		<input id="staffName" name="quotationNumber"
																			placeholder="Enter Staff Name" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorCustomerName" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="salesAssignmentClassification"
																		id="pageLabelSex"> Sex</label>
																	<div>
																		<Select id="AssignmentClassification"
																			class="form-control">
																			<option value="" id="">Select Sex</option>
																			<option value="1" id="">Male</option>
																			<option value="2" id="">Female</option>
																		</Select>
																	</div>
																	<div id="errorAssignmentClassification"
																		style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="salesAssignmentClassification"
																		id="pageLabelPrefectures"> Prefectures</label>
																	<div>
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
																		<Select id="staffStaff" class="form-control">
																			<option value="" id="">Select In Charge Staff</option>
																			<option value="1" id=""> In Charge Staff 1</option>
																			<option value="2" id=""> In Charge Staff 2</option>
																		</Select>
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
																		<input id="attribute" name="quotationNumber"
																			placeholder="Enter Attribute" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorCustomerName" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodStart"
																		id="pageLabelDateofbirthFrom">Date of birth
																		From</label>

																	<div>
																		<input type="date" id="dateofBirthFrom"
																			class="form-control">
																	</div>
																	<div id="errorDateofBirthFrom" class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ImplementationPeriodEnd"
																		id="pageLabelDateOfBirthTo"> Date of birth To</label>

																	<div>
																		<input type="date" id="DateOfBirthTo"
																			class="form-control">
																	</div>
																	<div id="errorDateOfBirthTo" class="RequiredStar"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="ThePersonInCharge"
																		id="pageLabelSalaryPaymentForm"> Salary payment form</label>

																	<div>
																		<Select id="salaryPaymentForm" class="form-control">
																			<option value="" id="">Select Salary Payment tForm</option>
																			<option value="1" id=""> Daily/Weekly Payment</option>
																			<option value="2" id=""> Monthly Payment</option>
																		</Select>
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
																			placeholder="Enter Qualification"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorStaffCode" style="color: red;"></div>
																</div>


															</div>
															<div class="row pt-1 ContentRight">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
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
								</div>


								<div class="row">
									<div class="col-lg-12 col-xl-12 ">



										<div class="card m-3">
											<div class="card-body">
												<div class="card-title">

													<div class="row">

														<div class="col-lg-2 col-md-6 pl-2 pr-2">
															<i class="i-File-Clipboard-File--Text cursor-pointer"
																role="generic"></i> <span id="pageSpanSearchTargetStaff">
																Target Staff</span>

														</div>													

													</div>


												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_table" style="width: 100%">
														<thead>
															<tr class="thClass">
                                                            <th>&nbsp;</th>
                                                            <th>&nbsp;</th>
                                                            <th>&nbsp;</th>
                                                            <th colspan="3">Name</th>
                                                            <th colspan="2">Staff Details</th>
                                                            <th colspan="3">Contact Details</th>
                                                            <th colspan="2">Location Details</th>
                                                            <th colspan="3" style="width: 25%;">Occupation Details</th>
                                                            <th colspan="3" style="width: 25%;">Personal Details</th>
                                                            <th>&nbsp;</th>
                                                        </tr>
															<tr class="thClass">
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"></th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHNo">No</th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableSearchTHChoice">Choice</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHStaff">Staff</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHDispatchClassification"> Dispatch classification / occupation classification / affiliation / attribute</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHExperience">Experience / Shift remarks</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHPrefecture"> Prefecture / Address / Nearest station</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableSearchTHAssignOther">  Assign other projects</th>

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
										</div>

									</div>

								</div> -->

							</div>
						</div>
						<div class="loading" id="loaderNotify" style="display: none;">
							<div class="spinner-bubble spinner-bubble-primary m-7"></div>
						</div>
						
						
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

	<div class="modal fade bd-example-modal-lg" id="StaffWorkDaySettingByPeriod" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalSetStaffWorkDay">Set Staff Work Day </h5>
					<h5 class="modal-title" id="exampleModalViewStaffWorkDay">View Staff Work Day</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="calendar"><!-- //wishwa --></div>
					<!-- <div class="calendar-container"></div> -->
					<input type="hidden" id="implementationIDHiddenVal"/>
					<input type="hidden" id="baseIDHiddenVal"/>
					<input type="hidden" id="userIDHiddenVal"/>
					<input type="hidden" id="assignmentClassificationTypeVal"/>
					<input type="hidden" id="assignmentStartDateVal"/>
					<input type="hidden" id="assignmentEndDateVal"/>
				</div>
				<div class="modal-footer" id="StaffWorkDaySettingByPeriodFooter">
					<button class="btn btn-danger" type="button" data-dismiss="modal">Close</button>
					<button class="btn btn-info ml-2" type="button" id="buttonSetWorkDay">Set Work Day</button>
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
        loadSelectedLanguage(pageLanguage,"assignment");
    </script>


	<script src="./dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
<!-- 	<script src="./dist-assets/powerful-calendar/calendar.min.js"></script> -->
  
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

	<script src="./dist-assets/js/assignment-management-validate.js"></script>

	<script>
/* 	$(function(){
		
		$('.calendar-container').calendar({
			  onClickDate: function (date) {
			    console.log(date);
			  }
			});
		}); */
		$('.day').click(function() {
			//classList.toggle("selected highlight");
			 console.log("selected highlight");
		});
		$('span').on('click', function(){
			console.log("selected highlight");
		});
		  function selectDate(date) {
		  $('.calendar-container').updateCalendarOptions({
		    date: date
		  });
		 //wishwa
		 let dateElement = $("div[data-date='" + date +"']");
		 console.log(date);
		 console.log(dateElement);
		 //dateElement.html("Wishwa");
		 dateElement.toggleClass("highlight1");
		 //let dateElement =  $("div").find(`[data-date='${date}']`);
		 //console.log(dateElement);
		 //dateElement.classList.toggle("selected highlight");

		 let implementationIDVal = document.getElementById("implementationIDHiddenVal").value ;
		 let userIDVal = document.getElementById("userIDHiddenVal").value ;
		 let assignmentClassificationType = document.getElementById("assignmentClassificationTypeVal").value ;
		 //let selectedDate = date.toISOString().split('T')[0];
		
		 let dateObj = new Date(date);
		 //var tzoffset = (new Date(date)).getTimezoneOffset() * 60000; //offset in milliseconds
		 //var localISOTime = (new Date((new Date(date)).now() - tzoffset)).toISOString().split('T')[0];
		 var tzoffset = (new Date()).getTimezoneOffset() * 60000; //offset in milliseconds
		 var localISOTime = (new Date((new Date(date)).getMilliseconds() - tzoffset)).toISOString(); 
		 console.log("tzoffset : "+tzoffset)
		 console.log("localISOTime : "+localISOTime)
		 let selectedDate = dateObj.toISOString().split('T')[0];
		 console.log("selectedDate : "+selectedDate);
		 
		 if(selectedDate!=null)
		 {
			 loadUserImplementationByPeriod(implementationIDVal,userIDVal,selectedDate);
		 }
		 
		 
		/*  yourDate = dateObj;
		 const offset = yourDate.getTimezoneOffset(); 
		 yourDate = new Date(yourDate.getTime() + (offset*60*1000)); 
		 yourDate.toISOString().split('T')[0];
		 console.log("yourDate : " + yourDate); */
		}

/* 		var defaultConfig = {
		  weekDayLength: 1,
		  date: new Date(),
		  onClickDate: selectDate,
		  showYearDropdown: true,
		  min :  new Date(document.getElementById("assignmentStartDateVal").value),
		  max :  new Date(document.getElementById("assignmentEndDateVal").value),
		};

		$('.calendar-container').calendar(defaultConfig); */
		
	function popout(ele,memo,baseID) {
	   //wishwa
	   //memeValue = memo != null ? memo :"";
	    memoIconNode = $(ele).closest(".memoClass");
		memeValue = memoIconNode.data('memo');
	   let popoutHTML = "<textarea class='form-control memoTextAreaClass' >"+memeValue+"</textarea><br/> <button class='btn btn-info  memoButtonClass' onclick='addMemo(this,"+baseID+")'>Add Memo</button>";
	   $(ele).next('.mypopout').html(popoutHTML);
	   $(ele).next('.mypopout').toggle();
	}
	</script>
	<script>
	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const uuid = localStorage.getItem("uuid");
		localStorage.removeItem("implementDate");
		const role = localStorage.getItem("userRole");
		let selectedDates = []; //wishwa

		
		$(document).ready(function() {/* 
			calendar = new CalendarYvv("#calendar", moment().format("Y-M-D"), "Monday");
			calendar.funcPer = function(ev){
				console.log(ev)
				console.log(this.currentSelected)
			};
			calendar.createCalendar(); */
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
						var select  = document.getElementById('PersonInCharge');
				
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
							let dataSet = '{"uuid" : "' + uuid + '"}';
							drawDtataTable(lan);

							$("#dateOfBirthFrom").focusout(function() {
												this.type = 'text';
												document.getElementById("dateOfBirthFrom").placeholder = "From";});

							$("#dateOfBirthTo").focusout(function() {
												this.type = 'text';
												document.getElementById("dateOfBirthTo").placeholder = "To";});
							

		$.ajax({beforeSend : function(request) {
			document.getElementById("loaderNotify").style.display = "";
			request.setRequestHeader("GUID",GUID);
		},
		url : serverHTTP+ 'Assignment/CountAssignment',
		method : 'GET',
		contentType : 'application/json',
		//  data: templateNameReqNode,
		dataType : 'json',
		success : function(result, status,
				request) {
			if (result.status == 200) {
				$("#pTotalNumber").html(result.data.totalAssignmentCount);
				$("#pTotalActive").html(result.data.totalAssignmentByDate);
				$("#pTotalAvailable").html(result.data.totalAssignmentByPeriod);

			} else {
				console
						.log("Sorry card Data Loding Error");
			}
		},
		complete:function(data){
            	   document.getElementById("loaderNotify").style.display = "none";
           	},
		error : function(error) {
			console.log(JSON.stringify(error));
		}
	});

				
						});
	    function getMemo(){
			
		        $(".text-hidden").toggleClass("text");
			
		}
	
		function runSearch() {
			var occupationClassification = document.getElementById("occupationClassification").value;

			var templateNameReqNode = {};
			templateNameReqNode['caseNumber'] = document.getElementById("caseNumber").value.trim() != "" ? document.getElementById("caseNumber").value.trim() : null;
			//templateNameReqNode['quotationNumber'] =  null;
			//templateNameReqNode['caseName'] =  null;
			templateNameReqNode['customerCompanyName'] = document.getElementById("customerName").value.trim() != "" ? document.getElementById("customerName").value.trim() : null;
			//templateNameReqNode['customerRepresentativeName'] = null;
			templateNameReqNode['personInChargeOfCase'] = document.getElementById("PersonInCharge").value.trim() != "" ? document.getElementById("PersonInCharge").value.trim() : 0;
			templateNameReqNode['assignmentClassification'] = document.getElementById("assignmentClassification").value != "" ? document.getElementById("assignmentClassification").value : 0;
			templateNameReqNode['dispatchClassification'] = document.getElementById("dispatchClassification").value.trim() != "" ? document.getElementById("dispatchClassification").value.trim() : 0;

			// Occupation Classification..................
			templateNameReqNode['occupationClassification1'] = occupationClassification == 1 ? 1 : 0;
			templateNameReqNode['occupationClassification2'] = occupationClassification == 2 ? 1 : 0;
			templateNameReqNode['occupationClassification3'] = occupationClassification == 3 ? 1 : 0;
			templateNameReqNode['occupationClassification4'] = occupationClassification == 4 ? 1 : 0;
			templateNameReqNode['occupationClassification5'] = occupationClassification == 5 ? 1 : 0;
			templateNameReqNode['occupationClassification6'] = occupationClassification == 6 ? 1 : 0;
			templateNameReqNode['occupationClassification7'] = occupationClassification == 7 ? 1 : 0;

			templateNameReqNode['periodStartDate'] = document.getElementById("implementationPeriodStart").value.trim() != "" ? document.getElementById("implementationPeriodStart").value.trim(): null;
			templateNameReqNode['periodEndDate'] = document.getElementById("implementationPeriodEnd").value.trim() != "" ? document.getElementById("implementationPeriodEnd").value: null;
			//templateNameReqNode['caseOpen'] = 0;
			//templateNameReqNode['contractDateTo'] =  null;
			//templateNameReqNode['contractDateFrom'] =  null;
			//templateNameReqNode['belongings'] =  null;
			templateNameReqNode['workLocation'] = document.getElementById("workLocation").value.trim() != "" ? document.getElementById("workLocation").value.trim(): null;
			//templateNameReqNode['nearestStation'] = null;


			$.ajax({
				beforeSend : function(request) {
				document.getElementById("loaderNotify").style.display = "";
				request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Assignment/SearchAssignCaseInfo',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(templateNameReqNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						showSearchResult(result, request);
					} else {
						// showMessage("Sorry Data Loding Error");
					}
				},complete:function(data){
              	   document.getElementById("loaderNotify").style.display = "none";
          	   },
				error : function(error) {
					console.log(JSON.stringify(error));
				}
			});
		}
		
		

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

			table = $('#search_table').DataTable({
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
				responsive : true,
				responsive : {
					details : {
						type : 'column',
						target : 'tr'
					}
				},
				columnDefs : [ 
					{
					orderable : false,
					targets : 0
				}, {
					orderable : false,
					targets : 4
				}, {
					responsivePriority : 1,
					targets : 4
				}, {
					responsivePriority : 2,
					targets : 2
				}, ],
				order : [ 1, 'asc' ]

			});
		}

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "assignment");
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

		// Update this.......................................
		function showSearchResult(result, request) {
			table.destroy();
			$("#tbodyId").empty();
			for (i = 0; i < result.data.length; i++) {

				occupationClassification1Value = result.data[i].occupationClassification1 == 1 ? ""+ occupationClassificationArray[1] : "";
				occupationClassification2Value = result.data[i].occupationClassification2 == 1 ? " / "+ occupationClassificationArray[2] : "";
				occupationClassification3Value = result.data[i].occupationClassification3 == 1 ? " / "+ occupationClassificationArray[3] : "";
				occupationClassification4Value = result.data[i].occupationClassification4 == 1 ? " / "+ occupationClassificationArray[4] : "";
				occupationClassification5Value = result.data[i].occupationClassification5 == 1 ? " / "+ occupationClassificationArray[5] : "";
				occupationClassification6Value = result.data[i].occupationClassification6 == 1 ? " / "+ occupationClassificationArray[6] : "";
				occupationClassification7Value = result.data[i].occupationClassification7 == 1 ? " / "+ occupationClassificationArray[7] : "";

				dispatchClassification1Value = result.data[i].dispatchClassification == 1 ?  dispatchClassificationArray[1] : "" ; 
        		dispatchClassification2Value = result.data[i].dispatchClassification == 2 ?  dispatchClassificationArray[2] : "" ; 
        		dispatchClassification3Value = result.data[i].dispatchClassification == 3 ?  dispatchClassificationArray[3] : "" ; 
        		dispatchClassification4Value = result.data[i].dispatchClassification == 4 ?  dispatchClassificationArray[4] : "" ; 
        		dispatchClassificationFainalvalue = dispatchClassification1Value+dispatchClassification2Value+dispatchClassification3Value+dispatchClassification4Value
				
        		customerCompanyName = result.data[i].customerCompanyName;
        		caseName = result.data[i].caseName;
        		workLocation = result.data[i].workLocation != null ? result.data[i].workLocation: "";
        		nearestStation = result.data[i].nearestStation != null ? result.data[i].nearestStation: "";
        		assignStaffCount = result.data[i].assignStaffCount!= null ? result.data[i].assignStaffCount: "";
        	    requiredNoOfStaff = result.data[i].requiredNoOfStaff!= null ? result.data[i].requiredNoOfStaff: "";
        	    assignmentImplementationId = result.data[i].implementationId;
				implementEndDate =  result.data[i].periodEndDate != null ? result.data[i].periodEndDate : " "; 
				implementstartDate =  result.data[i].periodStartDate != null ? result.data[i].periodStartDate : " "; 
        		 inhouseStaffList = "";
        		 outsourcingStaffList = "";
        		 let assignmentClassificationType = $('#assignmentClassification').val();
        		//to get assigned staff for implementation
		        	$.ajax({
					  beforeSend : function(request) {
                   	   document.getElementById("loaderNotify").style.display = "";
						request.setRequestHeader("GUID", GUID);
					  },
						url : serverHTTP + 'Assignment/GetStaffInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify({"implementationId":result.data[i].implementationId}),
						dataType : 'json',
						async: false,
					    success : function(result, status, request) {
						   if (result.status == 200) {
								for (w = 0; w < result.data.length; w++) {
									memo = result.data[w].memo != null ? result.data[w].memo : "";
							    matterAllocationStatusUI = "<i class='fa fa-exclamation-triangle'></i>";
								if(result.data[w].matterAllocationStatus){ matterAllocationStatusUI = "<i class='fa fa-envelope'></i>";}	
							 	if(result.data[w].attributeClassification == "1"){
							 		inhouseStaffList = inhouseStaffList+  "<span class='impUserRow'> <br/><a style='color:black;text-decoration: underline;' onclick='loadUserImplementation("+assignmentImplementationId+","+result.data[w].staffId+",\""+implementstartDate+"\",\""+implementEndDate+"\",\""+assignmentClassificationType+"\","+result.data[w].baseId+")' > "+result.data[w].name+"</a> <span>"+matterAllocationStatusUI+"&nbsp;<i class='fa fa-trash' onClick='deleteAssignStaff("+result.data[w].baseId+",this)'></i>&nbsp;<i class='fa fa-sticky-note' onclick='popout(this,\""+memo+"\","+result.data[w].baseId+")'></i><div class='mypopout' style='display:none;z-index: 100;'></div></span> <button class='btn btn-success btn-sm ml-2 mt-1 inHouseSetWorkDay' type='button' data-toggle='modal' data-target='.bd-example-modal-lg' onclick='loadUserImplementationCalander("+assignmentImplementationId+","+result.data[w].staffId+","+assignmentClassificationType+",\""+implementstartDate+"\",\""+implementEndDate+"\","+result.data[w].baseId+")'> Set Work Day</button> </span>";
							 	}else if(result.data[w].attributeClassification == "2"){
							 		outsourcingStaffList = outsourcingStaffList+ "<span class='impUserRow'><br/><a style='color:black;text-decoration: underline;' onclick='loadUserImplementation("+assignmentImplementationId+","+result.data[w].staffId+",\""+implementstartDate+"\",\""+implementEndDate+"\",\""+assignmentClassificationType+"\","+result.data[w].baseId+")' > "+result.data[w].name+"</a> <span>"+matterAllocationStatusUI+"&nbsp;<i class='fa fa-trash' onClick='deleteAssignStaff("+result.data[w].baseId+",this)'></i>&nbsp;<i class='fa fa-sticky-note' onclick='popout(this,\""+memo+"\","+result.data[w].baseId+")'></i><div class='mypopout'  style='display:none;z-index: 100;'></div></span> <button class='btn btn-success btn-sm ml-2 mt-1 outsourcingSetWorkDay' type='button' data-toggle='modal' data-target='.bd-example-modal-lg' onclick='loadUserImplementationCalander("+assignmentImplementationId+","+result.data[w].staffId+","+assignmentClassificationType+",\""+implementstartDate+"\",\""+implementEndDate+"\","+result.data[w].baseId+")'> Set Work Day</button> </span>";
							 	}
							 	
							}
							} else {
								console.log("GetStaffInfo error");
							}
					   }, complete:function(data){
                     	   document.getElementById("loaderNotify").style.display = "none";
                 	   },
					  error : function(error) {
							console.log(JSON.stringify(error));
					   }
					 });
		        	let personInChargeOfCaseText = result.data[i].personInChargeOfCaseText != null ? result.data[i].personInChargeOfCaseText : "";
        		
        		let newRow = ' <tr>'
						+ '<td style="background: rgb(255 255 255);color: #647a8e;">'
						+ (i + 1)
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+'<span id="tableHelptextCustomerName" name="tableHelptextCustomerName">Customer Name : </span>'+ customerCompanyName + '<br/>'
						+'<span id="tableHelptextProjectName" name="tableHelptextProjectName">Project  Name : </span>'+ caseName + '<br/>'
						+'<span id="tableHelptextWorkLocation" name="tableHelptextWorkLocation">Work Location : </span>'+ workLocation + '<br/>'
						+'<span id="tableHelptextNearestStation" name="tableHelptextNearestStation">Nearest Station : </span>'+ nearestStation + '<br/>'
						+'<span id="tableHelptextDispatchClassification" name="tableHelptextDispatchClassification">Dispatch Classification : </span>'+ dispatchClassificationFainalvalue + '<br/>'
						+'<span id="tableHelptextOccupationClassification" name="tableHelptextOccupationClassification">Occupation Classification : </span>'+ occupationClassification1Value+occupationClassification2Value+occupationClassification3Value+occupationClassification4Value+occupationClassification5Value+occupationClassification6Value+occupationClassification7Value+ '<br/>'
						+'<span id="tableHelptextProjectManager" name="tableHelptextProjectManager">Project Manager : </span>'+ personInChargeOfCaseText + '<br/>'
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+'<span id="tableHelptextImplementationDate" name="tableHelptextImplementationDate">Implementation Date : </span>'+ result.data[i].periodStartDate  + ' - ' + implementEndDate + '<br/>'
						+'<span id="tableHelptextBasicSalary" name="tableHelptextBasicSalary">Basic Salary : </span>'+ result.data[i].dailyBasicSalary + '<br/>'
						+ '</td>'
						+ '<td style="background: rgb(245 249 253);color: #647a8e;">'
						+'<span id="tableHelptextStaffPersons" name="tableHelptextStaffPersons">Staff Persons : </span>'+assignStaffCount+'/'+ requiredNoOfStaff + '<br/>'
						+'<span id="tableHelptextInHouse" name="tableHelptextInHouse">In-house : </span>'+ inhouseStaffList+ '<br/>'
						+'<span id="tableHelptextOutsourcing" name="tableHelptextOutsourcing">Outsourcing : </span>'+ outsourcingStaffList + '<br/>'
						+ '</td>'
						+ '<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'
						+ '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''
						+ result.data[i].caseId 
						+ '\','+result.data[i].implementationId+')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'
						+ '</td>' + '</tr>';
				$("#search_table tbody").append(newRow);
			}
			hideSetWorkDayBtn(); // Hide Set Work Day Btn in "Assign By Date"
			drawDtataTable(getSiteLanguage());
			loadSelectedLanguage(getSiteLanguage(),"assignment");
		}
		
		function loadUserImplementationCalander(implementationID,userID,assignmentClassificationType,assignmentStartDate,assignmentEndDate,baseId)
		{	
			document.getElementById("StaffWorkDaySettingByPeriodFooter").style.display = "";
			document.getElementById("exampleModalSetStaffWorkDay").style.display = "";
			document.getElementById("buttonSetWorkDay").disabled = false;
			document.getElementById("exampleModalViewStaffWorkDay").style.display = "none";
			
			document.getElementById("implementationIDHiddenVal").value = implementationID ;
			document.getElementById("baseIDHiddenVal").value = baseId ;
			document.getElementById("userIDHiddenVal").value = userID ;
			document.getElementById("assignmentClassificationTypeVal").value = assignmentClassificationType ;
			document.getElementById("assignmentStartDateVal").value = assignmentStartDate ;
			document.getElementById("assignmentEndDateVal").value = assignmentEndDate ;
			
			let dataNode = {};
			let alreadyAssignDates = [];
			dataNode['baseId'] = baseId; 
			
		
			$.ajax({
				  beforeSend : function(request) {
           	        document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				  },
					url : serverHTTP + 'Assignment/ReturnDatesByPeriod',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify(dataNode),
					dataType : 'json',
					async: false,
				    success : function(result, status, request) {
				    	 if (result.status == 200) {
							  for(i=0;i<result.data.length;i++)
								  {
								  alreadyAssignDates.push(result.data[i].implementDate)
								  }
							} else {
							   showMessage('error',"N1265");
							}
				   }, complete:function(data){
             	   document.getElementById("loaderNotify").style.display = "none";
         	   },
				  error : function(error) {
						console.log(JSON.stringify(error));
				   }
				 }); 
	/* 		
			var defaultConfig = {
					  weekDayLength: 1,
					 // date: new Date(),
					  onClickDate: selectDate,
					  showYearDropdown: true,
					  showThreeMonthsInARow:true,
					  showTodayButton:false,
					  min :  new Date(document.getElementById("assignmentStartDateVal").value),
					  max :  new Date(document.getElementById("assignmentEndDateVal").value),
					}; */

			calendar =new CalendarYvv("#calendar", moment().format("Y-M-D"),"Sunday");
			//calendar.diasResal = ["2022-01-10","2022-01-11"];
			calendar.bookedDates = alreadyAssignDates;
			calendar.minDate = assignmentStartDate;
			calendar.maxDate = assignmentEndDate;
			
				calendar.funcPer = function(ev){ 
				 const dateElement = document.querySelector("[data-date='"+this.currentSelected+"']");
				 dateElement.classList.toggle("SelectedDateStyle");
	
				 selectedDates = $('.SelectedDateStyle').not(".bookedDates, .holiday , .notAvailableDates").map(function() {
					   return $(this).data('date');
					}).get();
				};
			calendar.createCalendar();
		}
		
		
		$( "#buttonSetWorkDay" ).click(function() {
			addAssignByPeriod();
		});
		
		
		function selectUserImplementationCalander(implementationID,userID,assignmentClassificationType,assignmentStartDate,assignmentEndDate,baseId)
		{	
			
			document.getElementById("StaffWorkDaySettingByPeriodFooter").style.display = "none";
			document.getElementById("exampleModalSetStaffWorkDay").style.display = "none";
			document.getElementById("exampleModalViewStaffWorkDay").style.display = "";
			
			document.getElementById("implementationIDHiddenVal").value = implementationID ;
			document.getElementById("baseIDHiddenVal").value = baseId ;
			document.getElementById("userIDHiddenVal").value = userID ;
			document.getElementById("assignmentClassificationTypeVal").value = assignmentClassificationType ;
			document.getElementById("assignmentStartDateVal").value = assignmentStartDate ;
			document.getElementById("assignmentEndDateVal").value = assignmentEndDate ;
			
			let dataNode = {};
			let alreadyAssignDates = [];
			dataNode['baseId'] = baseId; 
			
		
			$.ajax({
				  beforeSend : function(request) {
           	        document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				  },
					url : serverHTTP + 'Assignment/ReturnDatesByPeriod',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify(dataNode),
					dataType : 'json',
					async: false,
				    success : function(result, status, request) {
				    	 if (result.status == 200) {
							  for(i=0;i<result.data.length;i++)
								  {
								  alreadyAssignDates.push(result.data[i].implementDate)
								  }
							} else {
							   showMessage('error',"N1265");
							}
				   }, complete:function(data){
             	   document.getElementById("loaderNotify").style.display = "none";
         	   },
				  error : function(error) {
						console.log(JSON.stringify(error));
				   }
				 }); 


			calendarSelectDate =new CalendarYvv("#calendar", moment().format("Y-M-D"),"Sunday");
			calendarSelectDate.bookedDates = alreadyAssignDates;
			calendarSelectDate.minDate = assignmentStartDate;
			calendarSelectDate.maxDate = assignmentEndDate;
			
			calendarSelectDate.funcPer = function(ev){ 
			 
			 let implementationIDVal = document.getElementById("implementationIDHiddenVal").value ;
		     let userIDVal = document.getElementById("userIDHiddenVal").value ;
		     let dateElementW = document.querySelector("[data-date='"+this.currentSelected+"']");
			 if(dateElementW.classList.contains("bookedDates"))
			 {
				 loadUserImplementationByPeriod(implementationIDVal,userIDVal,this.currentSelected); 
			 }	 
			};
			calendarSelectDate.createCalendar();
		}
		
		
		function addAssignByPeriod()
		{
	  //function addAssignByPeriod(selectedDate)
			if(selectedDates.length>0)
			{
			let dataNode = {};
			let assignDates = [];
			
            for(i=0;i<selectedDates.length;i++){
			var singleAssignDate = {"assignDate":selectedDates[i]};
			assignDates.push(singleAssignDate);
            }
			dataNode['baseId'] = document.getElementById("baseIDHiddenVal").value; 
			dataNode['dateDtoList'] = assignDates; 
			console.log(dataNode);
 			$.ajax({
				  beforeSend : function(request) {
             	   document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				  },
					url : serverHTTP + 'Assignment/AssignByPeriod',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify(dataNode),
					dataType : 'json',
					async: false,
				    success : function(result, status, request) {
				    	 if (result.status == 200) {
				    		   document.getElementById("buttonSetWorkDay").disabled = true;
							   showMessage('success',"N1266");
						       setTimeout(function(){
						    	   $('#StaffWorkDaySettingByPeriod').modal('hide');
				          		}, 2600); 
							} else {
							   showMessage('error',"N1265");
							}
				   }, complete:function(data){
               	   document.getElementById("loaderNotify").style.display = "none";
           	   },
				  error : function(error) {
						console.log(JSON.stringify(error));
				   }
				 }); 
			}else
			{
				showMessage('error',"N1265");
			}
		}
		
		function loadUserImplementation(implementationID,userID,implementDate,implementEndDate,assignmentClassificationType,baseID)
		{	
			if(assignmentClassificationType==1){
			localStorage.setItem("implementationIDDetails", implementationID);
			localStorage.setItem("userIDDetails", userID);
			localStorage.setItem("implementDate", implementDate);
			window.location.href = "assignment-details.jsp";
			}else{
			   $('#StaffWorkDaySettingByPeriod').modal('show');
			   selectUserImplementationCalander(implementationID,userID,assignmentClassificationType,implementDate,implementEndDate,baseID);	
			}
		}
		
		function loadUserImplementationByPeriod(implementationID,userID,implementDate)
		{	
			localStorage.setItem("implementationIDDetails", implementationID);
			localStorage.setItem("userIDDetails", userID);
			localStorage.setItem("implementDate", implementDate);
			window.location.href = "assignment-details.jsp";
		}
		
		function viewDetails(id,implementationID)
		{
			localStorage.setItem("implementationIDDetails", implementationID);
			localStorage.setItem("caseID", id);
			window.location.href = "assignment-for-cases.jsp";
		}

		function checkAll() {
			checkboxes = document.getElementsByName('tableCheck');
			for (var i = 0, n = checkboxes.length; i < n; i++) {
				$(checkboxes[i]).prop('checked', true);
			}
		}

		function unCheckAll() {
			checkboxes = document.getElementsByName('tableCheck');
			for (var i = 0, n = checkboxes.length; i < n; i++) {
				$(checkboxes[i]).prop('checked', false);
			}
		}

		function batchDelete() {
			$("#tBodyBatchDelete").empty();
			const tableCheckNode = document
					.querySelectorAll('input[name="tableCheck"]:checked');
			if (tableCheckNode.length == 0) {
				showSystemMessage('info',
						"Please Select the Customer from Customer Details !");
			} else {

				for (i = 0; i < tableCheckNode.length; i++) {
					parentRow = $(tableCheckNode[i]).closest('tr');

					// $("#loadTest").append(parentRow);
					tNo = parentRow.find("td:eq(1)").text();
					tCustomerCode = parentRow.find("td:eq(3)").text();
					tOrganizationName = parentRow.find("td:eq(7)").text();
					tRepresentativeName = parentRow.find("td:eq(8)").text();
					tUuid = parentRow.find("input:checkbox").val();

					let newRow = ' <tr>'
							+ '<input type="hidden" name="batchdeleteUuid[]" value="'+tUuid+'">'
							+ '<td>' + tNo + '</td>' + '<td>'
							+ tOrganizationName + '</td>' + '<td>'
							+ tRepresentativeName + '</td>' + '<td>'
							+ tCustomerCode + '</td>';

					$("#confirm_staff_table tbody").append(newRow);
				}
				$('#confirmDeleteModal').modal('show');

			}
		}

		function changeChargeStaff() {
			const tableCheckNode = document
					.querySelectorAll('input[name="tableCheck"]:checked');
			if (tableCheckNode.length == 0) {
				showSystemMessage('info',
						"Please Select the Staff from Staff Details !");
			} else {

			}
		}
		
		$("#clearAllBtn").click(function(event) {
			resetValidationReturnValues();
			$("#errorCaseNumber").html("");
			$("#errorAssignmentClassification").html("");
			$("#errorImplementationPeriodStart").html("");
			$("#errorImplementationPeriodEnd").html("");
			$("#errorCustomerName").html("");

			$("input").removeClass("errorVal");
			$("select").removeClass("errorVal");

		});
		
     function addMemo(buttonNode,baseID){		
		  let parentRow = $(buttonNode).closest('.mypopout'); 
		  let memo = $(parentRow).find(".memoTextAreaClass").val();		  
   		  
			var dataNode = {};
			dataNode['baseId'] = baseID; 
			dataNode['memo'] = memo; 
			
			$.ajax({
				  beforeSend : function(request) {
             	   document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				  },
					url : serverHTTP + 'Assignment/AddMemo',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify(dataNode),
					dataType : 'json',
					async: false,
				    success : function(result, status, request) {
				    	 if (result.status == 200) {
							   showMessage('success',"N1266");
							   memoIconNode = $(buttonNode).closest(".memoClass");
							   memoIconNode.data('memo',memo);
							} else {
							   showMessage('error',"N1265");
							}
				   }, complete:function(data){
               	   document.getElementById("loaderNotify").style.display = "none";
           	   },
				  error : function(error) {
						console.log(JSON.stringify(error));
				   }
				 });
		}

 function deleteAssignStaff(baseId,nodeElement) { 
       	
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
   	 dataNode['baseId'] = baseId;  
 	   $.ajax({
          beforeSend: function(request){
           	 document.getElementById("loaderNotify").style.display = "";
             request.setRequestHeader("GUID", GUID);
          },
          url: serverHTTP +'Assignment/DeleteAssignStaff',
          method: 'POST',
          contentType: 'application/json',
          data: JSON.stringify(dataNode),
          dataType: 'json',
           success: function(result, status, request){
           if(result.status==200)
          	 {
            showMessage('success',"E1120");//E0000
            $(nodeElement).closest(".impUserRow").remove();
            // assigned count x/y
          	 }
           else
           {
           	showMessage('error',"E1121");//E0000
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
      	   
         }
 
 
	function hideSetWorkDayBtn(){
		if($('#assignmentClassification').val() == 1){
			$(".inHouseSetWorkDay").hide();
			$(".outsourcingSetWorkDay").hide();
		}			
	}
	</script>
</body>

</html>