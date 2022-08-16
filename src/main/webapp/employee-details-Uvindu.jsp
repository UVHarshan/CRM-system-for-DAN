<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleEmployeeDetails">Employee Details</title>
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
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingEmployeeDetails"> Employee Details</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingEmployeeDetails">Employee
											information can be modified</p>
									</div>
									<div class="col-md-6  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv"></div>
										</div>
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">

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
															data-toggle="collapse" data-target="#employeeInformation"
															aria-expanded="false" aria-controls="employeeInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivEmployeeInformation">Employee
																	Information</div>
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
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanName"> Name </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="employeeName"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorEmployeeName" style="color: red;"></div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmailaddress"> Email address </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" id="mailAddress"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorMail" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAuthority">Authority </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="authority" name="occupationClassification"
																		class="form-control" role="combobox">
																		<option value="" id="selectOptionSelectAuthority">Select
																			Authority</option>
																		<option value="1" id="pageOptionAdministrator">Administrator</option>
																		<option value="2" id="pageOptionInchargeoftheMatter">In
																			charge of the Matter</option>
																		<option value="3" id="pageOptionSales">Sales</option>
																		<option value="4" id="pageOptionAccounting">Accounting</option>
																		<option value="5" id="pageOptionStaffCharge">Staff
																			Charge</option>																
																	</select>
																</div>
																<div id="errorAuthority" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferfinancialinstitutionname">Transfer
																		Financial Institution Name</span>
																</div>
																<div>

																	<input type="text"
																		id="Transferfinancialinstitutionname"
																		class="form-control" min="0" max="100">


																</div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBankCode">Bank Code </span>
																</div>
																<div>
																	<input type="text" id="bankCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorBankCode" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTransferbranchname">Transfer
																		Branch Name</span>
																</div>
																<div>
																	<input type="text" id="transferBranchname"
																		class="form-control" maxlength="255">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBranchCode">Branch Code </span>
																</div>
																<div>
																	<input type="text" id="branchCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorBranchCode" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccounttype">Account Type </span>
																</div>
																<div>
																	<Select id="accountType" class="form-control">
																		<option value=""
																			id="optionAccountTypeSelectAccountType">Select
																			Account Type</option>
																		<option value="1" id="optionAccountTypeUsually">Usually</option>
																		<option value="2" id="optionAccountTypeCurrent">Current</option>
																		<option value="3" id="optionAccountTypeSavings">Savings</option>
																		<option value="4" id="optionAccountTypeOthers">Others</option>
																	</Select>
																</div>
															</div>
														</div>
														<div class="row pb-2">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountNumber">Account Number
																	</span>
																</div>
																<div>
																	<input type="text" id="accountNumber"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorAccountNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAccountName"> Account Name</span>
																</div>
																<div>
																	<input type="text" id="accountName"
																		class="form-control" maxlength="255">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDateofjoiningthecompany">Date
																		of joining the company </span> <span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="dateofJoiningtheCompany"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorDateofjoiningthecompany" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSuperiorName"> Superior Name </span>
																</div>
																<div>
																	<Select id="superiorName" class="form-control">
																		<option value=""
																			id="optionSuperiorNameSelect Superior">Select
																			Superior</option>
																		<option value="1" id="optionSuperiorNameAbrham">Abrham</option>
																		<option value="2" id="optionSuperiorNameSales">Sales
																			A</option>
																		<option value="3" id="optionSuperiorNameAccounting">Accounting</option>
																	</Select>
																</div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNewPassword">New Password</span>
																</div>
																<div>
																	<input type="password" id="newpassword"
																		class="form-control">

																</div>
																<div id="errorNewPassword" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanForNewPasswordConfirmation">For
																		New Password Confirmation</span>

																</div>
																<div>
																	<input type="password" id="ForNewPasswordConfirmation"
																		class="form-control">
																</div>
																<div id="errorNewPasswordConfirmation" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks</span>

																</div>
																<div>
																	<textarea type="text" id="remarks" class="form-control"></textarea>
																</div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanValidclassification">Valid
																		Classification</span>
																</div>
																<div>
																	<Select id="validclassification" class="form-control">
																		<option value="" id="optionvalidclassification">Valid</option>
																		<option value="1" id="optionInvalidclassification">Invalid</option>
																	</Select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRetirementDate"> Retirement
																		Date</span>
																</div>
																<div>
																	<input type="date" id="retirementDate"
																		class="form-control">
																</div>
																<div id="errorRetirementDate" style="color: red;"></div>
															</div>
															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpateEmployeeInformation">Update
																	Employee</button>
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


	<script src="./dist-assets/js/employee-details-validate.js"></script>

	<script>
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>";
		//const serverHTTP = "http://sola.ml/SOLA-API/";
		const GUID = localStorage.getItem("GUID");

		$(document).ready(function() {
			//let dataSet = '{"uuid" : "'+searchUuid+'"}';
			drawDtataTable(lan);

		});

		window.onscroll = function() {
			myFunction()
		};

		var topNewBar = document.getElementById("topNewBar");
		var sticky = topNewBar.offsetTop;

		var loadFile = function(event) {
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
			output.onload = function() {
				URL.revokeObjectURL(output.src) // free memory
			}
		};

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
		function setLanguageWithTables(selectedLanguage) {
			loadSelectedLanguage(selectedLanguage, "staff");
			setLanguage(selectedLanguage);
			table.destroy();
			drawDtataTable(selectedLanguage);
		}

		function showingMessage(messageType) {
			messageContent = notificationArray[localStorage.getItem('language')];
			Swal.fire({
				width : '25rem',
				// position: 'top-end',
				icon : messageType,
				title : "CV Uploaded Successfully",
				showConfirmButton : false,
				timer : 3000
			});
		}

		function showingErrorMessage(messageType) {
			messageContent = notificationArray[localStorage.getItem('language')];
			Swal.fire({
				width : '25rem',
				// position: 'top-end',
				icon : messageType,
				title : "Please select a PDF CV",
				showConfirmButton : false,
				timer : 3000
			});
		}
	</script>
</body>

</html>