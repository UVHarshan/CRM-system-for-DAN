<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitle">Staff Assignment List</title>
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
				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-md-8 ">
										<h1>
											<i class="fa fa-calendar text-30" role="generic"></i><span
												id="pageSpanHeading"> Staff Assignment List</span>
										</h1>
									</div>
									<div class="col-md-4  pt-0 pr-4 TopButDiv">
										<button id="buttonAttendanceCSVOutput" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
												<i class="fa fa-table mr-2 text-20 cursor-pointer" role="generic"></i>
												<span id="buttonSpanStaffListCSV">StaffAssignment List CSV Output</span>
											</button></a>
									</div>
									<p id="TitleHelpStaffAssignmentList">You can check the
										staff status on the specified implementation date and check
										various notifications. In the case of recruitment, please
										enter the recruitment period for the implementation period.</p>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xl-12 mt-3">
										<div class="row ">
											<div class="col-lg-12 col-xl-12">
												<!-- <div class="card SearchBox"> -->
												<div class="card m-3 SearchCardDiv">
													<div class="card-body">
														<div class="card-title">
															<i class="fa fa-search text-18" role="generic"></i><span
																id="pageSpanSearch"> Search</span>
														</div>
														<form id="searchForm" method="post">
														<input type="hidden" id="staffStaffID">
															<div class="row">
																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="givenNames"
																			id="pageLabelAssignmentClassification">Assignment
																			Classification</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user"></i>
																				</div>
																			</div>
																			<select name="prefectures"
																				class="form-control" id="assignmentClassification"
																				role="combobox">
																				<option value="0"
																					id="selectOptionAssignmentClassification">Select
																					Assignment Classification</option>
																				<option value="1" id="pageOptionAssignbyDate">
																					Assign by date</option>
																				<option value="2" id="pageOptionAssignbyPeriod">
																					Assign by period</option>
																			</select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="nameKatakana" id="pageLabelProjectTitle">Project
																			Title</label>
																		<div class="input-group ">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user"></i>
																				</div>
																			</div>
																			<input id="projectTitle" name="projectTitle"
																				placeholder="Enter Project Title"
																				class="form-control" role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label for="staffCode" id="pageLabelStaffCode">Staff
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
																	<div>
																		<label for="prefectures" id="pageLabelPrefectures">Implementation Date From</label>
																		<span class="RequiredStar"> *</span>
																		</div>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-map"></i>
																				</div>
																			</div>
																			<input id="implementationDateFrom" type="date"
																				placeholder="Enter Implementation Date From"
																				class="form-control" role="textbox">
																		</div>
																		<div id="errorImplementationPeriodStart" style="color: red;"></div>
																	</div>
																</div>

																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="mobilePhone"
																			id="pageLabelDispatchClassification">Dispatch
																			Classification</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="fa fa-mobile-alt"></i>
																				</div>
																			</div>
																			<select id="dispatchClassification"
																				name="dispatchClassification" class="form-control"
																				role="combobox">
																				<option value="0"
																					id="selectOptionSelectdispatchClassification">Select
																					Dispatch Classification</option>
																				<option value="1" id="pageOption1Generaldispatch">
																					General dispatch</option>
																				<option value="2" id="pageOption2Businesscontract">
																					Business contract</option>
																				<option value="3"
																					id="pageOption3IntroductionDispatching">
																					Introduction Dispatching</option>
																				<option value="4" id="pageOption4Recruitment">
																					Recruitment</option>
																			</select>
																		</div>

																	</div>
																	<div class="row">
																		<label for="staffInChargeStaff"
																			id="pageLabelWorkLocation">Work Location</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user-circle"></i>
																				</div>
																			</div>
																			<input id="workLocation" name="workLocation"
																				placeholder="Enter Work Location"
																				class="form-control" role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label for="mailAddress" id="pageLabelStaffName">Staff
																			Name</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-user-circle"></i>
																				</div>
																			</div>
																			<input id="staffName" name="staffName"
																				placeholder="Enter Staff Name" class="form-control"
																				role="textbox">
																		</div>
																		<div id="errorStaffName" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<div>
																		<label for="experience"
																			id="pageLabelImplementationDateTo">Implementation date To  </label> 
																			<span class="RequiredStar"> *</span>
																		</div>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clock"></i>
																				</div>
																			</div>
																			<input id="implementationdateTo"
																				name="implementationdateTo" type="date"
																				class="form-control" role="textbox">
																		</div>
																		<div id="errorImplementationPeriodEnd" style="color: red;"></div>
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-4 pr-4">
																	<div class="row">
																		<label for="occupationClassification"
																			id="pageLabelAffiliation">Affiliation</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<input id="affiliation" name="affiliation"
																				placeholder="Enter Affiliation" class="form-control"
																				role="textbox">
																		</div>
																	</div>
																	<div class="row">
																		<label for="attributeW" id="pageLabelCustomerName">Customer
																			Name </label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>
																			<input id="customerName" name="customerName"
																				placeholder="Enter Customer Name"
																				class="form-control" role="textbox">

																		</div>
																		<div id="errorCustomerName" style="color: red;"></div>
																	</div>
																	<div class="row">
																		<label for="validClassification"
																			id="pageLabelStaffstaff">Staff staff</label>
																		<div class="input-group">
																			<div class="input-group-prepend">
																				<div class="input-group-text bg">
																					<i class="far fa-clone"></i>
																				</div>
																			</div>

																			<select name="data[MailTemplate][codes]" class="form-control input-code" id="staffStaff">
																			<option value="" id="selectInchargeofStaff">Select InCharge Staff</option>
																			</select>
																		</div>
																	</div>
																	<div class="row">
																		<label for="unitPriceFrom"
																			id="pageLabelScheduleddeparturetime">Scheduled
																			departure time </label>

																		<div class="input-group">

																			<div class="col-sm-12 col-md-12 col-lg-6 SizerRight">
																				<span class="btn btn-info"
																					style="border-style: none; background: #FFDFF3; color: black;"
																					id="buttonNoDepartureReport">
																					<input type="checkbox" id="noDepartureReport" name="dispatchClassi" > <span id="spanNoDepartureReport">No
																					Departure Report</span>
																				</span>
																			</div>
																			<div class="col-sm-12 col-md-12 col-lg-6 SizerLeft">
																				<span class="btn btn-info"
																					style="width: 170px; border-style: none; background: #FFF6BD; color: black;"
																					id="buttondepartureReportDelay">
																					<input type="checkbox" id="departureReportDelay" name="dispatchClassi"> <span id="spanDepartureReportDelay">Departure
																					Report Delay </span>
																				</span>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row  pt-2 pb-2">
																<div class="input-group" style="width: 83%">
																	<div class="col-sm-2 col-md-1 col-lg-2 SizerRight">
																		<label for="Status" id="pageLabelStatus">Status</label>
																		
																	</div>
																	<div class="col-sm-3 col-md-3 col-lg-3 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #BFDE56; color: white"
																			id="buttonOpportunityAllocation">
																			<input type="radio" id="opportunityAllocation" name="attendanceStatus" value="1">
																			<span id="spanOpportunityAllocation">Opportunity allocation</span> 
																		</span>
																	</div>
																	<div class="col-sm-3 col-md-3 col-lg-3 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #38BEFF; color: white"
																			id="buttonInterviewRequestEmail">
																			<input type="radio" id="interviewRequestEmail" name="attendanceStatus" value="1"> 
																			<span id="spanInterviewRequestEmail">Interview request email</span>
																		</span>
																	</div>
																	<div class="col-sm-3 col-md-3 col-lg-3 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #4874B4; color: white"
																			id="buttonMatterAssignmentEmail">
																			<input type="radio" id="matterAssignmentEmail" name="attendanceStatus" value="1"> 
																			<span id="spanMatterAssignmentEmail">Matter assignment email</span>
																		</span>
																	</div>
																	<div class="col-sm-2 col-md-2 col-lg-1 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #1DC01D; color: white"
																			id="buttonReporttheDayBefore">
																			<input type="radio" id="reporttheDayBefore" name="attendanceStatus" value="1"> 
																			<span id="spanReporttheDayBefore"> Report the day before</span>
																		</span>
																	</div>
																</div>
															</div>
															<div class="row pt-2 pb-2">
																<div class="input-group" style="width: 85%">
																	<div class="col-sm-2 col-md-1 col-lg-2 SizerRight"
																		style="width: 75%"></div>
																	<div class="col-sm-2 col-md-2 col-lg-2 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #BC1DC4; color: white"
																			id="buttonDepartureReport">
																			<input type="radio" id="departureReport" name="attendanceStatus" value="1"> 
																			<span id="spanDepartureReport">Departure report</span>
																		</span>
																	</div>

																	<div class="col-sm-2 col-md-2 col-lg-2 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #FFB326; color: white"
																			id="buttonArrivalReport">
																			<input type="radio" id="arrivalReport"
																				name="attendanceStatus" value="1"> 
																				<span id="spanArrivalReport">Arrival report</span>
																		</span>
																	</div>
																	<div class="col-sm-2 col-md-2 col-lg-2 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #BBBBBB; color: white"
																			id="buttonClosingReport">
																			<input type="radio" id="closingReport" name="attendanceStatus" value="1" > 
																			<span id="spanClosingReport">Closing report</span>
																		</span>
																	</div>
																	<div class="col-sm-2 col-md-2 col-lg-2 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #707070; color: white"
																			id="buttonExpenseReport">
																			<input type="radio" id="expenseReport" name="attendanceStatus" value="1"> 
																			<span id="spanExpenseReport">Expense report</span>
																		</span>
																	</div>
																	<div class="col-sm-2 col-md-2 col-lg-2 SizerRight">
																		<span class="btn btn-info"
																			style="border-style: none; background: #d32a0e; color: white;"
																			id="buttonAbsenceReport">
																			<input type="radio" id="absenceReport" name="attendanceStatus" value="1"> 
																			<span id="spanAbsenceReport">Absence report</span>
																		</span>
																	</div>
																</div>
																
															</div>
															<div class="row ">
																<div class="col-sm-2 col-md-2 col-lg-2 SizerRight"> </div>
																<div class="col-sm-2 col-md-2 col-lg-10 SizerRight"> <div id="errorAttendanceStatus" style="color: red;" > </div></div>
																
															</div>
															
															<div class="row ">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
																<button onclick="" id="searchBtn"
																	class="btn btn-info SearchButton-2   ml-0 mr-0"
																	role="button">Search</button>
															</div>
														</form>
													</div>
												</div>
												<div class="card m-3">
													<div class="card-body">
														<div class="row ">

															<div class="col-sm-6 col-md-6 col-lg-8 ">
																<div class="btn-group col-lg-4 col-sm-4 pl-sm-8 "
																	role="group">
																	<Select id="staffPaymentMethod" style="width: 200px"
																		class="form-control ">
																		<option value="4" id="selectOptionReportDayBefore">Report
																			the day before</option>
																		<option value="5" id="selectOptionDepartureReport">Departure
																			report</option>
																		<option value="6" id="selectOptionArrivalReport">Arrival
																			report</option>
																		<option value="7" id="selectOptionClosingReport">Closing
																			report</option>
																		<option value="8" id="selectOptionExpenseReport">Expense
																			report</option>
																		<option value="9" id="selectOptionAbsenceReport">Absence
																			report</option>

																	</Select>
																</div>
																<button onclick="batchStatusChange()" id="buttonChangeStatus"
																	class="btn btn-info SearchButton-2   ml-0 mr-0"
																	role="button">Batch change of status</button>
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

							<div class="row">
								<div class="col-lg-12 col-xl-12 ">
									<div class="card m-3">
										<div class="card-body">
											<div class="card-title">
												<i class="i-File-Clipboard-File--Text cursor-pointer"
													role="generic"></i><span id="pageSpanSearchStaffDetails">
													Search Staff Assignment Details</span>
											</div>
											<div class="table-responsive">
												<table
													class="display table table-striped table-bordered hover"
													id="search_staff_table" style="width: 100%">
													<thead>
														<tr class="thClass">
															<th style="background: rgb(245, 249, 253); color: #647a8e;"> </th>
															<th style="background: rgb(245, 249, 253); color: #647a8e;" id="tableSearchStaffTHNo">No</th>
															<th style="background: rgb(245, 249, 253); color: #647a8e;" id="tableSearchStaffTHChoice">Choice</th>
															<th class="color-1" style="background: rgb(208, 226, 241); color: #647a8e; min-width:125px;" id="tableSearchStaffTHWorkLocation">Item / Work location</th>
															<th class="TableTHMinWidth text-center" style="background: rgb(208, 226, 241); color: #647a8e;" id="tableSearchStaffTHCustomerName">Customer Name</th>
															<th class="color-1" style="background: rgb(208, 226, 241); color: #647a8e;" id="tableSearchStaffTHDispatchClassification">Dispatch classification</th>
															<th class="TableTHMinWidth text-center" style="background: #a0dade; color: #647a8e;" id="tableSearchStaffTHImplementationDate">Implementation date</th>
															<th class="TableTHMinWidth-2 text-center" style="background: #a0dade; color: #647a8e;" id="tableSearchStaffTHScheduledDepartureTime">Scheduled departure time</th>
															<th class="TableTHMinWidth-2 text-center" style="background: rgb(208, 226, 241); color: #647a8e;" id="tableSearchStaffTHAssignStaff">Assign staff</th>
															<th class="TableTHMinWidth text-center" style="background: rgb(208, 226, 241); color: #647a8e;" id="tableSearchStaffTHStaffStaff">Staff staff</th>
															<th class="TableTHMaxWidth text-center" style="background: rgb(208, 226, 241); color: #647a8e; min-width:150px;" id="tableSearchStaffTHUpdatedRegularly">State 
															<input type="checkbox" class="tableCheckClass">Updated regularly
															</th>
															<th class="TableButtonTH" style="min-width: 10px"></th>
														</tr>
													</thead>
													<tbody id="tbodyId">
												
													</tbody>
												</table>
											</div>
										</div>
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
                   <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="far fa-times-circle"></i></span></button>
             </div>
             <div id="map"></div>
			</div>
		</div>
	</div>
	<!-- ============ Search UI End ============= -->
	<span id="spanScriptID"></span>
	<script src="./dist-assets/js/language_main.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"attendances");
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

	<script src="./dist-assets/js/attendance-management-validate.js"></script>


	<script>

         const serverHTTP = "<%=serverHTTP%>";
         const  GUID = localStorage.getItem("GUID");
         const  searchUuid = localStorage.getItem("uuid");  
         const role = localStorage.getItem("userRole");
         
         $(document).ready(function () {
                  drawDtataTable(lan);   
                  
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
      						var select  = document.getElementById('staffStaff');

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
           });
 
         let staffStaffId = "<%= request.getParameter("staffStaffId")%>" ;

         if("<%= request.getParameter("staffStaffId")%>" != "" )
	       {
			 document.getElementById("staffStaffID").value = staffStaffId;
			 runSearch();
	       }
		
         
       function runSearch()
       {
    	   var requestNode = {};

    	   var assignmentClassification = document.getElementById("assignmentClassification").value != "" ? document.getElementById("assignmentClassification").value.trim() : 0;
    	   var dispatchClassification = document.getElementById("dispatchClassification").value != "" ? document.getElementById("dispatchClassification").value.trim() : 0;
    	   var belonging = document.getElementById("affiliation").value.trim() != "" ? document.getElementById("affiliation").value.trim() : null;
    	   var caseName = document.getElementById("projectTitle").value.trim() != "" ? document.getElementById("projectTitle").value.trim() : null;
    	   var workLocation = document.getElementById("workLocation").value.trim() != "" ? document.getElementById("workLocation").value.trim() : null;
    	   var customerCompanyName = document.getElementById("customerName").value.trim() != "" ? document.getElementById("customerName").value.trim() : null;
    	   var staffCode = document.getElementById("staffCode").value.trim() != "" ? document.getElementById("staffCode").value.trim() : null;
    	   var name = document.getElementById("staffName").value.trim() != "" ? document.getElementById("staffName").value.trim() : null;
    	   var inChargeStaff = document.getElementById("staffStaff").value.trim() != "" ? document.getElementById("staffStaff").value.trim() : null;
    	   var implementationDateFrom = document.getElementById("implementationDateFrom").value;
    	   var implementationDateTo = document.getElementById("implementationdateTo").value;
    	  
    	   staffIDValue = null;
   	       if(staffStaffId != null)
	        {
		    	staffStaffId = "";
		    	const date = new Date();
			    const currentYear  = date.getFullYear();
			    const currentMonth = date.getMonth()+1;
			    const daysInMonth = new Date(currentYear, currentMonth, 0).getDate();
			    //implementationDateFrom =  currentYear+"-"+currentMonth+"-0"+ 1;
			    //implementationDateTo =  currentYear+"-"+currentMonth+"-"+ daysInMonth ;
			    //console.log(implementationDateFrom)
			    //console.log(implementationDateTo)
			    //document.getElementById("implementationDateFrom").value = implementationDateFrom;
			    //document.getElementById("implementationdateTo").value = implementationDateTo; 
	 	    	staffIDValue = document.getElementById("staffStaffID").value.trim()!="" ? document.getElementById("staffStaffID").value.trim() : null ; 
	        }
    	   
    	   var noDepartureReport = document.getElementById("noDepartureReport").checked == true ? 1 : 0;
    	   var departureReportDelay = document.getElementById("departureReportDelay").checked == true ? 1 : 0;
    	   var temporaryAssignStatus = document.getElementById("opportunityAllocation").checked == true ? 1 : 0;
    	   var interviewRequestStatus = document.getElementById("interviewRequestEmail").checked == true ? 1 : 0;
    	   var matterAllocateStatus = document.getElementById("matterAssignmentEmail").checked == true ? 1 : 0;
    	   var reportDayBeforeStatus = document.getElementById("reporttheDayBefore").checked == true ? 1 : 0;
    	   var departureReportStatus = document.getElementById("departureReport").checked == true ? 1 : 0;
    	   var arrivalReportStatus = document.getElementById("arrivalReport").checked == true ? 1 : 0;
    	   var closingReportStatus = document.getElementById("closingReport").checked == true ? 1 : 0;
    	   var expenseReportStatus = document.getElementById("expenseReport").checked == true ? 1 : 0;
    	   var absenceReportStatus = document.getElementById("absenceReport").checked == true ? 1 : 0;
    	   
    	   requestNode['noDepartureReport'] = noDepartureReport;
    	   requestNode['departureReportDelay'] = departureReportDelay;
    	   requestNode['assignmentClassification'] = assignmentClassification;
    	   requestNode['dispatchClassification'] = dispatchClassification;
    	   requestNode['belongings'] = belonging;
    	   requestNode['caseName'] = caseName;
    	   requestNode['workLocation'] = workLocation;
    	   requestNode['customerCompanyName'] = customerCompanyName;
    	   requestNode['staffCode'] = staffCode;
    	   requestNode['staffName'] = name;
    	   requestNode['inChargeStaff'] = inChargeStaff;
    	   requestNode['implementationDateFrom'] = implementationDateFrom;
    	   requestNode['implementationDateTo'] = implementationDateTo;
    	   requestNode['temporaryAssignStatus'] = temporaryAssignStatus;
    	   requestNode['interviewRequestStatus'] = interviewRequestStatus;
    	   requestNode['matterAllocateStatus'] = matterAllocateStatus;
    	   requestNode['reportDayBeforeStatus'] = reportDayBeforeStatus;
    	   requestNode['departureReportStatus'] = departureReportStatus;
    	   requestNode['arrivalReportStatus'] = arrivalReportStatus;
    	   requestNode['closingReportStatus'] = closingReportStatus;
    	   requestNode['expenseReportStatus'] = expenseReportStatus;
    	   requestNode['absenceReportStatus'] = absenceReportStatus;
    	   requestNode['staffId'] = staffIDValue ;
    	   
    	 
    	   $.ajax({
				beforeSend : function(request) {
				document.getElementById("loaderNotify").style.display = "";
				request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Attendance/SearchAttendance',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(requestNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						console.log("Got the response");
						showResult(result, request);
						
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
       
       function showResult(result, request){
    	    table.destroy();
			$("#tbodyId").empty();
			for (i = 0; i < result.data.length; i++) {
				
				caseName = result.data[i].caseName != null ? result.data[i].caseName : "";
				workLocation = result.data[i].workLocation != null ? result.data[i].workLocation : "";
				customerCompanyName = result.data[i].customerCompanyName != null ? result.data[i].customerCompanyName : "";
				dispatchClassification = dispatchClassificationArray[result.data[i].dispatchClassification] != null ? dispatchClassificationArray[result.data[i].dispatchClassification]: "";
				implementationDate = result.data[i].implementationDateFrom != null ? result.data[i].implementationDateFrom: "";
				scheduledStartTime = result.data[i].scheduledStartTime != null ? result.data[i].scheduledStartTime: "";
				scheduledEndTime = result.data[i].scheduledEndTime != null ? result.data[i].scheduledEndTime: "";
				departureTime = result.data[i].departureTime != null ? result.data[i].departureTime: "";
				meetingTime = result.data[i].meetingTime != null ? result.data[i].meetingTime: "";
				staffName = result.data[i].staffName != null ? result.data[i].staffName: "";
				staffCode = result.data[i].staffCode != null ? result.data[i].staffCode: "";
				telNumber = result.data[i].telNumber != null ? result.data[i].telNumber: "";
				inChargeStaff = result.data[i].inChargeStaff != null ? result.data[i].inChargeStaff: "";
				overtimeHours = result.data[i].overtimeHours != null ? result.data[i].overtimeHours: "00:00";
				midnightWorkingHours = result.data[i].midnightWorkingHours != null ? result.data[i].midnightWorkingHours: "00:00";
				holidayWorkingHours = result.data[i].holidayWorkingHours != null ? result.data[i].holidayWorkingHours: "00:00";
				
				var departureTimeText="";
				if(result.data[i].departureTime != null && result.data[i].departureTime != "")
					{
					departureTimeText='<span id="tableHelptextMeetingTime" name="tableHelptextMeetingTime">*Exceeded scheduled depurture time </span><br/>';
					}
				var meetingTimeText="";
				if(result.data[i].meetingTime != null && result.data[i].meetingTime != "")
					{
					meetingTimeText='<span id="tableHelptextMeetingTime" name="tableHelptextMeetingTime">(Meeting </span>'+ meetingTime + ') <br/>';
					}
				
				temporaryAssignStatus = result.data[i].temporaryAssignStatus != null ? result.data[i].temporaryAssignStatus:0;
				interviewRequestStatus = result.data[i].interviewRequestStatus != null ? result.data[i].interviewRequestStatus:0;
				matterAllocateStatus = result.data[i].matterAllocateStatus != null ? result.data[i].matterAllocateStatus:0;
				reportDayBeforeStatus = result.data[i].reportDayBeforeStatus != null ? result.data[i].reportDayBeforeStatus:0;
				departureReportStatus = result.data[i].departureReportStatus != null ? result.data[i].departureReportStatus:0;
				arrivalReportStatus = result.data[i].arrivalReportStatus != null ? result.data[i].arrivalReportStatus:0;
				closingReportStatus = result.data[i].closingReportStatus != null ? result.data[i].closingReportStatus:0;
				expenseReportStatus = result.data[i].expenseReportStatus != null ? result.data[i].expenseReportStatus:0;
				absenceReportStatus = result.data[i].absenceReportStatus != null ? result.data[i].absenceReportStatus:0;
				
				interviewMailSendDateTime = result.data[i].interviewMailSendDateTime != null ? result.data[i].interviewMailSendDateTime:"";
				matterAssignMailSendDateTime = result.data[i].matterAssignMailSendDateTime != null ? result.data[i].matterAssignMailSendDateTime:"";
				confirmedDateTime = result.data[i].confirmedDateTime != null ? result.data[i].confirmedDateTime:"";
				departureReportDateTime = result.data[i].departureReportDateTime != null ? result.data[i].departureReportDateTime:"";
				arrivalReportDateTime = result.data[i].arrivalReportDateTime != null ? result.data[i].arrivalReportDateTime:"";
				closingReportDateTime = result.data[i].closingReportDateTime != null ? result.data[i].closingReportDateTime:"";
				expenseReportDateTime = result.data[i].expenseReportDateTime != null ? result.data[i].expenseReportDateTime:"";
				absenceReportDateTime = result.data[i].absenceReportDateTime != null ? result.data[i].absenceReportDateTime:"";
				
				confirmReportDayBeforeStatus = result.data[i].confirmReportDayBeforeStatus != null ? result.data[i].confirmReportDayBeforeStatus:"";
				confirmArrivalReportStatus = result.data[i].confirmArrivalReportStatus != null ? result.data[i].confirmArrivalReportStatus:"";
				confirmDepartureReportStatus = result.data[i].confirmDepartureReportStatus != null ? result.data[i].confirmDepartureReportStatus:"";
				confirmClosingReportStatus = result.data[i].confirmClosingReportStatus != null ? result.data[i].confirmClosingReportStatus:"";
				confirmExpenseReportStatus = result.data[i].confirmExpenseReportStatus != null ? result.data[i].confirmExpenseReportStatus:"";
				
				var status = getStatus(temporaryAssignStatus, interviewRequestStatus, matterAllocateStatus, reportDayBeforeStatus, departureReportStatus, arrivalReportStatus, closingReportStatus, expenseReportStatus, absenceReportStatus);
				var position = getPosition(status);
				var date = getDate(status, interviewMailSendDateTime, matterAssignMailSendDateTime, confirmedDateTime, departureReportDateTime, arrivalReportDateTime, closingReportDateTime, expenseReportDateTime, absenceReportDateTime);
				
				var finalConfirmationStatus = getConfirmationStatus(status, confirmReportDayBeforeStatus, confirmArrivalReportStatus, confirmDepartureReportStatus, confirmClosingReportStatus, confirmExpenseReportStatus);
				
				var confirmationText ="";
				if(finalConfirmationStatus==1)
					{confirmationText ='<span id="tableHelptextconfirmedText" name="tableHelptextconfirmedText"><i class="far fa-check-circle"></i> confirmed </span><br/>';}
				else if(finalConfirmationStatus==0)
					{confirmationText ='<span id="tableHelptextconfirmationText" name="tableHelptextconfirmationText" style="color: #61AED8;" onclick="confirmation('+result.data[i].assignmentId+','+status+', this)"><u>confirmation </u></span><br/>';}
					
				var checkboxText ="";
				if(status==4 || status==5 || status==6 || status==7 || status==8 || status==9)
					{
					checkboxText ='<label class="container"><input id="tableCheck" name="tableCheck[]" class="wrapperDivHidden" type="hidden" value="'+result.data[i].assignmentId+'"><input id="tableCheck" name="tableCheck[]" type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+status+'"><span class="checkmark"></span></label>';
					}
				else
					{
					checkboxText='<label class="container"><input id="tableCheck" name="tableCheck[]" type="hidden" value="'+result.data[i].assignmentId+'"><input type="hidden" value="'+status+'"></label>';
					}
				
				let newRow = ' <tr>'+
					'<td style="background: rgb(255 255 255);color: #647a8e;"></td>'+
					'<td style="background: rgb(255 255 255);color: #647a8e;">'+(i + 1) + '</td>'+
					'<td style="background: rgb(255 255 255);color: #647a8e;">'+
					 checkboxText+
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+
					'<span id="tableHelptextCustomerName" name="tableHelptextCustomerName">Project  Name : </span>'+ caseName + '<br/>'+
					'<span id="tableHelptextProjectName" name="tableHelptextProjectName">Work Location : </span>'+ workLocation + '<br/>'+
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ customerCompanyName +'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ dispatchClassification +
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ 
					'<span id="tableHelptextScheduleDate" name="tableHelptextScheduleDate">Schedule Date : </span>'+ implementationDate + '<br/>'+
					'<span id="tableHelptextScheduleTime" name="tableHelptextScheduleTime">Schedule Time : </span>'+ scheduledStartTime + ' ~ ' + scheduledEndTime + '<br/>'+
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ departureTime + '<br/>' + meetingTimeText + departureTimeText +
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ staffName + '<br/> ('+ staffCode + ') <br/> '+ telNumber +
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ inChargeStaff +
					'</td>'+
					'<td style="background: rgb(245 249 253);color: #647a8e;">'+ position + '<br/>' + date.substr(0,16) + '<br/>'+ confirmationText + '<br/>'+
					'<span id="tableHelptextOvertimeHours" name="tableHelptextOvertimeHours" style="color: #d32a0e;"> [overtime hours ' + overtimeHours +']  </span><br/>'+
					'<span id="tableHelptextMidnightWorkingHours" name="tableHelptextMidnightWorkingHours" style="color: #d32a0e;"> [Midnight hours ' + midnightWorkingHours +']  </span><br/>'+
					'<span id="tableHelptextHolidayWorkingHours" name="tableHelptextHolidayWorkingHours" style="color: #d32a0e;"> [Holiday hours ' + holidayWorkingHours +']  </span><br/>'+
					'</td>'+
					'<td style="width:5%;background: rgb(255 255 255);color: #647a8e;" >'+
					'<button class="btn DetailsButton ml-1" onclick="viewDetails(\''+result.data[i].implementId+'\',\''+result.data[i].implementationDateFrom+'\',\''+result.data[i].staffId+'\',\''+result.data[i].assignmentId+'\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'+
					'</td>' + 
					'</tr>';
				 $("#search_staff_table tbody").append(newRow);
			}
			 drawDtataTable(getSiteLanguage()); 
        	 loadSelectedLanguage(getSiteLanguage(),"attendances");
       }
       function getStatus(value1, value2, value3, value4, value5, value6, value7, value8, value9){
    	   
    	   let currentStatusValue=0;
     	  if(value1)
     			{currentStatusValue=1;}
     	  if(value2)
 		  		{currentStatusValue=2;}
     	  if(value3)
 		 		{currentStatusValue=3;}
     	  if(value4)
 		  		{currentStatusValue=4;}
     	  if(value5)
 		  		{currentStatusValue=5;}
     	  if(value6)
 		  		{currentStatusValue=6;}
     	  if(value7)
 		  		{currentStatusValue=7;}
     	  if(value8)
 		  		{currentStatusValue=8;}
     	  if(value9)
 		  		{currentStatusValue=9;}
     	  
     	  return currentStatusValue;
       }

       function getPosition(value)
       {
    	   let currentStatus="";
    	   
    	   switch (value) {
    	   case 1:
    		   currentStatus = '<span class="btn btn-info" style="border-style: none; background: #BFDE56; color: white" id="HelptextOpportunityAllocation" name="HelptextOpportunityAllocation"> Opportunity allocation </span> <br/>';;
    	     break;
    	   case 2:
    		   currentStatus = '<span class="btn btn-info" style="border-style: none; background: #38BEFF; color: white" id="HelptextInterviewRequestEmail" name="HelptextInterviewRequestEmail"> Interview request email </span> <br/>';
    	     break;
    	   case 3:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #4874B4; color: white" id="HelptextMatterAssignmentEmail" name="HelptextMatterAssignmentEmail"> Matter assignment email </span> <br/>';
    	     break;
    	   case 4:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #1DC01D; color: white" id="HelptextReportDayBefore" name="HelptextReportDayBefore"> Report the day before </span> <br/>';
    	     break;
    	   case 5:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #BC1DC4; color: white" id="HelptextDepartureReport" name="HelptextDepartureReport"> Departure report </span> <br/>';
    	     break;
    	   case 6:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #FFB326; color: white" id="HelptextArrivalReport" name="HelptextArrivalReport" onclick="getLocation()"> Arrival report </span> <br/>';
    	     break;
    	   case  7:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #BBBBBB; color: white" id="HelptextClosingReport" name="HelptextClosingReport"> Closing report </span> <br/>';
    		   break;
    	   case  8:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #707070; color: white" id="HelptextExpenseReport" name="HelptextExpenseReport"> Expense report </span> <br/>';
    		   break;
    	   case  9:
    		   currentStatus='<span class="btn btn-info" style="border-style: none; background: #d32a0e; color: white;" id="HelptextAbsenceReport" name="HelptextAbsenceReport"> Absence report </span> <br/>';
    		   break;
    	   default:
    		   currentStatus=""; 
    	   }
    	  
    	  return currentStatus;
       }
       
       function getDate(value, date1, date2, date3, date4, date5, date6, date7, date8)
       {
    	   let finalDate ="";
    	   switch (value) {
    	   case 2:
    		   finalDate=date1;
    	     break;
    	   case 3:
    		   finalDate=date2;
    	     break;
    	   case 4:
    		   finalDate=date3;
    	     break;
    	   case 5:
    		   finalDate=date4;
    	     break;
    	   case 6:
    		   finalDate=date5;
    	     break;
    	   case 7:
    		   finalDate=date6;
    	     break;
    	   case 8:
    		   finalDate=date7;
    		   break;
    	   case 9:
    		   finalDate=date8;
    		   break;
    	   default:
    		   finalDate=""; 
    	   }
    	  
    	  return finalDate;
    	   
       }
       
       function getConfirmationStatus(value, status1, status2, status3, status4, status5)
       {
    	   let finalConfirmationStatus = 3;
    	   switch (value) {
    	   case 4:
    		   finalConfirmationStatus=status1;
    	     break;
    	   case 5:
    		   finalConfirmationStatus=status2;
    	     break;
    	   case 6:
    		   finalConfirmationStatus=status3;
    	     break;
    	   case 7:
    		   finalConfirmationStatus=status4;
    	     break;
    	   case 8:
    		   finalConfirmationStatus=status5;
    	     break;
    	   default:
    		   finalConfirmationStatus=3;
    	   }
    	  
    	  return finalConfirmationStatus;
    	   
       }
       
       function getConfirmationStatus(value, status1, status2, status3, status4, status5)
       {
    	   let finalConfirmationStatus = 3;
    	   switch (value) {
    	   case 4:
    		   finalConfirmationStatus=status1;
    	     break;
    	   case 5:
    		   finalConfirmationStatus=status2;
    	     break;
    	   case 6:
    		   finalConfirmationStatus=status3;
    	     break;
    	   case 7:
    		   finalConfirmationStatus=status4;
    	     break;
    	   case 8:
    		   finalConfirmationStatus=status5;
    	     break;
    	   default:
    		   finalConfirmationStatus=3;
    	   }
    	  
    	  return finalConfirmationStatus;
    	   
       }
       
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
                       { orderable: false, targets: 1 },
                       { orderable: false, targets: 11 },
                       { responsivePriority: 3, targets: 8 },
                       { responsivePriority: 1, targets: 10 },
                       { responsivePriority: 2, targets: 11 },
                  ],
                    order: [ 1, 'asc' ]   
                });
        }
        
        function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage,"attendances");
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
        
        function viewDetails(implementationId, implementDate, staffId,  assignmentId) {
			localStorage.setItem("implementationIDDetails", implementationId);
			localStorage.setItem("implementDate", implementDate);
			localStorage.setItem("userIDDetails", staffId);
			localStorage.setItem("assignmentId", assignmentId);
			window.location.href = "assignment-details.jsp";
		}
        
        function getLocation()
        {
        	$('#confirmDeleteModal').modal('show');
        	
        	x = navigator.geolocation;
        	x.getCurrentPosition(success, failure);
        	
        	function success(position)
        	{
        		var myLatitude = position.coords.latitude;
        		var myLongitude = position.coords.longitude;
        		
        		var coords = new google.maps.LatLng(myLatitude, myLongitude);
        		
        		var mapOptions = {
        				zoom:9,
        				center:coords,
        				mapTypeId: google.maps.MapTypeId.ROADMAP
        		}
        		
        		var map = new google.maps.Map(document.getElementById("map"), mapOptions);
        		var marker = new google.maps.Marker({map:map, position:coords});
        	}
        	
        	function failure(){}
        }
        
        function confirmation(assignmentId, status, node)
        {
        	var requestNode = {};
        	
        	requestNode['uuid'] = searchUuid;
     	   	requestNode['assignmentId'] = assignmentId;
     	   	requestNode['currentStatus'] = status;
     	   
        	 $.ajax({
 				beforeSend : function(request) {
 				document.getElementById("loaderNotify").style.display = "";
 				request.setRequestHeader("GUID", GUID);
 				},
 				url : serverHTTP + 'Attendance/AddConfirmation',
 				method : 'POST',
 				contentType : 'application/json',
 				data : JSON.stringify(requestNode),
 				dataType : 'json',
 				success : function(result, status, request) {
 					if (result.status == 200) {
 					
 						showMessage('success',"N1266");
 						node.innerHTML='<i class="far fa-check-circle"></i> confirmed </span><br/>';
 					} else {
 						showMessage('error',"N1265");
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
        
        
        function batchStatusChange()
        {
        	
        	var requestNode = {};
        	var list = [];
        	bulkStatus = document.getElementById("staffPaymentMethod").value;
        	
        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck[]"]:checked');
        	
        	if (tableCheckNode.length == 0) 
       	 {
       		 showSystemMessage('info',"N1275"); 
       	 }
        else
       	 {
       		for(i=0;i<tableCheckNode.length;i++){
        		  parentRow =  $(tableCheckNode[i]).closest('tr');
        		  
          	assignmentId = parentRow.find('input[type="hidden"]').val();
          	currentStatus = parentRow.find("input:checkbox").val();
          	
          	var tempList ={	"assignmentId":assignmentId,
              				"currentStatus":currentStatus
              		} ;
          	
          	list.push(tempList); 
          	}

          	requestNode['bulkStatus'] = bulkStatus;
       	   	requestNode['list'] = list;

       	   $.ajax({
  				beforeSend : function(request) {
  				document.getElementById("loaderNotify").style.display = "";
  				request.setRequestHeader("GUID", GUID);
  				},
  				url : serverHTTP + 'Attendance/bulkStatusChange',
  				method : 'POST',
  				contentType : 'application/json',
  				data : JSON.stringify(requestNode),
  				dataType : 'json',
  				success : function(result, status, request) {
  					if (result.status == 200) {
  					
  						showMessage('success',"N1266");
  						runSearch();
  					} else {
  						showMessage('error',"N1265");
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
        
        $("#buttonAttendanceCSVOutput").click(function( event ) { 
       	   $.ajax({
                 beforeSend: function(request) {
              	 document.getElementById("loaderNotify").style.display = "";
                  request.setRequestHeader("GUID", GUID);
                 },
                 url: serverHTTP +'Attendance/ListCSVOutput',
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
        
        </script>
        
          <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqvydGfYqD81eOj1-ako8Fpmln6eVWzj0&callback=initMap"></script>
</body>

</html>