<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleStaffMonthlyAttendanceDetails">Staff - Monthly Attendance Details</title>
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
                         	          <div class="col-md-8 " >
                                        <h1 > <i class="fa fa-tasks text-30" role="generic"></i> <span id="pageSpanHeadingMonthlyAttendanceDetailsValues"></span> <span id="pageSpanHeadingMonthlyAttendanceDetails"> Attendance Details</span> </h1>
                                      
                                    </div>
									<div class="col-md-4  pt-0 pr-4 TopButDiv">
										<button onclick="window.history.back();" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
											<span id="buttonSpanReturn">Return</span>
										</button>
											
									</div>
									<div class="col-md-12  pt-0 pr-4 ">
									  <p id="pageCaseViewSpanHeadingText1" class="pt-0">You can check the attendance information for each implementation day.</p>
									  <p id="pageCaseViewSpanHeadingText2" class="pt-0">* The displayed basic salary, advance payment, etc. may be undecided. If you have any questions, please contact the dispatching company.</p>
							       </div>
							  </div>

                             <div class="row  ml-2 mr-2" >
                                 <div class="col-lg-12 col-md-12 mb-4" id="cardLoadingDiv">
                                   
                <!--                    <div class="card mb-4">
                                    <div class="card-header">
                                    <input type="hidden" name="assignmentIdValue[]" value=""/>
                                     <p class="m-0 text-16" ><span id="pSpanImplementationDate"> Implementation Date : </span> <span id="pSpanImplementationDateValue"></span></p>
			                         <p class="m-0 text-16" ><span id="pSpanProjectName"> Project Name : </span> <span id="pSpanProjectNameValue"></span></p>
                                    </div>
                                    <div class="card-body">
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divWorkLocation">Work Location</div>
                                        <div class="col-4 row-content-text" id="divWorkLocationValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divWorkHours">Work Hours</div>
                                        <div class="col-4 row-content-text" id="divWorkHoursValue"></div>
                                       </div>  
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divBasicSalary">Basic Salary(Daily Salary)</div>
                                        <div class="col-4 row-content-text" id="divBasicSalary"></div>
                                       </div>  
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divAllowance">Allowance</div>
                                        <div class="col-4 row-content-text" id="divAllowanceValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divOvertimeCost">Overtime Cost</div>
                                        <div class="col-4 row-content-text" id="divOvertimeCostValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divAdvancePaymentTransportation">Advance Payment(Transportation Expenses)</div>
                                        <div class="col-4 row-content-text" id="divAdvancePaymentTransportationValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divAdvancePaymentExpenses">Advance Payment(Expenses)</div>
                                        <div class="col-4 row-content-text" id="divAdvancePaymentExpensesValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divAdvancePaymentPurchaseMoney">Advance Payment(Purchase Money)</div>
                                        <div class="col-4 row-content-text" id="divAdvancePaymentPurchaseMoneyValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divAdvancePaymentAccommodation">Advance Payment(Accommodation Fee)</div>
                                        <div class="col-4 row-content-text" id="divAdvancePaymentAccommodationValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divAdvancePaymentOther">Advance Payment(Other)</div>
                                        <div class="col-4 row-content-text" id="divAdvancePaymentOtherValue"></div>
                                       </div> 
                                       <div class="row mb-2">
                                        <div class="col-8 row-title-text" name="divTotalAdvancePayment">Total Advance Payment</div>
                                        <div class="col-4 row-content-text" id="divTotalAdvancePaymentValue"></div>
                                       </div> 
                                     </div>
                                   </div>
                                    -->
			                     </div>
                              
                                    <div class="col-md-8  pt-0 pr-4 TopButDiv">
                                       
                                    </div>
                                  <div class="col-lg-12 col-xl-12 ">
                                    
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
       loadSelectedLanguage(pageLanguage,"attendance");
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
      const AttendanceYear = "<%= request.getParameter("AttendanceYear")%>" ;
      const AttendanceMonth = "<%= request.getParameter("AttendanceMonth")%>" ;
      const daysInMonth = new Date(AttendanceYear, AttendanceMonth, 0).getDate();
      let AttendanceMonthText = AttendanceMonth
      if(AttendanceMonth < 10)
      { AttendanceMonthText = "0"+AttendanceMonth}
      const startDay = AttendanceYear+"-"+AttendanceMonthText+"-"+"01";
      const endDay = AttendanceYear+"-"+AttendanceMonthText+"-"+ daysInMonth;
      console.log(startDay);
      console.log(endDay);
      
      //const monthNames = ["January", "February", "March", "April", "May", "June","July", "August", "September", "October", "November", "December","January"];

	  let pageLoadObj  = "";
	  let dropDownValidate = true;

	  var dataNodeLoad = {};
	  dataNodeLoad["staffId"] = staffID ; 
	  dataNodeLoad["periodStartDate"] = startDay ; 
	  dataNodeLoad["periodEndDate"] = endDay ; 
  	  passDataLoad = JSON.stringify(dataNodeLoad);

           $(document).ready(function ()
             {  
        	   
        	   document.getElementById("pageSpanHeadingMonthlyAttendanceDetailsValues").innerHTML = AttendanceYear+" - "+AttendanceMonth;
        		$.ajax({
				    beforeSend : function(request) {
				     document.getElementById("loaderNotify").style.display = "";
					 request.setRequestHeader("GUID",GUID);
				    },
					url : serverHTTP+'Attendance/ViewAttendance',
					method : 'POST',
					contentType : 'application/json',
					data :passDataLoad,
					dataType : 'json',
					success : function(result, status,request) {
						if (result.status == 200) {
							viewAttendance(result);
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
			loadSelectedLanguage(selectedLanguage,"attendance");
			setLanguage(selectedLanguage);
		}
  
   
    function viewAttendance(result)
    {
    	if(result.data.length)
    	{
    		for(i=0;i<result.data.length;i++)
    		{
    			 let assignmentId = result.data[i].assignmentId;
    			 let staffId = result.data[i].staffId;
    			 let implementDate = result.data[i].implementDate != null ? result.data[i].implementDate : "";
    			 let projectName = result.data[i].projectName != null ? result.data[i].projectName : "";
    			 let workLocation = result.data[i].workLocation != null ? result.data[i].workLocation : "";
    			 let workingHourStart = result.data[i].workingHourStart != null ? result.data[i].workingHourStart : "";
    			 let workingHourEnd = result.data[i].workingHourEnd != null ? result.data[i].workingHourEnd : "";
    			 let basicSalary = result.data[i].basicSalary != null ? '<div class="row mb-2">'+
														                 '<div class="col-8 row-title-text" name="divBasicSalary">Basic Salary(Daily Salary)</div>'+
														                 '<div class="col-4 row-content-text" id="divBasicSalary">'+result.data[i].basicSalary+'</div>'+
														                   '</div>'   : "";
    			 let totalAllowance = result.data[i].totalAllowance != null ? '<div class="row mb-2">'+
															                 '<div class="col-8 row-title-text" name="divAllowance">Allowance</div>'+
															                 '<div class="col-4 row-content-text" id="divAllowanceValue">'+result.data[i].totalAllowance+'</div>'+
															                '</div>' : "";
    			 let totalOverTimeCost = result.data[i].totalOverTimeCost != null ? '<div class="row mb-2">'+
															                ' <div class="col-8 row-title-text" name="divOvertimeCost">Overtime Cost</div>'+
															                 '<div class="col-4 row-content-text" id="divOvertimeCostValue">'+ result.data[i].totalOverTimeCost+'</div>'+
															                '</div>'  : "";
    			 let totalTransportationExpense = result.data[i].totalTransportationExpense != null ? '<div class="row mb-2">'+
															                 '<div class="col-8 row-title-text" name="divAdvancePaymentTransportation">Advance Payment(Transportation Expenses)</div>'+
															                 '<div class="col-4 row-content-text" id="divAdvancePaymentTransportationValue">'+result.data[i].totalTransportationExpense+'</div>'+
															                '</div>'  : "";
    			 let totalExpense = result.data[i].totalExpense != null ?  '<div class="row mb-2">'+
															                 '<div class="col-8 row-title-text" name="divAdvancePaymentExpenses">Advance Payment(Expenses)</div>'+
															                 '<div class="col-4 row-content-text" id="divAdvancePaymentExpensesValue">'+ result.data[i].totalExpense +'</div>'+
															               ' </div>'  : "";
    			 let totalAccommodationFee = result.data[i].totalAccommodationFee != null ? '<div class="row mb-2">'+
															                 '<div class="col-8 row-title-text" name="divAdvancePaymentAccommodationFee">Advance Payment(Accommodation Fee)</div>'+
															                ' <div class="col-4 row-content-text" id="divAdvancePaymentAccommodationFeeValue">'+result.data[i].totalAccommodationFee+'</div>'+
															                '</div>'  : "";
    			 let totalPurchaseMoney = result.data[i].totalPurchaseMoney != null ? '<div class="row mb-2">'+
															                ' <div class="col-8 row-title-text" name="divAdvancePaymentPurchaseMoney">Advance Payment(Purchase Money)</div>'+
															                 '<div class="col-4 row-content-text" id="divAdvancePaymentPurchaseMoneyValue">'+ result.data[i].totalPurchaseMoney +'</div>'+
															                '</div>'  : "";
    			 let totalAdvancePayment = result.data[i].totalAdvancePayment != null ? '<div class="row mb-2">'+
																                 '<div class="col-8 row-title-text" name="divTotalAdvancePayment">Total Advance Payment</div>'+
																                ' <div class="col-4 row-content-text" id="divTotalAdvancePaymentValue">'+result.data[i].totalAdvancePayment+'</div>'+
																                '</div>'  : "";
    			
    			 
    			 let newRow  = '<div class="card mb-4">'+
				                     '<div class="card-header">'+
					                 '<input type="hidden" name="assignmentIdValue[]" value="'+assignmentId+'"/>'+
					                 ' <p class="m-0 text-16" ><span name="pSpanImplementationDate"> Implementation Date : </span> <span id="pSpanImplementationDateValue">'+implementDate+'</span></p>'+
					                 ' <p class="m-0 text-16" ><span name="pSpanProjectName"> Project Name : </span> <span id="pSpanProjectNameValue">'+projectName+'</span></p>'+
					                 '</div>'+
					                 '<div class="card-body">'+
				                    '<div class="row mb-2">'+
				                     '<div class="col-8 row-title-text" name="divWorkLocation">Work Location</div>'+
				                     '<div class="col-4 row-content-text" id="divWorkLocationValue">'+workLocation+'</div>'+
				                    '</div> '+
				                    '<div class="row mb-2">'+
				                     '<div class="col-8 row-title-text" name="divWorkHoursStart">Work Hours Start</div>'+
				                     '<div class="col-4 row-content-text" id="divWorkHoursStartValue">'+workingHourStart+'</div>'+
				                   ' </div>'+
				                    '<div class="row mb-2">'+
				                    ' <div class="col-8 row-title-text" name="divWorkHoursEnd">Work Hours End</div>'+
				                    ' <div class="col-4 row-content-text" id="divWorkHoursEndValue">'+workingHourEnd+'</div>'+
				                    '</div>'+basicSalary+' '+totalAllowance+''+totalOverTimeCost+''+totalTransportationExpense+''+totalExpense+''+totalPurchaseMoney+''+totalAccommodationFee+''+
				                    '<div class="row mb-2">'+
				                    ' <div class="col-8 row-title-text" name="divAdvancePaymentOther">Advance Payment(Other)</div>'+
				                     '<div class="col-4 row-content-text" id="divAdvancePaymentOtherValue"></div>'+
				                    '</div> '+totalAdvancePayment+''+
				                 ' </div>'+
				                '</div>';
	
	$("#cardLoadingDiv").append(newRow);
    		}

    	} 

        loadSelectedLanguage(getSiteLanguage(),"attendance");
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