<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleOvertimeMidnightHolidayAllowanceInformation">Overtime
	/ Midnight / Holiday Allowance Information</title>
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


				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-10 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-10 ">
										<h1>
											<i class="fa fa-medkit text-30" role="generic"></i><span
												id="pageSpanHeadingOvertimeMidnightHolidayAllowanceInformation">
												Overtime / Midnight / Holiday Allowance Information</span>
										</h1>

										<p class="pb-0 mb-0"
											id="pageSpanSubHeadingOvertimeMidnightHolidayAllowanceInformation">You
											can set the rate of increase in overtime, midnight, and
											holiday allowances.</p>
									</div>
								</div>



								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div id="accordion" class="m-3 ">

											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#employeeInformation"
															aria-expanded="false" aria-controls="employeeInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivOvertimeMidnightHolidayAllowanceInformation">Overtime
																	/ Midnight / Holiday Allowance Information</div>

																<div class="col-2" style="text-align: right;"></div>

															</div>
														</button>
													</h5>
												</div>

												<div id="staffInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<p id="pageSpanSubHeadingOverTimeHolidayAllowance">Overtime
															/ midnight / holiday allowance information hours and
															percentages apply to salaries and bonuses. Please fill in
															within the range stipulated by law.</p>

														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-8 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanlegalWorkingHoursPerDay">
																		Legal Working Hours Per Day </span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																<input type="hidden" id="overtimeId">
																	<input type="text" id="legalWorkingHoursPerDay"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorLegalWorkingHoursPerDay"
																	style="color: red;"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-8 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncreaseRateofLegalOvertimeWork">
																		Increase Rate of Legal Overtime Work</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="increaseRateofLegalOvertimeWork"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorIncreaseRateofLegalOvertimeWork"
																	style="color: red;"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-8 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span
																		id="pageSpanIncreaseRateofLegalOvertimeWorkHourlyorMonthly">Increase
																		Rate of Overtime Work (60 hours or more per month) </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="increaseRateofOTWork60Hours"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorIncreaseRateofOTWork60Hours"
																	style="color: red;"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-8  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncreaserateoflatenightworkinghours">
																		Increase rate of late-night working hours (working
																		hours from 22:00 to 5:00)</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text"
																		id="Increaserateoflatenightworkinghours"
																		class="form-control">
																</div>
																<div id="errorIncreaseRateLatenightWorkHours"
																	style="color: red;"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-8 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncreaserateofholidaywork">Increase
																		rate of holiday work </span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="Increaserateofholidaywork"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorIncreaseRateHolidayWork"
																	style="color: red;"></div>
															</div>

														</div>
														<div class="row pb-2">


															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">

																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpateAllowanceInformation">Update
																	Overtime / Midnight / Holiday Allowance Information</button>
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
        loadSelectedLanguage(pageLanguage,"over-time-holiday");
    </script>

	<script src="./dist-assets/js/common-validations.js"></script>

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

	<script src="./dist-assets/js/overtime-holiday-details-validate.js"></script>

	<script>

	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");

		$(document).ready(function() {
			
			 $.ajax({
                 beforeSend: function(request) {
              	   document.getElementById("loaderNotify").style.display = "";
                  request.setRequestHeader("GUID", GUID);
                 },
                 url: serverHTTP +'MasterAdminTax/SearchOverTimeInfo',
                 method: 'GET',
                 contentType: 'application/json',
                 dataType: 'json',
                  success: function(result, status, request){
                  if(result.status==200)
                 	 {
                	  showResult(result,request);
                 	 }
                  else
                  {
                 		console.log("Sorry Email Data Loding Error");
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

		function showResult(result,request){
			
			document.getElementById("overtimeId").value = result.data[0].id;
			document.getElementById("legalWorkingHoursPerDay").value = result.data[0].workingHours_perDay;
			document.getElementById("increaseRateofLegalOvertimeWork").value = result.data[0].rate_overTimeWork;
			document.getElementById("increaseRateofOTWork60Hours").value = result.data[0].rate_60h_overTimeWork;
			document.getElementById("Increaserateoflatenightworkinghours").value = result.data[0].rate_nightWorrk;
			document.getElementById("Increaserateofholidaywork").value = result.data[0].rate_holidayWork;
			
		}
		
		function saveOverTimeInfo(){
			var dataNode = {};
			
			var id = document.getElementById("overtimeId").value;
			var WorkingHours_perDay = document.getElementById("legalWorkingHoursPerDay").value;
			var Rate_overTimeWork = document.getElementById("increaseRateofLegalOvertimeWork").value;
			var Rate_60h_overTimeWork = document.getElementById("increaseRateofOTWork60Hours").value;
			var Rate_nightWorrk = document.getElementById("Increaserateoflatenightworkinghours").value;
			var Rate_holidayWork = document.getElementById("Increaserateofholidaywork").value;
			
			dataNode['id'] = id;
			dataNode['workingHours_perDay'] = WorkingHours_perDay;
			dataNode['rate_overTimeWork'] = Rate_overTimeWork;
			dataNode['rate_60h_overTimeWork'] = Rate_60h_overTimeWork;
			dataNode['rate_nightWorrk'] = Rate_nightWorrk;
			dataNode['rate_holidayWork'] = Rate_holidayWork;
			
			$.ajax({
		          beforeSend: function(request) {
		       	   document.getElementById("loaderNotify").style.display = "";
		           request.setRequestHeader("GUID", GUID);
		          },
		          url: serverHTTP +'MasterAdminTax/PostOverTimeInfo',
		          method: 'POST',
		          contentType: 'application/json',
		          data: JSON.stringify(dataNode),
		          dataType: 'json',
		           success: function(result, status, request){
		           if(result.status==200)
		          	 {	
						showMessage('success',"N1266");
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
			
		}
		
		function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(selectedLanguage,"over-time-holiday");
			setLanguage(selectedLanguage);
		}
	</script>
</body>

</html>