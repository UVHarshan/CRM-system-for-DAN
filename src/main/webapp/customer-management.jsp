<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleCustomerList">Customer List</title>
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
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingCustomer"> Customer List</span>
										</h1>
									</div>
									<div class="col-md-8  pt-0 pr-4 TopButDiv">
										<a href="customer-registration.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-plus mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonSpanCustomerReg">Customer
													Registration</span>
											</button> </a> <a href="customer-batch-registration.jsp"><button
												class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
												role='button'>
												<i class="fa fa-upload mr-2 text-20 cursor-pointer"
													role="generic"></i><span id="buttonSpanImportCustomerData">Import
													Existing Customer Data</span>
											</button></a>
										<button
											class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
											role='button' id="btnOutputCustomerListCSV">
											<i class="fa fa-table mr-2 text-20 cursor-pointer"
												role="generic"></i><span id="buttonSpanCustomerListCSV">Output
												Customer List CSV</span>
										</button>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xl-12 mt-3">
										<div class="row ">
											<div class="col-lg-10 col-md-12 col-sm-12 pr-0">
												<!-- <div class="card SearchBox"> -->
												<div class="card ml-3 SearchCardDiv">
													<div class="card-body">
														<div class="card-title">
															<i class="fa fa-search text-18" role="generic"></i><span
																id="pageSpanSearch"> Search</span>
														</div>
														<form id="searchForm" method="post">
															<div class="row">
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="givenNames" id="pageLabelCompanyName">Company
																		Name</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="companyNames" name="companyNames"
																			placeholder="Enter Company Name" class="form-control"
																			role="textbox">

																	</div>
																	<div id="errorGivenName" style="color: red;"></div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="nameKatakana"
																		id="pageLabelCompanyNameKatakana">Company Name
																		Katakana</label>
																	<div class="input-group ">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="companyNameKatakana"
																			name="companyNameKatakana"
																			placeholder="Enter Company Name Katakana"
																			class="form-control" role="textbox">
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="staffCode" id="pageLabelBelonging">Belonging</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user-circle"></i>
																			</div>
																		</div>
																		<input id="companyBelonging" name="companyBelonging"
																			placeholder="Enter Belonging" class="form-control"
																			role="textbox">
																	</div>
																	<div id="errorStaffCode" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="staffCode" id="pageLabelCustomerCode">Customer
																		Code</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user-circle"></i>
																			</div>
																		</div>
																		<input id="customerCode" name="customerCode"
																			placeholder="Enter Customer Code"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorCustomerCode" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="mobilePhone" id="pageLabelMobilePhone">Mobile
																		Phone</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-mobile-alt"></i>
																			</div>
																		</div>
																		<input id="mobilePhone" name="mobilePhone"
																			placeholder="Enter Mobile Number"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorMobile" style="color: red;"></div>

																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="mailAddress" id="pageLabelMailAddress">Email
																		Address</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-envelope"></i>
																			</div>
																		</div>
																		<input id="mailAddress" name="mailAddress"
																			placeholder="Enter Email Address"
																			class="form-control" role="textbox">
																	</div>
																	<div id="errorMail" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="dispatchClassification"
																		id="pageLabelDispatchClassification">Dispatch
																		Classification</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-clone"></i>
																			</div>
																		</div>
																		<select id="dispatchClassification"
																			name="dispatchClassification" class="form-control"
																			role="combobox">
																			<option value=""
																				id="selectOptionSelectDispatchClassification">Select
																				Dispatch Classification</option>
																			<option value="1" id="pageSpanGeneralDispatch">General
																				dispatch</option>
																			<option value="2" id="pageSpanBusinessContract">Out
																				Sourcing</option>
																			<option value="3"
																				id="pageSpanIntroductionDispatching">Temp
																				-to- Perm</option>
																			<option value="4" id="pageSpanRecruitment">Talent
																				Introduction/Recruiting/Placement</option>
																			<option value="5" id="pageSpanPartTime">PartTime</option>
																		</select>

																	</div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="belongs" id="pageLabelPostalcode">Postal
																		code</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="fa fa-bold"></i>
																			</div>
																		</div>
																		<input id="postalCode" name="postalCode"
																			placeholder="Enter Postal code" class="form-control"
																			role="textbox">
																	</div>
																	<div id="errorPostalCode" style="color: red;"></div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="prefectures" id="pageLabelPrefectures">Prefectures</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-map"></i>
																			</div>
																		</div>
																		<select id="prefectures" name="prefectures"
																			class="form-control" role="combobox">
																			<option value="" id="selectOptionSelectPrefectures">Select
																				Prefecture</option>
																			<option value="1" id="pageOption1Prefecture">
																				Hokkaido</option>
																			<option value="2" id="pageOption2Prefecture">
																				Aomori</option>
																			<option value="3" id="pageOption3Prefecture">
																				Iwate</option>
																			<option value="4" id="pageOption4Prefecture">
																				Miyagi</option>
																			<option value="5" id="pageOption5Prefecture">
																				Akita</option>
																			<option value="6" id="pageOption6Prefecture">
																				Yamagata</option>
																			<option value="7" id="pageOption7Prefecture">
																				Fukushima</option>
																			<option value="8" id="pageOption8Prefecture">
																				Ibaraki</option>
																			<option value="9" id="pageOption9Prefecture">
																				Tochigi</option>
																			<option value="10" id="pageOption10Prefecture">
																				Gunma</option>
																			<option value="11" id="pageOption11Prefecture">
																				Saitama</option>
																			<option value="12" id="pageOption12Prefecture">
																				Chiba</option>
																			<option value="13" id="pageOption13Prefecture">
																				Tokyo</option>
																			<option value="14" id="pageOption14Prefecture">
																				Kanagawa</option>
																			<option value="15" id="pageOption15Prefecture">
																				Niigata</option>
																			<option value="16" id="pageOption16Prefecture">
																				Toyama</option>
																			<option value="17" id="pageOption17Prefecture">
																				Ishikawa</option>
																			<option value="18" id="pageOption18Prefecture">
																				Fukui</option>
																			<option value="19" id="pageOption19Prefecture">
																				Yamanashi</option>
																			<option value="20" id="pageOption20Prefecture">
																				Nagano</option>
																			<option value="21" id="pageOption21Prefecture">
																				Gifu</option>
																			<option value="22" id="pageOption22Prefecture">
																				Shizuoka</option>
																			<option value="23" id="pageOption23Prefecture">
																				Aichi</option>
																			<option value="24" id="pageOption24Prefecture">
																				Mie</option>
																			<option value="25" id="pageOption25Prefecture">
																				Shiga</option>
																			<option value="26" id="pageOption26Prefecture">
																				Kyoto</option>
																			<option value="27" id="pageOption27Prefecture">
																				Osaka</option>
																			<option value="28" id="pageOption28Prefecture">
																				Hyogo</option>
																			<option value="29" id="pageOption29Prefecture">
																				Nara</option>
																			<option value="30" id="pageOption30Prefecture">
																				Wakayama</option>
																			<option value="31" id="pageOption31Prefecture">
																				Tottori</option>
																			<option value="32" id="pageOption32Prefecture">
																				Shimane</option>
																			<option value="33" id="pageOption33Prefecture">
																				Okayama</option>
																			<option value="34" id="pageOption34Prefecture">
																				Hiroshima</option>
																			<option value="35" id="pageOption35Prefecture">
																				Yamaguchi</option>
																			<option value="36" id="pageOption36Prefecture">
																				Tokushima</option>
																			<option value="37" id="pageOption37Prefecture">
																				Kagawa</option>
																			<option value="38" id="pageOption38Prefecture">
																				Ehime</option>
																			<option value="39" id="pageOption39Prefecture">
																				Kochi</option>
																			<option value="40" id="pageOption40Prefecture">
																				Fukuoka</option>
																			<option value="41" id="pageOption41Prefecture">
																				Saga</option>
																			<option value="42" id="pageOption42Prefecture">
																				Nagasaki</option>
																			<option value="43" id="pageOption43Prefecture">
																				Kumamoto</option>
																			<option value="44" id="pageOption44Prefecture">
																				Oita</option>
																			<option value="45" id="pageOption45Prefecture">
																				Miyazaki</option>
																			<option value="46" id="pageOption46Prefecture">
																				Kagoshima</option>
																			<option value="47" id="pageOption47Prefecture">
																				Okinawa</option>
																		</Select>
																	</div>
																	<div id="errorPrefecture" style="color: red;"></div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="streetAddress" id="pageLabelAddress">Address</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg ">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="companyAddress" name="companyAddress"
																			placeholder="Enter Company Address"
																			class="form-control" role="textbox">
																	</div>
																</div>

																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="streetAddress" id="pageOrganizationName">Organization
																		Name</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg ">
																				<i class="far fa-building"></i>
																			</div>
																		</div>
																		<input id="companyOrganizationName"
																			name="companyOrganizationName"
																			placeholder="Enter Organization Name"
																			class="form-control" role="textbox">
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="streetAddress"
																		id="pageLabelRepresentativeName">Customer
																		Representative Name</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg ">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<input id="companyRepresentativeName"
																			name="companyRepresentativeName"
																			placeholder="Enter Customer Representative Name"
																			class="form-control" role="textbox">
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="streetAddress"
																		id="pageLabelRepresentativeNameKatakana">Customer
																		Representative Name Katakana</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg ">
																				<i class="far fa-user"></i>
																			</div>
																		</div>
																		<input id="companyRepresentativeNameKatakana"
																			name="companyRepresentativeNameKatakana"
																			placeholder="Enter Customer Representative Name Katakana"
																			class="form-control" role="textbox">
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="staffInChargeStaff" id="pageLabelManager">Manager</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-user"></i>
																			</div>
																		</div>

																		<select id="companyManager" name="companyManager"
																			class="form-control" role="combobox">
																			<option value=""
																				id="selectOptionSelectCompanyManager">Select
																				Manager</option>

																		</select>
																	</div>
																</div>
																<div class="col-lg-4 col-md-6 pl-2 pr-2">
																	<label for="registrationDevision"
																		id="pageLabelCustomerRank">Rank</label>
																	<div class="input-group">
																		<div class="input-group-prepend">
																			<div class="input-group-text bg">
																				<i class="far fa-registered"></i>
																			</div>
																		</div>
																		<select id="registrationDevision"
																			name="registrationDevision" class="form-control"
																			role="combobox">
																			<option value="" id="selectOptionSelectRank">Select
																				Rank</option>
																			<option value="1" id="selectOptionSelectRankA">A</option>
																			<option value="2" id="selectOptionSelectRankB">B</option>
																			<option value="3" id="selectOptionSelectRankC">C</option>
																			<option value="4" id="selectOptionSelectRankD">D</option>
																			<option value="5" id="selectOptionSelectRankE">E</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row pt-1 ContentRight">
																<button id="clearAllBtn"
																	class="btn btn-danger SearchButton-2  mr-1"
																	role="button" type="reset">Clear All</button>
																<button id="searchBtn"
																	class="btn btn-info SearchButton-2   ml-0 mr-2"
																	role="button">Search</button>

															</div>
														</form>
													</div>
												</div>
											</div>


											<div class="col-lg-2 col-md-12 col-sm-12  p-0 m-0">

												<!-- <div class="row" style="background-color: blueviolet; ">  -->
												<!-- <div class="col-md-12 col-lg-12 col-xl-12">  -->
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-1 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 " id="pageCardDivTotalCustomers">Total
																Number of Customers</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalNumber"></p>
															</div>
														</div>
													</div>
												</div>

												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalActiveCustomers">Total Active
																Customers</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalActive"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalAvailableCustomers">Total
																Available Customers</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalAvailable"></p>
															</div>
														</div>
													</div>
												</div>
												<div
													class="card card-icon-bg card-icon-bg-primary o-hidden  Color-4 cardBodyDiv">
													<div class="card-body" style="margin: auto">
														<div class="row" style="text-align: center;">
															<div class="col-12 p-0 "
																id="pageCardDivTotalPendingCustomers">Total
																Pending Customers</div>
															<div class="col-12 pb-0 ">
																<p class="text text-24 pb-0 mb-2" id="pTotalPending"></p>
															</div>
														</div>
													</div>
												</div>
												<!--  <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-5 cardBodyDiv "  >
                                        <div class="card-body pt-1 pb-1 mt-1 mb-1" >
                                            <div class="row pt-1 pb-1 mt-1 mb-1"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalPendingStaff">Total Inactive Staff</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalInactive"></p></div>
                                            </div>
                                        </div>
                                    </div>  -->
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
														id="pageSpanSearchCustomerDetails"> Search Customer
														Details</span>
												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="search_table" style="width: 100%">
														<thead>
															<!-- <tr class="thClass">
                                                            <th>&nbsp;</th>
                                                            <th>&nbsp;</th>
                                                            <th>&nbsp;</th>
                                                            <th colspan="3">Name</th>
                                                            <th colspan="2">Staff Details</th>
                                                            <th colspan="3">Contact Details</th>
                                                            <th colspan="2">Location Details</th>
                                                            <th colspan="3" style="width: 25%;">Occupation Details</th>
                                                            <th colspan="3" style="width: 25%;">Personal Details</th>
                                                            <th>&nbsp;</th>
                                                        </tr> -->
															<tr class="thClass">
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"></th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e; text-align: center; min-width: 50px;"
																	id="tableSearchStaffTHNo">No</th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e; text-align: center;"
																	id="tableSearchStaffTHChoice">Choice</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e; text-align: center; min-width: 125px;"
																	id="tableSearchCustomerTHCompanyName">Customer
																	Company Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e; text-align:"
																	id="tableSearchCustomerTHTel">Tel/Email</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e; text-align: center; min-width: 100px;"
																	id="tableSearchCustomerTHDispatchClassification">Dispatch
																	Classification</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e; text-align: center;"
																	id="tableSearchCustomerTHAddress">Address</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: #a0dade; color: #647a8e; text-align: center; min-width: 50px;"
																	id="tableSearchCustomerTHCustomerCode">Customer
																	Code</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e; text-align:"
																	id="tableSearchCustomerTHCustomerRepresentative">Customer
																	Representative Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e; text-align: center;"
																	id="tableSearchCustomerTHRank">Rank</th>
																<th class="TableButtonTH"></th>
															</tr>
														</thead>
														<tbody id="tbodyId">

														</tbody>

													</table>

												</div>
											</div>
										</div>

										<div class="card m-3">
											<div class="card-body">
												<div class="row ">
													<div class="col-sm-6 col-md-6 col-lg-6 TopButLCDiv">
														<div class="btn-group col-lg-6 col-sm-12 pl-sm-3"
															role="group">
															<button class="btn btn-secondary DefaultButton pl-3 pr-3"
																id="checkAll-btn" type="button" role="button"
																onclick="checkAll()">
																<i class="far fa-check-square text-15 mr-2"></i><span
																	id="buttonSpanCheckAll">Check All</span>
															</button>
															<button class="btn btn-secondary DefaultButton"
																id="uncheckAll-btn" type="button" role="button"
																onclick="unCheckAll()">
																<i class="far fa-square text-15 mr-2"></i><span
																	id="buttonSpanUncheckAll">Uncheck All</span>
															</button>

														</div>
													</div>

													<div class="col-sm-6 col-md-6 col-lg-6 TopButDiv">
														<button id="batchDeletionBtn"
															class="btn btn-danger DefaultButton mr-3" role="button"
															onclick="batchDelete();">
															<span id="buttonSpanBatchDeletion">Batch Deletion</span>
														</button>
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
			<!-- <div class="flex-grow-1"></div> -->

			<!-- ============ Footer start ============= -->
			<%@ include file="common/footer.jsp"%>
			<!-- ============ Footer end ============= -->

		</div>
	</div>
	<!-- ============ Search UI Start ============= -->
	<div class="modal fade " id="confirmDeleteModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Batch
						Deletion</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<h4 id="modalAreYouSure">Are You Sure?</h4>
					<h4 id="modalDoYouWantDelete">Do You Really Want to Delete
						this Records?</h4>
					<h4 id="modalProcesCannotBeUndone">This Process Cannot be
						Undone.</h4>
					<br>

					<table class="display table table-striped table-bordered hover"
						id="confirm_staff_table" style="width: 100%">
						<thead>
							<tr class="thClass">
								<th style="background: rgb(245, 249, 253); color: #647a8e;"
									id="tableSearchStaffTHNo">Record No</th>
								<th class="color-1"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableSearchCustomerOrganizationName">Organization Name
								</th>
								<th class="TableTHMinWidth text-center"
									style="background: rgb(208, 226, 241); color: #647a8e;"
									id="tableSearchStaffCustomerRepresentativeName">Customer
									Representative Name</th>
								<th class="TableTHMinWidth text-center"
									style="background: #a0dade; color: #647a8e;"
									id="tableSearchCustomerCode">Customer Code</th>
							</tr>
						</thead>
						<tbody id="tBodyBatchDelete">

						</tbody>
					</table>
				</div>
				<div class="modal-footer pt-2 pb-2">
					<button class="btn btn-danger SearchButton-2  mr-1"
						id="batchDeleteConfirm" type="button">Confirm</button>
					<button class="btn btn-info SearchButton-2   ml-0 mr-0"
						id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
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

	<script src="./dist-assets/js/customer-search-Validations.js"></script>

	<script>

	     const serverHTTP = "<%=serverHTTP%>";
         const  GUID = localStorage.getItem("GUID");
         const  searchUuid = localStorage.getItem("uuid");   
         const role = localStorage.getItem("userRole");
     
         saveUuid = localStorage.getItem('saveUuid');  
         
         $(document).ready(function () {
  
      	 let dataRequest = '{"id" : 0, "authority": '+role+ '}';

      	 $.ajax({
      	 	beforeSend : function(request) {
      	 		document.getElementById("loaderNotify").style.display = "";
      	 		request.setRequestHeader("GUID", GUID);
      	 	},
      	 	url : serverHTTP + 'Employee/GetInchargeOfStaff',
      	 	method : 'POST',
      	 	contentType : 'application/json',
      	 	data : dataRequest,
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
        	 
            let dataSet = '{"uuid" : "'+searchUuid+'"}';


                  drawDtataTable(lan); 

                  $("#dateOfBirthFrom").focusout(function(){
                     this.type='text';
                     document.getElementById("dateOfBirthFrom").placeholder = "From";
                   });

                   $("#dateOfBirthTo").focusout(function(){
                     this.type='text';
                     document.getElementById("dateOfBirthTo").placeholder = "To";
                   });
                   
                   
              	   $.ajax({
                       beforeSend: function(request) {
                    	   document.getElementById("loaderNotify").style.display = "";
                        request.setRequestHeader("GUID", GUID);
                       },
                       url: serverHTTP +'Customer/GetCustomerAccount',
                       method: 'GET',
                       contentType: 'application/json',
                     //  data: templateNameReqNode,
                       dataType: 'json',
                        success: function(result, status, request){
                        if(result.status==200)
                       	 {
                        	$("#pTotalNumber").html(result.data.totalNumberOfStaff);
                        	$("#pTotalActive").html(result.data.activeStaff);
                        	$("#pTotalAvailable").html(result.data.availableStaff);
                        	$("#pTotalPending").html(result.data.pendingStaff);
                        	$("#pTotalInactive").html(result.data.inActiveStaff);
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
                   
              	   
                   $("#batchDeleteConfirm").click(function( event ) { 
                	   var batchdeleteUuidArray = document.getElementsByName("batchdeleteUuid[]");
                	   $("#batchDeleteConfirm").prop("disabled",true);
                	   var dataNode = {};
                	   var dataArray = [];
                	   for(var i = 0; i < batchdeleteUuidArray.length ; i++)
                   		{ 
                		   var dependentID ={"uuid":batchdeleteUuidArray[i].value} ;
                		   dataArray.push(dependentID);    
                   		}
                	   dataNode['customerManagements'] = dataArray;
                	   passData = JSON.stringify(dataNode);
                	   
                  	   $.ajax({
                           beforeSend: function(request) {
                        	   document.getElementById("loaderNotify").style.display = "";
                            request.setRequestHeader("GUID", GUID);
                           },
                           url: serverHTTP +'Customer/BulkDeleteCustomerInfo',
                           method: 'POST',
                           contentType: 'application/json',
                           data: passData,
                           dataType: 'json',
                            success: function(result, status, request){
                            if(result.status==200)
                           	 {
                            	showMessage('success',"E1023");
                            	setTimeout(function(){
                            		window.location.href = "customer-management.jsp"; 
                            		}, 3600);
                           	 }
                            else
                            {
                            	showMessage('error',"E1024");
                            	$("#batchDeleteConfirm").prop("disabled",false);
                           		// showMessage("Sorry Data Loding Error");
                           	 }
                            },
                            complete:function(data){
                         	   document.getElementById("loaderNotify").style.display = "none";
                         	   },
                            error: function(error) {
                            console.log(JSON.stringify(error));
                            $("#batchDeleteConfirm").prop("disabled",false);
                         }
                       });
                   });  
         });        
                   
         
    	   
         $("#btnOutputCustomerListCSV").click(function( event ) { 
       	   $.ajax({
                 beforeSend: function(request) {
              	   document.getElementById("loaderNotify").style.display = "";
                  request.setRequestHeader("GUID", GUID);
                 },
                 url: serverHTTP +'Customer/CustomerCSVOutput',
                 method: 'GET',
                 contentType: 'application/json',
                 //data: passData,
                 dataType: 'json',
                  success: function(result, status, request){
                  if(result.status==200)
                 	 {
                	  window.location = result.data.filePath;
                 	 }
                  else
                  {
                  	//showMessage('error',"E1024");
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
      	   var dispatchClassification = document.getElementById("dispatchClassification").value;     
     	  
    	   var templateNameReqNode = {};
           templateNameReqNode['companyName'] = document.getElementById("companyNames").value.trim()!="" ? document.getElementById("companyNames").value.trim() : null ; 
           templateNameReqNode['companyNameKatakana'] = document.getElementById("companyNameKatakana").value.trim()!="" ? document.getElementById("companyNameKatakana").value.trim() : null ;
           templateNameReqNode['belongings'] = document.getElementById("companyBelonging").value.trim()!="" ? document.getElementById("companyBelonging").value.trim() : null ;
           templateNameReqNode['telCompany'] = document.getElementById("mobilePhone").value.trim()!="" ? document.getElementById("mobilePhone").value.trim() : null ;
           templateNameReqNode['email'] = document.getElementById("mailAddress").value.trim()!="" ? document.getElementById("mailAddress").value.trim() : null ;null 
           templateNameReqNode['customerCode'] = document.getElementById("customerCode").value.trim()!="" ? document.getElementById("customerCode").value.trim() : null ; 
           templateNameReqNode['prefecture'] = document.getElementById("prefectures").value!="" ? document.getElementById("prefectures").value : null ; 
 	       templateNameReqNode['postalCode'] = document.getElementById("postalCode").value.trim()!="" ? document.getElementById("postalCode").value.trim() : null ;
           templateNameReqNode['address'] = document.getElementById("companyAddress").value.trim()!="" ? document.getElementById("companyAddress").value.trim() : null ; 
           templateNameReqNode['organizationName'] =  document.getElementById("companyOrganizationName").value.trim()!="" ?document.getElementById("companyOrganizationName").value : null ; 
           templateNameReqNode['customerRepresentativeName'] = document.getElementById("companyRepresentativeName").value.trim()!="" ? document.getElementById("companyRepresentativeName").value.trim() : null ; 
           templateNameReqNode['customerRepresentativeNameKatakana'] = document.getElementById("companyRepresentativeNameKatakana").value.trim() !="" ? document.getElementById("companyRepresentativeNameKatakana").value.trim() : null ; 
           templateNameReqNode['accountManager'] = document.getElementById("companyManager").value.trim()!="" ?document.getElementById("companyManager").value.trim() : null ;
           templateNameReqNode['rank'] = document.getElementById("registrationDevision").value!="" ? document.getElementById("registrationDevision").value: null ;
          
           templateNameReqNode['dispatchClassification1'] = dispatchClassification == 1? 1:null;
           templateNameReqNode['dispatchClassification2'] = dispatchClassification == 2? 1:null;
           templateNameReqNode['dispatchClassification3'] = dispatchClassification == 3? 1:null;
           templateNameReqNode['dispatchClassification4'] = dispatchClassification == 4? 1:null;
           templateNameReqNode['dispatchClassification5'] = dispatchClassification == 5? 1:null;
           
    	   $.ajax({
               beforeSend: function(request) {
            	   document.getElementById("loaderNotify").style.display = "";
                request.setRequestHeader("GUID", GUID);
               },
               url: serverHTTP +'Customer/SearchInfo',
               method: 'POST',
               contentType: 'application/json',
               data: JSON.stringify(templateNameReqNode),
               dataType: 'json',
                success: function(result, status, request){
                if(result.status==200)
               	 {
                	showSearchResult(result,request);
               	 }
                else
                {
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

           var table ;
           var dataList;
           
        function drawDtataTable(language){
            if(language =="Japanese" )
            {
                search = "探す";
                info= "ページを表示しています _PAGE_ の _PAGES_";
                lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
                zeroRecords = "見つからない - すいません";
                infoEmpty = "記録はありません";
                infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
                previous ="前";
                next ="次";
                first  = "最初のページ"; 
                last = "最終ページ";

            }else{
                search = "Search";
                info= "Showing page _PAGE_ of _PAGES_";
                lengthMenu = "Display _MENU_ records per page";
                zeroRecords = "Nothing found";
                infoEmpty = "No records available";
                infoFiltered = "(filtered from _MAX_ total records)";
                previous ="Previous";
                next ="Next";
                first  = "First page"; 
                last = "Last page";
            }

            table= $('#search_table').DataTable({
                    language: {
                    search : search,
                    info :info,
                    lengthMenu : lengthMenu,
                    zeroRecords : zeroRecords,
                    infoEmpty : infoEmpty,
                    infoFiltered :infoFiltered,
                    "paginate": {
                    previous : previous,
                    next:next,
                    first : first,
                    last :last
                    }
                    },
                    responsive: true,
                    responsive: {
                        details: {
                            type: 'column',
                            target: 'tr'
                        }
                    },
                    columnDefs: [ 
                    	{
                        className: 'control',
                        orderable: false,
                        targets:   0
                       }  ,  
                       { orderable: false, targets: 2 },
                       { orderable: false, targets: 10 },
                     { responsivePriority: 1, targets: 7 },
                     { responsivePriority: 2, targets: 10 },
                     { responsivePriority: 3, targets: 3 },
                  ],
                    order: [ 1, 'asc' ]
                    
                });
        }
        
        function setLanguageWithTables(selectedLanguage){
        	pageLanguage = selectedLanguage
        	loadSelectedLanguage(selectedLanguage,"customer");
            setLanguage(selectedLanguage);
            table.destroy();
            drawDtataTable(selectedLanguage);
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
        
        function showSearchResult(result,request)
        {
        	 table.destroy();
        	 $("#tbodyId").empty();
        	 for(i=0;i<result.data.length;i++){
        		 
        		 dispatchClassification1Value = result.data[i].dispatchClassification1 == 1 ?  dispatchClassificationArray[1] +" , ": "" ; 
        		 dispatchClassification2Value = result.data[i].dispatchClassification2 == 1 ?  dispatchClassificationArray[2] +" , ": "" ; 
        		 dispatchClassification3Value = result.data[i].dispatchClassification3 == 1 ?  dispatchClassificationArray[3] +" , ": "" ; 
        		 dispatchClassification4Value = result.data[i].dispatchClassification4 == 1 ?  dispatchClassificationArray[4] +" , ": "" ;
        		 dispatchClassification5Value = result.data[i].dispatchClassification5 == 1 ?  dispatchClassificationArray[5] : "" ; 
        		
        		 
        		 rankValue = rankArray[result.data[i].rank] != null ? rankArray[result.data[i].rank]: "";
        		 customerRepresentativeName = result.data[i].customerRepresentativeName != null ?  result.data[i].customerRepresentativeName:"";
        		 companyName = result.data[i].companyName != null ?  result.data[i].companyName:"";
        		 address = result.data[i].address != null ?  result.data[i].address:"";
        		 telCompany = result.data[i].telCompany != null ?  result.data[i].telCompany:"";
        		 email = result.data[i].email != null ?  result.data[i].email:"";
        		 customerCode = result.data[i].customerCode != null ?  result.data[i].customerCode:"";

        		let newRow=' <tr>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;"></td>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e; test-align: center;">'+(i+1)+'</td>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;">'+
                              '<label class="container">'+
                              '<input type="checkbox" id="tableCheck" name="tableCheck" class="tableCheckClass" value="'+result.data[i].uuid+'">'+
                             ' <span class="checkmark"></span>'+
                             '</label>'+
                    '</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+companyName+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+telCompany+' , '+email+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+dispatchClassification1Value+dispatchClassification2Value+dispatchClassification3Value+dispatchClassification4Value+dispatchClassification5Value+'</td>'+
                    '<td >'+address+'</td>'+
                    '<td >'+customerCode+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+customerRepresentativeName+'</td>'+
                    '<td style="background: rgb(245 249 253);color: #647a8e;">'+rankValue+'</td>'+
                    '<td style="background: rgb(255 255 255);color: #647a8e;">'+
                        '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''+result.data[i].uuid+'\')" name="viewDetails" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'+
                        '<button class="btn ScheduleButton ml-1" onclick="makeQuotation(\''+result.data[i].id+'\')"name="MakeQuotation" role="button" id="tableButtonDetails_3___"><i class="fa fa-file-alt"></i></button>'+
                        '<button class="btn ScheduleButton ml-1" onclick="createInvoice(\''+result.data[i].id+'\')" name="MakeInvoice" role="button" id="tableButtonDetails_3___"><i class="fa fa-list-alt"></i></button>'+
                     '</td>'+
                '</tr>' ;           
               $("#search_table tbody").append(newRow);
        	 }
        	 drawDtataTable(getSiteLanguage());
        	 loadSelectedLanguage(getSiteLanguage(),"customer");
        }

        function viewDetails(viewUuid)
        {
        	sessionStorage.setItem("viewUuid", viewUuid); 
        	window.location.href = "customer-details.jsp";
        }
        
        function makeQuotation(customerId)
        {
        	let url = "quotation-registration.jsp";
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="customerId" value="'+customerId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
        	/* localStorage.setItem("customerId", customerId);	
        	window.location.href = "quotation-registration.jsp"; */
        }
        
        // Linking to Invoice Creation
		function createInvoice(customerId)
		{
			let url = "invoice-create-blank.jsp";
			//let companyId = document.getElementById("companyId").value;
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="companyId" value="'+customerId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
		}
        
        
        
        function checkAll()
        {
          checkboxes = document.getElementsByName('tableCheck');
          for(var i=0, n=checkboxes.length;i<n;i++)
          {
        	  $(checkboxes[i]).prop('checked', true);
          }
        }
        
        
        function unCheckAll()
        {
        	checkboxes = document.getElementsByName('tableCheck');
            for(var i=0, n=checkboxes.length;i<n;i++)
            {
          	  $(checkboxes[i]).prop('checked', false);
            }
        }
        
        
        function  batchDelete()
        {
        	$("#tBodyBatchDelete").empty();
        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck"]:checked');
        	 if (tableCheckNode.length == 0) 
        	 {
        		 showSystemMessage('info',"E1025"); 
        	 }else
        	 {
         		
        		 for(i=0;i<tableCheckNode.length;i++){
        		  parentRow =  $(tableCheckNode[i]).closest('tr'); 
        		  
        		  // $("#loadTest").append(parentRow);
        		  tNo = parentRow.find("td:eq(1)").text();
        		  tCustomerCode= parentRow.find("td:eq(3)").text();
        		  tOrganizationName = parentRow.find("td:eq(7)").text();
        		  tRepresentativeName = parentRow.find("td:eq(8)").text();
        		  tUuid = parentRow.find("input:checkbox").val();
        		 
        	  let newRow=' <tr>'+
        	          '<input type="hidden" name="batchdeleteUuid[]" value="'+tUuid+'">'+
        	          '<td>'+tNo+'</td>'+
        	          '<td>'+tOrganizationName+'</td>'+
        	          '<td>'+tRepresentativeName+'</td>'+
        	          '<td>'+tCustomerCode+'</td>';
                  
        		  $("#confirm_staff_table tbody").append(newRow);
             }
        		 $('#confirmDeleteModal').modal('show');
        		 
             }
        }
        
        
        function  changeChargeStaff()
        {
        	const tableCheckNode = document.querySelectorAll('input[name="tableCheck"]:checked');
       	    if (tableCheckNode.length == 0) 
       	    {
       	         showSystemMessage('info',"Please Select the Staff from Staff Details !"); 
       	    }else
            {
       		 
            }
        }
        
        $("#clearAllBtn").click(function( event ) { 	
        	resetValidationReturnValues();
        	$("#errorCustomerCode").html("");
      		$("#errorPrefecture").html("");
      		$("#errorMobile").html("");
      		$("#errorMail").html("");
      		$("#errorPostalCode").html("");
      		
      		$("input").removeClass("errorVal");

      	 });
        </script>
</body>

</html>