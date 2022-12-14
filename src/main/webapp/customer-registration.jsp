<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="CustomerRegistrationHeader">Customer Registration</title>
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
		<div class="" id="overlayDiv"></div>
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
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingCustomerRegistration"> Customer Registration</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingCustomerRegistration">You can register as a customer.</p>
									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">
											
												<button onclick="window.history.back();" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
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
															 data-target="#customerInformation"
															aria-expanded="false" aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivCustomerInformation">Customer Information</div>
																<div class="col-2" style="text-align: right;">
																	
																</div>
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
																	<span id="pageSpanCompanyName"> Company Name </span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="companyName" class="form-control" maxlength="255">
																</div>
																<div id="errorName" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCompanyNameKatakana">Company Name Katakana </span>
																</div>
																<div>
																	<input type="text" id="companyNameKatakana" class="form-control" maxlength="255"> 
																</div>
																<div id="errorNameKatakana" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRepresentativePosition"> Representative Position</span>
																</div>
																<div>
																	<input type="text" id="companyRepresentativePosition" class="form-control" maxlength="255"> 
																</div>
																<div id="errorRepPosition" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRepresentativeName"> Representative Name</span>
																</div>
																<div>
																	<input type="text" id="companyRepresentativeName" class="form-control" maxlength="255"> 
																</div>
																<div id="errorRepName" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageLabelMobilePhone">Mobile Phone</span>
																	
																</div>
																<div>
																	<input type="text" id="companyContactNumber" class="form-control" maxlength="11"> 
																	<span id="pageSpanHelpMobile"> Please enter without hyphens</span>
																</div>
																<div id="errorCompanyContactNumber" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanFaxNumber">Fax Number</span>
																</div>
																<div>
																	<input type="text" id="companyFaxNumber" class="form-control" maxlength="10"> 
																	<span id="pageSpanHelpFax"> Please enter without hyphens</span>
																</div>
																<div id="errorFaxNum" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageLabelMailAddress">Mail Address</span>
																	
																</div>
																<div>
																	<input type="text" id="companyEmailAddress" class="form-control"> 
																</div>
																<div id="errorEmail" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCode">Customer Code</span>
																	
																</div>
																<div>
																	<input type="text" readonly id="companyCustomerCode" class="form-control"> 
																</div>
																<div id="errorMobile" style="color: red;"></div>
															</div>
															
															
															
															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDisClassification">Dispatch classification </span>
																</div>
																<div class="row">
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanGeneralDispatch">General Dispatch</span>
																			<input type="checkbox" id="dispatchClassification1" name="dispatchClassi" value="1"> 
																			<span class="checkmark"></span> </label>
																	</div>

																	<!-- 
                                                          <div class="col-sm-6 col-md-3 col-lg-3">
                                                              <label class="container"><span id="pageSpanTemporary">Temporary</span>
                                                                  <input type="checkbox" id="staffTemporary" name="dispatchClassi" value="">
                                                                  <span class="checkmark"></span>
                                                                </label>
                                                          </div>
                                                           -->

																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanBusinessContract">Out Sourcing</span> 
																			<input type="checkbox" id="dispatchClassification2"
																			name="dispatchClassi" value="1"> 
																			<span class="checkmark"></span> 
																		</label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanIntroductionDispatching">Temp -to-
																				Perm</span> <input type="checkbox"
																			id="dispatchClassification3" name="dispatchClassi"
																			value="1"> <span class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container"><span
																			id="pageSpanRecruitment">Talent
																				Introduction/Recruiting/Placement</span> <input
																			type="checkbox" id="dispatchClassification4"
																			name="dispatchClassi" value="1"> <span
																			class="checkmark"></span> </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
                                                                         <label class="container"><span id="pageSpanPartTime">Part Time</span>
                                                                         <input type="checkbox" id="dispatchClassification5" name="dispatchClassi" value="1">
                                                                          <span class="checkmark"></span>
                                                                          </label>
                                                                     </div>

																</div>
																<div id="errordispatchClassi" style="color: red;"></div>
															</div>

															

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageLabelPostalcode">Postal code</span>
																</div>
																<div>
																	<!-- <div class="form-group">
                                                          <input type="text" class="form-control" style=" float:left; width: 80%;" >
                                                          <button class="btn SuccessColor ml-1">Adress Search</button>
                                                         </div> -->

																	<input type="text" id="companyZipCode"
																		class="form-control" min="0" max="100" >
																	<div id="errorZip" style="color: red;"></div>
																	<button onclick="getAddress('companyZipCode','companyAddress')" class="btn btn-info"
																		id="btnAddressSearch">Address Search</button>
																	<span id="pageSpanHelpZipCode"> Please enter without hyphens</span>

																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPrefecture">Prefecture</span>
																</div>
																<div>
																	<Select id="companyPrefecture" class="form-control"
																		required>
																		<option value="" id="selectOptionSelectPrefectures">Select Prefecture</option>
																		<option value="1" data-Prefecture="?????????" id="pageOption1Prefecture">Hokkaido</option>
																		<option value="2" data-Prefecture="?????????" id="pageOption2Prefecture">Aomori</option>
																		<option value="3" data-Prefecture="?????????" id="pageOption3Prefecture">Iwate</option>
																		<option value="4" data-Prefecture="?????????" id="pageOption4Prefecture">Miyagi</option>
																		<option value="5" data-Prefecture="?????????" id="pageOption5Prefecture">Akita</option>
																		<option value="6" data-Prefecture="?????????" id="pageOption6Prefecture">Yamagata</option>
																		<option value="7" data-Prefecture="?????????" id="pageOption7Prefecture">Fukushima</option>
																		<option value="8" data-Prefecture="?????????" id="pageOption8Prefecture">Ibaraki</option>
																		<option value="9" data-Prefecture="?????????" id="pageOption9Prefecture">Tochigi</option>
																		<option value="10" data-Prefecture="?????????" id="pageOption10Prefecture">Gunma</option>
																		<option value="11" data-Prefecture="?????????" id="pageOption11Prefecture">Saitama</option>
																		<option value="12" data-Prefecture="?????????" id="pageOption12Prefecture">Chiba</option>
																		<option value="13" data-Prefecture="?????????" id="pageOption13Prefecture">Tokyo</option>
																		<option value="14" data-Prefecture="????????????" id="pageOption14Prefecture">Kanagawa</option>
																		<option value="15" data-Prefecture="?????????" id="pageOption15Prefecture">Niigata</option>
																		<option value="16" data-Prefecture="?????????" id="pageOption16Prefecture">Toyama</option>
																		<option value="17" data-Prefecture="?????????" id="pageOption17Prefecture">Ishikawa</option>
																		<option value="18" data-Prefecture="?????????" id="pageOption18Prefecture">Fukui</option>
																		<option value="19" data-Prefecture="?????????" id="pageOption19Prefecture">Yamanashi</option>
																		<option value="20" data-Prefecture="?????????" id="pageOption20Prefecture">Nagano</option>
																		<option value="21" data-Prefecture="?????????" id="pageOption21Prefecture">Gifu</option>
																		<option value="22" data-Prefecture="?????????" id="pageOption22Prefecture">Shizuoka</option>
																		<option value="23" data-Prefecture="?????????" id="pageOption23Prefecture">Aichi</option>
																		<option value="24" data-Prefecture="?????????" id="pageOption24Prefecture">Mie</option>
																		<option value="25" data-Prefecture="?????????" id="pageOption25Prefecture">Shiga</option>
																		<option value="26" data-Prefecture="?????????" id="pageOption26Prefecture">Kyoto</option>
																		<option value="27" data-Prefecture="?????????" id="pageOption27Prefecture">Osaka</option>
																		<option value="28" data-Prefecture="?????????" id="pageOption28Prefecture">Hyogo</option>
																		<option value="29" data-Prefecture="?????????" id="pageOption29Prefecture">Nara</option>
																		<option value="30" data-Prefecture="????????????" id="pageOption30Prefecture">Wakayama</option>
																		<option value="31" data-Prefecture="?????????" id="pageOption31Prefecture">Tottori</option>
																		<option value="32" data-Prefecture="?????????" id="pageOption32Prefecture">Shimane</option>
																		<option value="33" data-Prefecture="?????????" id="pageOption33Prefecture">Okayama</option>
																		<option value="34" data-Prefecture="?????????" id="pageOption34Prefecture">Hiroshima</option>
																		<option value="35" data-Prefecture="?????????" id="pageOption35Prefecture">Yamaguchi</option>
																		<option value="36" data-Prefecture="?????????" id="pageOption36Prefecture">Tokushima</option>
																		<option value="37" data-Prefecture="?????????" id="pageOption37Prefecture">Kagawa</option>
																		<option value="38" data-Prefecture="?????????" id="pageOption38Prefecture">Ehime</option>
																		<option value="39" data-Prefecture="?????????" id="pageOption39Prefecture">Kochi</option>
																		<option value="40" data-Prefecture="?????????" id="pageOption40Prefecture">Fukuoka</option>
																		<option value="41" data-Prefecture="?????????" id="pageOption41Prefecture">Saga</option>
																		<option value="42" data-Prefecture="?????????" id="pageOption42Prefecture">Nagasaki</option>
																		<option value="43" data-Prefecture="?????????" id="pageOption43Prefecture">Kumamoto</option>
																		<option value="44" data-Prefecture="?????????" id="pageOption44Prefecture">Oita</option>
																		<option value="45" data-Prefecture="?????????" id="pageOption45Prefecture">Miyazaki</option>
																		<option value="46" data-Prefecture="????????????" id="pageOption46Prefecture">Kagoshima</option>
																		<option value="47" data-Prefecture="?????????" id="pageOption47Prefecture">Okinawa</option>
																	</Select>
																</div>
																<div id="errorPrefecture" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAddress">Address</span>
																</div>
																<div>
																	<input type="text" id="companyAddress" class="form-control"> 
																	<span id="pageSpanHelpAddress"> Please be sure to enter the apartment name and building name</span>
																</div>
																<div id="errorAddress" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOrganizationName">Organization Name</span>
																	
																</div>
																<div>
																	<input type="text" id="companyOrganizationName" class="form-control">
																</div>
																<div id="errorOrganizName" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBillingDeadline">Billing Deadline</span>
																</div>
																<div>
																	<input type="date" id="companyBillingDeadline" class="form-control">
																</div>
																<div id="errorDob" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeName"> Customer Representative Name</span>
																	
																</div>
																<div>
																	<input type="text" id="companyCustomerRepresentativeName" class="form-control"> 
																</div>
																<div id="errorCustRepName" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeNameKatakana"> Customer Representative Name Katakana </span>
																	
																</div>
																<div>
																	<input type="text" id="companyCustomerRepresentativeNameKatakana" class="form-control"> 
																</div>
																<div id="errorCustRepNameKatakana" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerContact">Customer Contact</span>
																	
																</div>
																<div>
																	<input type="text" id="companyCustomerContact" class="form-control" maxlength="11">
																	<span id="pageSpanHelpContact"> Please enter without hyphens</span>
																</div>
																<div id="errorCustContact" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanManager">Manager</span>
																</div>
																<div>
																	<Select id="companyManager" class="form-control">
																		<option value="" id="SelectCompanyManager">Select Manager</option>
																		
																	</Select>
																</div>
																<div id="errorFax" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWebsiteURL">URL (own website)</span>
																</div>
																<div>
																	<input type="text" id="companyWebsiteURL" class="form-control">
																</div>
																<div id="errorURL" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRank">Rank</span>
																	
																</div>
																<div>
																	<Select id="companyRank" class="form-control">
																		<option value="" id="selectRank">Select Rank</option>
																		<option value="1" id="selectRankA">A</option>
																		<option value="2" id="selectRankB">B</option>
																		<option value="3" id="selectRankC">C</option>
																		<option value="4" id="selectRankD">D</option>
																		<option value="5" id="selectRankE">E</option>																		
																	</Select>
																</div>
																<div id="errorGender" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks</span>
																</div>
																<div>
																	<textarea type="text" id="companyRemarks" class="form-control"></textarea>
																</div>
																<div id="errorAttribute1" style="color: red;"></div>
															</div>
														
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button 
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveCompanyInformation">Save Company Information</button>
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
        loadSelectedLanguage(pageLanguage,"customer");
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
	<script src="./dist-assets/js/customer-registration-validate.js"></script>
		
		
	<script>

    const serverHTTP = "<%=serverHTTP%>";
	const GUID = localStorage.getItem("GUID");
	const role = localStorage.getItem("userRole");

		$(document).ready(function() {

drawDtataTable(lan);
let dataSet = '{"id" : 0, "authority": '+role+ '}';

$.ajax({
	beforeSend : function(request) {
		document.getElementById("loaderNotify").style.display = "";
		request.setRequestHeader("GUID", GUID);
	},
	url : serverHTTP + 'Employee/GetInchargeOfStaff',
	method : 'POST',
	contentType : 'application/json',
	data : dataSet,
	dataType : 'json',
	success : function(result, status, request) {
		if (result.status == 200) {
			var PersonInCharge  = document.getElementById('companyManager');
			
			if(result.data != null)
			{
			
				for(i=0 ; i<result.data.length; i++ )
				{
					PersonInCharge.options[PersonInCharge.options.length] = new Option(result.data[i].name, result.data[i].value);
				}
				
			}
			
		} else {
		}
	},
	complete : function(data) {
		document.getElementById("loaderNotify").style.display = "none";
	},
	error : function(error) {							
		console.log(JSON.stringify(error));
	}
});

							$("#staffPaymentMethod").change(function() {
								bankTransferLoad();
							});

							$("#dateOfBirthFrom")
									.focusout(
											function() {
												this.type = 'text';
												document
														.getElementById("dateOfBirthFrom").placeholder = "From";
											});

							$("#dateOfBirthTo")
									.focusout(
											function() {
												this.type = 'text';
												document
														.getElementById("dateOfBirthTo").placeholder = "To";
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
		function setLanguageWithTables(selectedLanguage) {
			 loadSelectedLanguage(selectedLanguage,"customer");
			 setLanguage(selectedLanguage);
		}

		function saveCustomerInfo() 
		{
			var companyName = document.getElementById("companyName").value;
			var companyNameKatakana = document.getElementById("companyNameKatakana").value;
			var companyRepresentativePosition = document.getElementById("companyRepresentativePosition").value;
			var companyContactNumber = document.getElementById("companyContactNumber").value;
			var companyFaxNumber = document.getElementById("companyFaxNumber").value;
			var companyEmailAddress = document.getElementById("companyEmailAddress").value;
			var companyCustomerCode = document.getElementById("companyCustomerCode").value;
			var companyZipCode = document.getElementById("companyZipCode").value;
			var companyPrefecture = document.getElementById("companyPrefecture").value;
			var companyAddress = document.getElementById("companyAddress").value;
			var companyOrganizationName = document.getElementById("companyOrganizationName").value;
			var companyBillingDeadline = document.getElementById("companyBillingDeadline").value !=""? document.getElementById("companyBillingDeadline").value : null;
			var companyCustomerRepresentativeName = document.getElementById("companyCustomerRepresentativeName").value;
			var companyCustomerRepresentativeNameKatakana = document.getElementById("companyCustomerRepresentativeNameKatakana").value ;
			var companyCustomerContact = document.getElementById("companyCustomerContact").value;
			var companyManager = document.getElementById("companyManager").value;
			var companyWebsiteURL = document.getElementById("companyWebsiteURL").value;
			var companyRank = document.getElementById("companyRank").value;
			var companyRemarks = document.getElementById("companyRemarks").value;

			var dc1 = 0;
			var dc2 = 0;
			var dc3 = 0;
			var dc4 = 0;
			var dc5 = 0 ;

			var dispatchClassification1 = document.getElementById("dispatchClassification1");
			var dispatchClassification2 = document.getElementById("dispatchClassification2");
			var dispatchClassification3 = document.getElementById("dispatchClassification3");
			var dispatchClassification4 = document.getElementById("dispatchClassification4");
			var dispatchClassification5 = document.getElementById("dispatchClassification5");

			if (dispatchClassification1.checked == true) {
				dc1 = dispatchClassification1.value;
			}
			if (dispatchClassification2.checked == true) {
				dc2 = dispatchClassification2.value;
			}
			if (dispatchClassification3.checked == true) {
				dc3 = dispatchClassification3.value;
			}
			if (dispatchClassification4.checked == true) {
				dc4 = dispatchClassification4.value;
			}
			 if (dispatchClassification5.checked == true){ 
			     dc5 = dispatchClassification5.value;
			 }

			
			var companyName = document.getElementById("companyName").value;
			var companyNameKatakana = document.getElementById("companyNameKatakana").value;
			var companyRepresentativePosition = document.getElementById("companyRepresentativePosition").value;
			var companyRepresentativeName = document.getElementById("companyRepresentativeName").value;
			var companyContactNumber = document.getElementById("companyContactNumber").value;
			var companyFaxNumber = document.getElementById("companyFaxNumber").value;
			var companyEmailAddress = document.getElementById("companyEmailAddress").value;
			var companyCustomerCode = document.getElementById("companyCustomerCode").value;
			var companyZipCode = document.getElementById("companyZipCode").value;
			var companyPrefecture = document.getElementById("companyPrefecture").value;
			var companyAddress = document.getElementById("companyAddress").value;
			var companyOrganizationName = document.getElementById("companyOrganizationName").value;
			var companyBillingDeadline = document.getElementById("companyBillingDeadline").value !=""? document.getElementById("companyBillingDeadline").value : null;
			var companyCustomerRepresentativeName = document.getElementById("companyCustomerRepresentativeName").value;
			var companyCustomerRepresentativeNameKatakana = document.getElementById("companyCustomerRepresentativeNameKatakana").value ;
			var companyCustomerContact = document.getElementById("companyCustomerContact").value;
			var companyManager = document.getElementById("companyManager").value;
			var companyWebsiteURL = document.getElementById("companyWebsiteURL").value;
			var companyRank = document.getElementById("companyRank").value;
			var companyRemarks = document.getElementById("companyRemarks").value;

			let dataPassNode = {};
			dataPassNode['companyName'] = companyName.trim();
			dataPassNode['companyNameKatakana'] = companyNameKatakana.trim();
			dataPassNode['representativePosition'] = companyRepresentativePosition.trim();
			dataPassNode['representativeName'] = companyRepresentativeName.trim();
			dataPassNode['telCompany'] = companyContactNumber.trim();
			dataPassNode['fax'] = companyFaxNumber.trim();
			dataPassNode['email'] = companyEmailAddress.trim();
			dataPassNode['dispatchClassification1'] = dc1;
			dataPassNode['dispatchClassification2'] = dc2;
			dataPassNode['dispatchClassification3'] = dc3;
			dataPassNode['dispatchClassification4'] = dc4;
			dataPassNode['dispatchClassification5'] = dc5;
			dataPassNode['postalCode'] = companyZipCode.trim();
			dataPassNode['prefecture'] = companyPrefecture;
			dataPassNode['address'] = companyAddress.trim();
			dataPassNode['organizationName'] = companyOrganizationName.trim();
			dataPassNode['billingDeadLine'] = companyBillingDeadline;
			dataPassNode['customerRepresentativeName'] = companyCustomerRepresentativeName.trim();
			dataPassNode['customerRepresentativeNameKatakana'] = companyCustomerRepresentativeNameKatakana.trim();
			dataPassNode['customerContact'] = companyCustomerContact.trim();
			dataPassNode['accountManager'] = companyManager.trim();	
			dataPassNode['url'] = companyWebsiteURL.trim();
			dataPassNode['rank'] = companyRank;
			dataPassNode['remarks'] = companyRemarks.trim();

			$.ajax({
				beforeSend : function(request) {
	            	 document.getElementById("loaderNotify").style.display = "";
					request.setRequestHeader("GUID", GUID);
				},
				url : serverHTTP + 'Customer/PostInfo',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(dataPassNode),
				dataType : 'json',
				success : function(result, status, request) {
					if (result.status == 200) {
						document.getElementById("buttonSaveCompanyInformation").disabled = true;
						showMessage('success',"E1021");
					} else {
						showMessage('error',"E1022");
						console.log("Sorry PostStaffInfo not working");
					}
				},
				 complete:function(data){
	            	   document.getElementById("loaderNotify").style.display = "none";
	            	   },
				error : function(error) {
					showMessage('error',"E1022");
					console.log("Sorry PostStaffInfo not working");
					console.log(JSON.stringify(error));
				}
			});
		}

		function addEducationalRow()
		{
		    var $tr    = $("#educationalTrId").first('tr');
		    var $clone = $tr.clone();
		    $clone.find('input').val('');
		    $("#educationalTbodyId").append($clone);
		}
		
		function addWorkRow()
		{
		    var $tr    =  $("#workTrId").first('tr');
		    var $clone =  $tr.clone();
		    $clone.find('input').val('');
		    $("#workTbodyId").append($clone);
		}
		
		function addLicenseRow()
		{
		    var $tr    =  $("#licenceTrId").first('tr');
		    var $clone =  $tr.clone();
		    $clone.find('input').val('');
		    $("#licenceTbodyId").append($clone);
		}
		
		function addDependentRow()
		{
		    var $tr    =  $("#dependentTrId").first('tr');
		    var $clone =  $tr.clone();
		    $clone.find('input').val('');
		    $("#tbodyIdDependent").append($clone);
		}
		
		function copyDependentRow(element)
		{
			
		    var $tr = $(element).closest('tr');
		    var $clone = $tr.clone();
		   // $clone.find('select:value');
		    $tr.after($clone);
		}
		
		function getAddress(zipCodeId, addressId){
			
			let dataPassNode = {};
			dataPassNode['postalCode'] = document.getElementById(zipCodeId).value.trim();
			dataPassNode['appId'] = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';
			
			$.ajax({
			beforeSend : function(request) {
			document.getElementById("loaderNotify").style.display = "";
			request.setRequestHeader("GUID", GUID);
			},
			url : serverHTTP +'Address/SearchAddressInfo',
			method : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(dataPassNode),
			dataType: 'json',
			success: function(result, status, request){
			var result = JSON.parse(result.data);
			if(result.Feature!=null)
			{
			$('[data-prefecture]').map(function() {
			if(result.Feature[0].Property.Address.match($(this).data('prefecture')))
			{
			$(this).removeAttr("selected");
			$(this).attr('selected', 'selected');
			}
			}).get();
			document.getElementById(addressId).value = result.Feature[0].Property.Address;
			}
			else
			{
			showMessage('info',"E1122");
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
	</script>
</body>

</html>