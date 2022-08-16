<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleDailyIncomeTaxesDetails">Daily Income Taxes
	Details</title>
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
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-6 ">
										<h1>
											<i class="fa fa-calculator text-30" role="generic"></i><span
												id="pageSpanHeadingIncomeTaxDailyDetails"> Income Tax
												Daily Details </span>
										</h1>

										<p class="pb-0 mb-0"
											id="pageSpanSubHeadingIncomeTaxDailyDetails">You can
											check the details of the daily income tax amount.</p>
									</div>
									<div class="col-md-6">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">
												<button onclick="window.history.back();" id="ButtonReturn"
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
													<span id="buttonSpanReturn">Return</span>
												</button>
											</div>
										</div>

									</div>
								</div>


							</div>



							<div class="row">
								<div class="col-lg-12 col-xl-12 ">
									<div id="accordion" class="m-3 ">
										<div class="card SDAccordionCard mb-2">
											<div class="card-header pt-2 pb-2" id="headingOne">
												<h5 class="mb-0">
													<button class="btn btn-link2 collapsed SDAccordion"
														data-target="#monthlyTaxInformation" aria-expanded="false"
														aria-controls="monthlyTaxInformation">
														<div class="row">
															<div class="col-10" style="text-align: left;"
																id="accordionDivIncometaxdailyinformation">Income
																Tax Daily Information</div>
															<div class="col-2" style="text-align: right;"></div>
														</div>
													</button>
												</h5>
											</div>

											<div id="monthlyTaxInformation" class="collapse show"
												aria-labelledby="headingOne" data-parent="#accordion">
												<div class="card-body SDAccordionCardBody">
													<div class="row pb-1">
														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanyear"> Year </span> <span
																	class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="incomeTaxyear"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorIncomeTaxYear" style="color: red;"></div>
														</div>
													</div>
													<div class="row pb-4">
														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanThresholdhigherthan">Threshold
																	(higher than) </span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Thresholdhigherthan"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorThresholdhigherthan" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanThresholdlessthan">Threshold
																	(less than)</span>
															</div>
															<div>
																<input type="text" id="Thresholdlessthan"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorThresholdlessthan" style="color: red;"></div>
														</div>




													</div>

												</div>
											</div>
										</div>

									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-12 col-xl-12 ">
									<div id="accordion" class="m-3 ">
										<div class="card SDAccordionCard mb-2">
											<div class="card-header pt-2 pb-2" id="headingOne">
												<h5 class="mb-0">
													<button class="btn btn-link2 collapsed SDAccordion"
														data-target="#monthlyTaxInformation" aria-expanded="false"
														aria-controls="monthlyTaxInformation">
														<div class="row">
															<div class="col-10" style="text-align: left;"
																id="accordionDivdeclarationofdependentdeduction">There
																is a declaration of dependent deduction, etc. (A)</div>
															<div class="col-2" style="text-align: right;"></div>
														</div>
													</button>
												</h5>
											</div>

											<div id="declarationofdependentdeduction"
												class="collapse show" aria-labelledby="headingOne"
												data-parent="#accordion">
												<div class="card-body SDAccordionCardBody">

													<div class="row pb-4">
														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents0">Tax
																	amount (0 dependents)</span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents0"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents0" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents1"> Tax
																	amount (1 dependents)</span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents1"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents1" style="color: red;"></div>
														</div>


														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents2">Tax
																	amount (2 dependents) </span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents2"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents2" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents3"> Tax
																	amount (3 dependents)</span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents3"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents3" style="color: red;"></div>
														</div>


														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents4">Tax
																	amount (4 dependents) </span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents4"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents4" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents5"> Tax
																	amount (5 dependents)</span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents5"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents5" style="color: red;"></div>
														</div>


														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents6">Tax
																	amount (6 dependents) </span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents6"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents6" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanTaxamountdependents7">Tax
																	amount (7 dependents)</span> <span class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="Taxamountdependents7"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorTaxamountdependents7" style="color: red;"></div>
														</div>


														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpantaxrate2">Tax Rate </span>
															</div>
															<div>
																<input type="text" id="AtaxRate" class="form-control"
																	maxlength="255">
															</div>
															<div id="errorTaxRate" style="color: red;"></div>
														</div>






													</div>

												</div>
											</div>
										</div>

									</div>
								</div>
							</div>


							<div class="row">
								<div class="col-lg-12 col-xl-12 ">
									<div id="accordion" class="m-3 ">
										<div class="card SDAccordionCard mb-2">
											<div class="card-header pt-2 pb-2" id="headingthree">
												<h5 class="mb-0">
													<button class="btn btn-link2 collapsed SDAccordion"
														data-target="#monthlyTaxInformation" aria-expanded="false"
														aria-controls="monthlyTaxInformation">
														<div class="row">
															<div class="col-10" style="text-align: left;"
																id="notaxreturnfordependentdeductions">No tax
																return for dependent deductions (B)</div>
															<div class="col-2" style="text-align: right;"></div>
														</div>
													</button>
												</h5>
											</div>

											<div id="notaxreturnfordependentdeductionsInformation"
												class="collapse show" aria-labelledby="headingOne"
												data-parent="#accordion">
												<div class="card-body SDAccordionCardBody">

													<div class="row pb-4">
														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpannoTaxamount">Tax Amount </span>
															</div>
															<div>
																<input type="text" id="noTaxAmountB" class="form-control"
																	maxlength="255">
															</div>
															<div id="errorNoTaxAmountB" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpancalculationstandardamount">
																	Calculation Standard Amount</span>
															</div>
															<div>
																<input type="text" id="calculationStandardAmount"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorCalculationStandardAmount" style="color: red;"></div>
														</div>


														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpannoTaxtaxrate">Tax Rate </span>
															</div>
															<div>
																<input type="text" id="noTaxtaxrateB"
																	class="form-control" maxlength="255">
															</div>
															<div id="errorNoTaxtaxrateB" style="color: red;"></div>
														</div>






													</div>

												</div>
											</div>
										</div>

									</div>
								</div>
							</div>



							<div class="row">
								<div class="col-lg-12 col-xl-12 ">
									<div id="accordion" class="m-3 ">
										<div class="card SDAccordionCard mb-2">
											<div class="card-header pt-2 pb-2" id="headingOne">
												<h5 class="mb-0">
													<button class="btn btn-link2 collapsed SDAccordion"
														data-target="#monthlyTaxInformation" aria-expanded="false"
														aria-controls="monthlyTaxInformation">
														<div class="row">
															<div class="col-10" style="text-align: left;"
																id="accordionDivDayLaborParttime">Day labor /
																part-time job (Hei)</div>
															<div class="col-2" style="text-align: right;"></div>
														</div>
													</button>
												</h5>
											</div>

											<div id="Daylaborparttimejob" class="collapse show"
												aria-labelledby="headingOne" data-parent="#accordion">
												<div class="card-body SDAccordionCardBody">

													<div class="row pb-4">
														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpantaxamount">Tax Amount</span> <span
																	class="RequiredStar">*</span>
															</div>
															<div>
																<input type="text" id="taxAmountHei" class="form-control"
																	maxlength="255">
															</div>
															<div id="errorTaxAmountHei" style="color: red;"></div>
														</div>

														<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpantaxrate1"> Tax Rate</span>
															</div>
															<div>
																<input type="text" id="taxrate" class="form-control"
																	maxlength="255">
															</div>
														</div>


														<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
															<div class="DetailsTitleText">
																<span id="pageSpanremarks">Remarks </span>
															</div>
															<div>
																<textarea type="text" id="remarks" class="form-control"
																	maxlength="255"> </textarea>
															</div>
														</div>

														<div
															class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
															<input type="hidden" id="incomeTaxID"/>
															<button class="btn DefaultButton btn-info TopButtonMinWidth" id="buttonTaxDailySaveInformation">Update Information</button>
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
        loadSelectedLanguage(pageLanguage,"daily-income-taxes");
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

	<script src="./dist-assets/js/common-validations.js"></script>
	<script src="./dist-assets/js/daily-income-taxes-details-validate.js"></script>


	<script>
    const serverHTTP = "<%=serverHTTP%>";
    const  GUID = localStorage.getItem("GUID");
    const  uuid = localStorage.getItem("uuid");   
    
    const incometaxID = "<%= request.getParameter("incometaxID")%>" ;
    
	$(document).ready(function() { 
		
		let dataNode =  '{"id" : "'+incometaxID+'"}';
		 $.ajax({
             beforeSend: function(request) {
              document.getElementById("loaderNotify").style.display = "";
              request.setRequestHeader("GUID", GUID);
             },
             url: serverHTTP +'MasterAdminTax//FindByIdMasterAdminSearch',
             method: 'POST',
             contentType: 'application/json',
             data: dataNode,
             dataType: 'json',
              success: function(result, status, request){
              if(result.status==200)
             	 {
            	  getIncomtaxDetails(result);
             	 }
              else
              {
           	   showMessage('success',"E0000");
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
	
	function getIncomtaxDetails(result)
	{
	
   if(result.data!=null){
	document.getElementById("incomeTaxID").value = result.data.id;
   	document.getElementById("incomeTaxyear").value =  result.data.year;
   	document.getElementById("Thresholdhigherthan").value = result.data.thresholdhigh;
   	document.getElementById("Thresholdlessthan").value =  result.data.thresholdlow;
   	document.getElementById("Taxamountdependents0").value = result.data.taxDependent0Amount;
   	document.getElementById("Taxamountdependents1").value = result.data.taxDependent1Amount;
   	document.getElementById("Taxamountdependents2").value = result.data.taxDependent2Amount;
   	document.getElementById("Taxamountdependents3").value = result.data.taxDependent3Amount;
   	document.getElementById("Taxamountdependents4").value = result.data.taxDependent4Amount;
   	document.getElementById("Taxamountdependents5").value = result.data.taxDependent5Amount;
   	document.getElementById("Taxamountdependents6").value = result.data.taxDependent6Amount;
   	document.getElementById("Taxamountdependents7").value = result.data.taxDependent7Amount;
   	document.getElementById("AtaxRate").value = result.data.typeA_Rate;
   	document.getElementById("noTaxAmountB").value = result.data.typeB_Amount;
   	document.getElementById("calculationStandardAmount").value = result.data.typeB_StandardAmount;
   	document.getElementById("noTaxtaxrateB").value = result.data.typeB_Rate;
    document.getElementById("taxAmountHei").value = result.data.typeC_Amount;
    document.getElementById("taxrate").value = result.data.typeC_Rate;
    //document.getElementById("taxrate").value = result.data.typeC_StandardAmount;
    document.getElementById("remarks").value = result.data.remark;
    }
   }
   
	  function updateIncometaxInfo()
	    {
	    	  
	    	  var dataNode = {};
	    	  dataNode['id'] = document.getElementById("incomeTaxID").value;
	    	  dataNode['uuid'] = uuid;
	    	  dataNode['taxtimetype'] = "1";
	    	  dataNode['year'] = document.getElementById("incomeTaxyear").value.trim()!="" ? document.getElementById("incomeTaxyear").value.trim() : null ; 
	    	  dataNode['thresholdhigh'] = document.getElementById("Thresholdhigherthan").value.trim()!="" ? document.getElementById("Thresholdhigherthan").value.trim() : 0 ;
	    	  dataNode['thresholdlow'] = document.getElementById("Thresholdlessthan").value.trim()!="" ? document.getElementById("Thresholdlessthan").value.trim() : 0 ;
	    	  dataNode['taxDependent0Amount'] = document.getElementById("Taxamountdependents0").value.trim()!="" ? document.getElementById("Taxamountdependents0").value.trim() : 0 ;
	    	  dataNode['taxDependent1Amount'] = document.getElementById("Taxamountdependents1").value.trim()!="" ? document.getElementById("Taxamountdependents1").value.trim() : 0 ;
	    	  dataNode['taxDependent2Amount'] = document.getElementById("Taxamountdependents2").value.trim()!="" ? document.getElementById("Taxamountdependents2").value.trim() : 0 ;
	    	  dataNode['taxDependent3Amount'] = document.getElementById("Taxamountdependents3").value.trim()!="" ? document.getElementById("Taxamountdependents3").value.trim() : 0 ;
	    	  dataNode['taxDependent4Amount'] = document.getElementById("Taxamountdependents4").value.trim()!="" ? document.getElementById("Taxamountdependents4").value.trim() : 0 ;
	    	  dataNode['taxDependent5Amount'] = document.getElementById("Taxamountdependents5").value.trim()!="" ? document.getElementById("Taxamountdependents5").value.trim() : 0 ;
	    	  dataNode['taxDependent6Amount'] = document.getElementById("Taxamountdependents6").value.trim()!="" ? document.getElementById("Taxamountdependents6").value.trim() : 0 ;
	    	  dataNode['taxDependent7Amount'] = document.getElementById("Taxamountdependents7").value.trim()!="" ? document.getElementById("Taxamountdependents7").value.trim() : 0 ;
	    	  dataNode['typeA_Rate'] = document.getElementById("AtaxRate").value.trim()!="" ? document.getElementById("AtaxRate").value.trim() : null ;
	    	  dataNode['typeB_Amount'] = document.getElementById("noTaxAmountB").value.trim()!="" ? document.getElementById("noTaxAmountB").value.trim() : null ;
	    	  dataNode['typeB_StandardAmount'] = document.getElementById("calculationStandardAmount").value.trim()!="" ? document.getElementById("calculationStandardAmount").value.trim() : null ;
	    	  dataNode['typeB_Rate'] = document.getElementById("noTaxtaxrateB").value.trim()!="" ? document.getElementById("noTaxtaxrateB").value.trim() : null ;
	    	  dataNode['typeC_Amount'] = document.getElementById("taxAmountHei").value.trim()!="" ? document.getElementById("taxAmountHei").value.trim() : null ;
	    	  dataNode['typeC_Rate'] = document.getElementById("taxrate").value.trim()!="" ? document.getElementById("taxrate").value.trim() : null ;
	    	  //dataNode['typeC_StandardAmount'] = document.getElementById("noTaxtaxrateB").value.trim()!="" ? document.getElementById("noTaxtaxrateB").value.trim() : null ;
	    	  dataNode['typeC_StandardAmount'] =  "" ;
	    	  dataNode['remark'] = document.getElementById("remarks").value.trim()!="" ? document.getElementById("remarks").value.trim() : null ;
	    
	    	  $.ajax({
	              beforeSend: function(request) {
	               document.getElementById("loaderNotify").style.display = "";
	               request.setRequestHeader("GUID", GUID);
	              },
	              url: serverHTTP +'MasterAdminTax/PostMasterAdminSave',
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
	
    window.onscroll = function() {myFunction()};
    
    var topNewBar = document.getElementById("topNewBar");
    var sticky = topNewBar.offsetTop;
    
    function myFunction() {
      if (window.pageYOffset >= sticky) {
        topNewBar.classList.add("sticky")
      } else {
        topNewBar.classList.remove("sticky");
      }
    }
    
    function setLanguageWithTables(selectedLanguage) {
    	loadSelectedLanguage(selectedLanguage,"daily-income-taxes");
		setLanguage(selectedLanguage);
	}
        </script>

</body>

</html>