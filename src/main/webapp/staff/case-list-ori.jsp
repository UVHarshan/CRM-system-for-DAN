<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Staff - Case List</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link href="../dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="../dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/fontawesome-5.css" />
    <link href="../dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/datatables.min.css" />
   
    <link href="../dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../dist-assets/css/mobios-site.css" />

    <style>
    .case-info-notice
    {
    display: inline-block;
    background-color: #1DC8C6;
    font-weight: bold;
    font-size: 12px;
    padding: 1px;
    margin-top: 2px;
    margin-right: 2px;
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
                                        <h1 > <i class="fa fa-tasks text-30" role="generic"></i><span id="pageSpanHeadingCaseList"> Case List</span> </h1>
                                      
                                    </div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<button onclick="window.history.back();" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
											<span id="buttonSpanReturn">Return</span>
										</button>
											
									</div>
									<div class="col-md-12  pt-0 pr-4 ">
									  <p id="pageSpanHeadingText1" class="pt-0">We will confirm the matter information and contact / report the business.</p>
                                      <p id="pageSpanHeadingText2" class="pt-0"><span id="pageSpanHeadingSubTextPrevious" class="case-info-notice">Previous</span> : Confirmed and reported the day before　<span id="pageSpanHeadingSubTextOut" class="case-info-notice">Out</span> : Departure reported　<span id="pageSpanHeadingSubTextArrival" class="case-info-notice">Arrival</span> : Arrival reported　<span id="pageSpanHeadingSubTextEnd" class="case-info-notice">End</span> : Reported end of work</p>
							       </div>
							  </div>
                             <div class="row  ml-2 mr-2">
                             <div class="col-md-12  pt-0 pr-4">
                             <div class="table-responsive pt-2">
								<table class="display table table-striped table-bordered hover" id="CaseListTable" style="width: 100%">
									<thead id="tbodyIdCaseListTableHead">
										<tr>
										<th class="text-center" style="width: 10%;" id="tableImplementationDetailsTHNo" >No</th>
										<th class="TableTHMinWidth text-center" style="width: 45%;" id="tableTHImplementationDate">Implementation Date / Case Name</th>
										<th class="TableTHMinWidth text-center" style="width: 45%;" id="tableTHWorkInformation">Work Information</th>
										</tr>
									</thead>

								    <tbody id="tbodyIdCaseListTableBody">
								     <tr id="caseListTableTr" class="clickable-row" data-href="case-view.jsp">
										  <td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 10%;" class="p-1" >
										  &nbsp;
										  </td>
										  <td style="width: 45%;">
										  &nbsp; 
                                          </td>
										  <td style="width: 45%;">
										  &nbsp;
										 </td>
									</tr> 
									<tr id="caseListTableTr" class="clickable-row" data-href="case-view.jsp">
										  <td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 10%;" class="p-1" >
										  &nbsp;
										  </td>
										  <td style="width: 45%;">
										  &nbsp; 
                                          </td>
										  <td style="width: 45%;">
										  &nbsp;
										 </td>
									</tr>
									 <tr id="caseListTableTr" class="clickable-row" data-href="case-view.jsp">
										  <td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 10%;" class="p-1" >
										  &nbsp;
										  </td>
										  <td style="width: 45%;">
										  &nbsp; 
                                          </td>
										  <td style="width: 45%;">
										  &nbsp;
										 </td>
									</tr> 
									<tr id="caseListTableTr" class="clickable-row" data-href="case-view.jsp">
										  <td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 10%;" class="p-1" >
										  &nbsp;
										  </td>
										  <td style="width: 45%;">
										  &nbsp; 
                                          </td>
										  <td style="width: 45%;">
										  &nbsp;
										 </td>
									</tr>
									</tbody>
								</table>
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
      
      const date = new Date();
      const currentYear  = date.getFullYear();
      const currentMonth = date.getMonth()+1;
      const currentDate = date.getDate();
      const daysInMonth = new Date(currentYear, currentMonth, 0).getDate();
      const today =  currentYear+"-"+currentMonth+"-"+currentDate;
      const monthStartDate =  currentYear+"-"+currentMonth+"-"+ 1;
      const monthEndDate =  currentYear+"-"+currentMonth+"-"+ daysInMonth ;
      
	  

	  var dataNodeLoad = {};
	  dataNodeLoad["staffId"] = staffID ; 
	  dataNodeLoad["implementStartDate"] = monthStartDate ; 
	  dataNodeLoad["implementEndDate"] = monthEndDate ; 
  	  passDataLoad = JSON.stringify(dataNodeLoad);
	  
           $(document).ready(function ()
             {       	   
        	    //onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);
          
        		$.ajax({
				    beforeSend : function(request) {
				    // document.getElementById("loaderNotify").style.display = "";
					 request.setRequestHeader("GUID",GUID);
				    },
					url : serverHTTP+'Assignment/MonthlyDealForStaff',
					method : 'POST',
					contentType : 'application/json',
					data :passDataLoad,
					dataType : 'json',
					success : function(result, status,request) {
						if (result.status == 200) {
							monthlyDealForStaff(result);
						} else {
							console.log("Sorry MonthlyDealForStaff error");
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
  
    
    function monthlyDealForStaff(result)
    {
      
      if(result.data != null)
      { 
    	if(result.data.length != 0)
    		{
    		  $("#CaseListTable tbody").empty();

    		  	 for(x = 0;x<=result.data.length;x++)
    		     {
    		  	   let implementDate  = result.data[x].implementDate != null ? result.data[x].implementDate : "" ;
    		  	   let caseName  = result.data[x].caseName != null ? result.data[x].caseName : "" ;
    		  	   let workLocation  = result.data[x].workLocation != null ? result.data[x].workLocation : "" ;
    		  	   let workAddress  = result.data[x].workAddress != null ? result.data[x].workAddress : "" ;
    		  	   let scheduledStartTime  = result.data[x].scheduledStartTime != null ? result.data[x].scheduledStartTime : "" ;
  		  	       let scheduledEndTime  = result.data[x].scheduledEndTime != null ? result.data[x].scheduledEndTime : "" ;
  		  	       let scheduledDepartureTime  = result.data[x].scheduledDepartureTime != null ? result.data[x].scheduledDepartureTime : "" ;
  		  	   
    		  	   let rowVal =  x+1 ;
    		       let newRow  = '<tr id="caseListTableTr" name="caseListTableTr[]" class="clickable-row" data-href="case-view.jsp">'+
		    		 		        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 10%;text-align:center" class="p-1" >'+ rowVal +'</td>'+
		    		 		         '<td style="width: 45%;">'+
	    		                        '<div class="row pl-3">'+implementDate+'</div>'+
	    		                        '<div class="row pl-3">'+caseName+'</div>'+
	    		                        '<div class="row pl-3">'+caseName+'</div>'+
			    		              '</td>'+
			    		              '<td style="width: 45%;">'+
	    		                        '<div class="row pl-3">Work Loaction : '+workLocation+'</div>'+
	    		                        '<div class="row pl-3">Work Address : '+workAddress+'</div>'+
	    		                        '<div class="row pl-3">'+scheduledStartTime+' ~ '+scheduledEndTime+'</div>'+
	    		                        '<div class="row pl-3">Departure Time : '+scheduledDepartureTime+'</div>'+
			    		              '</td>'+
		    		 		'</tr> ';
    		 		
    		 		$("#CaseListTable tbody").append(newRow);
    		 	 }   
    	 }else
          {
    		 // onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
          } 
      }else
      {
    	  //onloadShiftSchedule(year,nextMonthYear,thisMonthName,thisMonthNumber,nextMonthName,nextMonthNumber);  
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