<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleDailyIncome">Daily Income Taxes</title>
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
.no-border {
	border-top-style: hidden;
	border-right-style: hidden;
	border-left-style: hidden;
	border-bottom-style: groove;
	border: none !important;
	background-color: #f8f9fa00 !important;
}

.no-outline:focus {
	outline: none !important;
	background-color: #f8f9fa00 !important;
}

.last-td-color {
	background-color: #578ebe;
	color: white;
	text-align: center;
}

.center-content {
	text-align: center;
	padding: auto;
}

.right-content {
	text-align: right;
}

.amount-content-color {
	background-color: #eee !important;
	text-align: right;
}
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
				<!-- <div class="row">
                    <div class="col-md-5">
                        <i class=" text-20 cursor-pointer" role="generic"></i> <h1 class="mr-2">  Staff List</h1>
                    </div>
                    <div class="col-md-7">
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Batch Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff List CSV Output</button> 
                    </div>
                    
                </div> -->
				<!-- <div class="separator-breadcrumb border-top"></div>  -->
				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-md-8">
										<h1>
											<i class="fa fa-calculator text-30" role="generic"></i><span
												id="pageSpanHeadingIncomeTaxDailyList"> Income Tax
												Daily List</span>
										</h1>
										<p class="pb-0 mb-0" id="pageSpanSubHeadingIncomeTaxDailyList">You
											can check the daily income tax information in a list.</p>

									</div>
									<div class="col-md-4  pt-0 pr-4 TopButDiv">
                                        <a href="daily-income-taxes-registration.jsp"><button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'><i class="fa fa-plus mr-2 text-20 cursor-pointer" role="generic" ></i><span id="buttonSpanAddDailyIncomeTaxes">Add Daily Income Taxes</span></button> </a>
                                    </div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div class="row">
											<div class="col-lg-12 col-xl-12 ">



												<div class="card m-3 SearchCardDiv">
													<div class="card-body">


														<div class="card-title">
															<i class="fa fa-search text-18" role="generic"></i><span
																id="pageSpanSearch"> Search</span>
														</div>
														<form id="searchForm" method="post">
															<div class="row">

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="SelectYear" id="pageLabelYear">Year</label>
																	<span class="RequiredStar">*</span>
																	<div  class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-file"></i>
																			</div>
																		</div>
																		<select id="selectYear" name="quotationStatus" class="form-control" role="combobox">
																			<option value="" id="selectOptionSelectYear">Select Year</option>
																			<option value="2019">2019</option>
																			<option value="2020">2020</option>
																			<option value="2021">2021</option>
																			<option value="2022">2022</option>
																			<option value="2023">2023</option>
																			<option value="2024">2024</option>
																			<option value="2025">2025</option>
																		</select>
																	</div>
																	<div id="errorYear" style="color: red;"></div>
																</div>


															</div>
															<div class="row pt-1 ContentRight">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
																<button id="searchBtn"
																	class="btn btn-info SearchButton-2   ml-0 mr-0"
																	role="button">Search</button>

															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">



										<div class="card m-3">
											<div class="card-body">
												<div class="card-title">
													<i class="i-File-Clipboard-File--Text cursor-pointer"
														role="generic"></i><span
														id="pageSpanSearchIncomeTaxDetails"> Search Income
														Tax Details</span>
												</div>



												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="incomeTaxDailyTable" style="width: 100%">

														<thead>
															<tr role="row"
																style="background: rgb(245, 249, 253); color: #647a8e;">
																<th id="dailyIncomeTHNo" width="1%" class="sorting_asc"
																	tabindex="0" rowspan="2" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">No</font></font></th>
																<th id="dailyIncomeTHYear" width="5%"
																	class="sorting_asc" tabindex="0" rowspan="2"
																	colspan="1"><font style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Year</font></font></th>
																<th id="dailyIncomeTHThreshold" width="12%"
																	class="sorting_asc" tabindex="0" rowspan="2"
																	colspan="1"><font style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Threshold</font></font></th>
																<th id="dailyIncomeTHInstep" width="50%" tabindex="0"
																	rowspan="1" colspan="9"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Instep</font></font></th>
																<th id="dailyIncomeTHB" width="15%" tabindex="0"
																	rowspan="1" colspan="2"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">B</font></font></th>
																<th id="dailyIncomeTHHinoe" width="15%" tabindex="0"
																	rowspan="1" colspan="2"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Hinoe</font></font></th>
																<th id="dailyIncomeTH" style="width:150px" tabindex="0" rowspan="2" colspan="1">&nbsp;</th>
															</tr>
															<tr role="row" class="heading">
																<th id="dailyIncomeTHTaxDependent0"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	tabindex="0" rowspan="1" colspan="1">Tax Dependent 0 (??) </th>
																<th id="dailyIncomeTHTaxDependent1" tabindex="0"
																	rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			1 (??)</font></font></th>
																<th id="dailyIncomeTHTaxDependent2"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	tabindex="0" rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			2 (??)</font></font></th>
																<th id="dailyIncomeTHTaxDependent3" tabindex="0"
																	rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			3 (??)</font></font></th>
																<th id="dailyIncomeTHTaxDependent4"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	tabindex="0" rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			4 (??)</font></font></th>
																<th id="dailyIncomeTHTaxDependent5" tabindex="0"
																	rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			5 (??)</font></font></th>
																<th id="dailyIncomeTHTaxDependent6"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	tabindex="0" rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			6 (??)</font></font></th>
																<th id="dailyIncomeTHTaxDependent7" tabindex="0"
																	rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Dependent
																			7 (??)</font></font></th>
																<th id="dailyIncomeTHTaxRate1" tabindex="0" rowspan="1"
																	colspan="1"><font style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Rate</font></font></th>
																<th id="dailyIncomeTHTaxAmount1" tabindex="0"
																	rowspan="1" colspan="1"><font
																	style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Amount (??)</font></font></th>
																<th id="dailyIncomeTHTaxRate2" tabindex="0" rowspan="1"
																	colspan="1"><font style="vertical-align: inherit;"><font
																		style="vertical-align: inherit;">Tax Rate</font></font></th>
																<th id="dailyIncomeTHTaxAmount2" tabindex="0" rowspan="1" colspan="1">Tax Amount (??)</th>
																<th id="dailyIncomeTHTaxRate3" tabindex="0" rowspan="1" colspan="1">Tax Rate</th>
															</tr>
														</thead>

														<tbody id="incomeTaxDailyTableBody">
															<tr id="incomeTaxDailyTrId" class="odd" role="row">
																<td class="center pt-2">1</td>
																<td class="center p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyYear[]" id="incomeTaxDailyYear" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyThreshold[]" id="incomeTaxDailyThreshold" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent0[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent1[]" class="form-control no-border no-outline  p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent2[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent3[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent4[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent5[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent6[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent7[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxRate1[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxAmount1[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxRate2[]" class="form-control no-border no-outline p-0 m-0"></td>
																<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxAmount2[]" class="form-control no-border no-outlin p-0 m-0e"></td>
																<td class="righ   p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxRate3[]" class="form-control no-border no-outline  p-0 m-0"></td>
																<td class="actions" >
																	
																		<button disabled class="btn DetailsButton"
																			onclick="viewDetails()" title="Details" role="button"
																			id="tableButtonDetails_3___">
																			<i class="fa fa-info-circle"></i>
																		</button>																
																</td>
															</tr>

														</tbody>

													</table>

												</div>

											</div>
										</div>


									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="loading" id="loaderNotify" style="display: none ;">
					<div class="spinner-bubble spinner-bubble-primary m-7"></div>
				</div>
				<!-- end of main-content -->
			</div>
			<!-- <div class="sidebar-overlay open"></div> Footer Start-->
			<!-- <div class="flex-grow-1"></div> -->

			<!-- ============ Footer start ============= -->
			<%@ include file="common/footer.jsp"%>
			<!-- ============ Footer end ============= -->

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
		
	<script src="./dist-assets/js/daily-income-taxes-validate.js"></script>	
			

	<script>
    const serverHTTP = "<%=serverHTTP%>";
    const  GUID = localStorage.getItem("GUID");
    const  searchUuid = localStorage.getItem("uuid");  
	
    const dateObj = new Date();
    const currentYear  = dateObj.getFullYear();
	
    
    $(document).ready(function () {
        let dataSet = '{"year" : "'+currentYear+'","taxtimetype":"1"}';
       
        drawDtataTable(lan);
   	   $.ajax({
           beforeSend: function(request) {
          	document.getElementById("loaderNotify").style.display = "";
            request.setRequestHeader("GUID", GUID);
           },
           url: serverHTTP +'MasterAdminTax/FindByYearMasterAdminSearch',
           method: 'POST',
           contentType: 'application/json',
           data: dataSet,
           dataType: 'json',
            success: function(result, status, request){
            if(result.status==200)
           	 {
            	showSearchResult(result);
           	 }
            else
            {
           		console.log("Sorry card Data Loding Error");
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
    
    function runSearch()
    {
    	 selectYear  =  document.getElementById("selectYear").value;
    	 let dataSet =  '{"year" : "'+selectYear+'","taxtimetype":"1"}';
    	 
    	 $.ajax({
             beforeSend: function(request) {
              document.getElementById("loaderNotify").style.display = "";
              request.setRequestHeader("GUID", GUID);
             },
             url: serverHTTP +'MasterAdminTax/FindByYearMasterAdminSearch',
             method: 'POST',
             contentType: 'application/json',
             data: dataSet,
             dataType: 'json',
              success: function(result, status, request){
              if(result.status==200)
             	 {
            	    showSearchResult(result);
             	 }
              else
              {
             		console.log("Sorry card Data Loding Error");
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
    
    
    function showSearchResult(result)
    {
    	if(result.data.length>0)
    	{
    	 table.destroy();
       	 $("#incomeTaxDailyTableBody").empty();
    	}else{
    		 table.destroy();
          	 $("#incomeTaxDailyTableBody").empty();
          	let newRow = '<tr id="incomeTaxDailyTrId" class="odd" role="row">'+
				'<td class="center pt-2">1</td>'+
				'<td class="center p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyYear[]" id="incomeTaxDailyYear" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyThreshold[]" id="incomeTaxDailyThreshold" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent0[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent1[]" class="form-control no-border no-outline  p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent2[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent3[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent4[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent5[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent6[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxDependent7[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxRate1[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxAmount1[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxRate2[]" class="form-control no-border no-outline p-0 m-0"></td>'+
				'<td class="right  p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxAmount2[]" class="form-control no-border no-outlin p-0 m-0e"></td>'+
				'<td class="righ   p-1 m-0"><input type="text" disabled  value="" name="incomeTaxDailyTaxRate3[]" class="form-control no-border no-outline  p-0 m-0"></td>'+
				'<td class="actions" >'+
				'<button disabled class="btn DetailsButton"  title="Details" role="button" id="tableButtonDetails_3___">'+
					'<i class="fa fa-info-circle"></i>'+
				'</button>'+																
				'</td>'+
				'</tr>';
			$("#incomeTaxDailyTable tbody").append(newRow);
    	}
    	 
    	 for(i=0;i<result.data.length;i++)
    	 {
    		let incometaxID = result.data[i].id;
    		let year = result.data[i].year != null ? result.data[i].year : "";
    		let thresholdhigherthan = result.data[i].thresholdhigh != null ? result.data[i].thresholdhigh : "";
    		let thresholdlowthan = result.data[i].thresholdlow != null ? result.data[i].thresholdlow : "";
    		let thresholdRange = thresholdhigherthan != "" ||  thresholdlowthan != "" ? thresholdhigherthan +" ~ "+ thresholdlowthan: thresholdhigherthan+thresholdlowthan;
    		let taxDependent0Amount = result.data[i].taxDependent0Amount != null ? result.data[i].taxDependent0Amount : "";
    		let taxDependent1Amount = result.data[i].taxDependent1Amount != null ? result.data[i].taxDependent1Amount : "";
    		let taxDependent2Amount = result.data[i].taxDependent2Amount != null ? result.data[i].taxDependent2Amount : "";
    		let taxDependent3Amount = result.data[i].taxDependent3Amount != null ? result.data[i].taxDependent3Amount : "";
    		let taxDependent4Amount = result.data[i].taxDependent4Amount != null ? result.data[i].taxDependent4Amount : "";
    		let taxDependent5Amount = result.data[i].taxDependent5Amount != null ? result.data[i].taxDependent5Amount : "";
    		let taxDependent6Amount = result.data[i].taxDependent6Amount != null ? result.data[i].taxDependent6Amount : "";
    		let taxDependent7Amount = result.data[i].taxDependent7Amount != null ? result.data[i].taxDependent7Amount : "";
    		let typeA_Rate = result.data[i].typeA_Rate != null ? result.data[i].typeA_Rate : "";
    		let typeB_Amount = result.data[i].typeB_Amount != null ? result.data[i].typeB_Amount : "";
    		let typeB_Rate = result.data[i].typeB_Rate != null ? result.data[i].typeB_Rate : "";
    		let typeC_Amount = result.data[i].typeC_Amount != null ? result.data[i].typeC_Amount : "";
    		let typeC_Rate = result.data[i].typeC_Rate != null ? result.data[i].typeC_Rate : "";
    		let newRow='<tr id="incomeTaxDailyTrId" class="odd" role="row">'+
							'<td class="center pt-2">'+(i+1)+'</td>'+
							'<td class="center p-1 m-0"><input disabled  type="text" value="'+year+'" name="incomeTaxDailyYear[]" id="incomeTaxDailyYear" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+thresholdhigherthan+'~'+thresholdlowthan+'" name="incomeTaxDailyThreshold[]" id="incomeTaxDailyThreshold" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent0Amount+'" name="incomeTaxDailyTaxDependent0[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent1Amount+'" name="incomeTaxDailyTaxDependent1[]" class="form-control no-border no-outline  p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent2Amount+'" name="incomeTaxDailyTaxDependent2[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent3Amount+'" name="incomeTaxDailyTaxDependent3[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent4Amount+'" name="incomeTaxDailyTaxDependent4[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent5Amount+'" name="incomeTaxDailyTaxDependent5[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent6Amount+'" name="incomeTaxDailyTaxDependent6[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+taxDependent7Amount+'" name="incomeTaxDailyTaxDependent7[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+typeA_Rate+'" name="incomeTaxDailyTaxRate1[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+typeB_Amount+'" name="incomeTaxDailyTaxAmount1[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+typeB_Rate+'" name="incomeTaxDailyTaxRate2[]" class="form-control no-border no-outline p-0 m-0"></td>'+
							'<td class="right  p-1 m-0"><input disabled  type="text" value="'+typeC_Amount+'" name="incomeTaxDailyTaxAmount2[]" class="form-control no-border no-outlin p-0 m-0e"></td>'+
							'<td class="righ   p-1 m-0"><input disabled  type="text" value="'+typeC_Rate+'" name="incomeTaxDailyTaxRate3[]" class="form-control no-border no-outline  p-0 m-0"></td>'+
							'<td class="actions" >'+
								'<div>'+
									'<button class="btn DetailsButton" onclick="viewDetails(\''+incometaxID+'\')" title="Details" role="button" id="tableButtonDetails_3___">'+
										'<i class="fa fa-info-circle"></i>'+
									'</button>'+
								'</div>'+
							'</td>'+
						'</tr>' ;        
						
           $("#incomeTaxDailyTable tbody").append(newRow);
    	 }
    	 
    	 drawDtataTable(getSiteLanguage()); 
    	 loadSelectedLanguage(getSiteLanguage(),"daily-income-taxes");
    }
    
   function viewDetails(incometaxID)
    {
    	
    	let url = "daily-income-taxes-details.jsp";
	    let form = $('<form action="' + url + '" method="post">' +
		            '<input type="hidden" name="incometaxID" value="'+incometaxID+'" />' +
		            '</form>');
					$('body').append(form);
					form.submit(); 
    }
    
	function addIncomeTaxDailyRow() {
		var $tr = $("#incomeTaxDailyTrId").first('tr');
		var $clone = $tr.clone();
		var rowCount = $('#incomeTaxDailyTable tr').length;
		$clone.find('input').val('');
		$clone.find('td:eq(0)').html(rowCount - 1);
		$("#incomeTaxDailyTableBody").append($clone);
	}	
	
	function removeIncomeTaxDailyRow(element) {
		if ($('#incomeTaxDailyTable tr').length > 3) {
			$(element).closest('tr').remove();
		} else {
			showMessage('info', "Sorry can't remove this row!");
		}
	}
	
	function clearIncomeTaxDailyRow(element) {
		var $tr = $(element).closest('tr');
		$tr.find('input').val('');
	}
	
	
		var table;
		var dataList;

		function drawDtataTable(language) {
			if (language == "Japanese") {
				search = "??????";
				info = "????????????????????????????????? _PAGE_ ??? _PAGES_";
				lengthMenu = "?????????????????? _MENU_ ????????????????????????????????????";
				zeroRecords = "?????????????????? - ???????????????";
				infoEmpty = "????????????????????????";
				infoFiltered = "(?????????????????????????????????????????? _MAX_ ????????????????????????)";
				previous = "???";
				next = "???";
				first = "??????????????????";
				last = "???????????????";

			} else {
				search = "Search";
				info = "Showing page _PAGE_ of _PAGES_";
				lengthMenu = "Display _MENU_ records per page";
				zeroRecords = "Nothing found";
				infoEmpty = "No records available";
				infoFiltered = "(filtered from _MAX_ total records)";
				previous = "Previous";
				next = "Next";
				first = "First page";
				last = "Last page";
			}

			table = $('#search_table').DataTable({
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
				},

			});
		}

		function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(selectedLanguage,"daily-income-taxes");
			setLanguage(selectedLanguage);
	/* 		table.destroy();
			drawDtataTable(selectedLanguage); */
		}

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

		// Staff Search table result dropdown values load using below arrays, So If we are doing some changes we have to update this arrays too.
		var genderArray = {
			English : {
				"" : "",
				1 : "Male",
				2 : "Female"
			},
			Japanese : {
				"" : "",
				1 : "???",
				2 : "??????"
			}
		};
		var attributeArray = {
			English : {
				"" : "",
				1 : "Elderly",
				2 : "Foreign Student",
				3 : "Foreign worker",
				4 : "High schooler"
			},
			Japanese : {
				"" : "",
				1 : "????????????",
				2 : "?????????",
				3 : "??????????????????",
				4 : "?????????"
			}
		};
		var validClassificationArray = {
			English : {
				"" : "",
				1 : "Valid",
				2 : "Invalid"
			},
			Japanese : {
				"" : "",
				1 : "??????",
				2 : "??????"
			}
		};
		var dispatchClassificationArray = {
			English : {
				"" : "",
				1 : "General Dispatch",
				2 : "Out Sourcing",
				3 : "Temp -to- Perm",
				4 : "Talent Indtroduction/Recruiting/Placement",
			},
			Japanese : {
				"" : "",
				1 : "?????????????????????????????????",
				2 : "????????????????????????",
				3 : "??????-???-?????????",
				4 : "???????????????/??????/??????",
			}
		};
		var occupationClassificationArray = {
			English : {
				"" : "",
				1 : "Office System",
				2 : "Sales / Sales System",
				3 : "IT / Creative",
				4 : "Medical/Welfare System",
				5 : "Manufacturing Business",
				6 : "Professional",
				7 : "Others"
			},
			Japanese : {
				"" : "",
				1 : "????????????????????????",
				2 : "??????/??????????????????",
				3 : "IT /?????????????????????",
				4 : "?????????????????????",
				5 : "?????????",
				6 : "??????",
				7 : "?????????"
			}
		};

		var prefectureArray = {
			English : {
				"" : "",
				1 : "Hokkaido",
				2 : "Aomori",
				3 : "Iwate",
				4 : "Miyagi",
				5 : "Akita",
				6 : "Yamagata",
				7 : "Fukushima",
				8 : "Ibaraki",
				9 : "Tochigi",
				10 : "Gunma",
				11 : "Saitama",
				12 : "Chiba",
				13 : "Tokyo",
				14 : "Kanagawa",
				15 : "Niigata",
				16 : "Toyama",
				17 : "Ishikawa",
				18 : "Fukui",
				19 : "Yamanashi",
				20 : "Nagano",
				21 : "Gifu",
				22 : "Shizuoka",
				23 : "Aichi",
				24 : "Mie",
				25 : "Shiga",
				26 : "Kyoto",
				27 : "Osaka",
				28 : "Hyogo",
				29 : "Nara",
				30 : "Wakayama",
				31 : "Tottori",
				32 : "Shimane",
				33 : "Okayama",
				34 : "Hiroshima",
				35 : "Yamaguchi",
				36 : "Tokushima",
				37 : "Kagawa",
				38 : "Ehime",
				39 : "Kochi",
				40 : "Fukuoka",
				41 : "Saga",
				42 : "Nagasaki",
				43 : "Kumamoto",
				44 : "Oita",
				45 : "Miyazaki",
				46 : "Kagoshima",
				47 : "Okinawa"
			},
			Japanese : {
				"" : "",
				1 : "?????????",
				2 : "??????",
				3 : "??????",
				4 : "??????",
				5 : "??????",
				6 : "??????",
				7 : "??????",
				8 : "??????",
				9 : "??????",
				10 : "??????",
				11 : "????????????",
				12 : "??????",
				13 : "??????",
				14 : "?????????",
				15 : "??????",
				16 : "??????",
				17 : "??????",
				18 : "??????",
				19 : "??????",
				20 : "??????",
				21 : "??????",
				22 : "??????",
				23 : "??????",
				24 : "??????",
				25 : "??????",
				26 : "??????",
				27 : "??????",
				28 : "??????",
				29 : "??????",
				30 : "?????????",
				31 : "??????",
				32 : "??????",
				33 : "??????",
				34 : "??????",
				35 : "??????",
				36 : "??????",
				37 : "??????",
				38 : "??????",
				39 : "??????",
				40 : "??????",
				41 : "??????",
				42 : "??????",
				43 : "??????",
				44 : "??????",
				45 : "??????",
				46 : "?????????",
				47 : "??????"
			}
		};
		// Update this.......................................
	</script>
</body>

</html>