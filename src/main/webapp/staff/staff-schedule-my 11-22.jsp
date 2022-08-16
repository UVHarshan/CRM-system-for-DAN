<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Staff - Shift Schedule</title>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900"
	rel="stylesheet" />

<link href="../dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
<link href="../dist-assets/css/plugins/perfect-scrollbar.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="../dist-assets/css/plugins/fontawesome-5.css" />
<link href="../dist-assets/css/plugins/metisMenu.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="../dist-assets/css/plugins/datatables.min.css" />

<link href="../dist-assets/css/plugins/fontawesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../dist-assets/css/mobios-site.css" />

<style>
</style>
</head>

<body class="text-left">
	<%@ include file="./common/CacheControl.jsp"%>
	<div id="sideBarDiv"
		class="app-admin-wrap layout-sidebar-vertical sidebar-full ">

		<!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->

		<!--  user -->

		<!-- ============ leftMenu start ============= -->
		<%@ include file="./common/staffleftMenu.jsp"%>
		<!-- ============ leftMenu end ============= -->
		<!--  side-nav-close -->

		<div class="switch-overlay"></div>
		<div class="main-content-wrap mobile-menu-content bg-off-white m-0"
			style="z-index: 1;">

			<!-- ============ topMenu start ============= -->
			<%@ include file="./common/topMenu.jsp"%>
			<!-- ============ topMenu end ============= -->

			<!-- ============ Body content start ============= -->

			<div class="main-content pt-2" style="z-index: 1;">

				<!-- <div class="separator-breadcrumb border-top"></div>  -->

				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">


								<div class="row pt-4 pb-2 mt-2 ml-2">
									<div class="col-md-8 ">
										<h1>
											<i class="fa fa-home text-30" role="generic"></i><span
												id="pageSpanHeadingShiftScheduleRegistration"> Shift
												Schedule Registration</span>
										</h1>
										<p id="pageSpanHeadingText1" class="RequiredStar">Please
											select whether or not you can go to work. The date once made
											available for work cannot be modified later.</p>
									</div>
									<div class="col-md-4  pt-0 pr-4 TopButDiv"></div>
								</div>

								<div class="row  ml-2">
									<div class="col-md-12  pt-0 pr-4 TopButDiv">

										<button id="btnThisMonthClick"
											class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
											role='button'>
											<span id="spanBtnThisMonthShiftn">Shift In </span> <span
												id="spanBtnThisMonth"></span>
										</button>
										<button id="btnNextMonthClick"
											class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
											role='button'>
											<span id="spanBtnNextMonth"></span> <span
												id="buttonSpanOutputMatterList"> Shift</span>
										</button>
										<button onclick="window.history.back();"
											class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
											role='button'>
											<span id="buttonSpanReturn">Return</span>
										</button>

									</div>
								</div>

								<div class="row  ml-2">
									<div class="col-md-12  pt-0 pr-4">
										<span id="" class="text-20"><span id="spanUIThisMonth">November
												2021 </span></span> &nbsp; <span id="spanAllChanged" class="text-15">All
											changed </span> <span id="" class="text-20"> <select
											style="width: 100px; text-align: center;"
											id="shiftScheduleDetailOptionMaster">
												<option value="4"></option>
												<option value="1">○</option>
												<option value="2">△</option>
												<option value="0">×</option>
										</select>
										</span>



									</div>
								</div>
								<div class="row  ml-2">
									<div class="col-md-12  pt-0 pr-4">
										<div class="table-responsive pt-2">
											<table
												class="display table table-striped table-bordered hover"
												id="shiftScheduleDetailsTable" style="width: 100%">
												<thead>
													<tr>
														<th class="text-center"
															id="tableImplementationDetailsTHNo">Date</th>
														<th class="TableTHMinWidth text-center"
															id="tableImplementationDetailsTHDuplicateSelection">Yes/No</th>
														<th class="TableTHMinWidth text-center"
															id="tableImplementationDetailsTHImplementationPeriod">Remark</th>
													</tr>
												</thead>

												<tbody id="tbodyIdShiftScheduleDetails">
													<!-- <tr id="shiftScheduleDetailsTrId">
										 <td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 20%;" class="p-1" ></td>
										  <td style="width: 20%;">
										   <select id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control">
                                             <option value="4"></option>
                                             <option value="1">○</option>
                                             <option value="2">△</option>
                                             <option value="0">×</option>
                                           </select>
                                         </td>
										 <td style="width: 60%;">
										  <input id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" type="text" value=""  class="form-control">
										 </td>
										</tr>   -->
												</tbody>
											</table>
										</div>
										<div id="errorShiftSchedule" style="color: red;"></div> <!-- // Uvindu 19/11 -->
									</div>
								</div>
								<br>
								<div class="row  ml-2">
									<div class="col-md-12  pt-0 pr-4">
										<span clas="RequiredStar">*</span><span id="spanBelowTextOne">The
											date set to work is not available for modification later.</span>
									</div>
								</div>
								<div class="row  ml-2">
									<div class="col-md-12  pt-0 pr-4">
										<span clas="RequiredStar">*</span><span id="spanBelowTextTwo">
											When you register the shift schedule, an email will be sent
											to the person in charge.</span>
									</div>
								</div>
								<div class="row  ml-2">
									<form>
										<input type="hidden" name="selectedMonth" id="selectedMonth"
											value="" /> <input type="hidden" name="selectedYear"
											id="selectedYear" value="" />
									</form>
									<div class="col-md-12  pt-0 pr-4 TopButDiv">
										<button id="btnRegisterShiftSchedule"
											class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
											role='button'>
											<span id="spanBtnRegisterShiftSchedule">Register a
												shift schedule</span>
										</button>
									</div>
								</div>
								<br>
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

		<script src="../dist-assets/js/mobile-staff-schedule-validate.js"></script>

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
							viewShiftScheduleThisMonth(result);
						} else {
							console.log("Sorry getQuotationInfo error");
						}
					},complete:function(data){
						document.getElementById("loaderNotify").style.display = "none";
					},
					error : function(error) {
						console.log(JSON.stringify(error));
					}
				});  
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
    		  document.getElementById("btnRegisterShiftSchedule").disabled = false; // Uvindu - 19/11 
    		  dropDownValidate = false;
    		  
    		  	 for(x = 1;x<=result.data1.shiftScheduleDateDtoList.length;x++)
    		     {
    		  	   publicMemo = result.data1.shiftScheduleDateDtoList[x-1].publicMemo != null ? result.data1.shiftScheduleDateDtoList[x-1].publicMemo : "" ;
    		       let newRow  ='<tr id="shiftScheduleDetailsTrId">'+
    		 		        '<td id="shiftScheduleDetailDate"  name="shiftScheduleDetailDate[]" style="width: 15%;text-align:center" class="p-1" >'+x+'</td>'+
    		 		         '<td style="width: 15%;">'+
    		 		         '<input type="hidden" value="'+x+'" id="shiftScheduleDateHidden"  name="shiftScheduleDateHidden[]"/>'+
    		 		         '<select  style="text-align:center" id="shiftScheduleDetailOption"  name="shiftScheduleDetailOption[]" class="form-control">'+
    		                   '<option value="4" ></option>'+
    		                   '<option value="1">○</option>'+
    		                   '<option value="2">△</option>'+
    		                   '<option value="0">×</option>'+
    		                 '</select>'+
    		                '</td>'+
    		 		     '<td style="width: 70%;">'+
    		 		  '<input  id="shiftScheduleRemark"  name="shiftScheduleRemark[]" type="text" value="'+publicMemo+'"  class="form-control">'+
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
    	document.getElementById("btnRegisterShiftSchedule").disabled = false;
    	dropDownValidate = true;
    	$("#shiftScheduleDetailsTable tbody").empty();
    	
    	document.getElementById("spanBtnThisMonth").innerHTML = thisMonthName+" "+ year;
    	document.getElementById("spanBtnNextMonth").innerHTML  = nextMonthName+" "+ nextMonthYear;
    	
    	document.getElementById("spanUIThisMonth").innerHTML = thisMonthName+" "+ year;
    	
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