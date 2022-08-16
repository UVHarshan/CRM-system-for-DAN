<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleContractConditionInformation">Contract
	Condition Information</title>
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
												id="pageSpanHeadingContractConditionInformation">
												Contract Condition Information</span>
										</h1>

										<p class="pb-0 mb-0"
											id="pageSpanSubHeadingContractConditionInformation">You
											can set the contract conditions.</p>
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
																	id="accordionDivNotificationofworkingconditions">Notification
																	of working conditions and explicit information on
																	working conditions</div>

																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>

															</div>
														</button>
													</h5>
												</div>

												<div id="staffInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<p id="subGuidestatementofworkingconditions">It is
															applied to the notification of working conditions and the
															statement of working conditions. Please fill in within
															the range stipulated by law.
														<p />

														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanMidnightOvertimeHolidayAllowance">Midnight
																		/ Overtime / Holiday Allowance </span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>
																<input type="hidden" id="contractConditionId">
																	<textarea type="text"
																		id="midnightOvertimeHolidayAllowance"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorMidnightOTHolidayAllowance"
																	class="RequiredStar"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaymentTerms"> Payment Terms</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text" id="paymentTerms"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorPaymentTerms"
																	class="RequiredStar"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAnnualPaidLeave">Annual Paid
																		Leave </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text" id="annualPaidLeave"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorAnnualPaidLeave"
																	class="RequiredStar"></div>																
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOvertimeHolidayWork"> Overtime
																		/ Holiday Work</span> <span class="RequiredStar">*</span>
																</div>
																<div>

																	<textarea  id="overtimeHolidayWork"
																		class="form-control" >
																	</textarea>

																</div>
																<div id="errorOvertimeHolidayWork"
																	class="RequiredStar"></div>	
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpansafetyandHygiene">Safety and
																		Hygiene </span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text" id="safetyandHygiene"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorSafetyandHygiene"
																	class="RequiredStar"></div>	
																
															</div>

														</div>


														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentStabilizationMeasures">Employment
																		stabilization measures for dispatched workers taken by
																		canceling the dispatch contract </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text"
																		id="employmentStabilizationMeasures"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorEmploymentStabilizationMeasures"
																	class="RequiredStar"></div>	
																
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanGrievanceRelatedMatters">
																		Grievance Related Matters</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text" id="grievanceRelatedMatters"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorGrievanceRelatedMatters"
																	class="RequiredStar"></div>	
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanReasonfornotsubmittingemployment">Reason
																		for not submitting employment / social insurance
																		insured qualification notification </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text"
																		id="reasonfornotsubmittingemployment"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorReasonfornotsubmitEmploy"
																	class="RequiredStar"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanUseofwelfarefacilities"> Use
																		of welfare facilities, etc.</span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea  id="useofwelfarefacilities"
																		class="form-control" min="0" max="100">
																	</textarea>
																</div>
																<div id="errorUseofWelfareFacilities"
																	class="RequiredStar"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanretirementrelatedmatters">Retirement
																		related matters </span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text" id="retirementrelatedmatters"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorRetirementrelatedmatters"
																	class="RequiredStar"></div>
															</div>

														</div>


														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanContractrenewalrelatedmatters">
																		Contract renewal related matters</span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text"
																		id="contractrenewalrelatedmatters"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorContractRenewalMatters"
																	class="RequiredStar"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span
																		id="pageSpanConflictPreventionMeasuresforDirectemployment">Conflict
																		prevention measures for direct employment of
																		dispatched workers </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<textarea type="text"
																		id="conflictPreventionMeasuresforDirectemployment"
																		class="form-control" maxlength="255"> </textarea>
																</div>
																<div id="errorConflictPreventionMeasures"
																	class="RequiredStar"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks"> Remarks</span> <span
																		class="RequiredStar">*</span>
																</div>
																<div>

																	<textarea type="number" id="remarks"
																		class="form-control" min="0" max="100">
																	</textarea>

																</div>
																<div id="errorRemarks"
																	class="RequiredStar"></div>
															</div>
														</div>



														<div class="row pb-2">


															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">

																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdatedContractTerms">Update
																	Contract Terms</button>
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
        loadSelectedLanguage(pageLanguage,"contract_terms");
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
	
	<script src="./dist-assets/js/contract_info-validate.js"></script>

	<script>
	    const serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");

		$(document).ready(function() {
			
			$.ajax({
                beforeSend: function(request) {
             	   document.getElementById("loaderNotify").style.display = "";
                 request.setRequestHeader("GUID", GUID);
                },
                url: serverHTTP +'MasterAdminTax/SearchContractInfo',
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

		var table;

		function drawDtataTable(language) {
			if (language == "Japanese") {
				search = "探す";
				info = "ページを表示しています _PAGE_ の _PAGES_";
				lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
				zeroRecords = "見つからない - すいません";
				infoEmpty = "記録はありません";
				infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
				previous = "前";
				next = "次";
				first = "最初のページ";
				last = "最終ページ";

			} else {
				search = "Search";
				info = "Showing page _PAGE_ of _PAGES_";
				lengthMenu = "Display _MENU_ records per page";
				zeroRecords = "Nothing found - sorry";
				infoEmpty = "No records available";
				infoFiltered = "(filtered from _MAX_ total records)";
				previous = "Previous";
				next = "Next";
				first = "First page";
				last = "Last page";
			}

			table = $('#search_staff_table').DataTable({
				language : {
					search : search,
					info : info,
					lengthMenu : lengthMenu,
					zeroRecords : zeroRecords,
					infoEmpty : infoEmpty,
					infoFiltered : infoFiltered,
					"paginate" : {
						previous : previous,
						next : next,
						first : first,
						last : last
					}
				}
			});
		}
		
		function showResult(result,request){

				document.getElementById("contractConditionId").value = result.data[0].id;
				document.getElementById("midnightOvertimeHolidayAllowance").value = result.data[0].midnight_overtime_holiday_allowance;
				document.getElementById("paymentTerms").value = result.data[0].payment_terms;
				document.getElementById("annualPaidLeave").value = result.data[0].annual_Paid_Leave;
				document.getElementById("overtimeHolidayWork").value = result.data[0].overtime_holiday_work;
				document.getElementById("safetyandHygiene").value = result.data[0].safety_hygiene;
				document.getElementById("employmentStabilizationMeasures").value = result.data[0].employment_stabilization;
				document.getElementById("grievanceRelatedMatters").value = result.data[0].grievance_matters;
				document.getElementById("reasonfornotsubmittingemployment").value = result.data[0].reason_notsubmitting;
				document.getElementById("useofwelfarefacilities").value = result.data[0].use_welfare;
				document.getElementById("retirementrelatedmatters").value = result.data[0].retirement_matters;
				document.getElementById("contractrenewalrelatedmatters").value = result.data[0].contract_renewal;
				document.getElementById("conflictPreventionMeasuresforDirectemployment").value = result.data[0].conflict_prevention;
				document.getElementById("remarks").value = result.data[0].remarks;
				
			
		}
		
		function saveContractInfo(){
			
			var dataNode = {};
			
			var id = document.getElementById("contractConditionId").value;
			var midnight_overtime_holiday_allowance = document.getElementById("midnightOvertimeHolidayAllowance").value;
			var payment_terms = document.getElementById("paymentTerms").value;
			var annual_Paid_Leave = document.getElementById("annualPaidLeave").value;
			var overtime_holiday_work = document.getElementById("overtimeHolidayWork").value;
			var safety_hygiene = document.getElementById("safetyandHygiene").value;
			var employment_stabilization = document.getElementById("employmentStabilizationMeasures").value;
			var grievance_matters = document.getElementById("grievanceRelatedMatters").value;
			var reason_notsubmitting = document.getElementById("reasonfornotsubmittingemployment").value;
			var use_welfare = document.getElementById("useofwelfarefacilities").value;
			var retirement_matters = document.getElementById("retirementrelatedmatters").value;
			var contract_renewal = document.getElementById("contractrenewalrelatedmatters").value;
			var conflict_prevention = document.getElementById("conflictPreventionMeasuresforDirectemployment").value;
			var remarks = document.getElementById("remarks").value;
			
			dataNode['id'] = id;
			dataNode['midnight_overtime_holiday_allowance'] = midnight_overtime_holiday_allowance;
			dataNode['payment_terms'] = payment_terms;
			dataNode['annual_Paid_Leave'] = annual_Paid_Leave;
			dataNode['overtime_holiday_work'] = overtime_holiday_work;
			dataNode['safety_hygiene'] = safety_hygiene;
			dataNode['reason_notsubmitting'] = reason_notsubmitting;
			dataNode['employment_stabilization'] = employment_stabilization;
			dataNode['grievance_matters'] = grievance_matters;
			dataNode['use_welfare'] = use_welfare;
			dataNode['retirement_matters'] = retirement_matters;
			dataNode['contract_renewal'] = contract_renewal;
			dataNode['conflict_prevention'] = conflict_prevention;
			dataNode['remarks'] = remarks;
			
			$.ajax({
		          beforeSend: function(request) {
		       	   document.getElementById("loaderNotify").style.display = "";
		           request.setRequestHeader("GUID", GUID);
		          },
		          url: serverHTTP +'MasterAdminTax/PostContractInfo',
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
			loadSelectedLanguage(selectedLanguage,"contract_terms");
			setLanguage(selectedLanguage);
		}
	</script>
</body>

</html>