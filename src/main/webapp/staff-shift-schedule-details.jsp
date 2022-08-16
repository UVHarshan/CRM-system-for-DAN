<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleStaffShiftSchedule">Staff Shift Schedule</title>
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
									<div class="col-md-6">
										<h1>
											<i class="fa fa-file-alt text-30" role="generic"></i><span
												id="pageSpanHeadingStaffShiftSchedule"> Staff Shift
												Schedule</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingStaffShiftSchedule">
											You can modify the staff shift schedule and check the
											assignment status of this staff.</p>
									</div>
									<div class="col-md-6">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">
												<button
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button' onclick="window.history.back();">
													<span id="buttonSpanAssignmentList"> Assignment List</span>
												</button>

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
																	id="accordionDivStaffShiftSchedule"> </div>

															</div>
														</button>
													</h5>
												</div>
												<div id="resumeInformation" class="collapse show"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pt-3 pb-3">


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffShiftScheduleName"> Name
																	</span>
																</div>
																<div>
																	<input type="text" readonly id="shiftScheduleName"
																		class="form-control">

																</div>
																<div id="errorShiftScheduleName" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNameKatakana"> Name Katakana </span>
																</div>
																<div>
																	<input type="text" id="shiftScheduleNameKatakana"
																		class="form-control" readonly>

																</div>
																<div id="errorshiftScheduleNameKatakana"
																	class="RequiredStar"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffCode"> Staff Code </span>
																</div>
																<div>
																	<input type="text" readonly id="shiftScheduleStaffCode"
																		class="form-control">
																</div>
																<div id="errorShiftScheduleStaffCode"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubmissionDate"> Submission
																		Date and Time </span>
																</div>
																<div>
																	<input type="text" readonly
																		id="shiftScheduleSubmissionDate" class="form-control">
																</div>
																<div id="errorShiftScheduleSubmissionDate"
																	class="RequiredStar"></div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">&nbsp;</div>




															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<div class="table-responsive">
																	<table class="display table table-striped table-bordered mb-0" id="shiftSchedule_table" style="width: 100%">
																		<thead id="shiftScheduleTheadId">
																			<tr>
																				<th id="tableShiftScheduleTHDate" style="width: 15%">Date</th>
																				<th id="tableShiftScheduleTHWorkAvailability" style="width: 15%">
																				  <span id="spanStaffShiftScheduleWorkAvailability">(S) Work Availability </span>
																					<select style="text-align:center" id="workAvailabilityTH" name="quotationSalesRepresentative" class="form-control p-0" role="combobox">
																						<option id="selectWorkAvailability"  value=""></option>
																						<option id="selectWorkAvailability1" value="1">O</option>
																						<option id="selectWorkAvailability2" value="2">&#916;</option>
																						<option id="selectWorkAvailability3" value="0">X</option>
																				   </select>
																				</th>
																				<th id="tableShiftScheduleTHPublicMemo"
																					style="width: 35%">(S) Public Memo</th>
																				<th id="tableShiftScheduleTHPrivateMemo"
																					style="width: 35%">Private Memo</th>
																			</tr>
																		</thead>
																		<tbody id="shiftScheduleTbodyId">
																			<tr id="shiftScheduleTrId" type="hidden">
																				<input type="hidden" name="quotationItemTaxableID[]">
																				<td class=""></td>
																				<td class="center-content">
																					<select id="workAvailability" name="workAvailabilityTBody[]" class="form-control" role="combobox">
																							<option value="" id="selectWorkAvailability"></option>
																							<option id="selectWorkAvailability1" value="1">O</option>
																							<option id="selectWorkAvailability2" value="2">&#916;</option>
																							<option id="selectWorkAvailability2" value="3">X</option>
																					</select>
																				</td>
																				<td>
																				  <input name="quotationItemTaxableItemName[]" type="text" class="form-control no-border no-outline item-non-major">
																				</td>
																				<td>
																				  <input type="text" name="quotationItemTaxableUnitPrice[]"onfocusout="calTaxableUnitPrice(this)" class="form-control no-border no-outline right-content">
																				</td>
																			</tr>
																		</tbody>
																	</table>




																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPrivateMemo"> Private Memo
																		(for displaying the staff shift list screen) </span>
																</div>
																<div>
																	<textarea class="form-control" id="privateMemo"
																		placeholder=""></textarea>

																</div>
																<div id="errorshiftScheduleNameKatakana"
																	class="RequiredStar"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks"> Remarks </span>
																</div>
																<div>
																	<textarea class="form-control" id="quotationRemarks"
																		placeholder=""></textarea>

																</div>
																<div id="errorshiftScheduleNameKatakana"
																	class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConfirmationDateAndTime">
																		Confirmation Date and Time </span>
																</div>
																<div>
																	<input type="datetime-local"
																		id="confirmationDateAndTime" class="form-control">

																</div>
																<div id="errorSalesRepresentative" class="RequiredStar"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanConfirmationPerson">
																		Confirmation Person </span>
																</div>
																<div>
																	<select id="confirmationPerson" name="quotationSalesRepresentative" class="form-control" role="combobox">
																		<option id="selectConfirmationPerson"  value="" >Select Confirmation Person</option>
																	</select>

																</div>
																<div id="errorSalesRepresentative" class="RequiredStar"></div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 pt-3 ContentAlignRC">
															    <input type="hidden" id="staffShiftID" value=""/>
																<button class="btn btn-info" id="buttonUpdateStaffShiftSchedule" onclick="registerShiftSchedule()">Update Staff Shift Schedule</button>
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
						<div class="loading" id="loaderNotify"  style="display: none;"> 
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
		<script src="./dist-assets/js/scripts/datatables.script.min.js"></script>


		<script src="./dist-assets/js/quotation-details-validate.js"></script>
		<script>
	        const serverHTTP = "<%=serverHTTP%>";
			const GUID = localStorage.getItem("GUID");
			const uuid = localStorage.getItem('uuid');
			const role = localStorage.getItem("userRole");
			const staffID = "<%= request.getParameter("staffIDShiftSchedule")%>" ;
			const targetYear = "<%= request.getParameter("targetYearShiftSchedule")%>" ;
			const targetMonth = "<%= request.getParameter("targetMonthShiftSchedule")%>" ;
			const shiftScheduleId = "<%= request.getParameter("shiftScheduleId")%>" ;
			const daysInMonth = getDaysInMonth(targetMonth-1, targetYear);

			$(document).ready(function() {
								let dataNode = {};
								dataNode['staffId'] = staffID;
								dataNode['uuid'] = uuid;
								dataNode['targetYear']  = targetYear;
								dataNode['targetMonth'] = targetMonth;
								dataNode['shiftScheduleId'] = shiftScheduleId;
								
								let dataNodeAuthority = '{"id" : 0, "authority": '+role+ '}';
								
								$.ajax({
										beforeSend : function(request) {
											document.getElementById("loaderNotify").style.display = "";
										    request.setRequestHeader("GUID", GUID);
											},
											url : serverHTTP + 'ShiftSchedule/ViewShiftScheduleFromAdmin',
											method : 'POST',
											contentType : 'application/json',
											data: JSON.stringify(dataNode),
											dataType : 'json',
											success : function(result, status,request) {
												if (result.status == 200) {
													viewShiftScheduleFromAdmin(result);
												} else {
													console.log("Sorry getQuotationInfo error");
												}
											},
											complete:function(data){
									           	   document.getElementById("loaderNotify").style.display = "none";
									        },
											error : function(error) {
												console.log(JSON.stringify(error));
											}
										});
								
								
								$.ajax({
									beforeSend : function(request) {
										document.getElementById("loaderNotify").style.display = "";
										request.setRequestHeader("GUID", GUID);
									},
									url : serverHTTP + 'Employee/GetInchargeOfStaff',
									method : 'POST',
									contentType : 'application/json',
									data : dataNodeAuthority,
									dataType : 'json',
									success : function(result, status, request) {
										if (result.status == 200) {
											console.log("ok")
											var select  = document.getElementById('confirmationPerson');

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
			
			// Function for getting rows for days in month
			addShiftScheduleRow();
			
			function addShiftScheduleRow()
			{
				var q = new Date();
				var month = q.getMonth();
				var year = q.getFullYear();
				
				var monthsEng = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
				var monthsJap = ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'];				
				
				var langNow = getSiteLanguage();
				console.log("pageLanguage is  " + langNow);
				if ( langNow == "English"){
					document.getElementById("accordionDivStaffShiftSchedule").innerHTML = "For " + monthsEng[targetMonth-1] + " " +  targetYear;
				}else if(langNow == "Japanese"){
					document.getElementById("accordionDivStaffShiftSchedule").innerHTML = "について  " + monthsJap[targetMonth-1] + " " +  targetYear;
				}
				
			}
			
			
			function viewShiftScheduleFromAdmin(result) {
				
				document.getElementById("staffShiftID").value = result.data.id;
				document.getElementById("shiftScheduleName").value = result.data.name;
				document.getElementById("shiftScheduleNameKatakana").value = result.data.nameKatakana;
				document.getElementById("shiftScheduleStaffCode").value = result.data.staffCode;
				document.getElementById("shiftScheduleSubmissionDate").value = result.data.submissionDate;
				document.getElementById("privateMemo").value =  result.data.privateMemo;
				document.getElementById("quotationRemarks").value = result.data.remarks;
				document.getElementById("confirmationDateAndTime").value = result.data.confirmationDate;
				document.getElementById("confirmationPerson").value = result.data.confirmationPerson;
				
				if(result.data != null)
			      {
			    	if(result.data.scheduleDateDtoList != null )
			    	  {
			    		if(result.data.scheduleDateDtoList.length != 0)
			    		{
			    		  $("#shiftSchedule_table tbody").empty();
			    		  
			    		  	 for(x = 1;x<=result.data.scheduleDateDtoList.length;x++)
			    		     {
			    		  	   shiftScheduleDateId = result.data.scheduleDateDtoList[x-1].id != null ? result.data.scheduleDateDtoList[x-1].id : "" ;
			    		  	   publicMemo = result.data.scheduleDateDtoList[x-1].publicMemo != null ? result.data.scheduleDateDtoList[x-1].publicMemo : "" ;
			    		  	   privateMemo = result.data.scheduleDateDtoList[x-1].privateMemo != null ? result.data.scheduleDateDtoList[x-1].privateMemo : "" ;
			    		  	   dateStr =  daysInMonth[x-1].toDateString();
			    	  	let newRow  = '<tr id="shiftScheduleDetailsTrId">'+
			    	  	                '<input type="hidden" value="'+shiftScheduleDateId+'" id="shiftScheduleDateId"  name="shiftScheduleDateId[]"/>'+
			    		 		        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+dateStr+'</td>'+
			    		 		         '<td style="width: 15%;">'+
			    		 		         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
			    		 		         '<select  style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control p-0">'+
			    		                   '<option value="4" ></option>'+
			    		                   '<option value="1">○</option>'+
			    		                   '<option value="2">△</option>'+
			    		                   '<option value="0">×</option>'+
			    		                 '</select>'+
			    		                '</td>'+
			    		 		        '<td style="width: 35%;">'+
			    		 		           '<input  id="shiftScheduleRemarkPublic"  name="shiftScheduleRemarkPublic[]" type="text" value="'+publicMemo+'"  class="form-control">'+
			    		         	    '</td>'+
			    		 		        '<td style="width: 35%;">'+
			    		 		 		   '<input  id="shiftScheduleRemarkPrivate"  name="shiftScheduleRemarkPrivate[]" type="text" value="'+privateMemo+'"  class="form-control">'+
			    		 				' </td>'+
			    		 			'</tr> ';
			    		 		
			    		 		$("#shiftSchedule_table tbody").append(newRow);
			    		 		
			    		 		var shiftScheduleDetailOptionNodes = document.getElementsByName("shiftScheduleDetailOption[]");
			    		 		shiftScheduleDetailOptionNodes[x-1].value= result.data.scheduleDateDtoList[x-1].availability;
			    		 	 }   
				    	  }else
				          {
			    		  onloadShiftSchedule(); 
			           } 
			          }else
		            {
		    		  onloadShiftSchedule(); 
		           }
			      }else
			      {
			    	  onloadShiftSchedule(); 
			      }
			}
			
		    function onloadShiftSchedule()
		    {
		    	
		    	$("#shiftSchedule_table tbody").empty();
		    	let numberOfDaysInMonth = new Date(targetYear, targetMonth, 0).getDate();

		    	for(x = 1;x<=numberOfDaysInMonth;x++)
		        {
		    		
				     //dateStr =  daysInMonth[x-1].toDateString(); 
				     
				     dayInWeek = daysInMonth[x-1].getDay();
				     dayAsNum = daysInMonth[x-1].getDate();
				     monthCurrent = daysInMonth[x-1].getMonth();
				     
				     const daysEng = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
				     const daysJap = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"];
				     
				     var monthsEng = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
					 var monthsJap = ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'];
				     
					 var langNow = getSiteLanguage();
					 
					 if ( langNow == "English"){
							dateStr = daysEng[dayInWeek] + " " + monthsEng[monthCurrent] + " " + dayAsNum;
					 }else if(langNow == "Japanese"){
						 	dateStr = daysJap[dayInWeek] + " " + monthsJap[monthCurrent] + " " + dayAsNum;
					 }
				     
				     console.log(" I am here");
				     
				     
				     let newRow  =	'<tr id="shiftScheduleDetailsTrId">'+
				                    '<input type="hidden" value="" id="shiftScheduleDateId"  name="shiftScheduleDateId[]"/>'+
							        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+dateStr+'</td>'+
							         '<td style="width: 15%;">'+
							         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
							         '<select style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control p-0">'+
				                      '<option value="4"></option>'+
				                      '<option value="1">○</option>'+
				                      '<option value="2">△</option>'+
				                      '<option value="0">×</option>'+
				                    '</select>'+
				                   '</td>'+
				                   '<td style="width: 35%;">'+
				 		           '<input  id="shiftScheduleRemarkPublic" name="shiftScheduleRemarkPublic[]" type="text" value="" class="form-control">'+
				         	       '</td>'+
				 		           '<td style="width: 35%;">'+
				 		 		   '<input  id="shiftScheduleRemarkPrivate" name="shiftScheduleRemarkPrivate[]" type="text" value="" class="form-control">'+
				 				   ' </td>'+
							'</tr> ';
					
					$("#shiftSchedule_table tbody").append(newRow);
		    	 }
		    }
			
			
			function registerShiftSchedule()
			    {
				
				    var shiftScheduleDateIdArray =  document.getElementsByName('shiftScheduleDateId[]');
			    	var shiftScheduleDateHiddenArray =  document.getElementsByName('shiftScheduleDateHidden[]');
			    	var shiftScheduleDetailOptionArray = document.getElementsByName("shiftScheduleDetailOption[]");
			        var shiftScheduleRemarkPublicArray = document.getElementsByName("shiftScheduleRemarkPublic[]");
			        var shiftScheduleRemarkPrivateArray = document.getElementsByName("shiftScheduleRemarkPrivate[]");
			        
			        var dataNode = {};
			        var dataShiftSchedule = [];
			        
			    	for(var i = 0; i < shiftScheduleDateHiddenArray.length; i++)
			    	{
			    		var shiftScheduleDateId = shiftScheduleDateIdArray[i].value !="" ? shiftScheduleDateIdArray[i].value : null ;
			    		var shiftScheduleDate = shiftScheduleDateHiddenArray[i].value !="" ? shiftScheduleDateHiddenArray[i].value : null ;
			    		var shiftScheduleDetailOption = shiftScheduleDetailOptionArray[i].value !="" ? shiftScheduleDetailOptionArray[i].value : null ;
			            var shiftScheduleRemarkPublic = shiftScheduleRemarkPublicArray[i].value !="" ? shiftScheduleRemarkPublicArray[i].value : null ;
			            var shiftScheduleRemarkPrivate = shiftScheduleRemarkPrivateArray[i].value !="" ? shiftScheduleRemarkPrivateArray[i].value : null ;
			            
			            var tempshiftSchedule = {
			            		"id":shiftScheduleDateId,
			            		"date":shiftScheduleDate,
								"availability":shiftScheduleDetailOption,
								"publicMemo":shiftScheduleRemarkPublic,
								"privateMemo":shiftScheduleRemarkPrivate
								} ;

			            dataShiftSchedule.push(tempshiftSchedule);   
			    	}
			    	
			    	let staffShiftID = document.getElementById("staffShiftID").value;
			    	let privateMemo = document.getElementById("privateMemo").value;
			    	let confirmationDateAndTime = document.getElementById("confirmationDateAndTime").value;
			    	let confirmationPerson = document.getElementById("confirmationPerson").value;
			    	let remarks = document.getElementById("quotationRemarks").value;

			    	dataNode['id'] = staffShiftID ;
			    	dataNode['staffId'] = staffID ;
			    	dataNode['uuid'] = uuid ;
			    	dataNode['submissionDate'] = null;
			    	dataNode['privateMemo'] = privateMemo;
			    	dataNode['confirmationDate'] = confirmationDateAndTime;
			    	dataNode['confirmationPerson'] = confirmationPerson ;
			    	dataNode['targetYear'] = targetYear ; 
			    	dataNode['targetMonth'] = targetMonth ; 
			    	dataNode['scheduleDateDtoList'] = dataShiftSchedule ; 
			    	dataNode['remarks'] = remarks ; 
			    	passData = JSON.stringify(dataNode);
			    	
					$.ajax({
					    beforeSend : function(request) {
					     document.getElementById("loaderNotify").style.display = "";
						 request.setRequestHeader("GUID",GUID);
					    },
						url : serverHTTP+ 'ShiftSchedule/SaveShiftSchedule',
						method : 'POST',
						contentType : 'application/json',
						data :passData,
						dataType : 'json',
						success : function(result, status,request) {
							if (result.status == 200) {
								showMessage('success',"N1266");
								setTimeout(function(){
									let url = "staff-shift-schedule-details.jsp";
									let form = $('<form action="' + url + '" method="post">' +	
									  '<input type="hidden" name="staffIDShiftSchedule" value="'+staffID+'" />' +
									  '<input type="hidden" name="targetYearShiftSchedule" value="'+targetYear+'" />' +
									  '<input type="hidden" name="targetMonthShiftSchedule" value="'+targetMonth+'" />' +
									  '<input type="hidden" name="shiftScheduleId" value="'+staffShiftID+'" />' +
									  '</form>');
									$('body').append(form);
									form.submit();
			                		 
			                		}, 3600);
							} else {
								showMessage('error',"N1265");
							}
						},complete:function(data){
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					}); 
			    }
			

			function getDaysInMonth(month, year) {
				  var date = new Date(year, month, 1);
				  var days = [];
				  while (date.getMonth() === month) {
				    days.push(new Date(date));
				    date.setDate(date.getDate() + 1);
				  }
				  return days;
			}
			
			var workAvailabilityTH = $("#workAvailabilityTH");
			var shiftScheduleDetailOptionArray = document.getElementsByName("shiftScheduleDetailOption[]");
			workAvailabilityTH.change(() => {
				for(var i=0; i < shiftScheduleDetailOptionArray.length; i++){
					shiftScheduleDetailOptionArray[i].value = workAvailabilityTH.val();
				}
			});

			function loadDispatch() {

				if ($("#quotationDispatchClassification").val() == "") {
					$('#dispatchLoaderID').hide();
					$('#dispatchLoader2ID').hide();
				} else if ($("#quotationDispatchClassification").val() == 4) {
					$('#dispatchLoaderID').hide();
					$('#dispatchLoader2ID').show();
				} else {
					$('#dispatchLoader2ID').hide();
					$('#dispatchLoaderID').show();

				}
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

			var table;

			function setLanguageWithTables(selectedLanguage) {
				loadSelectedLanguage(selectedLanguage, "staffShiftSchedule");
				setLanguage(selectedLanguage);
			}



			
		</script>
</body>

</html>