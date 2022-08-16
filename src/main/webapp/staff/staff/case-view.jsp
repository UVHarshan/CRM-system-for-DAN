<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleStaffCaseView">Staff - Case View</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link href="../dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="../dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/fontawesome-5.css" />
    <link href="../dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/datatables.min.css" />
   
    <link href="../dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../dist-assets/css/mobios-site.css" />

    <style>
    .row-title-text
    {
    font-weight: bold;
    font-size: 14px;
    }
    
    .row-content-text
    {
    font-size: 14px;
    }
    </style>
</head>

<body class="text-left" >
 <%@ include file="./common/CacheControl.jsp"%>
       <div id="sideBarDiv" class="app-admin-wrap layout-sidebar-vertical sidebar-full "  >
       
        <!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
       
            <!--  user -->

            <!-- ============ leftMenu start ============= -->
             <%@ include file="./common/staffleftMenu.jsp"%>
            <!-- ============ leftMenu end ============= -->  
            <!--  side-nav-close -->
        
        <div class="switch-overlay"></div>
        <div class="main-content-wrap mobile-menu-content bg-off-white m-0" style="z-index: 1;">
        
            <!-- ============ topMenu start ============= -->
             <%@ include file="./common/topMenu.jsp"%>
            <!-- ============ topMenu end ============= -->  
             
            <!-- ============ Body content start ============= -->
           
            <div class="main-content pt-2"  style="z-index: 1;">
          
                <!-- <div class="separator-breadcrumb border-top"></div>  -->

                <div class="row ">
                    <div class="col-md-12">
                        <div id="bodyMainCard" class="card mb-4">
                            <div class="card-body p-0"  >
                         

                           <div class="row pt-4 pr-3  mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4  "></div>
                         	          <div class="col-md-4 " >
                                        <h1 > <i class="fa fa-tasks text-30" role="generic"></i><span id="pageSpanHeadingCaseView"> Case View</span> </h1>
                                      
                                    </div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<button onclick="window.history.back();" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
											<span id="buttonSpanReturn">Return</span>
										</button>
											
									</div>
									<div class="col-md-12  pt-0 pr-4 ">
									  <p id="pageCaseViewSpanHeadingText1" class="pt-0">You can make various reports such as departure reports.</p>
							       </div>
							  </div>
                             <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4">
                                 <span id="spanImplementationDate" class="row-title-text">Implementation Date</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanImplementationDateContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanCaseTitle" class="row-title-text">Case Title</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                  <span id="spanCaseTitleContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkLocation" class="row-title-text"> Work Location</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkLocationContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkAddress" class="row-title-text"> Work Address (Including Contact Information)</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkAddressContent" class="row-content-text"> </span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanNearestStation" class="row-title-text"> Nearest Station To The Venue</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanNearestStationContent" class="row-content-text"> </span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkingHours" class="row-title-text"> Working Hours</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkingHoursContent" class="row-content-text"></span>
                               </div>
                              </div>
   <!--                            <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanScheduledDepartureTime" class="row-title-text"> Scheduled Departure Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanScheduledDepartureTimeContent" class="row-content-text"></span>
                               </div>
                               </div> -->
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanBasicSalary" class="row-title-text"> Basic Salary (Daily Salary)</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanBasicSalaryContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanDetailsImplementationInformation" class="row-title-text"> Details Of Implementation Information</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanDetailsImplementationContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanConfirmedDayBefore" class="row-title-text"> Confirmed The Day Before</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  id="ButtonSpanConfirmedDayBefore" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-check" role="generic"></i> <span id="SpanConfirmedDayBefore" class="row-content-text">Report The Day Before</span>
                                 </button>
                                 <span id="spanConfirmedDayBeforeDateTime" class="row-content-text"></span>
                                 <p class="mb-0 pb-0" id="PConfirmedDayBeforeHelpText">Please be sure to report the confirmation the day before by tapping the button when confirming the day before.</p>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanScheduledDepartureTime2" class="row-title-text"> Scheduled Departure Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                               <input type="time"  id="inputScheduledDepartureTime" class="form-control" style="max-width: 200px"/>
                               </div>
                              </div>
                               <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanReasonForAbsenteeism" class="row-title-text"> Reason For Absenteeism</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                               <input type="text" id="inputReasonForAbsenteeism" class="form-control"/>
                               <input type="hidden" id="inputReasonForAbsenteeismStatus"/>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanAbsenceReport" class="row-title-text"> Absence Report</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-danger TopButtonMinWidth mr-2" id="ReportAbsenteeismButtonW" role='button'>
                                   <i class="fa fa-times" role="generic"></i> <span id="ButtonSpanReportAbsenteeism" class="row-content-text"> Report Absenteeism</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="PReportAbsenteeismHelpText">If you are absent, please be sure to report your absence by tapping the button.</p>
                               </div>
                              </div>
                              <div id="divNonAbsentSection">
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanDepartureConfirmation" class="row-title-text"> Departure Confirmation</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button id="ButtonSpanReportDeparture" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-check" role="generic"></i> <span id="spanReportDeparture" class="row-content-text">Report Departure</span>
                                 </button>
                                  <span id="spanDepartureConfirmationDateTime" class="row-content-text"></span>
                                 <p class="mb-0 pb-0" id="PDepartureConfirmationHelpText">Please be sure to report your departure by tapping the button at the time of departure.</p>
                               </div>
                              </div>
                              
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanArrivalConfirmation" class="row-title-text"> Arrival Confirmation</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button id="ButtonSpanReportArrival" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-check" role="generic"></i> <span id="spanReportArrival" class="row-content-text">Report Arrival</span>
                                 </button>
                                 <span id="spanArrivalConfirmationDateTime" class="row-content-text"></span>
                                 <p class="mb-0 pb-0" id="PArrivalConfirmationHelpText">Please be sure to report your arrival by tapping the button when you arrive.</p>
                               </div>
                              </div>
                              
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanClosingConfirmation" class="row-title-text"> Closing Confirmation</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button id="ButtonSpanReportClosing"  class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-handshake" role="generic"></i> <span id="spanReportClosing" class="row-content-text">Enter The Closing Report</span>
                                 </button>
                                 <span id="spanClosingConfirmationDateTime" class="row-content-text"></span>
                                 <p class="mb-0 pb-0" id="PClosingConfirmationHelpText">Please be sure to enter the closing report by tapping the button at the end of work. (Please follow the company's instructions for the submission deadline.)</p>
                               </div>
                              </div>
                              
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanOutputWorkingConditionNotification" class="row-title-text"> Output Of Working Condition Notification And Working Condition Statement</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-info TopButtonMinWidth mr-2"   role='button'>
                                   <i class="fa fa-download" role="generic"></i> <span id="ButtonSpanOutputWorkingConditionNotification" style="white-space: pre-line;" class="row-content-text">Output Of  Working Condition Notification And Working Condition Statement</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="POutputWorkingConditionNotificationHelpText">You can download the working condition notification and working condition statement in excel format.</p>
                               </div>
                              </div>
                              
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanConfirmationWorkingConditionNotification" class="row-title-text"> Confirmation Of Working Condition Notification And Working Condition Statement</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-info TopButtonMinWidth mr-2"  role='button'>
                                   <i class="fa fa-bell" role="generic"></i> <span id="ButtonSpanConfirmationWorkingConditionNotification" style="white-space: pre-line;"   class="row-content-text">Confirm Working Condition Notification And Working Condition Statement</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="PConfirmationWorkingConditionNotificationHelpText">Please tap the button when confirming the notification of working conditions and the statement of working conditions.</p>
                               </div>
                               <input type="hidden" id="assignmentIdValue" value=""/>
                              </div>
                              </div>
                              <br/>
                              <br/>
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

            <!-- ============ Footer start ============= -->
             <%@ include file="./common/staffFooter.jsp"%>
            <!-- ============ Footer end ============= -->  

        </div>
      </div>
      <!-- ============ Search UI Start ============= -->
  
      <!-- ============ Search UI End ============= -->

  	<span id="spanScriptID"></span>
	<script src="./js/language_main_staff.js"></script>

	<script>
       const lan = getSiteLanguage();
       var pageLanguage = lan;
       loadSelectedLanguage(pageLanguage,"item-list");
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

    <script>
      const serverHTTP = "<%=serverHTTP%>";
      const GUID = localStorage.getItem('GUID') ;
      const UUID =  localStorage.getItem('uuid');
      
    /*   const staffID = localStorage.getItem('staffID') ;
      const implementId = localStorage.getItem('implementationId') ;
      const implementDate = localStorage.getItem('implementDate') ; */
      
      const staffID = "<%= request.getParameter("staffId")%>" ;
      const implementId = "<%= request.getParameter("implementationId")%>" ;
      const implementDate = "<%= request.getParameter("implementDate")%>" ;
      
      const monthNames = ["January", "February", "March", "April", "May", "June","July", "August", "September", "October", "November", "December","January"];
  	  let dateObj = new Date();
	  let month = dateObj.getMonth() + 1;
	  
	  let year  = dateObj.getFullYear();
	  let nextMonthYear =  month != 12 ? dateObj.getFullYear() : dateObj.getFullYear()+1;
	  let daysInMonth = new Date(year, month, 0).getDate();
	  let daysInNextMonth = new Date(year, month+1, 0).getDate();
	  
	  const thisMonthName = monthNames[dateObj.getMonth()];
	  const thisMonthNumber = dateObj.getMonth()+1;
	  const nextMonthName = monthNames[dateObj.getMonth()+1];
	  const nextMonthNumber = dateObj.getMonth()+2 == 13 ? 1 :dateObj.getMonth()+2;
	  
	  const date = new Date();
      const currentYear  = date.getFullYear();
      const currentMonth = date.getMonth()+1;
      const currentDate = date.getDate();
      
      const today =  currentYear+"-"+currentMonth+"-"+currentDate;
	  
	  let pageLoadObj  = "";
	  let dropDownValidate = true;
	  
	  let assignmentId = "";
	  
	  var dataNodeLoad = {};
	  dataNodeLoad["staffId"] = staffID ; 
	  dataNodeLoad["implementId"] = implementId ; 
	  dataNodeLoad["implementStartDate"] = implementDate ; 
  	  passDataLoad = JSON.stringify(dataNodeLoad);

           $(document).ready(function ()
             {       	   
        	   // onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);
          
        		$.ajax({
				    beforeSend : function(request) {
				     document.getElementById("loaderNotify").style.display = "";
					 request.setRequestHeader("GUID",GUID);
				    },
					url : serverHTTP+'Assignment/ViewAllTodayDeal',
					method : 'POST',
					contentType : 'application/json',
					data :passDataLoad,
					dataType : 'json',
					success : function(result, status,request) {
						if (result.status == 200) {
							viewimplementDetail(result);
						} else {
							console.log("Sorry Case List error");
						}
					},complete:function(data){
						document.getElementById("loaderNotify").style.display = "none";
					},
					error : function(error) {
						console.log(JSON.stringify(error));
					}
				});  
             });
           $(".clickable-row").click(function() {
               window.location = $(this).data("href");
           });
           
        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;

        function myFunction()
         {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }

        function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(pageLanguage,"item-list");
			setLanguage(selectedLanguage);
		}
  
   
    function viewimplementDetail(result)
    {
    	 document.getElementById("assignmentIdValue").value  = result.data[0].assignmentId;
    	 buttonDisableForConfirmation(result.data[0].reportDayBeforeStatus, result.data[0].departureReportStatus, result.data[0].arrivalReportStatus, result.data[0].closingReportStatus);
    	 if(result.data[0].absenceReportStatus)
    	 {
    		 document.getElementById("inputReasonForAbsenteeism").value  =  result.data[0].absenceReason;
    		 document.getElementById("inputReasonForAbsenteeismStatus").value  = result.data[0].absenceReportStatus;
    		 document.getElementById("ButtonSpanConfirmedDayBefore").disabled = true;
           	 document.getElementById("inputReasonForAbsenteeism").disabled = true;
           	 document.getElementById("ReportAbsenteeismButtonW").disabled = true;
           	 document.getElementById("divNonAbsentSection").style.display = "none"; 
    	 }
    	 
    	 document.getElementById("spanImplementationDateContent").innerHTML  = result.data[0].implementDate;
    	 document.getElementById("spanCaseTitleContent").innerHTML  = result.data[0].caseName;
    	 document.getElementById("spanWorkLocationContent").innerHTML  = result.data[0].workLocation;
    	 document.getElementById("spanWorkAddressContent").innerHTML  = result.data[0].workAddress;
    	 document.getElementById("spanNearestStationContent").innerHTML  = result.data[0].nearestStation;
    	 document.getElementById("spanWorkingHoursContent").innerHTML  = result.data[0].scheduledStartTime + '~' + result.data[0].scheduledEndTime;
    	 document.getElementById("inputScheduledDepartureTime").value  = result.data[0].scheduledDepartureTime;
    	// document.getElementById("spanScheduledDepartureTimeContent").innerHTML  = result.data[0].scheduledDepartureTime;
    	 document.getElementById("spanBasicSalaryContent").innerHTML  = '¥' + result.data[0].dailyBasicSalary;
    	 document.getElementById("spanDetailsImplementationContent").innerHTML  =  result.data[0].detailInfo;
    	 
    	 var confirmedDate = result.data[0].confirmedByDayBeforeDateTime != null ? result.data[0].confirmedByDayBeforeDateTime : "" ;
       	document.getElementById('spanConfirmedDayBeforeDateTime').innerHTML = confirmedDate;
       	
        var departureReportDate = result.data[0].departureReportDateTime != null ? result.data[0].departureReportDateTime : "" ;
      	document.getElementById('spanDepartureConfirmationDateTime').innerHTML = departureReportDate;
      	
      	var arrivalReportDate = result.data[0].arrivalReportDateTime != null ? result.data[0].arrivalReportDateTime : "" ;
      	document.getElementById('spanArrivalConfirmationDateTime').innerHTML = arrivalReportDate;
      	
      	var closingReportDate = result.data[0].closingReportDateTime != null ? result.data[0].closingReportDateTime : "" ;
      	document.getElementById('spanClosingConfirmationDateTime').innerHTML = closingReportDate;

       	
       	
    	 
    }
    
    $("#ButtonSpanConfirmedDayBefore").click(function( event ) { 
    	
		 let implementDate = document.getElementById("spanImplementationDateContent").innerHTML;
		 let assignmentId = document.getElementById("assignmentIdValue").value;
		  	   
		 let dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
	  	 dataNode['assignmentId'] = assignmentId;  
	   	 dataNode['implementationId'] = implementId;
 	     dataNode['implementDate'] = implementDate;  
 	     
	    	   $.ajax({
	             beforeSend: function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
	              request.setRequestHeader("GUID", GUID);
	             },
	             url: serverHTTP +'Assignment/ConfirmByDayBefore',
	             method: 'POST',
	             contentType: 'application/json',
	             data: JSON.stringify(dataNode),
	             dataType: 'json',
	             success: function(result, status, request){      
				 if(result.status==200)
	             {
	              	showMessage('success',"N1266");
	              	var spanConfirmedDayBeforeDateTime = document.getElementById('spanConfirmedDayBeforeDateTime').innerHTML;
	              	spanConfirmedDayBeforeDateTime += ' ' + result.data.confirmedDate;
	              	document.getElementById('spanConfirmedDayBeforeDateTime').innerHTML = spanConfirmedDayBeforeDateTime;
	              	document.getElementById("ButtonSpanConfirmedDayBefore").disabled = true;
	             }
	              else
	              {
	              	showMessage('error',"N1265");
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
    
    $("#ReportAbsenteeismButtonW").click(function( event ) { 
    	
		 let reasonForAbsenteeism = document.getElementById("inputReasonForAbsenteeism").value.trim();
		 let assignmentId = document.getElementById("assignmentIdValue").value;
		 if(reasonForAbsenteeism!="")
		 { 	   
		 let dataNode = {};     
	  	 dataNode['reasonForAbsent'] = reasonForAbsenteeism;  
	  	 dataNode['assignmentId'] = assignmentId;  
	     
	    	   $.ajax({
	             beforeSend: function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
	              request.setRequestHeader("GUID", GUID);
	             },
	             url: serverHTTP +'/Assignment/AbsenceReport',
	             method: 'POST',
	             contentType: 'application/json',
	             data: JSON.stringify(dataNode),
	             dataType: 'json',
	             success: function(result, status, request){      
				 if(result.status==200)
	             {
	              	showMessage('success',"N1266");
	              	document.getElementById("ButtonSpanConfirmedDayBefore").disabled = true;
	              	document.getElementById("inputReasonForAbsenteeism").disabled = true;
	              	document.getElementById("ReportAbsenteeismButtonW").disabled = true;
	              	document.getElementById("divNonAbsentSection").style.display = "none";              	
	             }
	              else
	              {
	              	showMessage('error',"N1265");
	             	 }
	              },
	              complete:function(data){
	            	  document.getElementById("loaderNotify").style.display = "none";
	           	   },
	              error: function(error) {
	              console.log(JSON.stringify(error));
	           		}
	        	 });
                }else
                {
                    showMessage('error',"N1212");
                } 
	    	 });
    
    $("#ButtonSpanReportDeparture").click(function( event ) { 
    	
		 var implementDate = document.getElementById("spanImplementationDateContent").innerHTML;	 
		 let assignmentId = document.getElementById("assignmentIdValue").value;
		 
		 var dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
	  	 dataNode['assignmentId'] = assignmentId;  
	   	 dataNode['implementationId'] = implementId;
	     dataNode['implementDate'] = implementDate;  
	     
	    	   $.ajax({
	             beforeSend: function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
	              request.setRequestHeader("GUID", GUID);
	             },
	             url: serverHTTP +'Assignment/ConfirmDepartureReport',
	             method: 'POST',
	             contentType: 'application/json',
	             data: JSON.stringify(dataNode),
	             dataType: 'json',
	             success: function(result, status, request){      
				 if(result.status==200)
	             {
	              	showMessage('success',"N1266");
	              	var spanDepartureConfirmationDateTime = document.getElementById('spanDepartureConfirmationDateTime').innerHTML;
	              	spanDepartureConfirmationDateTime += ' ' + result.data.departureReportDate;
	              	document.getElementById('spanDepartureConfirmationDateTime').innerHTML = spanDepartureConfirmationDateTime;
	              	document.getElementById("ButtonSpanReportDeparture").disabled = true;

	             }
	              else
	              {
	              	showMessage('error',"N1265");
	             	
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
    
    $("#ButtonSpanReportArrival").click(function( event ) { 
    	
		 let implementDate = document.getElementById("spanImplementationDateContent").innerHTML;
		 let assignmentId = document.getElementById("assignmentIdValue").value;
		  	   
		 let dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
	  	 dataNode['assignmentId'] = assignmentId;  
	   	 dataNode['implementationId'] = implementId;
	     dataNode['implementDate'] = implementDate;  
	     
	    	   $.ajax({
	             beforeSend: function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
	              request.setRequestHeader("GUID", GUID);
	             },
	             url: serverHTTP +'Assignment/ConfirmArrivalReport',
	             method: 'POST',
	             contentType: 'application/json',
	             data: JSON.stringify(dataNode),
	             dataType: 'json',
	             success: function(result, status, request){      
				 if(result.status==200)
	             {
	              	showMessage('success',"N1266");
	              	var spanArrivalConfirmationDateTime = document.getElementById('spanArrivalConfirmationDateTime').innerHTML;
	              	spanArrivalConfirmationDateTime += ' ' + result.data.arrivalReportDate;
	              	document.getElementById('spanArrivalConfirmationDateTime').innerHTML = spanArrivalConfirmationDateTime;
	              	document.getElementById("ButtonSpanReportArrival").disabled = true;

	             }
	              else
	              {
	              	showMessage('error',"N1265");
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
    
    
  
    
    $("#ButtonSpanReportClosing").click(function( event ) {
	 let implementDate = document.getElementById("spanImplementationDateContent").innerHTML;
	 let assignmentIdValue = document.getElementById("assignmentIdValue").value;
     localStorage.setItem("assignmentId", assignmentIdValue);
     window.location.href = "case-close-report.jsp";
     
     
	/* 	 var dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
	  	 dataNode['assignmentId'] = assignmentIdValue;  
	   	 dataNode['implementationId'] = implementId;
	     dataNode['implementDate'] = implementDate;  
	     
	    	   $.ajax({
	             beforeSend: function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
	              request.setRequestHeader("GUID", GUID);
	             },
	             url: serverHTTP +'Assignment/ConfirmClosingReport',
	             method: 'POST',
	             contentType: 'application/json',
	             data: JSON.stringify(dataNode),
	             dataType: 'json',
	             success: function(result, status, request){      
				 if(result.status==200 || result.status==203)
	             {
					
					 
	              	//showMessage('success',"N1266");
	              	 var spanClosingConfirmationDateTime = document.getElementById('spanClosingConfirmationDateTime').innerHTML;
	              	spanClosingConfirmationDateTime += ' ' + result.data.closingReportDate;
	              	document.getElementById('spanClosingConfirmationDateTime').innerHTML = spanClosingConfirmationDateTime;
	              	document.getElementById("ButtonSpanReportClosing").disabled = true; 

	             }
	              else
	              {
	              	//showMessage('error',"N1265");
	             		// showMessage("Sorry Data Loding Error");
	             	 }
	              },
	              complete:function(data){
	            	  document.getElementById("loaderNotify").style.display = "none";
	           	   },
	              error: function(error) {
	              console.log(JSON.stringify(error));
	           		}
	        	 });  */
	    	 });
    
	function buttonDisableForConfirmation(value1, value2, value3, value4)
	{
		
		if(value1==1)
		{
			document.getElementById("ButtonSpanConfirmedDayBefore").disabled = true;
		}
		if(value2==1)
		{
			document.getElementById("ButtonSpanReportDeparture").disabled = true;
		}
		if(value3==1)
		{
			document.getElementById("ButtonSpanReportArrival").disabled = true;
		}
		if(value4==1)
		{
			//document.getElementById("ButtonSpanReportClosing").disabled = true;
		}

	}



 </script>
</body>

</html>