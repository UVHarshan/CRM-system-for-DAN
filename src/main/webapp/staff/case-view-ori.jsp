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
                                 <span id="spanImplementationDateContent" class="row-content-text"> 2021/11/04</span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanCaseTitle" class="row-title-text">Case Title</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                  <span id="spanCaseTitleContent" class="row-content-text">Trojan A</span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkLocation" class="row-title-text"> Work Location</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkLocationContent" class="row-content-text">  Chyoda --Wu</span>
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
                                 <span id="spanWorkingHoursContent" class="row-content-text">8: 00-21: 00 </span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanScheduledDepartureTime" class="row-title-text"> Scheduled Departure Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanScheduledDepartureTimeContent" class="row-content-text">22:00 </span>
                               </div>
                               </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanBasicSalary" class="row-title-text"> Basic Salary (Daily Salary)</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanBasicSalaryContent" class="row-content-text">¥ 1,000</span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanDetailsImplementationInformation" class="row-title-text"> Details Of Implementation Information</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanBasicSalaryContent" class="row-content-text">¥ 1,000</span>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanConfirmedDayBefore" class="row-title-text"> Confirmed The Day Before</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-check" role="generic"></i> <span id="ButtonSpanConfirmedDayBefore" class="row-content-text">Report The Day Before</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="PConfirmedDayBeforeHelpText">Please be sure to report the confirmation the day before by tapping the button when confirming the day before.</p>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanScheduledDepartureTime" class="row-title-text"> Scheduled Departure Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                               <input type="time" class="form-control" style="max-width: 200px"/>
                               </div>
                              </div>
                               <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanReasonForAbsenteeism" class="row-title-text"> Reason For Absenteeism</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                               <input type="text" class="form-control"/>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanAbsenceReport" class="row-title-text"> Absence Report</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-danger TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-times" role="generic"></i> <span id="ButtonSpanReportAbsenteeism" class="row-content-text"> Report Absenteeism</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="PReportAbsenteeismHelpText">If you are absent, please be sure to report your absence by tapping the button.</p>
                               </div>
                              </div>
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanDepartureConfirmation" class="row-title-text"> Departure Confirmation</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-check" role="generic"></i> <span id="ButtonSpanReportDeparture" class="row-content-text">Report Departure</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="PDepartureConfirmationHelpText">Please be sure to report your departure by tapping the button at the time of departure.</p>
                               </div>
                              </div>
                              
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanArrivalConfirmation" class="row-title-text"> Arrival Confirmation</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-check" role="generic"></i> <span id="ButtonSpanReportArrival" class="row-content-text">Report Arrival</span>
                                 </button>
                                 <p class="mb-0 pb-0" id="PArrivalConfirmationHelpText">Please be sure to report your arrival by tapping the button when you arrive.</p>
                               </div>
                              </div>
                              
                              <div class="row  pt-2 ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanClosingConfirmation" class="row-title-text"> Closing Confirmation</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <button  class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
                                   <i class="fa fa-handshake" role="generic"></i> <span id="ButtonSpanReportClosing" class="row-content-text">Enter The Closing Report</span>
                                 </button>
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
    <script src="../dist-assets/js/language_main_staff.js"></script>

    <script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"customer");
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
      const staffID = localStorage.getItem('staffID') ;
      const monthNames = ["January", "February", "March", "April", "May", "June","July", "August", "September", "October", "November", "December","January"];
  	  let dateObj = new Date();
	  let month = dateObj.getMonth() + 1;
	  console.log("month" + month);
	  let year  = dateObj.getFullYear();
	  let nextMonthYear =  month != 12 ? dateObj.getFullYear() : dateObj.getFullYear()+1;
	  let daysInMonth = new Date(year, month, 0).getDate();
	  let daysInNextMonth = new Date(year, month+1, 0).getDate();
	  
	  console.log("daysInNextMonth : " + daysInNextMonth);
	  
	  const thisMonthName = monthNames[dateObj.getMonth()];
	  const thisMonthNumber = dateObj.getMonth()+1;
	  const nextMonthName = monthNames[dateObj.getMonth()+1];
	  const nextMonthNumber = dateObj.getMonth()+2 == 13 ? 1 :dateObj.getMonth()+2;
	  
	  let pageLoadObj  = "";
	  let dropDownValidate = true;
	  
	  var dataNodeLoad = {};
	  dataNodeLoad["staffId"] = staffID ; 
	  dataNodeLoad["targetMonth"] = month ; 
	  dataNodeLoad["targetYear"] = year ; 
  	  passDataLoad = JSON.stringify(dataNodeLoad);
	  
           $(document).ready(function ()
             {       	   
        	    onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);
          
        		$.ajax({
				    beforeSend : function(request) {
				     document.getElementById("loaderNotify").style.display = "";
					 request.setRequestHeader("GUID",GUID);
				    },
					url : serverHTTP+'ShiftSchedule/ViewShiftSchedule',
					method : 'POST',
					contentType : 'application/json',
					data :passDataLoad,
					dataType : 'json',
					success : function(result, status,request) {
						if (result.status == 200) {
							//viewShiftScheduleThisMonth(result);
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

    function setLanguageWithTables(selectedLanguage)
    {
        setLanguage(selectedLanguage);
    }
  
    
    function viewShiftScheduleThisMonth(result)
    {
      pageLoadObj = result ;
      if(result.data1 != null)
      {
    	  if(result.data1.shiftScheduleDateDtoList != null)
    	  {
    		  
    		  if(result.data1.shiftScheduleDateDtoList.length != 0)
    		{
    		  $("#shiftScheduleDetailsTable tbody").empty();
    		  document.getElementById("btnRegisterShiftSchedule").disabled = true;
    		  dropDownValidate = false;
    		  
    		  	 for(x = 1;x<=result.data1.shiftScheduleDateDtoList.length;x++)
    		     {
    		  	   publicMemo = result.data1.shiftScheduleDateDtoList[x-1].publicMemo != null ? result.data1.shiftScheduleDateDtoList[x-1].publicMemo : "" ;
    		       let newRow  ='<tr id="shiftScheduleDetailsTrId">'+
    		 		        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+x+'</td>'+
    		 		         '<td style="width: 15%;">'+
    		 		         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
    		 		         '<select disabled style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control">'+
    		                   '<option value="4" ></option>'+
    		                   '<option value="1">○</option>'+
    		                   '<option value="2">△</option>'+
    		                   '<option value="0">×</option>'+
    		                 '</select>'+
    		                '</td>'+
    		 		     '<td style="width: 70%;">'+
    		 		  '<input disabled id="shiftScheduleRemark"  name="shiftScheduleRemark[]" type="text" value="'+publicMemo+'"  class="form-control">'+
    		 		' </td>'+
    		 		'</tr> ';
    		 		
    		 		$("#shiftScheduleDetailsTable tbody").append(newRow);
    		 		
    		 		var shiftScheduleDetailOptionNodes = document.getElementsByName("shiftScheduleDetailOption[]");
    		 		shiftScheduleDetailOptionNodes[x-1].value= result.data1.shiftScheduleDateDtoList[x-1].availability;
    		 	 }   
    	  }else
          {
    		  onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
          } 
    	 }else
          {
    		  onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
          } 
      }else
      {
    	  onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
      }
  	
    }
    

    function viewShiftScheduleNextMonth(result)
    {
      pageLoadObj = result ;
      if(result.data2 != null)
      {
    	  if(result.data2.shiftScheduleDateDtoList != null)
    	  {
    		  if(result.data2.shiftScheduleDateDtoList.length != 0 )
        	  {
    			  
    		  $("#shiftScheduleDetailsTable tbody").empty();
    		  document.getElementById("btnRegisterShiftSchedule").disabled = true;
    		  dropDownValidate = false;
    		  	 for(x = 1;x<=result.data2.shiftScheduleDateDtoList.length;x++)
    		     {
    		  	   publicMemo = result.data2.shiftScheduleDateDtoList[x-1].publicMemo != null ? result.data2.shiftScheduleDateDtoList[x-1].publicMemo : "" ;
    		       let newRow  ='<tr id="shiftScheduleDetailsTrId">'+
    		 		        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+x+'</td>'+
    		 		         '<td style="width: 15%;">'+
    		 		         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
    		 		         '<select disabled style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control">'+
    		                   '<option value="4" ></option>'+
    		                   '<option value="1">○</option>'+
    		                   '<option value="2">△</option>'+
    		                   '<option value="0">×</option>'+
    		                 '</select>'+
    		                '</td>'+
    		 		     '<td style="width: 70%;">'+
    		 		  '<input disabled id="shiftScheduleRemark"  name="shiftScheduleRemark[]" type="text" value="'+publicMemo+'"  class="form-control">'+
    		 		' </td>'+
    		 		'</tr> ';
    		 		
    		 		$("#shiftScheduleDetailsTable tbody").append(newRow);
    		 		
    		 		var shiftScheduleDetailOptionNodes = document.getElementsByName("shiftScheduleDetailOption[]");
    		 		shiftScheduleDetailOptionNodes[x-1].value= result.data2.shiftScheduleDateDtoList[x-1].availability;
    		 	 }   
    	  }else
          {
    		  onloadShiftScheduleNextMonth(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
          }
    	  }else
          {
    		  onloadShiftScheduleNextMonth(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
          }
      }else
      {
		  onloadShiftScheduleNextMonth(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
      }
  	
    }
    
    
    
    function onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber)
    {
    	//document.getElementById("btnRegisterShiftSchedule").disabled = false;
    	//dropDownValidate = true;
    	$("#shiftScheduleDetailsTable tbody").empty();
    	
    	//document.getElementById("spanBtnThisMonth").innerHTML = thisMonthName+" "+ year;
    	//document.getElementById("spanBtnNextMonth").innerHTML  = nextMonthName+" "+ nextMonthYear;
    	
    	//document.getElementById("spanUIThisMonth").innerHTML = thisMonthName+" "+ year;
    	
    	document.getElementById("selectedYear").value = year;
    	document.getElementById("selectedMonth").value = thisMonthNumber;

    	//var x = 0;
    	for(x = 1;x<=daysInMonth;x++)
        {
      let newRow  =	'<tr id="shiftScheduleDetailsTrId">'+
			        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+x+'</td>'+
			         '<td style="width: 15%;">'+
			         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
			         '<select style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control">'+
                      '<option value="4"></option>'+
                      '<option value="1">○</option>'+
                      '<option value="2">△</option>'+
                      '<option value="0">×</option>'+
                    '</select>'+
                   '</td>'+
			     '<td style="width: 70%;">'+
			  '<input id="shiftScheduleRemark"  name="shiftScheduleRemark[]" type="text" value=""  class="form-control">'+
			' </td>'+
			'</tr> ';
			
			$("#shiftScheduleDetailsTable tbody").append(newRow);
    	 }
    }
    
    
    function onloadShiftScheduleNextMonth(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber)
    {
    	document.getElementById("btnRegisterShiftSchedule").disabled = false;
    	dropDownValidate = true;
    	$("#shiftScheduleDetailsTable tbody").empty();  
    	
    	//var x = 0;
    	for(x = 1;x<=daysInNextMonth;x++)
        {
      let newRow  =	'<tr id="shiftScheduleDetailsTrId">'+
			        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+x+'</td>'+
			         '<td style="width: 15%;">'+
			         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
			         '<select style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control">'+
                      '<option value="4"></option>'+
                      '<option value="1">○</option>'+
                      '<option value="2">△</option>'+
                      '<option value="0">×</option>'+
                    '</select>'+
                   '</td>'+
			     '<td style="width: 70%;">'+
			  '<input id="shiftScheduleRemark"  name="shiftScheduleRemark[]" type="text" value=""  class="form-control">'+
			' </td>'+
			'</tr> ';
			
			$("#shiftScheduleDetailsTable tbody").append(newRow);
    	 }
    }
    
    function registerShiftSchedule()
    {
    	var shiftScheduleDateHiddenArray =  document.getElementsByName('shiftScheduleDateHidden[]');
    	var shiftScheduleDetailOptionArray = document.getElementsByName("shiftScheduleDetailOption[]");
        var shiftScheduleRemarkArray = document.getElementsByName("shiftScheduleRemark[]");
        
       // var instituteArray = document.getElementsByName("staffInstitute[]");
       // var qualificationTypeArray = document.getElementsByName("staffQualification[]");
    	
    	
        var dataNode = {};
        var dataShiftSchedule = [];
        
    	for(var i = 0; i < shiftScheduleDateHiddenArray.length; i++)
    	{
    		var shiftScheduleDate = shiftScheduleDateHiddenArray[i].value !="" ? shiftScheduleDateHiddenArray[i].value : null ;
    		var shiftScheduleDetailOption = shiftScheduleDetailOptionArray[i].value !="" ? shiftScheduleDetailOptionArray[i].value : null ;
            var shiftScheduleRemark = shiftScheduleRemarkArray[i].value !="" ? shiftScheduleRemarkArray[i].value : null ;
            
            
            var tempshiftSchedule = {
            		"id":null,
            		"date":shiftScheduleDate,
					"availability":shiftScheduleDetailOption,
					"publicMemo":shiftScheduleRemark,
					"privateMemo":null
					} ;

            dataShiftSchedule.push(tempshiftSchedule);   
    	}
    	
    	let targetYear = document.getElementById("selectedYear").value;
    	let targetMonth = document.getElementById("selectedMonth").value;
    	
    	dataNode['id'] = null ;
    	dataNode['staffId'] = staffID ;
    	dataNode['uuid'] = UUID ;
    	dataNode['submissionDate'] = "2021-11-02";
    	dataNode['privateMemo'] = null;
    	dataNode['confirmationDate'] = null;
    	dataNode['confirmationPerson'] = staffID ;
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
					document.getElementById("btnRegisterShiftSchedule").disabled = true;
					dropDownValidate = false;
					showMessage('success',"E0000");
					setTimeout(function(){
                		window.location.href = "staff-schedule.jsp"; 
                		}, 3600);
				} else {
					showMessage('error',"E0001");
				}
			},complete:function(data){
				document.getElementById("loaderNotify").style.display = "none";
			},
			error : function(error) {
				console.log(JSON.stringify(error));
			}
		}); 
    }
    
    $("#shiftScheduleDetailOptionMaster").change(function()
      {
    /* 	<select disabled id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control"> */
       if(dropDownValidate)
      {
    	let optionValue = $('#shiftScheduleDetailOptionMaster').val();
    	$('[name="shiftScheduleDetailOption[]"]').val(optionValue);
      }
      
      });
    
    
    $("#btnThisMonthClick").click(function()
      {
    	document.getElementById("spanUIThisMonth").innerHTML = thisMonthName+" "+ year;
    	document.getElementById("selectedYear").value = year;
    	document.getElementById("selectedMonth").value = thisMonthNumber;
    	viewShiftScheduleThisMonth(pageLoadObj);  
    	    	
       });
    

    $("#btnNextMonthClick").click(function()
      {
    	document.getElementById("spanUIThisMonth").innerHTML = nextMonthName+" "+ nextMonthYear;
    	document.getElementById("selectedYear").value = nextMonthYear;
    	document.getElementById("selectedMonth").value = nextMonthNumber;
    	viewShiftScheduleNextMonth(pageLoadObj);    
       });

 </script>
</body>

</html>