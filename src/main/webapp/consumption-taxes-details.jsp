<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCustomerDetail">Consumption Taxes Details</title>
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
											<i class="fa fa-barcode text-30" role="generic"></i><span
												id="pageSpanHeadingConsumptionTaxDetails">
												Consumption Tax Details</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingCustomerDetails">You
											can check the details of the consumption tax</p>
									</div>
									<div class="col-md-6">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">
												<button onclick="window.history.back();"
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button'>
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
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-target="#customerInformation" aria-expanded="false"
															aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivCustomerInformation">Consumption
																	Tax Information</div>
																<div class="col-2" style="text-align: right;"></div>
															</div>
														</button>
													</h5>
												</div>

												<div id="customerInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTaxRate"> Tax Rate </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																    <input type="hidden" id="taxRateID">
																	<input type="text" id="taxRate" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorTaxRate" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanApplicationStartDate">Application
																		Start Date</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="applicationStartDate"
																		class="form-control">
																</div>
																<div id="errorApplicationStartDate" style="color: red;"></div>
															</div>
														</div>
														<div class="row pb-4">
															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks"> Remarks</span>
																</div>
																<div>
																	<textarea type="text" id="remarks" class="form-control"
																		maxlength="255"></textarea>
																</div>
															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveInformationConsumptionTax">Save
																	Information</button>
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
        loadSelectedLanguage(pageLanguage,"consumption-taxes");
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
	<script src="./dist-assets/js/consumption-taxes-details-validate.js"></script>

	<script >
	 const serverHTTP = "<%=serverHTTP%>";
     const  GUID = localStorage.getItem("GUID");
     const  uuid = localStorage.getItem("uuid");   
     
     const consumptionID = "<%= request.getParameter("consumptionID")%>" ;
     
     $(document).ready(function () {
    	 
    	 let dataSet = '{"id" : "'+consumptionID+'"}';
	        
	        $.ajax({
	            beforeSend: function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
	               request.setRequestHeader("GUID", GUID);
	            },
	            url: serverHTTP +'MasterAdminTax/ViewConsumptionTax',
	            method: 'POST',
	            contentType: 'application/json',
	            data: dataSet,
	            dataType: 'json',
	             success: function(result, status, request){
	             if(result.status==200)
	            	 {
	            		 ViewConsumptionTax(result);
	            	 }
	             else{
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
	
     function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(selectedLanguage,"consumption-taxes");
			setLanguage(selectedLanguage);
		}
     
	function updaeInfo()
	{
		 var dataNode = {};
		 dataNode['id'] = document.getElementById("taxRateID").value.trim()!="" ? document.getElementById("taxRateID").value.trim() : null ; 
		 dataNode['tax_rate'] = document.getElementById("taxRate").value.trim()!="" ? document.getElementById("taxRate").value.trim() : null ; 
		 dataNode['date_time'] = document.getElementById("applicationStartDate").value.trim()!="" ? document.getElementById("applicationStartDate").value.trim() : null ;
		 dataNode['remark'] = document.getElementById("remarks").value.trim()!="" ? document.getElementById("remarks").value.trim() : null ;
		 dataNode['uuid'] = uuid ;
           
     	 $.ajax({
              beforeSend: function(request) {
           	document.getElementById("loaderNotify").style.display = "";
               request.setRequestHeader("GUID", GUID);
              },
              url: serverHTTP +'MasterAdminTax/PostConsumptionTax',
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
	        
	        function ViewConsumptionTax(result){
	        	
	        	document.getElementById("taxRateID").value = result.data.id;
	        	document.getElementById("taxRate").value = result.data.tax_rate;
	        	document.getElementById("applicationStartDate").value = result.data.date_time;
	        	document.getElementById("remarks").value = result.data.remark;
	        }
	        
	</script>

</body>

</html>