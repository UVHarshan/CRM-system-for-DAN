<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleStaffCaseCloseReport">Staff - Case Close Report</title>
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
                                        <h1 > <i class="fa fa-tasks text-30" role="generic"></i><span id="pageSpanHeadingCaseCloseReport"> Case Close Report</span> </h1>
                                    </div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<button onclick="window.history.back();" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
											<span id="buttonSpanReturn">Return</span>
										</button>
											
									</div>
									<div class="col-md-12  pt-0 pr-4 ">
									  <p id="pageCaseCloseReportSpanHeadingText1" class="pt-0">Please enter overtime hours, transportation expenses, etc. and press the confirm button at the end.</p>
							       </div>
							       <div class="col-md-12  pt-2 pr-4 ">
									  <p id="pageCaseCloseReportSpanHeadingText2" class="pt-0 pb-0 mt-0 mb-0">If the break time includes the midnight time zone (22: 00-05: 00), enter it in the midnight break time.</p>
									  <p id="pageCaseCloseReportSpanHeadingText3" class="pt-0">Example: If you take a break from 1:00 to 2:00, enter the break time 1:00 and midnight break time 1:00. Example: If you take a break from 21:00 to 22:00, enter only the break time 1:00.</p>
							       </div>
							  </div>
                             <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4">
                                 <span id="spanImplementationDate" class="row-title-text">Implementation Date</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanImplementationDateContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanCaseTitle" class="row-title-text">Case Title</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                  <span id="spanCaseTitleContent" class="row-content-text"></span>
                               </div>
                              </div>
                              <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkLocation" class="row-title-text"> Work Location</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkLocationContent" class="row-content-text"></span>
                               </div>
                              </div>
                       <!--        <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkAddress" class="row-title-text"> Work Address (Including Contact Information)</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkAddressContent" class="row-content-text"> </span>
                               </div>
                              </div> -->
                           
                              <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanWorkingHours" class="row-title-text"> Working Hours</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanWorkingHoursContent" class="row-content-text"></span>
                               </div>
                              </div>
                            <!--   <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanScheduledDepartureTime" class="row-title-text"> Scheduled Departure Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanScheduledDepartureTimeContent" class="row-content-text"></span>
                               </div>
                               </div> -->
                               
                               <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanStartTime" class="row-title-text"> Start Time </span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <input type="time" id="StartTime" name="StartTime" class="form-control" style="min-width: 10px"/>
                                  <div id="errorStartTime" style="color: red;">  </div> <!--  // Uvindu -->
                               </div>
                              
                               </div>
                               
                               <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanEndingTime" class="row-title-text"> Ending Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <input type="time" id="EndingTime" name="EndingTime" class="form-control" style="min-width: 10px"/>
                                 <div id="divEndingTimeHelpText">The start time and end time will be the reference for the hourly wage calculation, so enter them correctly.</div>
                               	 <div id="errorEndingTime" style="color: red;">  </div>  <!--  // Uvindu -->
                               </div>
                               </div>
                               
                               <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanBreakTime" class="row-title-text"> Break Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <input type="text" id="BreakTime" name="BreakTime" class="form-control" style="min-width: 10px"/>
                                 <div id="errorBreakTime" style="color: red;">  </div>  <!--  // Uvindu -->
                               </div>
                               </div>
                              
                               <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanInsideMidnightBreakTime" class="row-title-text">(Inside) Midnight Break Time</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <input type="text" id="InsideMidnightBreakTime" name="InsideMidnightBreakTime" class="form-control" style="min-width: 10px"/>
                               	 <div id="errorInsideMidnightBreakTime" style="color: red;">  </div>  <!--  // Uvindu -->
                               </div>
                               </div>                        
                               
                              <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanActualWorkingHours" class="row-title-text"> Actual Working Hours</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <span id="spanActualWorkingHoursValue" class="row-content-text"></span>
                               </div>
                              </div>
                              
                               <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanOvertimeHours" class="row-title-text"> Overtime Hours</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                                 <input disabled type="text" id="OvertimeHours" name="OvertimeHours" class="form-control" style="min-width: 10px"/>
                               </div>
                               </div>
                               
                              <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanScheduledDepartureTime" class="row-title-text"> Photo</span> <span id="spanPhotoFileType" class="RequiredStar text-10" >* Image files (png, jpg, gif) only</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                               	<form method="POST" enctype="multipart/form-data" id="fileUploadForm">
								<div id="testTry">
								<div id="testTryInnerDiv">
									<input type="hidden" value="" name="businessrelatedMaterialsId[]" />
									<input type="file" id="staffBusinessrelatedMaterials" name="businessrelatedMaterials[]" class="form-control mb-2" >	
									  <div id="errorBusinessrelatedMaterials" name="errorBusinessrelatedMaterials[]" class="RequiredStar"></div>
									</div>						
								  </div>
								</form>		
								<div>
								   <button id="AddNewFile" class="btn " onclick="addAnotherFile()">Add New File</button>
								</div>
								<div id="imgFileAppenderID"></div>
                               </div>
                              </div>
                              <div class="row  pt-3  ml-2 mr-2">
                               <div class="col-md-4 pt-0 pr-4" >
                                 <span id="spanClosingRemarks" class="row-title-text"> Closing Remarks</span>
                               </div>
                               <div class="col-md-8 pt-0 pr-4">
                               <input type="text" id="closingRemarksText" class="form-control"/>
                               </div>
                              </div>
                              <br/> 
                             <div class="row  pt-3  ml-2 mr-2 ">
                               <div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-4 ContentAlignRC" >
                                   <button class="btn btn-info TopButtonMinWidth"  id="buttonAttendanceReport">Attendance Report</button>
                               </div> 
                             </div>
                             
                             <div class="row  pt-3 pb-0 mb-0 ml-2 mr-2 "> 
                             <div class="col-md-12 pt-0 pr-4 pb-0 mb-0" ><h3><span id="spanHeddingAdvancePayment">Advance payment (transportation expenses)</span></h3></div>
                             </div>
                             <hr class="pt-0 mt-0"/> 
                             
                             <div class="row  pt-3 pb-0 mb-0 ml-2 mr-2 "> 
                             <div class="col-md-12 pt-0 pr-4 pb-0 mb-0" >
                              <div class="table-responsive" >
                                 <table class="display table  table-bordered mb-0" id="advancepayment_table" style="width:100%">
                                   <thead id="advancepaymentTaxableTheadId">
                                    <tr>
                                       <th id="tableTHNo" class="pl-2" style="text-align: left"> No</th>
                                       <th id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" > Nominal</th>
                                       <th colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left"> Amount Of Money</th>
                                                                                                   
                                    </tr>
                                    <tr>
                                      <th colspan="4" class="pl-2" id="tableTHDetail" style="text-align: left"> Detail</th>
                                    </tr>
                                   </thead>
                                   <tbody id="advancepaymentTbodyId">
                                    <tr>
                                       <td id="tableTHNo" class="pl-2" style="text-align: left"> 1</td>
                                       <input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value=""/>
                                       <input type="hidden" name="advancePaymentItemType[]" id="advancePaymentItemType" value="1"/>
                                       <td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" ><input type="text" id="advancePaymentNominal" name="advancePaymentNominal[]" class="form-control" disabled="disabled" value="Transportation Expenses"></td>
                                       <td colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentAmountOfMoney"  name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control"> 
                                       </td>                                                           
                                    </tr> 
                                    <tr>
                                       <td colspan="4"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentDetail" name="advancePaymentDetail[]" placeholder="A station ⇔ B station (train ○ yen × 2) C ⇔ D (bus ○ yen × 2)" class="form-control">
                                       
                                       </td>                                                           
                                    </tr> 

                                     <tr>
                                       <td id="tableTHNo" class="pl-2" style="text-align: left"> 2</td>
                                       <input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value=""/>
                                       <input type="hidden" name="advancePaymentItemType[]" id="advancePaymentItemType" value="2"/>
                                       <td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" ><input type="text" id="advancePaymentNominal" name="advancePaymentNominal[]" class="form-control" disabled="disabled" value="Purchase Money"></td>
                                       <td colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentAmountOfMoney" name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control">
                                        </td>                                                           
                                    </tr> 
                                    <tr>
                                       <td colspan="4" class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentDetail" name="advancePaymentDetail[]" placeholder="Details" class="form-control">
                                       </td>  
                                    </tr> 
                                   
                                     <tr>
                                       <td id="tableTHNo" class="pl-2" style="text-align: left"> 3</td>
                                       <input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value=""/>
                                       <input type="hidden" name="advancePaymentItemType[]" id="advancePaymentItemType" value="3"/>
                                       <td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" ><input type="text" id="advancePaymentNominal" name="advancePaymentNominal[]" class="form-control" disabled="disabled" value="Expenses"></td>
                                       <td colspan="2" class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentAmountOfMoney" name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control">
                                        </td>                                                           
                                    </tr> 
                                    <tr>
                                       <td colspan="4" class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentDetail" name="advancePaymentDetail[]" placeholder="Details" class="form-control">
                                       </td>                                                           
                                    </tr> 
                                  
                                   <tr>
                                       <td id="tableTHNo" class="pl-2" style="text-align: left"> 4</td>
                                       <td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" >
                                       <input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value=""/>
                                       <input type="hidden" name="advancePaymentItemType[]" id="advancePaymentItemType" value="4"/>
                                       <input type="text" id="advancePaymentNominal" name="advancePaymentNominal[]" class="form-control" disabled="disabled" value="Accommodation fee">
                                       </td>
                                       <td colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentAmountOfMoney" name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control"> 
                                       </td>                                                           
                                    </tr> 
                                    <tr>
                                       <td colspan="4"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">
                                       <input type="text" id="advancePaymentDetail" name="advancePaymentDetail[]" placeholder="Details" class="form-control">
                                       </td>                                                           
                                    </tr> 
                                                     	 
                                  </tbody> 
                               
                                 </table>
                                  <h3 class="mt-4"><span id="spanTotalAdvancePayment">Total Advance Payment : </span><span id="spanTotalAdvancePaymentValue"></span> </h3>  
                                </div> 
                               </div> 
                               
                               <div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-4  mt-3 ContentAlignRC">
									<button class="btn SuccessColor" onclick="addAdvancePaymentRow()"id="buttonAddAdvancePayment">Add Row</button>
							  </div> 
                              </div>              
                              
                              <div class="row  pt-3 ml-2 mr-2 ">
                               <div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-4 ContentAlignRC" >
                                   <button class="btn btn-info TopButtonMinWidth"  id="buttonExpenseReport">Expense Report</button>
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
    
    <script src="../dist-assets/js/case-close-report-validate.js"></script>

    <script>
      const serverHTTP = "<%=serverHTTP%>";
      const GUID = localStorage.getItem('GUID') ;
      const UUID =  localStorage.getItem('uuid');
      const staffID = localStorage.getItem('staffID') ;
      const implementId = localStorage.getItem('implementationId') ;
      const assignmentId =  localStorage.getItem('assignmentId') ;
      
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
	  
	  const date = new Date();
      const currentYear  = date.getFullYear();
      const currentMonth = date.getMonth()+1;
      const currentDate = date.getDate();
     // const daysInMonth = new Date(currentYear, currentMonth, 0).getDate();
      const today =  currentYear+"-"+currentMonth+"-"+currentDate;
	  
	  let pageLoadObj  = "";
	  let dropDownValidate = true;
	  
	  var dataNodeLoad = {};
	  dataNodeLoad["assignmentId"] = assignmentId ; 
  	  passDataLoad = JSON.stringify(dataNodeLoad);
	  
           $(document).ready(function ()
             {       	   
        	   // onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);
          
        		$.ajax({
				    beforeSend : function(request) {
				     document.getElementById("loaderNotify").style.display = "";
					 request.setRequestHeader("GUID",GUID);
				    },
					url : serverHTTP+'Assignment/ViewExpenseReport',
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
        
        
     function addAdvancePaymentRow()
     {
    	 let trLength = $('#advancepayment_table tr').length;
    	 let trLengthPrintVal = (trLength/2);
    	 let rowStr = '<tr>'+
    	                '<input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value=""/>'+
    	                '<input type="hidden" name="advancePaymentItemType[]" id="advancePaymentItemType" value="5"/>'+
                        '<td id="tableTHNo" class="pl-2" style="text-align: left">'+trLengthPrintVal+'</td>'+
			            '<td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" ><input type="text" id="advancePaymentNominal" name="advancePaymentNominal[]"  class="form-control"></td>'+
			            '<td colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left"><input type="text" id="advancePaymentAmountOfMoney" name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control"> </td>'+                                                           
			         '</tr>'+
			         '<tr>'+
			           '<td colspan="4"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left"><input type="text" id="advancePaymentDetail" name="advancePaymentDetail[]"  placeholder="Details" class="form-control"></td>'+                                                           
			         '</tr>';
    	 $("#advancepaymentTbodyId").append(rowStr);
     } 
        

     function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(pageLanguage,"item-list");
			setLanguage(selectedLanguage);
		}
  
   
    function viewimplementDetail(result)
    {
    	 document.getElementById("spanImplementationDateContent").innerHTML  = result.data[0].implementDate;
    	 document.getElementById("spanCaseTitleContent").innerHTML  = result.data[0].caseName;
    	 document.getElementById("spanWorkLocationContent").innerHTML  = result.data[0].workLocation;
    	 // document.getElementById("spanWorkAddressContent").innerHTML  = result.data[0].workAddress;
    	 document.getElementById("spanWorkingHoursContent").innerHTML  = result.data[0].scheduledStartTime + '~' + result.data[0].scheduledEndTime;
    	 // document.getElementById("spanScheduledDepartureTimeContent").innerHTML  = result.data[0].scheduledDepartureTime;
    	 // document.getElementById("spanScheduledDepartureTimeContent").innerHTML  = result.data[0].scheduledDepartureTime;
    	 document.getElementById("StartTime").value  = result.data[0].workingHoursStart;
    	 document.getElementById("EndingTime").value  = result.data[0].workingHoursEnd;
    	 document.getElementById("InsideMidnightBreakTime").value  = result.data[0].midnightBreakTime;
    	 document.getElementById("spanActualWorkingHoursValue").innerHTML  = result.data[0].actualWorkingHours;
    	 document.getElementById("OvertimeHours").value  = result.data[0].overtimeHours;
    	 document.getElementById("closingRemarksText").value  = result.data[0].closingRemarks;	 
    	 
    	 if(result.data[0].closingReportStatus == 1)
    	 {
    		 document.getElementById("buttonAttendanceReport").disabled = true; 
    	 }
    	 
    	 if(result.data[0].expenseReportStatus == 1)
    	 {
    		 document.getElementById("buttonExpenseReport").disabled = false;  // Uvindu 
    	 }
    	 
    	 
    	 let TotalAdvancePaymentValue = 0 ;
    	 if(0<result.data[0].advancePayments.length){
    		 $("#advancepaymentTbodyId").empty();
    	 }
         for(i=0;i<result.data[0].advancePayments.length;i++)
         {
	    	 let trLength = $('#advancepayment_table tr').length;
	    	 let trLengthPrintVal = (trLength/2);
	    	 
	    	 let advancePaymentItemId = result.data[0].advancePayments[i].id;
	    	 let advancepaymentItemType= result.data[0].advancePayments[i].paymentType;
	    	 let advancePaymentItemNominal = result.data[0].advancePayments[i].nominal;
	    	 let advancePaymentItemAmount = result.data[0].advancePayments[i].amount;
	    	 let advancePaymentItemDetail = result.data[0].advancePayments[i].detail != null ? result.data[0].advancePayments[i].detail : "";
	    	 
	    	  TotalAdvancePaymentValue = TotalAdvancePaymentValue + parseInt(advancePaymentItemAmount);
	    	 
	    	 let disableStatus = "";
	    	 if(trLengthPrintVal<5)
	    	 {
	    		 disableStatus = "disabled";
	    	 }
	    	 
	    	 let rowStr = '<tr>'+
	    	                '<input type="hidden" name="advancePaymentItemId[]" id="advancePaymentItemId" value="'+advancePaymentItemId+'"/>'+
	                        '<input type="hidden" name="advancePaymentItemType[]" id="advancePaymentItemType" value="'+advancepaymentItemType+'"/>'+
	    	                '<td id="tableTHNo" class="pl-2" style="text-align: left">'+trLengthPrintVal+'</td>'+
				             '<td id="tableTHNominal" class="pl-2" style="width:60%;text-align: left;" >'+
				             '<input type="text" value="'+advancePaymentItemNominal+'" '+disableStatus+' id="advancePaymentNominal" name="advancePaymentNominal[]"  class="form-control"></td>'+
				            '<td colspan="2"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">'+
				            '<input type="text"  value="'+advancePaymentItemAmount+'"  id="advancePaymentAmountOfMoney" name="advancePaymentAmountOfMoney[]" onfocusout="calculateSum(this)" placeholder="Amount Of Money(Numbers Only)" class="form-control"> </td>'+                                                           
				          '</tr> '+
				          '<tr>'+
				           '<td colspan="4"class="pl-2" id="tableTHAmountOfMoney" style="text-align: left">'+
				           '<input type="text" value="'+advancePaymentItemDetail+'" id="advancePaymentDetail" name="advancePaymentDetail[]"  placeholder="Details" class="form-control"></td>'+                                                           
				          '</tr>';
	    	          $("#advancepaymentTbodyId").append(rowStr);
         }
         
         for(i=0;i<result.data[0].assignmentFileUploads.length;i++)
         {
          let filePath = result.data[0].assignmentFileUploads[i].filePath
          let fileStr = '<a href="'+filePath+'" target="blank" ><img src="'+filePath+'" alt="" width="150px" height="210px" class="p-3" /></a>'
         $("#imgFileAppenderID").append(fileStr);
         }
         
         document.getElementById("spanTotalAdvancePaymentValue").innerHTML  = TotalAdvancePaymentValue ;
          
    }
    
    
    function calculateSum(nodeObj)
    {
    	checkAmountOfMoney(nodeObj); // Uvindu
    	let PaymentAmountOfMoneyArray = document.getElementsByName("advancePaymentAmountOfMoney[]");
    	let totalSum = 0 ;
    	for(var i = 0; i < PaymentAmountOfMoneyArray.length; i++)
    	{
    		let itemAmountMoney = PaymentAmountOfMoneyArray[i].value !="" ? PaymentAmountOfMoneyArray[i].value.trim() : 0;
    		totalSum = totalSum +  parseInt(itemAmountMoney) ;
    	}
    	
    	 document.getElementById("spanTotalAdvancePaymentValue").innerHTML  = totalSum;
    }
    
    

    function saveAttendanceDetails( event )   // Uvindu
     { 
    	var startTime = document.getElementById("StartTime").value;
    	var endingTime = document.getElementById("EndingTime").value;
    	var breakTime = document.getElementById("BreakTime").value;
    	var insideMidnightBreakTime = document.getElementById("InsideMidnightBreakTime").value;
    	var actualWorkingHoursValue = document.getElementById("spanActualWorkingHoursValue").innerHTML;
    	var overtimeHours = document.getElementById("OvertimeHours").value;
    	var closingRemarksText = document.getElementById("closingRemarksText").value;
    	//var totalAdvancePaymentValue = document.getElementById("spanTotalAdvancePaymentValue").innerHTML;
    	
    	    	let dataPassNode = {};
    	    	dataPassNode['assignmentId']       = assignmentId ;
    			dataPassNode['workingHoursStart']  = startTime ;
    			dataPassNode['workingHoursEnd']    = endingTime ;
    			dataPassNode['actualBreakTime']    = breakTime;
    			dataPassNode['midnightBreakTime']  = insideMidnightBreakTime;
    			dataPassNode['actualWorkingHours'] = actualWorkingHoursValue;
    			dataPassNode['overtimeHours']      = overtimeHours;
    			dataPassNode['closingRemarks']     = closingRemarksText;
    				
    			dataNode = JSON.stringify(dataPassNode);
    			
    			   $.ajax({
    		             beforeSend: function(request) {
    		            	 document.getElementById("loaderNotify").style.display = "";
    		                 request.setRequestHeader("GUID", GUID);
    		             },
    		             url: serverHTTP +'Assignment/SaveAttendanceReport',
    		             method: 'POST',
    		             contentType: 'application/json',
    		             data: dataNode,
    		             dataType: 'json',
    		             success: function(result, status, request){      
    					 if(result.status==200)
    		             {
    						 closingReportFileUpload();
    		             }
    		              else if(result.status==203)
    		              {
    		            	  showMessage('success',"N1266");
    		            	  closingReportFileUpload();
    		              }
    		              else
    		              {
    		            	  showMessage('success',"N1265");
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

    
    function saveAdvancePaymentDetails(event){ 
       	var advancePaymentNominalArray = document.getElementsByName("advancePaymentNominal[]");
    	var advancePaymentAmountOfMoneyArray = document.getElementsByName("advancePaymentAmountOfMoney[]");
    	var advancePaymentDetailArray = document.getElementsByName("advancePaymentDetail[]");
    	var advancePaymentItemIdArray = document.getElementsByName("advancePaymentItemId[]");
    	var advancePaymentItemTypeArray = document.getElementsByName("advancePaymentItemType[]");
    	
        var dataArray = [];
    	for(var i = 0; i < advancePaymentNominalArray.length; i++)
    	{
    	        var paymentItemId = advancePaymentItemIdArray[i].value !="" ? advancePaymentItemIdArray[i].value : null;
    	        var paymentItemType = advancePaymentItemTypeArray[i].value !="" ? advancePaymentItemTypeArray[i].value : null;
    		    var paymentNominal = advancePaymentNominalArray[i].value !="" ? advancePaymentNominalArray[i].value : null;
    	    	var amountOfMoney = advancePaymentAmountOfMoneyArray[i].value !="" ? advancePaymentAmountOfMoneyArray[i].value.trim() : null;
    	    	var paymentDetail = advancePaymentDetailArray[i].value !="" ? advancePaymentDetailArray[i].value.trim() : null;
    	    	
    	    	var tempData={
    	    			 "id":paymentItemId,
    	    			 "payrollType":paymentItemType,
 					     "nominal":paymentNominal,
 					     "detail":paymentDetail,
 					     "amount":amountOfMoney
 					   };
 	
 	           dataArray.push(tempData);
    	}
    	
    	let dataPassNode = {};
    	dataPassNode['assignmentId'] = assignmentId;
    	dataPassNode['totalAdvancePayment'] = document.getElementById("spanTotalAdvancePaymentValue").innerHTML;
		dataPassNode['advancePayments']=dataArray;
		dataNode = JSON.stringify(dataPassNode);
    	
 	   $.ajax({
           beforeSend: function(request) {
          	 document.getElementById("loaderNotify").style.display = "";
            request.setRequestHeader("GUID", GUID);
           },
           url: serverHTTP +'Assignment/SaveExpenseReport',
           method: 'POST',
           contentType: 'application/json',
           data: dataNode,
           dataType: 'json',
           success: function(result, status, request){      
			 if(result.status==200)
           {
				 console.log("SaveExpenseReport");
            	//showMessage('success',"N1266");
				 document.getElementById("buttonExpenseReport").disabled = false; // Uvindu
           
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
      	 });
    }
    
    
    function closingReportFileUpload()
    {
		    var imagePath = "";
		    var closingReportFileUploadArray = document.getElementsByName("businessrelatedMaterials[]");
		    // var closingReportFileUploadIdArray = document.getElementsByName("closingReportPhotoID[]");
		    var assignmentId = assignmentId;
		    var closingReportFileArray = [];

    for(var i = 0; i < closingReportFileUploadArray.length; i++)
    { 
		    if($("input[name='businessrelatedMaterials[]']")[i].files[0]){
		    var fileNode = $("input[name='businessrelatedMaterials[]']")[i].files[0]
		    console.log(fileNode);
		    console.log(fileNode.size);
		    console.log(fileNode.name);
		    console.log(fileNode.type);
		
		    var formDataObj = new FormData();
		    formDataObj.append('image', fileNode );
		    //formDataObj.append('file', fileNode);
		    formDataObj.append('uuid', "ClosingReportFile" );
		    formDataObj.append('serviceId', assignmentId);
		
		    $.ajax({
		    beforeSend : function(request) {
			    document.getElementById("loaderNotify").style.display = "";
			    request.setRequestHeader("GUID", GUID);
		    },
		    url : serverHTTP + 'Content/save-content',
		    enctype: 'multipart/form-data',
		    data : formDataObj,
		    cache : false,
		    contentType : false,
		    processData : false,
		    method : 'POST',
		    async : false,
		    success : function(result, status, request) {
			    console.log(result);
			    imagePath = result.data.imagePath;
			
			   // var closingReportFileUploadId = closingReportFileUploadIdArray[i].value !="" ? closingReportFileUploadIdArray[i].value.trim() : null;
			    var tempAssignmentFileUpload = {
				    "assignmentFileUploadId":null,
				    "filePath":imagePath,
				    "fileType":null,
			    };
			    closingReportFileArray.push(tempAssignmentFileUpload);
		
		    },
		    complete:function(data){
			    document.getElementById("loaderNotify").style.display = "none";
			    console.log("complete");
		    },
		    error : function(error) {
		    	console.log(error);
		    }
		    });
		  }
       }
    setFilePath(closingReportFileArray);
    }

    function setFilePath(value){
    
    let fileNode = {};
    fileNode['assignmentId'] = assignmentId;
    fileNode['assignmentFileUploadDtoList'] = value;

    if(value!="")
    {
    $.ajax({
    beforeSend : function(request) {
       request.setRequestHeader("GUID", GUID);
    },
    url : serverHTTP + 'Assignment/SaveAssignmentFile',
    method : 'POST',
    contentType : 'application/json',
    data : JSON.stringify(fileNode),
    dataType : 'json',
    success : function(result, status, request) {
	    if (result.status == 202) {
	       document.getElementById("buttonAttendanceReport").disabled = true;
	    } else if(result.status == 203){
	       document.getElementById("buttonAttendanceReport").disabled = true;
	     // showMessage("Sorry Data Loding Error");
	    console.log("did not save file");
	    }else{
	    	
	    }
    },
    error : function(error) {
       console.log(JSON.stringify(error));
    }
   });
    }
    else
    {
      console.log("Empty");
    }
    }
    
    
    
    
    
    
    
    
    
    $("#ButtonSpanConfirmedDayBefore").click(function( event ) { 
    	
		 var implementDate = document.getElementById("spanImplementationDateContent").innerHTML;	 
		  	   
		 var dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
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
	              	//showMessage('success',"N1266");
	              	var spanConfirmedDayBeforeDateTime = document.getElementById('spanConfirmedDayBeforeDateTime').innerHTML;
	              	spanConfirmedDayBeforeDateTime += ' ' + result.data.confirmedDate;
	              	document.getElementById('spanConfirmedDayBeforeDateTime').innerHTML = spanConfirmedDayBeforeDateTime;
	              	document.getElementById("ButtonSpanConfirmedDayBefore").disabled = true;

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
	        	 });
	    	 });
    
    $("#ButtonSpanReportDeparture").click(function( event ) { 
    	
		 var implementDate = document.getElementById("spanImplementationDateContent").innerHTML;	 
		  	   
		 var dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
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
	              	//showMessage('success',"N1266");
	              	var spanDepartureConfirmationDateTime = document.getElementById('spanDepartureConfirmationDateTime').innerHTML;
	              	spanDepartureConfirmationDateTime += ' ' + result.data.departureReportDate;
	              	document.getElementById('spanDepartureConfirmationDateTime').innerHTML = spanDepartureConfirmationDateTime;
	              	document.getElementById("ButtonSpanReportDeparture").disabled = true;

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
	        	 });
	    	 });
    
    $("#ButtonSpanReportArrival").click(function( event ) { 
    	
		 var implementDate = document.getElementById("spanImplementationDateContent").innerHTML;	 
		  	   
		 var dataNode = {};     
	  	 dataNode['staffId'] = staffID;  
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
	              	//showMessage('success',"N1266");
	              	var spanArrivalConfirmationDateTime = document.getElementById('spanArrivalConfirmationDateTime').innerHTML;
	              	spanArrivalConfirmationDateTime += ' ' + result.data.arrivalReportDate;
	              	document.getElementById('spanArrivalConfirmationDateTime').innerHTML = spanArrivalConfirmationDateTime;
	              	document.getElementById("ButtonSpanReportArrival").disabled = true;

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
	        	 });
	    	 });
    
    
    $("#ButtonSpanReportClosing").click(function( event )
      {
/*     	localStorage.setItem("staffId", staffID);
    	localStorage.setItem("implementationId", implementId);
    	localStorage.setItem("implementDate", today); */
		window.location.href = "case-close-report.jsp";	
    	
      });
    
  
	function addAnotherFile() {
		var $node = $("#testTryInnerDiv");
		var $clone = $node.clone();
		$clone.find('input').val('');
		$("#testTry").append($clone);
	}  

 </script>
</body>

</html>