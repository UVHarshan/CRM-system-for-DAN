<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCustomerDetail">Customer Details</title>
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
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingCustomerDetails"> Customer Information</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingCustomerDetails">You can modify the customer and create a quote related to this customer.</p>
									</div>
									<div class="col-md-8">
										   <div class="row pt-0  pr-2">
                                            <div class="col-sm-12 pr-4 TopButDiv">
                                             <div class="btn-group">
                                                <button class="DefaultButton btn btn-info TopButtonMinWidth  dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="buttonSpanCreateFromThisCustomer">Create  From This Customer</span></button>
                                                <div class="dropdown-menu" x-placement="bottom-start">
                                                <a class="dropdown-item" onclick="createQuotation()" href="#"><span id="buttonValueSpanCustomerMakeQuote">Make a Quote</span></a>
                                                <a class="dropdown-item" href="#"><span id="buttonValueSpanCustomerProposalCreation">Proposal creation</span></a>
                                                <a class="dropdown-item" href="#"><span id="buttonValueSpanCustomerInvoiceCreation">Invoice Creation</span></a>
                                                <a class="dropdown-item" onclick="copyCustomer();"><span id="buttonValueSpanCustomerCopyAndCreateAnotherCustomer">Copy And Create Another Customer</span></a>
                                                </div>
                                               </div>
                                               <div class="btn-group">
                                                <button class="DefaultButton btn btn-danger TopButtonMinWidth  dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="buttonSpanStaffDetailsDelete">Delete</span></button>
                                                <div class="dropdown-menu" x-placement="bottom-start">
                                                <button class="dropdown-item" id="customerDelete" href="#"><span id="buttonValueSpanStaffDetailsDelete">Delete Customer</span></button>
                                                </div>
                                               </div>
                                            </div>
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
																	<span id="pageSpanCompanyName"> Company Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																<input type="hidden" id="companyId" class="form-control" readonly="readonly">
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
																<div id="errorCompanyRepName" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageLabelMobilePhone">Mobile Phone</span>
																	
																</div>
																<div>
																	<input type="text" id="companyContactNumber" class="form-control"> 
																	<span id="pageSpanHelpMobile"> Please enter without hyphens</span>
																</div>
																<div id="errorMobile" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanFaxNumber">Fax Number</span>
																</div>
																<div>
																	<input type="text" id="companyFaxNumber" class="form-control"> 
																	<span id="pageSpanHelpFax"> Please enter without hyphens</span>
																</div>
																<div id="errorFaxNum" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageLabelMailAddress">Email Address</span>
																	<span class="RequiredStar">*</span>
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
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container">
																		<span id="pageSpanBusinessContract">Out Sourcing</span> 
																			<input type="checkbox" id="dispatchClassification2" name="dispatchClassi" value="1"> 
																			<span class="checkmark"></span> 
																		</label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container">
																		<span id="pageSpanIntroductionDispatching">Temp -to-Perm</span> 
																		<input type="checkbox"id="dispatchClassification3" name="dispatchClassi" value="1">
																		 <span class="checkmark"></span>
																		  </label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
																		<label class="container">
																		<span id="pageSpanRecruitment">Talent Introduction/Recruiting/Placement</span> 
																			<input type="checkbox" id="dispatchClassification4" name="dispatchClassi" value="1"> 
																			<span class="checkmark"></span> 
																			</label>
																	</div>
																	<div class="col-sm-6 col-md-3 col-lg-3">
                                                                         <label class="container">
                                                                         <span id="pageSpanPartTime">Part Time</span>
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
																	<span id="pageSpanCustomerRepresentativeName"> Customer Representative Name </span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="companyCustomerRepresentativeName" class="form-control"> 
																</div>
																<div id="errorCustRepName" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeNameKatakana"> Customer Representative Name Katakana </span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="companyCustomerRepresentativeNameKatakana" class="form-control"> 
																</div>
																<div id="errorCustRepNameKatakana" style="color: red;"></div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerContact">Customer Contact</span>
																	 <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="companyCustomerContact" class="form-control">
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
																		<option value="1" id="SelectCompanyManager1">Manager A</option>
																		<option value="2" id="SelectCompanyManager2">Manager B</option>
																		<option value="3" id="SelectCompanyManager3">Manager C</option>
																		<option value="4" id="SelectCompanyManager4">Manager D</option>
																		<option value="5" id="SelectCompanyManager5">Manager E</option>
																	</Select>
																</div>
																<div id="errorFax" style="color: red;"></div>
																
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBelongned">Belongned</span>
																</div>
																<div>
																	<input type="text" id="companyBelongned" class="form-control">
																</div>
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
																	<span id="pageSpanConflictDate">Conflict Date (Business Unit)</span>
																</div>
																<div>
																	<input type="date" id="companyConflictDate" class="form-control">
																</div>
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
																	id="buttonEditCompanyInformation">Update Company Information</button>
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
	<script src="./dist-assets/js/customer-details-validate.js"></script>
		
		
	<script>
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>";
	    //const serverHTTP = "http://sola.ml/SOLA-API/";
        const  GUID = localStorage.getItem("GUID");
        const  searchUuid = sessionStorage.getItem('viewUuid'); 
        const customerId = document.getElementById("companyId").value;

		$(document)
				.ready(
						function() {

							 let dataSet = '{"uuid" : "'+searchUuid+'"}';
						        
						        $.ajax({
						            beforeSend: function(request) {
						            	 document.getElementById("loaderNotify").style.display = "";
						               request.setRequestHeader("GUID", GUID);
						            },
						            url: serverHTTP +'Customer/GetInfo',
						            method: 'POST',
						            contentType: 'application/json',
						            data: dataSet,
						            dataType: 'json',
						             success: function(result, status, request){
						             if(result.status==200)
						            	 {
						            	    getCustomerInfo(result);
						            	 }else{
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

		
		function  getCustomerInfo(result)
		{
			document.getElementById("companyId").value = result.data.id;
		    document.getElementById("companyName").value = result.data.companyName;
		    document.getElementById("companyNameKatakana").value = result.data.companyNameKatakana;
		    document.getElementById("companyRepresentativePosition").value = result.data.representativePosition;
		    document.getElementById("companyRepresentativeName").value = result.data.representativeName;
		    document.getElementById("companyContactNumber").value = result.data.telCompany;
		    document.getElementById("companyFaxNumber").value = result.data.fax;
		    document.getElementById("companyEmailAddress").value = result.data.email;
		    document.getElementById("companyCustomerCode").value = result.data.customerCode;
		    
		    $('#dispatchClassification1').prop('checked', result.data.dispatchClassification1);
		    $('#dispatchClassification2').prop('checked', result.data.dispatchClassification2);
		    $('#dispatchClassification3').prop('checked', result.data.dispatchClassification3);
		    $('#dispatchClassification4').prop('checked', result.data.dispatchClassification4);
		    $('#dispatchClassification5').prop('checked', result.data.dispatchClassification5);
		    
		    document.getElementById("companyZipCode").value = result.data.postalCode;
		    $('#companyPrefecture').val(result.data.prefecture);
		    document.getElementById("companyAddress").value = result.data.address;
		    document.getElementById("companyOrganizationName").value = result.data.organizationName;
		    document.getElementById("companyBillingDeadline").value = result.data.billingDeadLine;
		    document.getElementById("companyCustomerRepresentativeName").value = result.data.customerRepresentativeName;
		    document.getElementById("companyCustomerRepresentativeNameKatakana").value = result.data.customerRepresentativeNameKatakana;
		    document.getElementById("companyCustomerContact").value = result.data.customerContact;
		    
		    $('#companyManager').val(result.data.accountManager);
		    document.getElementById("companyBelongned").value = result.data.belongings;
		    document.getElementById("companyWebsiteURL").value = result.data.url;
		    document.getElementById("companyConflictDate").value = result.data.contractEndDate;
		    $('#staffAttribute').val(result.data.attribute);
		    
		    $('#staffAttributeclassification2').val(result.data.attributeClassification2);
		    $("#staffLaborManagementAgreementExpirationDate").val(result.data.laborManagementAgreementExpirationDate);
		    $('#companyRank').val(result.data.rank);
		    document.getElementById("companyRemarks").value = result.data.remarks;
		    
		 }
		
		
		
		function updateCustomerInfo() 
		{	
			
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
			var companyBillingDeadline = document.getElementById("companyBillingDeadline").value!=""? document.getElementById("companyBillingDeadline").value : null;
			var companyCustomerRepresentativeName = document.getElementById("companyCustomerRepresentativeName").value;
			var companyCustomerRepresentativeNameKatakana = document.getElementById("companyCustomerRepresentativeNameKatakana").value ;
			var companyCustomerContact = document.getElementById("companyCustomerContact").value;
			var companyManager = document.getElementById("companyManager").value;
			var companyBelongned = document.getElementById("companyBelongned").value;
			var companyWebsiteURL = document.getElementById("companyWebsiteURL").value;
			var companyConflictDate = document.getElementById("companyConflictDate").value !=""? document.getElementById("companyConflictDate").value : null;
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
	
			
			let dataPassNode = {};
			dataPassNode['uuid']= searchUuid;
			dataPassNode['companyName'] = companyName.trim();
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
			dataPassNode['accountManager'] = companyManager;
			dataPassNode['belongings'] = companyBelongned;
			dataPassNode['url'] = companyWebsiteURL.trim();
			dataPassNode['rank'] = companyRank;
			dataPassNode['contractEndDate'] = companyConflictDate;
			dataPassNode['remarks'] = companyRemarks.trim();

			//console.log(JSON.stringify(dataPassNode));

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
						showMessage('success',"E1026");
					} else {
						showMessage('error',"E1027");
						console.log("Sorry Customer post not working");
					}
				},
				 complete:function(data){
	            	   document.getElementById("loaderNotify").style.display = "none";
	            	   },
				error : function(error) {
					showMessage('error',"E1027");
					console.log("Sorry Customer post not working");
					console.log(JSON.stringify(error));
				}
			});
		}


		function copyCustomer()
		{
			sessionStorage.setItem("viewUuid", searchUuid);	
        	window.location.href = "customer-duplicate.jsp";
		}
		
		function createQuotation()
		{
			sessionStorage.setItem("viewUuid", searchUuid);	
        	window.location.href = "quotation-registration.jsp";
		}
		
		$("#customerDelete").click(function( event ) { 
        	
     	   var dataNode = {};     
     	   dataNode['uuid'] = searchUuid;  

     	   
       	   $.ajax({
                beforeSend: function(request) {
               	 document.getElementById("loaderNotify").style.display = "";
                 request.setRequestHeader("GUID", GUID);
                },
                url: serverHTTP +'Customer/DeleteCustomerInfo',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(dataNode),
                dataType: 'json',
                 success: function(result, status, request){
                 if(result.status==200)
                	 {
                 	showMessage('success',"E1028");
                 	setTimeout(function(){
                 		window.location.href = "customer-management.jsp"; 
                 		}, 3600);

                	 }
                 else
                 {
                 	showMessage('error',"E1029");
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
		
		function getAddress(zipCodeId, addressId){
			
			let endpoint = 'https://map.yahooapis.jp/search/zip/V1/zipCodeSearch?';
			let apiKey = 'dj00aiZpPWxyM2dTc2RSdHN0SyZzPWNvbnN1bWVyc2VjcmV0Jng9NmQ-';
			let postalCode = document.getElementById(zipCodeId).value.trim();
			
			 $.ajax({
	             url: endpoint + "query=" + postalCode + "&appid=" + apiKey + "&output=json",
	             method: 'GET',
	             //contentType: 'application/json', 
	             dataType: 'json',
	              success: function(result, status, request){
	 	        
	            	  if(result.Feature!=null)
	            	  {
		            	  $('[data-prefecture]').map(function() {
		            	  if(result.Feature[0].Property.Address.match($(this).data('prefecture')))
		            	  {
		            	  $(this).attr('selected', 'selected');
		            	  }
		            	  }).get();
		            	  document.getElementById(addressId).value = result.Feature[0].Property.Address;
	            	  }
	              },
	              error: function(error) {
	              console.log(JSON.stringify(error));
	           }
	         });
			 
			 }
		
	</script>
</body>

</html>