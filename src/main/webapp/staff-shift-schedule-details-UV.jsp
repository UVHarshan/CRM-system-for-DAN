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
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	 <%--    	"; --%>
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
				console.log("pageLanguageeeee444444444 " + langNow);
				if ( langNow == "English"){
					document.getElementById("accordionDivStaffShiftSchedule").innerHTML = "For " + monthsEng[targetMonth-1] + " " +  targetYear;
				}else if(langNow == "Japanese"){
					document.getElementById("accordionDivStaffShiftSchedule").innerHTML = "について  " + monthsJap[targetMonth-1] + " " +  targetYear;
				}
				
				
				
				//var today = new Date(y, m, d);
				//console.log("Today is " + today);
			//	var daysInMonth = getDaysInMonth(targetMonth-1, targetYear);
				//console.log(daysInMonth);
		/* 		
				for(var i=0; i < daysInMonth.length; i++) {
					 var $tr    = $("#shiftScheduleTrId").first('tr');
					 var $clone = $tr.clone();
					 $clone.find('input').val('');
					 $clone.find('td:eq(0)').html(daysInMonth[i].toDateString());
				     $("#shiftScheduleTbodyId").append($clone);					 
					// console.log(daysInMonth[i].toDateString());					
				}
				
				$("#shiftScheduleTrId").first('tr').remove(); */
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
				
				/* document.getElementById("quotationQuotationStatus").value = result.data.quotationStatus;
				document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML = result.data.subTotalTaxable;
				document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML = result.data.subTotalNonTaxable;
				document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML = result.data.total;
				document.getElementById("quotationRemarks").value = result.data.remarks; */
				
				
				
				
				
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
			    		  	   console.log(dateStr);
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
		    	
		    	//targetMonth-1, targetYear
		    	//document.getElementById("selectedYear").value = year;
		    	//document.getElementById("selectedMonth").value = thisMonthNumber;

		    	//var x = 0;
		    	 
		    	for(x = 1;x<=numberOfDaysInMonth;x++)
		        {
				     //dateStr =  daysInMonth[x-1].toDateString(); //////******
				     dayInWeek = daysInMonth[x-1].getDay();
				     dayAsNum = daysInMonth[x-1].getDate();
				     monthCurrent = daysInMonth[x-1].getMonth();
				     //console.log(dayAsNum);				     
				     //console.log(dayInWeek); 
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
				     
				     
				     //console.log(dateStr11);
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



			function getCaseInfo(result) {

				document.getElementById("caseId").value = result.data.id;
				$('#quotationDispatchClassification').val(
						result.data.dispatchClassification);

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

				document.getElementById("implementationPeriodStart").value = result.data.implementationPeriodStart;
				document.getElementById("implementationPeriodEnd").value = result.data.implementationPeriodEnd;

				if (document.getElementById("quotationDispatchClassification").value != 4) {
					document.getElementById("workingHoursStart").value = result.data.workingHoursStart;
					document.getElementById("workingHoursEnd").value = result.data.workingHoursEnd;
					document.getElementById("businessContent").value = result.data.businessContent;
					document.getElementById("workLocation").value = result.data.workLocation;
				} else {
					document.getElementById("workingHoursStart1").value = result.data.workingHoursStart;
					document.getElementById("workingHoursEnd1").value = result.data.workingHoursEnd;
					document.getElementById("businessContent1").value = result.data.businessContent;
					document.getElementById("workLocation1").value = result.data.workLocation;

				}

				document.getElementById("requiredNumberOfPeople").value = result.data.requiredNoOfPeople;
				document.getElementById("workAddress").value = result.data.workAddress;
				document.getElementById("salary").value = result.data.salary;
				document.getElementById("treatment").value = result.data.treatment;
				document.getElementById("holiday").value = result.data.holiday;
				document.getElementById("qualificationRequirements").value = result.data.qualificationRequirement;
				document.getElementById("numberOfHires").value = result.data.noOfHire;
				document.getElementById("recruitmentProcess").value = result.data.recruitmentProcess;
				document.getElementById("recruiterComments").value = result.data.recruiterComment;

			}

			function searchQuotationTempInfo(result) {
				$.each(result.data, function(i, item) {
					$('#quotationTemplateID').append($('<option>', {
						value : item.id,
						text : item.templateName
					}));
				});
			}

			function getQuotationItem(result) {

				var taxableItemsCount = result.data.quotationItemsTaxable.length;
				var nonTaxableItemsCount = result.data.quotationItemsNonTaxable.length;
				let subTotalTaxable = 0;
				let subTotalNonTaxable = 0;
				let fullTotal = 0;

				//////////////// taxable start ////////////////
				// if(taxableItemsCount>0)
				//{
				$("#quotationDetailsTaxableTbodyId").empty();
				//}

				for (i = 0; i < taxableItemsCount; i++) {
					var id = result.data.quotationItemsTaxable[i].id != null ? result.data.quotationItemsTaxable[i].id
							: "";
					$('#majorItems').prop('checked',
							result.data.quotationItemsTaxable[i].majorItem);
					var item = result.data.quotationItemsTaxable[i].item != null ? result.data.quotationItemsTaxable[i].item
							: "";
					/* var unitPrice = result.data.quotationItemsTaxable[i].unitPrice != null ? result.data.quotationItemsTaxable[i].unitPrice : "" ;
					var quantity = result.data.quotationItemsTaxable[i].quantity != null ? result.data.quotationItemsTaxable[i].quantity : "" ; */
					var remarks = result.data.quotationItemsTaxable[i].remarks != null ? result.data.quotationItemsTaxable[i].remarks
							: "";

					unitPrice = parseFloat(result.data.quotationItemsTaxable[i].unitPrice);
					quantity = parseFloat(result.data.quotationItemsTaxable[i].quantity);
					itemAmount = unitPrice * quantity;
					subTotalTaxable = subTotalTaxable + itemAmount;

					let newRow = '<tr id="quotationDetailsTaxableTrId">'
							+ '<input type="hidden" name="quotationItemTaxableID[]" value="'+id+'">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemTaxableItemName[]" value="'+item+'" type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)" value="'
							+ unitPrice
							+ '" class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableQuantity[]"  onfocusout="calTaxableQuantity(this)"  value="'
							+ quantity
							+ '" class="TaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"> '
							+ itemAmount
							+ ' </td>'
							+ '<td ><input type="text" name="quotationItemTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'
							+ '</td>' + '</tr>';

					// majorItemsTaxableNode = document.getElementsByName("majorItemsTaxable[]");
					// $(majorItemsTaxableNode[i]).prop('checked', result.data.quotationTemplateItemsTaxable[i].majorItem);		      
					$("#QuotationDetails_table tbody").append(newRow);
				}

				document
						.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML = subTotalTaxable;

				for (var i = taxableItemsCount; i < 10; i++) {
					let newRow = '<tr id="quotationDetailsTaxableTrId">'
							+ '<input type="hidden" name="quotationItemTaxableID[]">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'
							+ '</td>' + '</tr>';

					$("#QuotationDetails_table tbody").append(newRow);
				}

				//////////////// taxable end ////////////////

				//////////////// non-taxable start ////////////////

				// if(nonTaxableItemsCount>0)
				// {
				$("#quotationDetailsNonTaxableTbodyId").empty();
				// }

				for (i = 0; i < nonTaxableItemsCount; i++) {
					var id = result.data.quotationItemsNonTaxable[i].id != null ? result.data.quotationItemsNonTaxable[i].id
							: "";
					var item = result.data.quotationItemsNonTaxable[i].item != null ? result.data.quotationItemsNonTaxable[i].item
							: "";
					$('#majorItems').prop('checked',
							result.data.quotationItemsNonTaxable[i].majorItem);
					//var unitPrice = result.data.quotationItemsNonTaxable[i].unitPrice != null ? result.data.quotationItemsNonTaxable[i].unitPrice : "" ;
					//var quantity = result.data.quotationItemsNonTaxable[i].quantity != null ? result.data.quotationItemsNonTaxable[i].quantity : "" ;
					var remarks = result.data.quotationItemsNonTaxable[i].remarks != null ? result.data.quotationItemsNonTaxable[i].remarks
							: "";

					unitPrice = parseFloat(result.data.quotationItemsNonTaxable[i].unitPrice);
					quantity = parseFloat(result.data.quotationItemsNonTaxable[i].quantity);
					itemAmount = unitPrice * quantity;
					subTotalNonTaxable = subTotalNonTaxable + itemAmount;

					let newRow = '<tr id="quotationDetailsNonTaxableTrId">'
							+ '<input type="hidden" name="quotationItemNonTaxableID[]" value="'+id+'">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemNonTaxableItemName[]" value="'+item+'" type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" value="'
							+ unitPrice
							+ '" class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)"  value="'
							+ quantity
							+ '" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> '
							+ itemAmount
							+ ' </td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'
							+ '</td>' + '</tr>';

					$("#QuotationDetailsNonTaxable_table tbody").append(newRow);
				}

				document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML = subTotalNonTaxable;

				for (var i = nonTaxableItemsCount; i < 10; i++) {
					let newRow = '<tr id="quotationDetailsNonTaxableTrId">'
							+ '<input type="hidden" name="quotationItemNonTaxableID[]">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'
							+ '</td>' + '</tr>';

					$("#QuotationDetailsNonTaxable_table tbody").append(newRow);
				}

				fullTotal = subTotalTaxable + subTotalNonTaxable;
				document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML = fullTotal;

				//////////////// non-taxable end ////////////////
			}

			function getQuotationTempInfo(result) {
				// document.getElementById("quotationTemplateName").value = result.data.quotationTemplate.templateName;
				// document.getElementById("quotationSortOrder").value = result.data.quotationTemplate.sortOrder;

				var taxableItemsCount = result.data.quotationTemplateItemsTaxable.length;
				var nonTaxableItemsCount = result.data.quotationTemplateItemsNonTaxable.length;
				let subTotalTaxable = 0;
				let subTotalNonTaxable = 0;
				let fullTotal = 0;

				//////////////// taxable start ////////////////
				// if(taxableItemsCount>0)
				//{
				$("#quotationDetailsTaxableTbodyId").empty();
				//}

				for (i = 0; i < taxableItemsCount; i++) {
					var id = result.data.quotationTemplateItemsTaxable[i].id != null ? result.data.quotationTemplateItemsTaxable[i].id
							: "";
					var itemName = result.data.quotationTemplateItemsTaxable[i].itemName != null ? result.data.quotationTemplateItemsTaxable[i].itemName
							: "";
					//var unitPrice = result.data.quotationTemplateItemsTaxable[i].unitPrice != null ? result.data.quotationTemplateItemsTaxable[i].unitPrice : "" ;
					//var quantity = result.data.quotationTemplateItemsTaxable[i].quantity != null ? result.data.quotationTemplateItemsTaxable[i].quantity : "" ;
					var remarks = result.data.quotationTemplateItemsTaxable[i].remarks != null ? result.data.quotationTemplateItemsTaxable[i].remarks
							: "";

					unitPrice = parseFloat(result.data.quotationTemplateItemsTaxable[i].unitPrice);
					quantity = parseFloat(result.data.quotationTemplateItemsTaxable[i].quantity);
					itemAmount = unitPrice * quantity;
					subTotalTaxable = subTotalTaxable + itemAmount;

					let newRow = '<tr id="quotationDetailsTaxableTrId">'
							+ '<input type="hidden" name="quotationItemTaxableID[]" value="'+id+'">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemTaxableItemName[]" value="'+itemName+'" type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)" value="'
							+ unitPrice
							+ '" class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableQuantity[]"  onfocusout="calTaxableQuantity(this)"  value="'
							+ quantity
							+ '" class="TaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"> '
							+ itemAmount
							+ ' </td>'
							+ '<td ><input type="text" name="quotationItemTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'
							+ '</td>' + '</tr>';

					// majorItemsTaxableNode = document.getElementsByName("majorItemsTaxable[]");
					// $(majorItemsTaxableNode[i]).prop('checked', result.data.quotationTemplateItemsTaxable[i].majorItem);		      
					$("#QuotationDetails_table tbody").append(newRow);
				}

				document
						.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML = subTotalTaxable;

				for (var i = taxableItemsCount; i < 10; i++) {
					let newRow = '<tr id="quotationDetailsTaxableTrId">'
							+ '<input type="hidden" name="quotationItemTaxableID[]">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>'
							+ '<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'
							+ '</td>' + '</tr>';

					$("#QuotationDetails_table tbody").append(newRow);
				}

				//////////////// taxable end ////////////////

				//////////////// non-taxable start ////////////////

				// if(nonTaxableItemsCount>0)
				// {
				$("#quotationDetailsNonTaxableTbodyId").empty();
				// }

				for (i = 0; i < nonTaxableItemsCount; i++) {
					var id = result.data.quotationTemplateItemsTaxable[i].id != null ? result.data.quotationTemplateItemsTaxable[i].id
							: "";
					var itemName = result.data.quotationTemplateItemsNonTaxable[i].itemName != null ? result.data.quotationTemplateItemsNonTaxable[i].itemName
							: "";
					//var unitPrice = result.data.quotationTemplateItemsNonTaxable[i].unitPrice != null ? result.data.quotationTemplateItemsNonTaxable[i].unitPrice : "" ;
					//var quantity = result.data.quotationTemplateItemsNonTaxable[i].quantity != null ? result.data.quotationTemplateItemsNonTaxable[i].quantity : "" ;
					var remarks = result.data.quotationTemplateItemsNonTaxable[i].remarks != null ? result.data.quotationTemplateItemsNonTaxable[i].remarks
							: "";

					unitPrice = parseFloat(result.data.quotationTemplateItemsNonTaxable[i].unitPrice);
					quantity = parseFloat(result.data.quotationTemplateItemsNonTaxable[i].quantity);
					itemAmount = unitPrice * quantity;
					subTotalNonTaxable = subTotalNonTaxable + itemAmount;

					let newRow = '<tr id="quotationDetailsNonTaxableTrId">'
							+ '<input type="hidden" name="quotationItemNonTaxableID[]" value="'+id+'">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemNonTaxableItemName[]" value="'+itemName+'" type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" value="'
							+ unitPrice
							+ '" class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)"  value="'
							+ quantity
							+ '" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> '
							+ itemAmount
							+ ' </td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'
							+ '</td>' + '</tr>';

					$("#QuotationDetailsNonTaxable_table tbody").append(newRow);
				}

				document
						.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML = subTotalNonTaxable;

				for (var i = nonTaxableItemsCount; i < 10; i++) {
					let newRow = '<tr id="quotationDetailsNonTaxableTrId">'
							+ '<input type="hidden" name="quotationItemNonTaxableID[]">'
							+ '<td  class="">'
							+ (i + 1)
							+ '</td>'
							+ '<td  class="center-content">'
							+ '<label class="container">'
							+ '<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '
							+ '<span class="checkmarkTablemajor"></span>'
							+ '</label>'
							+ '</td>'
							+ '<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'
							+ '<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>'
							+ '<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>'
							+ '<td class="last-td-color">'
							+ '<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'
							+ '</td>' + '</tr>';

					$("#QuotationDetailsNonTaxable_table tbody").append(newRow);
				}

				fullTotal = subTotalTaxable + subTotalNonTaxable;
				document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML = fullTotal;

				//////////////// non-taxable end ////////////////
			}

			function calTaxableUnitPrice(node) {
				trNode = node.closest("tr");
				checkUnitPrice(node); //  For Validation

				TaxableUnitPrice = parseFloat(node.value);
				TaxableQuantity = parseFloat($(trNode).find(
						"td:eq(4) input[type='text']").val());
				itemAmount = TaxableUnitPrice * TaxableQuantity;
				if (!isNaN(itemAmount) && !isNaN(node.value)) {
					$(trNode).find("td:eq(5)").html(itemAmount);
					calculateTaxableSubtotal();
					calculateTotal();
				} else {
					$(trNode).find("td:eq(5)").html("");
					calculateTaxableSubtotal();
					calculateTotal();
				}
				console.log("itemAmount " + itemAmount);

			}

			function calTaxableQuantity(node) {
				trNode = node.closest("tr");
				checkQuantity(node); //   For Validation

				TaxableQuantity = parseFloat(node.value);
				TaxableUnitPrice = parseFloat($(trNode).find(
						"td:eq(3) input[type='text']").val());
				itemAmount = TaxableUnitPrice * TaxableQuantity;
				if (!isNaN(itemAmount) && !isNaN(node.value)) {
					$(trNode).find("td:eq(5)").html(itemAmount);
					calculateTaxableSubtotal();
					calculateTotal();
				} else {
					$(trNode).find("td:eq(5)").html("");
					calculateTaxableSubtotal();
					calculateTotal();
				}
				console.log("itemAmount " + itemAmount);

			}

			function calNonTaxableUnitPrice(node) {
				trNode = node.closest("tr");
				checkUnitPrice(node); //  For Validation

				NonTaxableUnitPrice = parseFloat(node.value);
				NonTaxableQuantity = parseFloat($(trNode).find(
						"td:eq(4) input[type='text']").val());
				itemAmount = NonTaxableUnitPrice * NonTaxableQuantity;
				if (!isNaN(itemAmount) && !isNaN(node.value)) {
					$(trNode).find("td:eq(5)").html(itemAmount);
					calculateNonTaxableSubtotal();
					calculateTotal()
				} else {
					$(trNode).find("td:eq(5)").html("");
					calculateTaxableSubtotal();
					calculateTotal();
				}

				console.log("itemAmount " + itemAmount);
			}

			function calNonTaxableQuantity(node) {
				trNode = node.closest("tr");
				checkQuantity(node); //   For Validation

				NonTaxableQuantity = parseFloat(node.value);
				NonTaxableUnitPrice = parseFloat($(trNode).find(
						"td:eq(3) input[type='text']").val());
				itemAmount = NonTaxableUnitPrice * NonTaxableQuantity;
				if (!isNaN(itemAmount) && !isNaN(node.value)) {
					$(trNode).find("td:eq(5)").html(itemAmount);
					calculateNonTaxableSubtotal();
					calculateTotal()
				} else {
					$(trNode).find("td:eq(5)").html("");
					calculateTaxableSubtotal();
					calculateTotal();
				}
				console.log("itemAmount " + itemAmount);
			}

			function calculateTaxableSubtotal() {
				ItemTaxableAmount = document
						.getElementsByName("quotationItemTaxableAmountMoney[]");
				var TaxableSubtotal = 0
				for (i = 0; i < ItemTaxableAmount.length; i++) {
					if (ItemTaxableAmount[i].innerHTML.trim() != "") {
						TaxableSubtotal = TaxableSubtotal
								+ parseFloat(ItemTaxableAmount[i].innerHTML
										.trim());

					}
				}

				document
						.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML = TaxableSubtotal;
			}

			function calculateNonTaxableSubtotal() {
				ItemNonTaxableAmount = document
						.getElementsByName("quotationItemNonTaxableAmountMoney[]");
				var NonTaxableSubtotal = 0
				for (i = 0; i < ItemNonTaxableAmount.length; i++) {
					if (ItemNonTaxableAmount[i].innerHTML.trim() != "") {
						NonTaxableSubtotal = NonTaxableSubtotal
								+ parseFloat(ItemNonTaxableAmount[i].innerHTML
										.trim());

					}
				}

				document
						.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML = NonTaxableSubtotal;
			}

			function calculateTotal() {
				TaxableSubtotal = parseFloat(document
						.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML
						.trim());
				NonTaxableSubtotal = parseFloat(document
						.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML
						.trim());

				total = TaxableSubtotal + NonTaxableSubtotal;

				document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML = total;
			}

			function addTaxableQuotationItemRow() {
				var $tr = $("#quotationDetailsTaxableTrId").last('tr');
				var rowCount = $('#QuotationDetails_table tr').length;
				var $clone = $tr.clone();
				$clone.find('input').val('');
				$clone.find('input[name="majorItemsTaxable[]"]').val('1');
				$clone.find('td[name="quotationItemTaxableAmountMoney[]"]')
						.html('');
				$clone.find('input[name="majorItemsTaxable[]"]').prop(
						'checked', false);
				$clone.find('td:eq(0)').html(rowCount - 1);
				$("#quotationDetailsTaxableTbodyId").append($clone);
			}

			function addNonTaxableQuotationItemRow() {
				var $tr = $("#quotationDetailsNonTaxableTrId").last('tr');
				var rowCount = $('#QuotationDetailsNonTaxable_table tr').length;
				var $clone = $tr.clone();
				$clone.find('input').val('');
				$clone.find('input[name="majorItemsNonTaxable[]"]').val('1');
				$clone.find('td[name="quotationItemNonTaxableAmountMoney[]"]')
						.html('');
				$clone.find('input[name="majorItemsNonTaxable[]"]').prop(
						'checked', false);
				$clone.find('td:eq(0)').html(rowCount - 2);
				$("#quotationDetailsNonTaxableTbodyId").append($clone);
			}

			function saveQuotationInfo() {
				//quotation Info
				var id = document.getElementById("quotationId").value;
				var customerId = document
						.getElementById("quotationCustomerCompanyID").value;
				var quotationMatterName = document
						.getElementById("quotationMatterName").value.trim();
				var quotationDateOfQuotation = document
						.getElementById("quotationDateOfQuotation").value != "" ? document
						.getElementById("quotationDateOfQuotation").value
						: null;
				var quotationSalesRepresentative = document
						.getElementById("quotationSalesRepresentative").value != "" ? document
						.getElementById("quotationSalesRepresentative").value
						: null;
				var quotationConsumptionTax = document
						.getElementById("quotationConsumptionTax").value;
				var quotationQuotationStatus = document
						.getElementById("quotationQuotationStatus").value;
				var quotationSubTotalTaxable = parseFloat(document
						.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML);
				var quotationSubTotalNonTaxable = parseFloat(document
						.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML);
				var quotationTotal = parseFloat(document
						.getElementById("tableQuotationDetailsFullTotalVal").innerHTML);
				var quotationTemplateRemarks = document
						.getElementById("quotationRemarks").value.trim();

				let dataPassNode = {};
				dataPassNode['id'] = id;
				dataPassNode['customerId'] = customerId;
				dataPassNode['quotationName'] = quotationMatterName;
				dataPassNode['dateOfQuotation'] = quotationDateOfQuotation;
				dataPassNode['salesRepresentative'] = quotationSalesRepresentative;
				dataPassNode['consumptionTax'] = quotationConsumptionTax;
				dataPassNode['quotationStatus'] = quotationQuotationStatus;
				dataPassNode['subTotalTaxable'] = quotationSubTotalTaxable;
				dataPassNode['subTotalNonTaxable'] = quotationSubTotalNonTaxable;
				dataPassNode['total'] = quotationTotal;
				dataPassNode['remarks'] = quotationTemplateRemarks;

				let quotationId = 0;
				let quotationNumber = "";

				$.ajax({
					beforeSend : function(request) {
						request.setRequestHeader("GUID", GUID);
					},
					url : serverHTTP + 'Quotation/SaveQuotationInfo',
					method : 'POST',
					async : false,
					contentType : 'application/json',
					data : JSON.stringify(dataPassNode),
					dataType : 'json',
					success : function(result, status, request) {
						if (result.status == 202) {

							quotationId = result.data.id;
							quotationNumber = result.data.quotationNumber;

						} else {
							showMessage('error', "N1221");
							console.log("Sorry Quotation Info not working");
						}
					},
					error : function(error) {
						showMessage('error', "N1221");
						console.log("Sorry Quotation Info not working");
						console.log(JSON.stringify(error));
					}
				});
				if (quotationId != 0) {
					//case Info
					var caseId = document.getElementById("caseId").value;
					var quotationDispatchClassification = document
							.getElementById("quotationDispatchClassification").value != "" ? document
							.getElementById("quotationDispatchClassification").value
							: null;
					;

					var oc1 = 0;
					var oc2 = 0;
					var oc3 = 0;
					var oc4 = 0;
					var oc5 = 0;
					var oc6 = 0;
					var oc7 = 0;

					var quotationOccupationClassification1 = document
							.getElementById("occupationClassification1");
					var quotationOccupationClassification2 = document
							.getElementById("occupationClassification2");
					var quotationOccupationClassification3 = document
							.getElementById("occupationClassification3");
					var quotationOccupationClassification4 = document
							.getElementById("occupationClassification4");
					var quotationOccupationClassification5 = document
							.getElementById("occupationClassification5");
					var quotationOccupationClassification6 = document
							.getElementById("occupationClassification6");
					var quotationOccupationClassification7 = document
							.getElementById("occupationClassification7");

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

					if (quotationDispatchClassification != 4) {
						var workingHoursStart = document
								.getElementById("workingHoursStart").value
								.trim();
						var workingHoursEnd = document
								.getElementById("workingHoursEnd").value.trim();
						var businessContent = document
								.getElementById("businessContent").value.trim();
						var workLocation = document
								.getElementById("workLocation").value.trim();

					} else {
						var workingHoursStart = document
								.getElementById("workingHoursStart1").value
								.trim();
						var workingHoursEnd = document
								.getElementById("workingHoursEnd1").value
								.trim();
						var businessContent = document
								.getElementById("businessContent1").value
								.trim();
						var workLocation = document
								.getElementById("workLocation1").value.trim();

					}
					var implementationPeriodStart = document
							.getElementById("implementationPeriodStart").value != "" ? document
							.getElementById("implementationPeriodStart").value
							: null;
					var implementationPeriodEnd = document
							.getElementById("implementationPeriodEnd").value != "" ? document
							.getElementById("implementationPeriodEnd").value
							: null;

					var requiredNumberOfPeople = document
							.getElementById("requiredNumberOfPeople").value
							.trim();

					var workAddress = document.getElementById("workAddress").value
							.trim();

					var salary = document.getElementById("salary").value.trim();
					var treatment = document.getElementById("treatment").value
							.trim();
					var holiday = document.getElementById("holiday").value
							.trim();
					var qualificationRequirements = document
							.getElementById("qualificationRequirements").value
							.trim();
					var numberOfHires = document
							.getElementById("numberOfHires").value.trim();
					var recruitmentProcess = document
							.getElementById("recruitmentProcess").value.trim();
					var recruiterComments = document
							.getElementById("recruiterComments").value.trim();

					let caseNode = {};

					caseNode['id'] = caseId;
					caseNode['quotationId'] = quotationId;
					caseNode['dispatchClassification'] = quotationDispatchClassification;
					caseNode['occupationClassification1'] = oc1;
					caseNode['occupationClassification2'] = oc2;
					caseNode['occupationClassification3'] = oc3;
					caseNode['occupationClassification4'] = oc4;
					caseNode['occupationClassification5'] = oc5;
					caseNode['occupationClassification6'] = oc6;
					caseNode['occupationClassification7'] = oc7;
					caseNode['workLocation'] = workLocation;
					caseNode['businessContent'] = businessContent;
					caseNode['workingHoursStart'] = workingHoursStart;
					caseNode['workingHoursEnd'] = workingHoursEnd;
					caseNode['workAddress'] = workAddress;
					caseNode['requiredNoOfPeople'] = requiredNumberOfPeople;
					caseNode['implementationPeriodStart'] = implementationPeriodStart;
					caseNode['implementationPeriodEnd'] = implementationPeriodEnd;
					caseNode['salary'] = salary;
					caseNode['treatment'] = treatment;
					caseNode['holiday'] = holiday;
					caseNode['qualificationRequirement'] = qualificationRequirements;
					caseNode['noOfHire'] = numberOfHires;
					caseNode['recruitmentProcess'] = recruitmentProcess;
					caseNode['recruiterComment'] = recruiterComments;

					$.ajax({
						beforeSend : function(request) {
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Quotation/SaveCaseInfo',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(caseNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) {
								console.log("Case Info working");
							} else {
								showMessage('error', "N1222");
								console.log("Sorry Case Info not working");
							}
						},
						error : function(error) {
							showMessage('error', "N1222");
							console.log("Sorry Case Info not working");
							console.log(JSON.stringify(error));
						}
					});

					var dataNode = {};
					var dataArrayQutationTempTaxableItems = [];
					var dataArrayQutationTempNonTaxableItems = [];

					//quotation Item
					var quotationItemTaxableIDArray = document
							.getElementsByName("quotationItemTaxableID[]");
					var quotationItemMajorItemsTaxableArray = document
							.getElementsByName("majorItemsTaxable[]");
					var quotationItemTaxableItemNameArray = document
							.getElementsByName("quotationItemTaxableItemName[]");
					var quotationItemTaxableUnitPriceArray = document
							.getElementsByName("quotationItemTaxableUnitPrice[]");
					var quotationItemTaxableQuantityArray = document
							.getElementsByName("quotationItemTaxableQuantity[]");
					var quotationItemTaxableAmountMoneyArray = document
							.getElementsByName("quotationItemTaxableAmountMoney[]");
					var quotationItemTaxableRemarksArray = document
							.getElementsByName("quotationItemTaxableRemarks[]");

					var quotationItemNonTaxableIDArray = document
							.getElementsByName("quotationItemNonTaxableID[]");
					var quotationItemMajorItemsNonTaxableArray = document
							.getElementsByName("majorItemsNonTaxable[]");
					var quotationItemNonTaxableItemNameArray = document
							.getElementsByName("quotationItemNonTaxableItemName[]");
					var quotationItemNonTaxableUnitPriceArray = document
							.getElementsByName("quotationItemNonTaxableUnitPrice[]");
					var quotationItemNonTaxableQuantityArray = document
							.getElementsByName("quotationItemNonTaxableQuantity[]");
					var quotationItemNonTaxableAmountMoneyArray = document
							.getElementsByName("quotationItemNonTaxableAmountMoney[]");
					var quotationItemNonTaxableRemarksArray = document
							.getElementsByName("quotationItemNonTaxableRemarks[]");

					for (var i = 0; i < quotationItemTaxableAmountMoneyArray.length; i++) {
						if (quotationItemTaxableAmountMoneyArray[i].innerHTML
								.trim() != "") {
							var quotationItemTaxableID = quotationItemTaxableIDArray[i].value != "" ? quotationItemTaxableIDArray[i].value
									: null;
							var quotationItemMajorItemsTaxable = 0;
							if (quotationItemMajorItemsTaxableArray[i].checked == true) {
								quotationItemMajorItemsTaxable = quotationItemMajorItemsTaxableArray[i].value;
							}
							var quotationItemTaxableItemName = quotationItemTaxableItemNameArray[i].value != "" ? quotationItemTaxableItemNameArray[i].value
									: null;
							var quotationItemTaxableUnitPrice = quotationItemTaxableUnitPriceArray[i].value != "" ? quotationItemTaxableUnitPriceArray[i].value
									.trim()
									: null;
							var quotationItemTaxableQuantity = quotationItemTaxableQuantityArray[i].value != "" ? quotationItemTaxableQuantityArray[i].value
									.trim()
									: null;
							var quotationItemTaxableAmountMoney = quotationItemTaxableAmountMoneyArray[i].innerHTML
									.trim() != "" ? quotationItemTaxableAmountMoneyArray[i].innerHTML
									.trim()
									: null;
							var quotationItemTaxableRemarks = quotationItemTaxableRemarksArray[i].value
									.trim() != "" ? quotationItemTaxableRemarksArray[i].value
									.trim()
									: null;

							var tempTaxable = {
								"id" : quotationItemTaxableID,
								"item" : quotationItemTaxableItemName,
								"majorItem" : quotationItemMajorItemsTaxable,
								"unitPrice" : quotationItemTaxableUnitPrice,
								"quantity" : quotationItemTaxableQuantity,
								"amount" : quotationItemTaxableAmountMoney,
								"remarks" : quotationItemTaxableRemarks,
								"tax" : 1
							}

							dataArrayQutationTempTaxableItems.push(tempTaxable);
						}

					}

					for (var i = 0; i < quotationItemTaxableAmountMoneyArray.length; i++) {
						if (quotationItemNonTaxableAmountMoneyArray[i].innerHTML
								.trim() != "") {
							var quotationItemNonTaxableID = quotationItemNonTaxableIDArray[i].value != "" ? quotationItemNonTaxableIDArray[i].value
									: null;
							var quotationItemMajorItemsNonTaxable = 0;
							if (quotationItemMajorItemsNonTaxableArray[i].checked == true) {
								quotationItemMajorItemsNonTaxable = quotationItemMajorItemsNonTaxableArray[i].value;
							}
							var quotationItemNonTaxableItemName = quotationItemNonTaxableItemNameArray[i].value != "" ? quotationItemNonTaxableItemNameArray[i].value
									: null;
							var quotationItemNonTaxableUnitPrice = quotationItemNonTaxableUnitPriceArray[i].value != "" ? quotationItemNonTaxableUnitPriceArray[i].value
									.trim()
									: null;
							var quotationItemNonTaxableQuantity = quotationItemNonTaxableQuantityArray[i].value != "" ? quotationItemNonTaxableQuantityArray[i].value
									.trim()
									: null;
							var quotationItemNonTaxableAmountMoney = quotationItemNonTaxableAmountMoneyArray[i].innerHTML
									.trim() != "" ? quotationItemNonTaxableAmountMoneyArray[i].innerHTML
									.trim()
									: null;
							var quotationItemNonTaxableRemarks = quotationItemNonTaxableRemarksArray[i].value
									.trim() != "" ? quotationItemNonTaxableRemarksArray[i].value
									.trim()
									: null;

							var tempNonTaxable = {
								"id" : quotationItemNonTaxableID,
								"item" : quotationItemNonTaxableItemName,
								"majorItem" : quotationItemMajorItemsNonTaxable,
								"unitPrice" : quotationItemNonTaxableUnitPrice,
								"quantity" : quotationItemNonTaxableQuantity,
								"amount" : quotationItemNonTaxableAmountMoney,
								"remarks" : quotationItemNonTaxableRemarks,
								"tax" : 0
							}

							dataArrayQutationTempNonTaxableItems
									.push(tempNonTaxable);
						}
					}

					dataNode['quotationId'] = quotationId;
					dataNode['quotationItemsTaxable'] = dataArrayQutationTempTaxableItems;
					dataNode['quotationItemsNonTaxable'] = dataArrayQutationTempNonTaxableItems;
					passData = JSON.stringify(dataNode);

					$
							.ajax({
								beforeSend : function(request) {
									request.setRequestHeader("GUID", GUID);
								},
								url : serverHTTP
										+ 'Quotation/SaveQuotationItem',
								method : 'POST',
								contentType : 'application/json',
								data : passData,
								dataType : 'json',
								success : function(result, status, request) {
									if (result.status == 202) {
										document
												.getElementById("quotationQuotationNumber").value = quotationNumber;
										checkMessage('success', 'N0001',
												'N0002', oldQuotationNumber,
												quotationNumber);
										oldQuotationNumber = quotationNumber;

									} else {
										showMessage('error', "N1217");
										console
												.log("Sorry Quotation Info not working");
									}
								},
								error : function(error) {
									showMessage('error', "N1217");
									console
											.log("Sorry Quotation item not working");
									console.log(JSON.stringify(error));
								}
							});
				} else {
					showMessage('error', "N1225");
				}

			}

			function copyQuotation() {
				sessionStorage.setItem("id", searchid);
				window.location.href = "quotation-duplicate.jsp";
			}

			function makeCaseByQuotation() {
				localStorage.setItem("quotationId", searchid);
				window.location.href = "case-registration.jsp";
			}

			$("#quotationDelete")
					.click(
							function(event) {

								var dataNode = {};
								dataNode['id'] = searchid;

								$
										.ajax({
											beforeSend : function(request) {
												document
														.getElementById("loaderNotify").style.display = "";
												request.setRequestHeader(
														"GUID", GUID);
											},
											url : serverHTTP
													+ 'Quotation/DeleteQuotationInfo',
											method : 'POST',
											contentType : 'application/json',
											data : JSON.stringify(dataNode),
											dataType : 'json',
											success : function(result, status,
													request) {
												if (result.status == 200) {
													showMessage('success',
															"N1228");
													setTimeout(
															function() {
																window.location.href = "quotation-management.jsp";
															}, 3700);

												} else {
													showMessage('error',
															"E1029");
													// showMessage("Sorry Data Loding Error");
												}
											},
											complete : function(data) {
												document
														.getElementById("loaderNotify").style.display = "none";
											},
											error : function(error) {
												console.log(JSON
														.stringify(error));
											}
										});
							});
		</script>
</body>

</html>