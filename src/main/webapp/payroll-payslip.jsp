<%@page import="java.util.Arrays"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitlePayrollPayslip">Payroll Payslip</title>


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
									<div class="col-md-8 ">
										<h1>
											<i class="fa fa-users text-30" role="generic"></i><span
												id="pageSpanHeadingPayslip"> Payslip</span>
										</h1>

									</div>
									<div class="col-md-4  ">
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

								<div class="row ml-4">
									<p class="pb-0 mb-0" id="pageSpanSubHeadingPayrollPayslip">
										You can modify payroll information and send pay slip emails.</p>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div id="accordion" class="m-3 ">
											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#customerInformation"
															aria-expanded="false" aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionStaffInformation">Staff Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
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
																	<span id="pageSpanStaffCode"> Staff Code</span>
																</div>
																<div>
																	<input type="hidden" value="daily"
																		id="payslipSalaryPaymentForm" class="form-control"
																		maxlength="255"> <input type="text" readonly
																		id="payslipStaffCode" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorProjectTitle" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffName"> Staff Name </span>
																</div>
																<div>
																	<input type="hidden" value="processed"
																		id="payrollTabType" class="form-control"
																		maxlength="255"> <input type="text" readonly
																		id="payrollStaffName" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorMatterNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffMobile"> Staff Mobile</span>
																</div>
																<div>
																	<input type="text" readonly id="payrollStaffMobile"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorQuotationNumber" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStaffNearestStation"> Staff
																		Nearest Station</span>
																</div>
																<div>
																	<input type="hidden" readonly
																		id="AssignmentClassificationId"> <input
																		type="text" readonly id="payrollStaffNearestStation"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorAssignmentClassification"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentMethod">Salary
																		Payment Method </span>
																</div>
																<div>
																	<input type="text" readonly id="salaryPaymentMethod"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorDispatchClassification"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentForm"> Salary
																		Payment Form</span>
																</div>
																<div>
																	<input type="text" readonly id="salaryPaymentForm"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorDivisionByBusiness" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanStandardClosingDate"> Standard
																		Closing Date</span>
																</div>
																<div>
																	<input type="text" readonly id="standardClosingDate"
																		class="form-control" maxlength="255">


																</div>
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTheTargetDate"> The Target
																		Date </span>
																</div>
																<div>
																	<input type="text" readonly id="theTargetDate"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3"
																id="divNumberOfSalaries">
																<div class="DetailsTitleText">
																	<span id="pageSpanNumberOfSalaries"> Number of
																		Salaries </span>
																</div>
																<div>
																	<input type="text" readonly id="numberOfSalaries"
																		class="form-control">
																</div>
																<div id="errorRequiredNumberPeople" style="color: red;"></div>
															</div>

															<!-- <div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveInformation">Save Information</button>
															</div> -->
														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#salaryInformation"
															aria-expanded="false" aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionSalaryInformation">Salary
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="salaryInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-1">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTargetPeriod"> Target Period </span>
																</div>
																<div>
																	<input type="text" readonly id="payslipTargetPeriod"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorProjectTitle" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<h4 id="pageSpanTitleSupply">Supply</h4>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryAllowance"> (S) Salary
																		Allowance</span>
																</div>
																<div>
																	<input type="hidden" readonly
																		id="AssignmentClassificationId"> <input
																		type="text" readonly id="payrollSalaryAllowance"
																		class="form-control" maxlength="255"> <span
																		id="payrollSalaryAllowanceHelp"> * Including
																		taxable allowance amount</span>
																</div>
																<div id="errorAssignmentClassification"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3"
																id="divOtherPayment">
																<div class="DetailsTitleText">
																	<span id="pageSpanOtherPayment">(S) Other
																		Payment </span>
																</div>
																<div>
																	<input type="text" id="otherPayment"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorOtherPayment" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAdvancePayment"> (S) Advance
																		Payment </span>
																</div>
																<div>
																	<input type="text" readonly id="advancePayment"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorDivisionByBusiness" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTaxExemptionAllowance"> (S)
																		Tax Exemption Allowance</span>
																</div>
																<div>
																	<input type="text" readonly id="taxExemptionAllowance"
																		class="form-control" maxlength="255">


																</div>
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaidDays"> Paid Days </span>
																</div>
																<div>
																	<input type="text" id="paidDays" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorPaidDays" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaidAmount"> (S) Paid Amount</span>
																</div>
																<div>
																	<input type="text" value="" id="paidAmount" class="form-control">
																</div>
																<div id="errorPaidAmount" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubtotal"> Subtotal </span>
																</div>
																<div>
																	<input type="text" readonly id="subtotal"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanSubtotalHelp"> Salary allowance +
																		Other payment + Advance payment + Tax exemption
																		allowance + Paid amount </span>
																		<span
																		id="pageSpanSubtotalHelpDaily" style="display:none;">Salary allowance +
																		Advance payment + Tax exemption
																		allowance + Paid amount </span>
																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTaxable"> (S) Taxable</span>
																</div>
																<div>
																	<input type="text" readonly id="taxable"
																		class="form-control"> <span
																		id="pageSpanTaxableHelp"> salary allowance +
																		other payment + paid amount </span>
																		<span
																		id="pageSpanTaxableHelpDaily" style="display:none;" >salary allowance +
																		paid amount </span>
																</div>
																<div id="errorRequiredNumberPeople" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<h4 id="pageSpanTitleDeduction">Deduction</h4>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPrepaidAmount"> (S) Prepaid
																		Amount</span>
																</div>
																<div>
																	<input type="text" id="payrollPrepaidAmount"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorPrepaidAmount" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanOtherDeductions"> (S) Other
																		Deductions </span>
																</div>
																<div>
																	<input type="text" id="otherDeductions"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorOtherDeductions" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3"
																id="divHealthInsurance">
																<div class="DetailsTitleText">
																	<span id="pageSpanHealthInsurancePremium"> (S)
																		Health Insurance Premium </span>
																</div>
																<div>
																	<input type="text" readonly id="healthInsurancePremium"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorDivisionByBusiness" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-6  pt-2 pl-3 pr-3"
																id="divWelfarePension">
																<div class="DetailsTitleText">
																	<span id="pageSpanWelfarePensionPremium"> (S)
																		Welfare Pension Premium </span>
																</div>
																<div>
																	<input type="text" readonly id="welfarePensionPremium"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorOccuClassi" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3"
																id="divLongtermCareInsurance">
																<div class="DetailsTitleText">
																	<span id="pageSpanLongTermCareInsurance"> (S)
																		Long-term Care Insurance Premium </span>
																</div>
																<div>
																	<input type="text" readonly id="longTermCareInsurance"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentInsurance"> (S)
																		Employment Insurance premium</span>
																</div>
																<div>
																	<input type="text" readonly id="employmentInsurance"
																		class="form-control">
																</div>
																<div id="errorRequiredNumberPeople" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncomeTax"> (S) Income Tax </span>
																</div>
																<div>
																	<input type="text" readonly id="incomeTax"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3"
																id="divResidentTax">
																<div class="DetailsTitleText">
																	<span id="pageSpanResidentTax"> (S) Resident Tax</span>
																</div>
																<div>
																	<input type="text" readonly id="residentTax"
																		class="form-control">
																</div>
																<div id="errorRequiredNumberPeople" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAbsenceDays"> Absence Days </span>
																</div>
																<div>
																	<input type="text" id="absenceDays"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorAbsenceDays" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAbsenceDeductionAmount"> (S)
																		Absence Deduction Amount</span>
																</div>
																<div>
																	<input type="text" id="absenceDeductionAmount"
																		class="form-control">
																</div>
																<div id="errorAbsenceDeductionAmount"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanNumberDaysLeaveEarly"> Number
																		of Days to Leave early </span>
																</div>
																<div>
																	<input type="text" id="numberDaysLeaveEarly"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorNumberDaysLeaveEarly" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEarlyDepartureDeductionAmount">
																		(S) Early Departure Deduction Amount </span>
																</div>
																<div>
																	<input type="text" id="earlyDepartureDeductionAmount"
																		class="form-control">
																</div>
																<div id="errorEarlyDepartureDeductionAmount"
																	style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubtotalDeduction"> Subtotal </span>
																</div>
																<div>
																	<input type="text" readonly id="subtotalDeduction"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanSubtotalDeductionHelp"> Prepaid
																		amount + Other deduction + Income tax + Absence
																		deduction amount + Early departure deduction amount </span>

																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>
														</div>

														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTotalPayment"> Total Payment</span>
																</div>
																<div>
																	<input type="text" readonly id="inputTotalPayment"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>
														</div>

													</div>
												</div>
											</div>

											<!-- 
											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse" data-target="#bonusInformation"
															aria-expanded="false" aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionBonusInformation">Bonus Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="bonusInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<h4 id="pageSpanTitleSupply">Supply</h4>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBonusAmount"> (S) Bonus Amount
																	</span>
																</div>
																<div>
																	<input type="text" id="payrollBonusAmount"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorPayrollBonusAmount"
																	style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-4 pl-5 pr-3" id="divCalculateBonusSocial">
																<div class="DetailsTitleText"></div>
																<div>
																	<button
																		class="btn DefaultButton btn-info TopButtonMinWidth"
																		id="buttonCalculateBonusSocialInsurance">
																		Calculate Bonus Social Insurance Premium</button>
																</div>

															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<h4 id="pageSpanTitleDeduction">Deduction</h4>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanHealthInsurancePremium"> (S)
																		Health Insurance Premium </span>
																</div>
																<div>
																	<input type="text" id="healthInsurancePremiumBonus"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorHealthInsurancePremium" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-12 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanWelfarePensionPremium"> (S)
																		Welfare Pension Premium </span>
																</div>
																<div>
																	<input type="text" id="welfarePensionPremiumBonus"
																		class="form-control" maxlength="255">

																</div>
																<div id="errorWelfarePensionPremium" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanLongTermCareInsurance"> (S)
																		Long-term Care Insurance Premium </span>
																</div>
																<div>
																	<input type="text" id="longTermCareInsuranceBonus"
																		class="form-control" maxlength="255">
																</div>
																<div id="errorLongTermCareInsurance" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmploymentInsurance"> (S)
																		Employment Insurance premium</span>
																</div>
																<div>
																	<input type="text" id="employmentInsuranceBonus"
																		class="form-control">
																</div>
																<div id="errorEmploymentInsurance" style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanIncomeTax"> (S) Income Tax </span>
																</div>
																<div>
																	<input type="text" id="incomeTaxBonus" class="form-control"
																		maxlength="255">
																</div>
																<div id="errorIncomeTax" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>


															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanSubtotalDeduction"> Subtotal </span>
																</div>
																<div>
																	<input type="text" readonly id="subtotalDeduction"
																		class="form-control" maxlength="255"> <span
																		id="pageSpanBonusSocialInsuranceHelp"> Bonus
																		Social Insurance premium </span>

																</div>
																<div id="errorBusinessContent" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<h4 id="pageSpanTotalDeductionPayment">Total
																		Deduction Payment</h4>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTotalPayment"> Total Payment </span>
																</div>
																<div>
																	<input type="text" readonly id="payrollTotalPayment"
																		class="form-control" maxlength="255"> <span
																		id="totalPaymentHelp"> Payment-deduction </span>

																</div>
																<div id="errorAssignmentClassification"
																	style="color: red;"></div>
															</div>


															<div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonSaveBonusInformation">Save
																	Information</button>
															</div>
														</div>

													</div>
												</div>
											</div> -->


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#implementationInformation"
															aria-expanded="false"
															aria-controls="implementationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionWorkInformationList">Work
																	Information List</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="implementationInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">


														<div class="row pb-4">

															<div class="table-responsive pt-2">
																<table
																	class="display table table-striped table-bordered hover"
																	id="work_information_table" style="width: 100%">
																	<thead>
																		<tr class="thClass">
																			<th
																				style="background: rgb(245, 249, 253); color: #647a8e;"
																				id="tableSearchTHNo">No</th>
																			<th
																				style="background: rgb(245, 249, 253); color: #647a8e;"
																				id="tableWorkInfoTHImplementationDate">
																				Implementation Date</th>
																			<th class="color-1"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHCase">Case</th>
																			<th class="color-1"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHScheduledActualWork">Scheduled
																				actual work time</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHStart">Start</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHEnd">End</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHBreakTime">Break Time</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHInsideMidnightBreak">Inside
																				Midnight break time</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHActualWorkingHours">Actual
																				Working Hours</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHOvertimeHours">Overtime
																				Hours</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHMidnightWorkingours">
																				Midnight Working hours</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHHolidayWorkingours">Holiday
																				working Hours</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHBasicSalary">Basic Salary</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHOvertimeCosts">Overtime
																				Costs</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHMidnightLaborCosts">
																				Midnight Labor costs</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHHolidayLaborCosts">Holiday
																				Labor costs</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHAllowance">Allowance</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHTransportationExpenses">
																				Transportation Expenses</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHPurchaseMoney">Purchase
																				Money</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHTExpenses">Expenses</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHAccommodationFee">
																				Accommodation fee</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHOthers">Others</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHTAdvancePayment">Advance
																				Payment</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHOtherDeductions">Other
																				deductions</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHDailySalaryMonthlySalaryDeduction">
																				Daily salary monthly salary deduction</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHTotal">Total</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHPaid">Paid</th>

																		</tr>
																	</thead>
																	<tbody id="tbodyId">
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#monthlySalaryInformationList"
															aria-expanded="false"
															aria-controls="implementationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionMonthlySalaryInformationList">Monthly
																	Salary Information List</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="monthlySalaryInformationList" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">


														<div class="row pb-4">

															<div class="table-responsive pt-2">
																<table
																	class="display table table-striped table-bordered hover"
																	id="monthly_salary_table" style="width: 100%">
																	<thead>
																		<tr class="thClass">
																			<th
																				style="background: rgb(245, 249, 253); color: #647a8e;"
																				id="tableSearchTHNo">No</th>
																			<th
																				style="background: rgb(245, 249, 253); color: #647a8e;"
																				id="tableWorkInfoTHImplementationPeriod">
																				Implementation Period</th>
																			<th class="color-1"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHCase">Case</th>
																			<th class="color-1"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHProjectSalaryUnit">Project
																				Salary Unit price</th>
																			<th class="TableTHMinWidth text-center"
																				style="background: rgb(208, 226, 241); color: #647a8e;"
																				id="tableWorkInfoTHBasicSalary">Basic Salary</th>

																		</tr>
																	</thead>
																	<tbody id="tbodyId">
																	</tbody>

																</table>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanDontSendPaySlips"> Don't Send
																		Pay Slips to staff </span>
																</div>

																<div class="col-sm-6 col-md-12 col-lg-12">
																	<label class="container"><span
																		id="pageSpanDontSendPaySlipsHelp"> Select the
																			checkbox if you do not want to email the pay slip to
																			the staff </span> <input type="checkbox" id="CaseOpenCheck"
																		name="dispatchClassi" value="0"> <span
																		class="checkmark"></span> </label>
																</div>

																<div id="errorCaseOpen" style="color: red;"></div>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3"
																id="divSalaryPaymentCheckBox">
																<div class="DetailsTitleText">
																	<span id="pageSpanSalaryPaymentCheckBox"> Salary
																		Payment </span>
																</div>

																<div class="col-sm-6 col-md-12 col-lg-12">
																	<label class="container"> <span
																		id="pageSpanPaidCheckBox"> Paid</span> <input
																		type="checkbox" id="PaidCheckBox"
																		name="dispatchClassi" value="1"> <span
																		class="checkmark"></span>
																	</label>
																</div>

																<div id="errorSpanPaidCheckBox" style="color: red;"></div>

															</div>


														</div>

													</div>
												</div>
											</div>


											<div class="card SDAccordionCard mb-2">
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-toggle="collapse"
															data-target="#WorkLocationInformation"
															aria-expanded="false"
															aria-controls="WorkLocationInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionApprovalLocationInfo">Approval
																	Information</div>
																<div class="col-2" style="text-align: right;">
																	<i class="fa fa-chevron-down" aria-hidden="true"></i>
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="WorkLocationInformation" class="collapse"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanApprovalDateAndTime"> Approval
																		Date and Time </span>
																</div>
																<div>
																	<input type="text" readonly id="approvalDateAndTime"
																		class="form-control" maxlength="255">
																</div>
																<div id="" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanAuthorizer"> Authorizer </span>
																</div>
																<div>
																	<input type="text" readonly id="authorizer"
																		class="form-control" maxlength="255">
																</div>
																<div id="" style="color: red;"></div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanApprovalStatus"> Approval
																		Status </span>
																</div>
																<div>
																	<Select id="approvalStatus" class="form-control">
																		<option value="0" id="optionApprovalStatus">Select
																			Approval Status</option>
																		<option value="1" id="option1ApprovalStatus">
																			Approved</option>
																		<option value="2" id="option2ApprovalStatus">
																			Unapproved</option>
																	</Select>
																</div>
																<div id="errorOfficeName" style="color: red;"></div>
															</div>
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3"
																id="mainDivCancelSalaryApproval" style="display: none;">

																<div id="divCancelSalaryApproval" class="pt-3"></div>

															</div>
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">

																<div>
																	<span id="pageSpanApprovalStatusHelp1"> * If you
																		change to approval and save, the salary will be fixed.
																		Please note that you will not be able to change it. </span> </br>
																	<span id="pageSpanApprovalStatusHelp2"> * If
																		approved, a salary statement PDF will be sent to the
																		staff by email. </span> <span
																		id="pageSpanApprovalStatusHelp3"> </br> * You can
																		also download the pay slip from the following in
																		Excel.
																	</span>

																</div>

															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanPaySlip"> Pay Slip </span>
																</div>
																<div>
																	<button
																		class="btn DefaultButton btn-success TopButtonMinWidth"
																		id="buttonDownloadPayslips">Download Payslips
																		in Excel</button>

																</div>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks </span>
																</div>
																<div>
																	<textarea type="text" id="payrollRemarks"
																		class="form-control"></textarea>
																</div>

															</div>

															<div
																class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
																<button
																	class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdatePaySlip">Update Pay Slip</button>
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

	<span id="spanScriptID"></span>
	<script src="./dist-assets/js/language_main.js"></script>
	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"payroll");
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
	
	
	<script src="./dist-assets/js/payroll-payslip-validate.js"></script>
	
	<%
	final String pageID = "47";
	final String[] APNumbers = (String[])session.getAttribute("APNumbers");
	if(session.getAttribute("GUID") !=null && session.getAttribute("uuid")  != null)
	{
	  if(! Arrays.asList(APNumbers).contains(pageID))
	  {
		  response.sendRedirect("403-Error.jsp");
	  }
	}else
	{
		 out.println("<script>");
		 out.println("validateSession();");
		 out.println("</script>");
	}
	%>
	
	<script>
	    const serverHTTP = "<%=serverHTTP%>";
	    const GUID = localStorage.getItem("GUID");
        const uuid = localStorage.getItem("uuid");   
		const caseId = sessionStorage.getItem('id');
		let i = 0;

	    const staffID     = "<%=request.getParameter("staffId")%>" ;
	    const targetYear  = "<%=request.getParameter("targetYear")%>" ;
	    const targetMonth = "<%=request.getParameter("targetMonth")%>" ;
	    const payrollId   = "<%=request.getParameter("payrollId")%>";

			dataSet = {
						"staffId" : staffID,
						"targetYear" : targetYear,
						"targetMonth" : targetMonth
		              }
		   apiEndpoint = 'Payroll/ViewPayroll';
		
		if (payrollId != "") {
			dataSet = {
						"staffId" : staffID,
						"payrollId" : payrollId,
						"targetYear" : targetYear,
						"targetMonth" : targetMonth
			          }
			apiEndpoint = 'Payroll/ViewPayrollInfo';
		}

		$(document).ready(function() {
                      drawDtataTable(lan);
					  $.ajax({
								beforeSend : function(request) 
								 {
									document.getElementById("loaderNotify").style.display = "";
									request.setRequestHeader("GUID",GUID);
								 },
								url : serverHTTP + apiEndpoint,
								method : 'POST',
								contentType : 'application/json',
								data : JSON.stringify(dataSet),
								dataType : 'json',
								success : function(result, status,request) 
								 {
								   if (result.status == 200) 
								    {
										 console.log("result : "+ result)
										if (payrollId == "") 
										{
										  viewPayroll(result); //wishwa
										} else if (payrollId != "" && result.data5.approvalStatus == "0")
										{
										  viewPayrollInfoCanceledRecord(result);
										} else
										{
										  viewPayrollInfo(result);
									    }
									} else
									{
										console.log("Sorry ViewPayroll error");
									}
								  },
								 complete : function(data) 
								   {
									 document.getElementById("loaderNotify").style.display = "none";
								   },
								 error : function(error) 
								   {
									console.log(JSON.stringify(error));
								   }
								});
						});

		function addVAlidate(value1 , value2)
		{
			value1 = !isNaN(value1) && value1 != "" && value1 != null ? value1 : 0;
			value2 = !isNaN(value2) && value2 != "" && value2 != null ? value2 : 0;
			return parseInt(value1) + parseInt(value2);
		}

		function subtractionValidate(value1 , value2)
        {
			value1 = !isNaN(value1) && value1 != "" && value1 != null ? value1 : 0;
			value2 = !isNaN(value2) && value2 != "" && value2 != null ? value2 : 0;
			return parseInt(value1) - parseInt(value2);
		}

		function calSalaryAllowance(sumBasicSalary , sumOverTimeCost , sumTaxableAllawance)
		{
			sumBasicSalary = !isNaN(sumBasicSalary) && sumBasicSalary != "" && sumBasicSalary != null ? sumBasicSalary : 0;
			sumOverTimeCost = !isNaN(sumOverTimeCost) && sumOverTimeCost != "" && sumOverTimeCost != null ? sumOverTimeCost : 0;
			sumTaxableAllawance = !isNaN(sumTaxableAllawance)&& sumTaxableAllawance != "" && sumTaxableAllawance != null ? sumTaxableAllawance : 0;
			return parseInt(sumBasicSalary) + parseInt(sumOverTimeCost) + parseInt(sumTaxableAllawance);
		}

		function calSubtotal(value1, value2, value3, value4, value5) 
		{
			value1 = !isNaN(value1) && value1 != "" && value1 != null ? value1 : 0;
			value2 = !isNaN(value2) && value2 != "" && value2 != null ? value2 : 0;
			value3 = !isNaN(value3) && value3 != "" && value3 != null ? value3 : 0;
			value4 = !isNaN(value4) && value4 != "" && value4 != null ? value4 : 0;
			value5 = !isNaN(value5) && value5 != "" && value5 != null ? value5 : 0;
			return parseInt(value1) + parseInt(value2) + parseInt(value3) + parseInt(value4) + parseInt(value5);
		}

		function calSubtotalSecond(value1, value2, value3, value4, value5,value6) 
		{
			value1 = !isNaN(value1) && value1 != "" && value1 != null ? value1 : 0;
			value2 = !isNaN(value2) && value2 != "" && value2 != null ? value2 : 0;
			value3 = !isNaN(value3) && value3 != "" && value3 != null ? value3 : 0;
			value4 = !isNaN(value4) && value4 != "" && value4 != null ? value4 : 0;
			value5 = !isNaN(value5) && value5 != "" && value5 != null ? value5 : 0;
			value6 = !isNaN(value6) && value5 != "" && value6 != null ? value6 : 0;
			return parseInt(value1) + parseInt(value2) + parseInt(value3) + parseInt(value4) + parseInt(value5) + parseInt(value6);
		}

		function calTaxable(value1, value2, value3) 
		{
			value1 = !isNaN(value1) && value1 != "" && value1 != null ? value1 : 0;
			value2 = !isNaN(value2) && value2 != "" && value2 != null ? value2 : 0;
			value3 = !isNaN(value3) && value3 != "" && value3 != null ? value3 : 0;
			return parseInt(value1) + parseInt(value2) + parseInt(value3);
		}

		function addTimeList(value) 
		{
			i     = 0;
			hours = 0;
			min   = 0;
			while (i < value.length) 
				{
					if (value[i] != "" && value[i] != null) 
					{
						valueArray = value[i].split(":");
						var convertValueMin = (parseInt(valueArray[0], 10) * 60 + parseInt(valueArray[1], 10));
						min = +convertValueMin;
					}
					i++;
				}
			var hours = Math.floor(min / 60);
			var minutes = min % 60;
			return (hours < 9 ? "0" : "") + hours + ":" + (minutes < 9 ? "0" : "") + minutes;
		}

		$("#otherPayment").focusout(function() {
			calculateSupplySubtotal();
		});

		$("#paidAmount").focusout(function() {
			calculateSupplySubtotal();
		});

		$("#payrollPrepaidAmount").focusout(function(){
			calculateDiductionSum();
		});

		$("#otherDeductions").focusout(function() {
			calculateDiductionSum();
		});

		$("#absenceDeductionAmount").focusout(function() {
			calculateDiductionSum();
		});

		$("#earlyDepartureDeductionAmount").focusout(function() {
			calculateDiductionSum();
		});

		function calculateSupplySubtotal() {
			let otherPayment = document.getElementById("otherPayment").value;
			let salaryAllowance = document.getElementById("payrollSalaryAllowance").value;
			let advancePayment = document.getElementById("advancePayment").value;
			let taxExemptionAllowance = document.getElementById("taxExemptionAllowance").value;
			let paidAmount = document.getElementById("paidAmount").value;

			document.getElementById("subtotal").value = calSubtotal(salaryAllowance, otherPayment, advancePayment,taxExemptionAllowance, paidAmount); //result.data2.supplySubtotal; 
			document.getElementById("taxable").value = calTaxable(salaryAllowance, otherPayment, paidAmount); //result.data2.supplyTaxable; 
			document.getElementById("inputTotalPayment").value = subtractionValidate(document.getElementById("subtotal").value, document.getElementById("subtotalDeduction").value);
		}

		function calculateDiductionSum() {
			let payrollPrepaidAmountW = document.getElementById("payrollPrepaidAmount").value;
			let otherDeductionsW = document.getElementById("otherDeductions").value;
			let absenceDeductionAmountW = document.getElementById("absenceDeductionAmount").value;
			let earlyDepartureDeductionAmountW = document.getElementById("earlyDepartureDeductionAmount").value;
			let employmentInsuranceW = document.getElementById("employmentInsurance").value;
			let incomeTaxW = document.getElementById("incomeTax").value;

			document.getElementById("subtotalDeduction").value = calSubtotalSecond(payrollPrepaidAmountW, otherDeductionsW,absenceDeductionAmountW, earlyDepartureDeductionAmountW,employmentInsuranceW, incomeTaxW);
			document.getElementById("inputTotalPayment").value = subtractionValidate(document.getElementById("subtotal").value, document.getElementById("subtotalDeduction").value);
		}

		function viewPayrollInfo(result) {
			console.log("viewPayrollInfo");
			document.getElementById("approvalStatus").disabled = true;
			$('#mainDivCancelSalaryApproval').show();
			document.getElementById("divCancelSalaryApproval").innerHTML = '<button class="btn DefaultButton btn-danger TopButtonMinWidth" onclick="cancelSalaryApproval('+ result.data2.payrollId+ ')" id="buttonCancelSalaryApproval">Cancel Salary Approval</button>';
			if (result.data1[0]) 
			{
				let daysInMonth = new Date(targetYear, targetMonth, 0).getDate();
				document.getElementById("payslipSalaryPaymentForm").value = "daily";
				let checkedStatusSumText = '<td></td>';
				if (result.data1[0].salaryPaymentForm == 2) {
					document.getElementById("payslipSalaryPaymentForm").value = "monthly";
					checkedStatusSumText = ""
					$('#tableWorkInfoTHPaid').hide();
				} else {
					$('#divSalaryPaymentCheckBox').hide();
				}

				changeUIForSalaryOut();

				document.getElementById("payslipStaffCode").value = result.data1[0].staffCode;
				document.getElementById("payrollStaffName").value = result.data1[0].name;
				document.getElementById("payrollStaffMobile").value = result.data1[0].mobile;
				document.getElementById("payrollStaffNearestStation").value = result.data1[0].nearestStation;
				document.getElementById("salaryPaymentMethod").value = salaryPayementMethodArray[result.data1[0].salaryPaymentMethod];
				document.getElementById("salaryPaymentForm").value = salaryPayementFormArray[result.data1[0].salaryPaymentForm];
				document.getElementById("standardClosingDate").value = result.data1[0].closingDate; //need to create an array for this 
				document.getElementById("theTargetDate").value = targetYear + "-" + targetMonth;

				document.getElementById("payslipTargetPeriod").value = targetYear+ "-" + targetMonth + "-1 ~ " + targetYear + "-" + targetMonth + "-" + daysInMonth;
				// document.getElementById("payrollSalaryAllowance").value = calSalaryAllowance(result.data[0].sumBasicSalary,result.data[0].sumOverTimeCost,result.data[0].sumOfTaxableAllowance);
				document.getElementById("payrollSalaryAllowance").value = calSalaryAllowance(result.data1[0].sumBasicSalary,result.data1[0].sumOverTimeCost,result.data1[0].sumOfTaxableAllowance);
				document.getElementById("otherPayment").value = result.data2.supplyOtherPayment;
				document.getElementById("otherPayment").disabled = true;
				//let sumAdvancePayment = result.data2.supplyAdvancePayment;
				let sumAdvancePayment = result.data1[0].sumAdvancePayment;
				document.getElementById("advancePayment").value = sumAdvancePayment;
				//let sumBasicSalary = result.data[0].sumBasicSalary;
				let sumOfTaxableAllowance    = result.data1[0].sumOfTaxableAllowance;
				let sumOfNonTaxableAllowance = result.data1[0].sumOfNonTaxableAllowance;
				document.getElementById("taxExemptionAllowance").value = sumOfNonTaxableAllowance;
				//let sumOverTimeCost = result.data[0].sumOverTimeCost;
				document.getElementById("paidDays").value = result.data2.supplyPaidDays;
				document.getElementById("paidDays").disabled = true;
				document.getElementById("paidAmount").value = result.data2.supplyPaidAmount;
				document.getElementById("paidAmount").disabled = true;
				let otherPayment = document.getElementById("otherPayment").value;
				let salaryAllowance = document.getElementById("payrollSalaryAllowance").value;
				let advancePayment = document.getElementById("advancePayment").value;
				let taxExemptionAllowance = document.getElementById("taxExemptionAllowance").value;
				let paidAmount = document.getElementById("paidAmount").value;
				document.getElementById("subtotal").value = calSubtotal(salaryAllowance, otherPayment, advancePayment,taxExemptionAllowance, paidAmount); //result.data2.supplySubtotal; 
				document.getElementById("taxable").value  = calTaxable(salaryAllowance, otherPayment, paidAmount); //result.data2.supplyTaxable; 
				
				//let sumPrepaidAmountDiduction = result.data3.salaryDeductionPrepaidAmount;
				let sumPrepaidAmountDiduction = result.data1[0].sumPrepaidAmount;
				document.getElementById("payrollPrepaidAmount").value = sumPrepaidAmountDiduction;
				document.getElementById("payrollPrepaidAmount").disabled = true;
				//let otherDeductions = result.data3.salaryDeductionOtherDeductions;
				let otherDeductions = result.data1[0].sumDeduction;
				document.getElementById("otherDeductions").value = otherDeductions;
				document.getElementById("otherDeductions").disabled = true;
				
				let healthInsurancePremium = result.data3.salaryHealthInsurancePremium;
				document.getElementById("healthInsurancePremium").value = healthInsurancePremium;
				let welfarePensionPremium = result.data3.salaryWelfarePensionPremium;
				document.getElementById("welfarePensionPremium").value = welfarePensionPremium;
				let longTermCareInsurancePremium = result.data3.salaryLongTermCareInsurancePremium;
				document.getElementById("longTermCareInsurance").value = longTermCareInsurancePremium;
				let employmentInsuranceA = result.data3.salaryEmploymentInsurancePremiums;
				document.getElementById("employmentInsurance").value = employmentInsuranceA;
				let incomeTaxA  = result.data3.salaryIncomeTax;
				document.getElementById("incomeTax").value = incomeTaxA;
				let salaryResidentTax = result.data3.salaryResidentTax;
				document.getElementById("residentTax").value = salaryResidentTax;
				
				//wishwa33  viewPayrollInfo
				let absenceDeductionAmount = result.data3.salaryAbsenceDeductionAmount;
				document.getElementById("absenceDeductionAmount").value = absenceDeductionAmount;
				document.getElementById("absenceDeductionAmount").disabled = true;
				document.getElementById("absenceDays").value = result.data3.salaryNumberOfAbsenteeDays;
				document.getElementById("absenceDays").disabled = true;
				let earlyDepartureDeductionAmount = result.data3.salaryEarlyDepartureDeductionAmount;
				document.getElementById("earlyDepartureDeductionAmount").value = earlyDepartureDeductionAmount;
				document.getElementById("earlyDepartureDeductionAmount").disabled = true;
				document.getElementById("numberDaysLeaveEarly").value = result.data3.salaryNumberOfDaysToLeave;
				document.getElementById("numberDaysLeaveEarly").disabled = true;
				
				document.getElementById("subtotalDeduction").value = calSubtotalSecond(sumPrepaidAmountDiduction, otherDeductions,absenceDeductionAmount, earlyDepartureDeductionAmount,employmentInsuranceA, incomeTaxA);
				document.getElementById("inputTotalPayment").value = subtractionValidate(document.getElementById("subtotal").value, document.getElementById("subtotalDeduction").value);

				document.getElementById("approvalDateAndTime").value = result.data5.approvalDateAndTime;
				document.getElementById("authorizer").value = result.data5.authorizer;
				document.getElementById("approvalStatus").value = result.data5.approvalStatus;
				$('#PaidCheckBox').prop('checked', result.data5.salaryPayment);
				if (result.data4) {
					let actualBreakTimeSum = 0;
					let actualBreakTimeArr = []
					let midnightBreakTimeSum = 0;
					let midnightBreakTimeArr = []
					let actualWorkingHoursSum = 0;
					let actualWorkingHoursArr = []
					let overtimeHoursSum = 0;
					let overtimeHoursArr = [];
					let midnightWorkingHoursSum = 0;
					let midnightWorkingHoursArr = []
					let holidayWorkingHoursSum = 0;
					let holidayWorkingHoursArr = []
					let dailyBasicSalarySum = 0;
					let overtimeCostsSum = 0;
					let midnightLaborCostsSum = 0;
					let holidayLaborCostsSum = 0;
					let totalAllowanceSum = 0;
					let paymentAmountSum = 0;

					let transportationExpensesSum = 0;
					let purchaseMoneySum = 0;
					let expensesSum = 0;
					let accommodationFeeSum = 0;
					let othersSum = 0;

					let advancePaymentSum = 0;
					let otherDeductionSum = 0;

					for (x = 0; x < result.data4.length; x++) {
						let paymentAmount = result.data4[x].paymentAmount;
						paymentAmountSum = addVAlidate(paymentAmountSum,paymentAmount);

						let totalAllowance = result.data4[x].totalAllowance;
						totalAllowanceSum = addVAlidate(totalAllowanceSum,totalAllowance);

						let holidayLaborCosts = result.data4[x].holidayLaborCosts;
						holidayLaborCostsSum = addVAlidate(holidayLaborCostsSum, holidayLaborCosts);

						let midnightLaborCosts = result.data4[x].midnightLaborCosts;
						midnightLaborCostsSum = addVAlidate(midnightLaborCostsSum, midnightLaborCosts);

						let overtimeCosts = result.data4[x].overtimeCosts;
						overtimeCostsSum = addVAlidate(overtimeCostsSum,overtimeCosts);

						let dailyBasicSalary = result.data4[x].dailyBasicSalary;
						dailyBasicSalarySum = addVAlidate(dailyBasicSalarySum,dailyBasicSalary);

						let holidayWorkingHours = result.data4[x].holidayWorkingHours;
						holidayWorkingHoursSum = addVAlidate(holidayWorkingHoursSum, holidayWorkingHours);
						holidayWorkingHoursArr.push(holidayWorkingHours);

						let midnightWorkingHours = result.data4[x].midnightWorkingHours;
						midnightWorkingHoursSum = addVAlidate(midnightWorkingHoursSum, midnightWorkingHours);
						midnightWorkingHoursArr.push(midnightWorkingHours);

						let overtimeHours = result.data4[x].overtimeHours;
						overtimeHoursSum = addVAlidate(overtimeHoursSum,
								overtimeHours);
						overtimeHoursArr.push(overtimeHours);

						let actualWorkingHours = result.data4[x].actualWorkingHours;
						actualWorkingHoursSum = addVAlidate(
								actualWorkingHoursSum, actualWorkingHours);
						actualWorkingHoursArr.push(actualWorkingHours);

						let midnightBreakTime = result.data4[x].midnightBreakTime;
						midnightBreakTimeSum = addVAlidate(
								midnightBreakTimeSum, midnightBreakTime);
						midnightBreakTimeArr.push(midnightBreakTime);

						let actualBreakTime = result.data4[x].actualBreakTime;
						actualBreakTimeSum = addVAlidate(actualBreakTimeSum,
								actualBreakTime);
						actualBreakTimeArr.push(actualBreakTime);

						let transportationExpenses = result.data4[x].transportationExpenses;
						let purchaseMoney = result.data4[x].purchaseMoney;
						let expenses = result.data4[x].expenses;
						let accommodationFee = result.data4[x].accommodationFee;
						let others = result.data4[x].others;

						transportationExpensesSum = addVAlidate(transportationExpensesSum,transportationExpenses);
						purchaseMoneySum = addVAlidate(purchaseMoneySum,purchaseMoney);
						expensesSum = addVAlidate(expensesSum, expenses);
						accommodationFeeSum = addVAlidate(accommodationFeeSum,accommodationFee);
						othersSum = addVAlidate(othersSum, others);

						advancePayment = result.data4[x].advancePayment;
						advancePaymentSum = addVAlidate(advancePaymentSum,advancePayment);
						otherDeduction = result.data4[x].otherDeduction;
						otherDeductionSum = addVAlidate(otherDeductionSum,otherDeduction);

						let workingHoursEnd = result.data4[x].workingHoursEnd;
						let workingHoursStart = result.data4[x].workingHoursStart;
						let scheduledActualWorkTime = result.data4[x].scheduledActualWorkTime;
						let caseName = result.data4[x].caseName;
						let implementDate = result.data4[x].implementDate;

						let checkedStatus = "";
						if (result.data4[x].salaryPaymentStatus) {
							checkedStatus = "checked";
						}

						let checkedStatusText = "";
						if (result.data1[0].salaryPaymentForm == 1) 
						  {
							checkedStatusText = '<td>'
									+ '<label class="container">'
									+ '<input type="hidden" id="assignmentId" name="assignmentId[]" value="'+result.data4[x].assignmentId+'"> '
									+ '<input type="checkbox" '+checkedStatus+'  id="salaryPaymentAssignmentId" name="salaryPaymentAssignmentId[]" value="'+result.data4[x].assignmentId+'">'
									+ '<span class="checkmark"></span>'
									+ '</label>' + '</td>';
						  }
						//wishwa555
						let newRow = '<tr style="text-align:right">' + '<td>'
								+ (x + 1) + '</td>' + '<td>' + implementDate
								+ '</td>' + '<td>' + caseName + '</td>'
								+ '<td>' + scheduledActualWorkTime + '</td>'
								+ '<td>' + workingHoursStart + '</td>' + '<td>'
								+ workingHoursEnd + '</td>' + '<td>'
								+ actualBreakTime + '</td>' + '<td>'
								+ midnightBreakTime + '</td>' + '<td>'
								+ actualWorkingHours + '</td>' + '<td>'
								+ overtimeHours + '</td>' + '<td>'
								+ midnightWorkingHours + '</td>' + '<td>'
								+ holidayWorkingHours + '</td>' + '<td>¥'
								+ dailyBasicSalary + '</td>' + '<td>¥'
								+ overtimeCosts + '</td>' + '<td>¥'
								+ midnightLaborCosts + '</td>' + '<td>¥'
								+ holidayLaborCosts + '</td>' + '<td>¥'
								+ totalAllowance + '</td>' + '<td>¥'
								+ transportationExpenses + '</td>' + '<td>¥'
								+ purchaseMoney + '</td>' + '<td>¥' + expenses
								+ '</td>' + '<td>¥' + accommodationFee
								+ '</td>' + '<td>¥' + others + '</td>'
								+ '<td>¥' + advancePayment + '</td>' + '<td>¥'
								+ otherDeduction + '</td>' + '<td>¥-</td>'
								+ '<td>¥' + paymentAmount + '</td>'
								+ checkedStatusText + '</tr>';

						$("#work_information_table tbody").append(newRow);
					}

					//	console.log(actualBreakTimeArr);
					let newRow = '<tr style="text-align:right">'
							+ '<td colspan="6"><span id="workTableSpansubTotal">subtotal:</span></td>'
							+ '<td>'
							+ addTimeList(actualBreakTimeArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(midnightBreakTimeArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(actualWorkingHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(overtimeHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(midnightWorkingHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(holidayWorkingHoursArr)
							+ '</td>'
							+ '<td>¥'
							+ dailyBasicSalarySum
							+ '</td>'
							+ '<td>¥'
							+ overtimeCostsSum
							+ '</td>'
							+ '<td>¥'
							+ midnightLaborCostsSum
							+ '</td>'
							+ '<td>¥'
							+ holidayLaborCostsSum
							+ '</td>'
							+ '<td>¥'
							+ totalAllowanceSum
							+ '</td>'
							+ '<td>¥'
							+ transportationExpensesSum
							+ '</td>'
							+ '<td>¥'
							+ purchaseMoneySum
							+ '</td>'
							+ '<td>¥'
							+ expensesSum
							+ '</td>'
							+ '<td>¥'
							+ accommodationFeeSum
							+ '</td>'
							+ '<td>¥'
							+ othersSum
							+ '</td>'
							+ '<td>¥'
							+ advancePaymentSum
							+ '</td>'
							+ '<td>¥'
							+ otherDeductionSum
							+ '</td>'
							+ '<td>¥-</td>'
							+ '<td>¥'
							+ paymentAmountSum
							+ '</td>' + checkedStatusSumText + '</tr>';

					$("#work_information_table tbody").append(newRow);
				}

				if (result.data6) {
					/* if()
					{
					  $("#monthly_salary_table tbody").append(newRow);	
					} */
					for (x = 0; x < result.data6.length; x++) {

						let newRow = '<tr style="text-align:right">' + '<td>'
								+ (x + 1) + '</td>' + '<td>'
								+ result.data6[x].implementPeriodStart
								+ '</td>' + '<td>' + result.data6[x].matter
								+ '</td>' + '<td>'
								+ result.data6[x].projectSalaryUnitPrice
								+ '</td>' + '<td>'
								+ result.data6[x].basicSalary + '</td>'
								+ '</tr>';

						$("#monthly_salary_table tbody").append(newRow);
					}
				}
			}
		}

		function viewPayrollInfoCanceledRecord(result) {
			//$('#buttonUpdatePaySlip').hide();
			//document.getElementById("approvalStatus").disabled = true; 
			//$('#mainDivCancelSalaryApproval').show();
			//document.getElementById("divCancelSalaryApproval").innerHTML = '<button class="btn DefaultButton btn-danger TopButtonMinWidth" onclick="cancelSalaryApproval('+result.data2.payrollId+')" id="buttonCancelSalaryApproval">Cancel Salary Approval</button>';
            console.log("viewPayrollInfoCanceledRecord");
			if (result.data1[0]) {
				let daysInMonth = new Date(targetYear, targetMonth, 0).getDate();
				document.getElementById("payslipSalaryPaymentForm").value = "daily";
				let checkedStatusSumText = '<td></td>';
				if (result.data1[0].salaryPaymentForm == 2) {
					document.getElementById("payslipSalaryPaymentForm").value = "monthly";
					checkedStatusSumText = ""
					$('#tableWorkInfoTHPaid').hide();
				} else {
					$('#divSalaryPaymentCheckBox').hide();
				}

				changeUIForSalaryOut();

				document.getElementById("payslipStaffCode").value = result.data1[0].staffCode;
				document.getElementById("payrollStaffName").value = result.data1[0].name;
				document.getElementById("payrollStaffMobile").value = result.data1[0].mobile;
				document.getElementById("payrollStaffNearestStation").value = result.data1[0].nearestStation;
				document.getElementById("salaryPaymentMethod").value = salaryPayementMethodArray[result.data1[0].salaryPaymentMethod];
				document.getElementById("salaryPaymentForm").value = salaryPayementFormArray[result.data1[0].salaryPaymentForm];
				document.getElementById("standardClosingDate").value = result.data1[0].closingDate; //need to create an array for this 
				document.getElementById("theTargetDate").value = targetYear+ "-" + targetMonth;

				document.getElementById("payslipTargetPeriod").value =   targetYear
																		+ "-"
																		+ targetMonth
																		+ "-1 ~ "
																		+ targetYear
																		+ "-"
																		+ targetMonth + "-" + daysInMonth;
				//document.getElementById("payrollSalaryAllowance").value = result.data2.supplySalaryAllowance //calSalaryAllowance(result.data[0].sumBasicSalary,result.data[0].sumOverTimeCost,result.data[0].sumOfTaxableAllowance);
				document.getElementById("payrollSalaryAllowance").value = calSalaryAllowance(result.data1[0].sumBasicSalary,result.data1[0].sumOverTimeCost,result.data1[0].sumOfTaxableAllowance);
				document.getElementById("otherPayment").value = result.data2.supplyOtherPayment;
				let sumAdvancePayment = result.data1[0].sumAdvancePayment;
				document.getElementById("advancePayment").value = sumAdvancePayment;
				//let sumBasicSalary = result.data[0].sumBasicSalary;
				let sumOfTaxableAllowance    = result.data1[0].sumOfTaxableAllowance;
				let sumOfNonTaxableAllowance = result.data1[0].sumOfNonTaxableAllowance;
				document.getElementById("taxExemptionAllowance").value = sumOfNonTaxableAllowance;
				document.getElementById("paidDays").value = result.data2.supplyPaidDays;
				document.getElementById("paidAmount").value = result.data2.supplyPaidAmount;
				let otherPayment = document.getElementById("otherPayment").value;
				let salaryAllowance = document.getElementById("payrollSalaryAllowance").value;
				let advancePayment = document.getElementById("advancePayment").value;
				let taxExemptionAllowance = document.getElementById("taxExemptionAllowance").value;
				let paidAmount = document.getElementById("paidAmount").value;
				document.getElementById("subtotal").value = calSubtotal(salaryAllowance, otherPayment, advancePayment,taxExemptionAllowance, paidAmount); //result.data2.supplySubtotal; //
				document.getElementById("taxable").value = calTaxable(salaryAllowance, otherPayment, paidAmount); //result.data2.supplyTaxable;  //
				
				//let sumPrepaidAmountDiduction = result.data3.salaryDeductionPrepaidAmount;
				let sumPrepaidAmountDiduction = result.data1[0].sumPrepaidAmount;
				document.getElementById("payrollPrepaidAmount").value = sumPrepaidAmountDiduction;
				let otherDeductions = result.data1[0].sumDeduction;
				document.getElementById("otherDeductions").value = otherDeductions;
				
				/* let employmentInsuranceA = result.data3.salaryEmploymentInsurancePremiums;
				let incomeTaxA = result.data3.salaryIncomeTax; */
				let healthInsurancePremium = result.data3.salaryHealthInsurancePremium;
				document.getElementById("healthInsurancePremium").value = healthInsurancePremium;
				let welfarePensionPremium = result.data3.salaryWelfarePensionPremium;
				document.getElementById("welfarePensionPremium").value = welfarePensionPremium;
				let longTermCareInsurancePremium = result.data3.salaryLongTermCareInsurancePremium;
				document.getElementById("longTermCareInsurance").value = longTermCareInsurancePremium;
				let employmentInsuranceA = result.data3.salaryEmploymentInsurancePremiums;
				document.getElementById("employmentInsurance").value = employmentInsuranceA;
				let incomeTaxA  = result.data3.salaryIncomeTax;
				document.getElementById("incomeTax").value = incomeTaxA;
				let salaryResidentTax = result.data3.salaryResidentTax;
				document.getElementById("residentTax").value = salaryResidentTax;
				//wishwa33
				let absenceDeductionAmount = result.data3.salaryAbsenceDeductionAmount;
				document.getElementById("absenceDeductionAmount").value = absenceDeductionAmount;
				document.getElementById("absenceDays").value = result.data3.salaryNumberOfAbsenteeDays;
				let earlyDepartureDeductionAmount = result.data3.salaryEarlyDepartureDeductionAmount;
				document.getElementById("earlyDepartureDeductionAmount").value = earlyDepartureDeductionAmount;
				document.getElementById("numberDaysLeaveEarly").value = result.data3.salaryNumberOfDaysToLeave;
				
				document.getElementById("subtotalDeduction").value = calSubtotalSecond(sumPrepaidAmountDiduction, otherDeductions,absenceDeductionAmount, earlyDepartureDeductionAmount,employmentInsuranceA, incomeTaxA);
				document.getElementById("inputTotalPayment").value = subtractionValidate(document.getElementById("subtotal").value, document.getElementById("subtotalDeduction").value);
				/* document.getElementById("subtotalDeduction").value = calSubtotalSecond(sumPrepaidAmountDiduction, otherDeductions,absenceDeductionAmount, earlyDepartureDeductionAmount,employmentInsuranceA, incomeTaxA);
				document.getElementById("inputTotalPayment").value = subtractionValidate(document.getElementById("subtotal").value, document.getElementById("subtotalDeduction").value);
 */
				document.getElementById("approvalDateAndTime").value = result.data5.approvalDateAndTime;
				document.getElementById("authorizer").value = result.data5.authorizer;
				document.getElementById("approvalStatus").value = result.data5.approvalStatus;
				$('#PaidCheckBox').prop('checked', result.data5.salaryPayment);
				if (result.data4) {
					let actualBreakTimeSum = 0;
					let actualBreakTimeArr = []
					let midnightBreakTimeSum = 0;
					let midnightBreakTimeArr = []
					let actualWorkingHoursSum = 0;
					let actualWorkingHoursArr = []
					let overtimeHoursSum = 0;
					let overtimeHoursArr = [];
					let midnightWorkingHoursSum = 0;
					let midnightWorkingHoursArr = []
					let holidayWorkingHoursSum = 0;
					let holidayWorkingHoursArr = []
					let dailyBasicSalarySum = 0;
					let overtimeCostsSum = 0;
					let midnightLaborCostsSum = 0;
					let holidayLaborCostsSum = 0;
					let totalAllowanceSum = 0;
					let paymentAmountSum = 0;

					let transportationExpensesSum = 0;
					let purchaseMoneySum = 0;
					let expensesSum = 0;
					let accommodationFeeSum = 0;
					let othersSum = 0;

					let advancePaymentSum = 0;
					let otherDeductionSum = 0;

					for (x = 0; x < result.data4.length; x++) {
						let paymentAmount = result.data4[x].paymentAmount;
						paymentAmountSum = addVAlidate(paymentAmountSum,
								paymentAmount);

						let totalAllowance = result.data4[x].totalAllowance;
						totalAllowanceSum = addVAlidate(totalAllowanceSum,
								totalAllowance);

						let holidayLaborCosts = result.data4[x].holidayLaborCosts;
						holidayLaborCostsSum = addVAlidate(
								holidayLaborCostsSum, holidayLaborCosts);

						let midnightLaborCosts = result.data4[x].midnightLaborCosts;
						midnightLaborCostsSum = addVAlidate(
								midnightLaborCostsSum, midnightLaborCosts);

						let overtimeCosts = result.data4[x].overtimeCosts;
						overtimeCostsSum = addVAlidate(overtimeCostsSum,
								overtimeCosts);

						let dailyBasicSalary = result.data4[x].dailyBasicSalary;
						dailyBasicSalarySum = addVAlidate(dailyBasicSalarySum,
								dailyBasicSalary);

						let holidayWorkingHours = result.data4[x].holidayWorkingHours;
						holidayWorkingHoursSum = addVAlidate(
								holidayWorkingHoursSum, holidayWorkingHours);
						holidayWorkingHoursArr.push(holidayWorkingHours);

						let midnightWorkingHours = result.data4[x].midnightWorkingHours;
						midnightWorkingHoursSum = addVAlidate(
								midnightWorkingHoursSum, midnightWorkingHours);
						midnightWorkingHoursArr.push(midnightWorkingHours);

						let overtimeHours = result.data4[x].overtimeHours;
						overtimeHoursSum = addVAlidate(overtimeHoursSum,
								overtimeHours);
						overtimeHoursArr.push(overtimeHours);

						let actualWorkingHours = result.data4[x].actualWorkingHours;
						actualWorkingHoursSum = addVAlidate(
								actualWorkingHoursSum, actualWorkingHours);
						actualWorkingHoursArr.push(actualWorkingHours);

						let midnightBreakTime = result.data4[x].midnightBreakTime;
						midnightBreakTimeSum = addVAlidate(
								midnightBreakTimeSum, midnightBreakTime);
						midnightBreakTimeArr.push(midnightBreakTime);

						let actualBreakTime = result.data4[x].actualBreakTime;
						actualBreakTimeSum = addVAlidate(actualBreakTimeSum,
								actualBreakTime);
						actualBreakTimeArr.push(actualBreakTime);

						let transportationExpenses = result.data4[x].transportationExpenses;
						let purchaseMoney = result.data4[x].purchaseMoney;
						let expenses = result.data4[x].expenses;
						let accommodationFee = result.data4[x].accommodationFee;
						let others = result.data4[x].others;

						transportationExpensesSum = addVAlidate(
								transportationExpensesSum,
								transportationExpenses);
						purchaseMoneySum = addVAlidate(purchaseMoneySum,
								purchaseMoney);
						expensesSum = addVAlidate(expensesSum, expenses);
						accommodationFeeSum = addVAlidate(accommodationFeeSum,
								accommodationFee);
						othersSum = addVAlidate(othersSum, others);

						advancePayment = result.data4[x].advancePayment;
						advancePaymentSum = addVAlidate(advancePaymentSum,
								advancePayment);
						otherDeduction = result.data4[x].otherDeduction;
						otherDeductionSum = addVAlidate(otherDeductionSum,
								otherDeduction);

						let workingHoursEnd = result.data4[x].workingHoursEnd;
						let workingHoursStart = result.data4[x].workingHoursStart;
						let scheduledActualWorkTime = result.data4[x].scheduledActualWorkTime;
						let caseName = result.data4[x].caseName;
						let implementDate = result.data4[x].implementDate;

						let checkedStatus = "";
						if (result.data4[x].salaryPaymentStatus) {
							checkedStatus = "checked";
						}

						let checkedStatusText = "";

						if (result.data1[0].salaryPaymentForm == 1) {
							checkedStatusText = '<td>'
									+ '<label class="container">'
									+ '<input type="hidden" id="assignmentId" name="assignmentId[]" value="'+result.data4[x].assignmentId+'"> '
									+ '<input type="checkbox" '+checkedStatus+'  id="salaryPaymentAssignmentId" name="salaryPaymentAssignmentId[]" value="'+result.data4[x].assignmentId+'">'
									+ '<span class="checkmark"></span>'
									+ '</label>' + '</td>';

						}

						let newRow = '<tr style="text-align:right">' + '<td>'
								+ (x + 1) + '</td>' + '<td>' + implementDate
								+ '</td>' + '<td>' + caseName + '</td>'
								+ '<td>' + scheduledActualWorkTime + '</td>'
								+ '<td>' + workingHoursStart + '</td>' + '<td>'
								+ workingHoursEnd + '</td>' + '<td>'
								+ actualBreakTime + '</td>' + '<td>'
								+ midnightBreakTime + '</td>' + '<td>'
								+ actualWorkingHours + '</td>' + '<td>'
								+ overtimeHours + '</td>' + '<td>'
								+ midnightWorkingHours + '</td>' + '<td>'
								+ holidayWorkingHours + '</td>' + '<td>¥'
								+ dailyBasicSalary + '</td>' + '<td>¥'
								+ overtimeCosts + '</td>' + '<td>¥'
								+ midnightLaborCosts + '</td>' + '<td>¥'
								+ holidayLaborCosts + '</td>' + '<td>¥'
								+ totalAllowance + '</td>' + '<td>¥'
								+ transportationExpenses + '</td>' + '<td>¥'
								+ purchaseMoney + '</td>' + '<td>¥' + expenses
								+ '</td>' + '<td>¥' + accommodationFee
								+ '</td>' + '<td>¥' + others + '</td>'
								+ '<td>¥' + advancePayment + '</td>' + '<td>¥'
								+ otherDeduction + '</td>' + '<td>¥-</td>'
								+ '<td>¥' + paymentAmount + '</td>'
								+ checkedStatusText + '</tr>';

						$("#work_information_table tbody").append(newRow);
					}

					console.log(actualBreakTimeArr);
					let newRow = '<tr style="text-align:right">'
							+ '<td colspan="6"><span id="workTableSpansubTotal">subtotal:</span></td>'
							+ '<td>'
							+ addTimeList(actualBreakTimeArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(midnightBreakTimeArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(actualWorkingHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(overtimeHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(midnightWorkingHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(holidayWorkingHoursArr)
							+ '</td>'
							+ '<td>¥'
							+ dailyBasicSalarySum
							+ '</td>'
							+ '<td>¥'
							+ overtimeCostsSum
							+ '</td>'
							+ '<td>¥'
							+ midnightLaborCostsSum
							+ '</td>'
							+ '<td>¥'
							+ holidayLaborCostsSum
							+ '</td>'
							+ '<td>¥'
							+ totalAllowanceSum
							+ '</td>'
							+ '<td>¥'
							+ transportationExpensesSum
							+ '</td>'
							+ '<td>¥'
							+ purchaseMoneySum
							+ '</td>'
							+ '<td>¥'
							+ expensesSum
							+ '</td>'
							+ '<td>¥'
							+ accommodationFeeSum
							+ '</td>'
							+ '<td>¥'
							+ othersSum
							+ '</td>'
							+ '<td>¥'
							+ advancePaymentSum
							+ '</td>'
							+ '<td>¥'
							+ otherDeductionSum
							+ '</td>'
							+ '<td>¥-</td>'
							+ '<td>¥'
							+ paymentAmountSum
							+ '</td>' + checkedStatusSumText + '</tr>';

					$("#work_information_table tbody").append(newRow);
				}

				if (result.data6) {
					/* if()
					{
					  $("#monthly_salary_table tbody").append(newRow);	
					} */
					for (x = 0; x < result.data6.length; x++) {

						let newRow = '<tr style="text-align:right">' + '<td>'
								+ (x + 1) + '</td>' + '<td>'
								+ result.data6[x].implementPeriodStart
								+ '</td>' + '<td>' + result.data6[x].matter
								+ '</td>' + '<td>'
								+ result.data6[x].projectSalaryUnitPrice
								+ '</td>' + '<td>'
								+ result.data6[x].basicSalary + '</td>'
								+ '</tr>';

						$("#monthly_salary_table tbody").append(newRow);
					}
				}
			}
		}

		function cancelSalaryApproval(payrollId) {
			let dataNode = {};
			dataNode["payrollId"] = payrollId;
			dataNode["uuid"] = uuid;
			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Payroll/CancelApprovalStatus',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) {
								showMessage('success', "N1266");
								setTimeout(
										function() {
											let url = "payroll-payslip.jsp";
											let form = $('<form action="' + url + '" method="post">'
													+ '<input type="hidden" name="staffId" value="'+staffID+'" />'
													+ '<input type="hidden" name="targetYear" value="'+targetYear+'" />'
													+ '<input type="hidden" name="targetMonth" value="'+targetMonth+'" />'
													+ '<input type="hidden" name="payrollId" value="'+payrollId+'" />'
													+ '</form>');
											$('body').append(form);
											form.submit();
										}, 3600);
							} else {
								showMessage('error', "N1265");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});
		}

		function viewPayroll(result) {
			console.log("viewPayroll()");
			if (result.data[0]) {
				let daysInMonth = new Date(targetYear, targetMonth, 0).getDate();
				document.getElementById("payslipSalaryPaymentForm").value = "daily";
				let checkedStatusSumText = '<td></td>';
				if (result.data[0].salaryPaymentForm == 2)
				{
					document.getElementById("payslipSalaryPaymentForm").value = "monthly";
					checkedStatusSumText = ""
					$('#tableWorkInfoTHPaid').hide();
				} else 
				{
					$('#divSalaryPaymentCheckBox').hide();
				}

				changeUIForSalaryOut();
				//document.getElementById("payslipTargetPeriod").value = result.data[0].salaryPaymentForm	

				document.getElementById("payslipStaffCode").value = result.data[0].staffCode;
				document.getElementById("payrollStaffName").value = result.data[0].name;
				document.getElementById("payrollStaffMobile").value = result.data[0].mobile;
				document.getElementById("payrollStaffNearestStation").value = result.data[0].nearestStation;
				document.getElementById("salaryPaymentMethod").value = salaryPayementMethodArray[result.data[0].salaryPaymentMethod];
				document.getElementById("salaryPaymentForm").value = salaryPayementFormArray[result.data[0].salaryPaymentForm];
				document.getElementById("standardClosingDate").value = result.data[0].closingDate; //need to create an array for this 
				document.getElementById("theTargetDate").value = targetYear+ "-" + targetMonth;
				//document.getElementById("numberOfSalaries").value = result.data[0].salaryPaymentForm;

				document.getElementById("payslipTargetPeriod").value = targetYear
						+ "-"
						+ targetMonth
						+ "-01 ~ "
						+ targetYear
						+ "-"
						+ targetMonth + "-" + daysInMonth;
				
				let sumBasicSalary = result.data[0].sumBasicSalary;
				document.getElementById("payrollSalaryAllowance").value = calSalaryAllowance(result.data[0].sumBasicSalary,result.data[0].sumOverTimeCost,result.data[0].sumOfTaxableAllowance);
				let sumAdvancePayment = result.data[0].sumAdvancePayment;
				document.getElementById("advancePayment").value = sumAdvancePayment;
				let sumOfTaxableAllowance = result.data[0].sumOfTaxableAllowance;
				document.getElementById("taxExemptionAllowance").value = result.data[0].sumOfNonTaxableAllowance;
				let sumOverTimeCost = result.data[0].sumOverTimeCost;
                //wishwa33
				let otherPayment = document.getElementById("otherPayment").value;
				let salaryAllowance = document.getElementById("payrollSalaryAllowance").value;
				let advancePayment = document.getElementById("advancePayment").value;
				let taxExemptionAllowance = document.getElementById("taxExemptionAllowance").value;
				let paidAmount = document.getElementById("paidAmount").value;
				document.getElementById("subtotal").value = calSubtotal(salaryAllowance, otherPayment, advancePayment,taxExemptionAllowance, paidAmount);
				document.getElementById("taxable").value = calTaxable(salaryAllowance, otherPayment, paidAmount);
				
				let sumPrepaidAmount = result.data[0].sumPrepaidAmount;
				document.getElementById("payrollPrepaidAmount").value = sumPrepaidAmount;
				let sumDeduction = result.data[0].sumDeduction;
				document.getElementById("otherDeductions").value = sumDeduction;
				let employmentInsuranceA = document.getElementById("employmentInsurance").value;
				let incomeTaxA = document.getElementById("incomeTax").value;
				
				document.getElementById("subtotalDeduction").value = calSubtotal(sumPrepaidAmount, sumDeduction, employmentInsuranceA,incomeTaxA, 0);
				document.getElementById("inputTotalPayment").value = subtractionValidate(document.getElementById("subtotal").value, document.getElementById("subtotalDeduction").value);

				if (result.data[0].workInformationDtoList) {
					let actualBreakTimeSum = 0;
					actualBreakTimeArr = []
					let midnightBreakTimeSum = 0;
					midnightBreakTimeArr = []
					let actualWorkingHoursSum = 0;
					actualWorkingHoursArr = []
					let overtimeHoursSum = 0;
					overtimeHoursArr = [];
					let midnightWorkingHoursSum = 0;
					midnightWorkingHoursArr = []
					let holidayWorkingHoursSum = 0;
					holidayWorkingHoursArr = []
					dailyBasicSalarySum = 0;
					overtimeCostsSum = 0;
					midnightLaborCostsSum = 0;
					holidayLaborCostsSum = 0;
					totalAllowanceSum = 0;
					paymentAmountSum = 0;

					advancePaymentSum = 0;
					otherDeductionSum = 0;

					transportationExpensesSum = 0;
					purchaseMoneySum = 0;
					expensesSum = 0;
					accommodationFeeSum = 0;
					othersSum = 0;

					for (x = 0; x < result.data[0].workInformationDtoList.length; x++) {
						let paymentAmount = result.data[0].workInformationDtoList[x].paymentAmount;
						paymentAmountSum = addVAlidate(paymentAmountSum,
								paymentAmount);

						let totalAllowance = result.data[0].workInformationDtoList[x].totalAllowance;
						totalAllowanceSum = addVAlidate(totalAllowanceSum,
								totalAllowance);

						let holidayLaborCosts = result.data[0].workInformationDtoList[x].holidayLaborCosts;
						holidayLaborCostsSum = addVAlidate(
								holidayLaborCostsSum, holidayLaborCosts);

						let midnightLaborCosts = result.data[0].workInformationDtoList[x].midnightLaborCosts;
						midnightLaborCostsSum = addVAlidate(
								midnightLaborCostsSum, midnightLaborCosts);

						let overtimeCosts = result.data[0].workInformationDtoList[x].overtimeCosts;
						overtimeCostsSum = addVAlidate(overtimeCostsSum,
								overtimeCosts);

						let dailyBasicSalary = result.data[0].workInformationDtoList[x].dailyBasicSalary;
						dailyBasicSalarySum = addVAlidate(dailyBasicSalarySum,
								dailyBasicSalary);

						let holidayWorkingHours = result.data[0].workInformationDtoList[x].holidayWorkingHours;
						holidayWorkingHoursSum = addVAlidate(
								holidayWorkingHoursSum, holidayWorkingHours);
						holidayWorkingHoursArr.push(holidayWorkingHours);

						let midnightWorkingHours = result.data[0].workInformationDtoList[x].midnightWorkingHours;
						midnightWorkingHoursSum = addVAlidate(
								midnightWorkingHoursSum, midnightWorkingHours);
						midnightWorkingHoursArr.push(midnightWorkingHours);

						let overtimeHours = result.data[0].workInformationDtoList[x].overtimeHours;
						overtimeHoursSum = addVAlidate(overtimeHoursSum,
								overtimeHours);
						overtimeHoursArr.push(overtimeHours);

						let actualWorkingHours = result.data[0].workInformationDtoList[x].actualWorkingHours;
						actualWorkingHoursSum = addVAlidate(
								actualWorkingHoursSum, actualWorkingHours);
						actualWorkingHoursArr.push(actualWorkingHours);

						let midnightBreakTime = result.data[0].workInformationDtoList[x].midnightBreakTime;
						midnightBreakTimeSum = addVAlidate(
								midnightBreakTimeSum, midnightBreakTime);
						midnightBreakTimeArr.push(midnightBreakTime);

						let actualBreakTime = result.data[0].workInformationDtoList[x].actualBreakTime;
						actualBreakTimeSum = addVAlidate(actualBreakTimeSum,
								actualBreakTime);
						actualBreakTimeArr.push(actualBreakTime);

						let transportationExpenses = result.data[0].workInformationDtoList[x].transportationExpenses;
						let purchaseMoney = result.data[0].workInformationDtoList[x].purchaseMoney;
						let expenses = result.data[0].workInformationDtoList[x].expenses;
						let accommodationFee = result.data[0].workInformationDtoList[x].accommodationFee;
						let others = result.data[0].workInformationDtoList[x].others;

						transportationExpensesSum = addVAlidate(
								transportationExpensesSum,
								transportationExpenses);
						purchaseMoneySum = addVAlidate(purchaseMoneySum,
								purchaseMoney);
						expensesSum = addVAlidate(expensesSum, expenses);
						accommodationFeeSum = addVAlidate(accommodationFeeSum,
								accommodationFee);
						othersSum = addVAlidate(othersSum, others);

						advancePayment = result.data[0].workInformationDtoList[x].advancePayment;
						advancePaymentSum = addVAlidate(advancePaymentSum,
								advancePayment);
						otherDeduction = result.data[0].workInformationDtoList[x].otherDeduction;
						otherDeductionSum = addVAlidate(otherDeductionSum,
								otherDeduction);

						let workingHoursEnd = result.data[0].workInformationDtoList[x].workingHoursEnd;
						let workingHoursStart = result.data[0].workInformationDtoList[x].workingHoursStart;
						let scheduledActualWorkTime = result.data[0].workInformationDtoList[x].scheduledActualWorkTime;
						let caseName = result.data[0].workInformationDtoList[x].caseName;
						let implementDate = result.data[0].workInformationDtoList[x].implementDate;
                        let assignmentId = result.data[0].workInformationDtoList[x].assignmentId
						let checkedStatus = "";
						if (result.data[0].workInformationDtoList[x].salaryPaymentStatus) {
							checkedStatus = "checked";
						}

						let checkedStatusText = "";
						if (result.data[0].salaryPaymentForm == 1) {
							checkedStatusText = '<td>'
									+ '<label class="container">'
									+ '<input type="hidden" id="assignmentId" name="assignmentId[]" value="'+assignmentId+'"> '
									+ '<input type="checkbox" '+checkedStatus+'  id="salaryPaymentAssignmentId" name="salaryPaymentAssignmentId[]" value="'+assignmentId+'">'
									+ '<span class="checkmark"></span>'
									+ '</label>' + '</td>';
						}

						let newRow = '<tr style="text-align:right">' + '<td>'
								+ (x + 1) + '</td>' + '<td>' + implementDate
								+ '</td>' + '<td>' + caseName + '</td>'
								+ '<td>' + scheduledActualWorkTime + '</td>'
								+ '<td>' + workingHoursStart + '</td>' + '<td>'
								+ workingHoursEnd + '</td>' + '<td>'
								+ actualBreakTime + '</td>' + '<td>'
								+ midnightBreakTime + '</td>' + '<td>'
								+ actualWorkingHours + '</td>' + '<td>'
								+ overtimeHours + '</td>' + '<td>'
								+ midnightWorkingHours + '</td>' + '<td>'
								+ holidayWorkingHours + '</td>' + '<td>¥'
								+ dailyBasicSalary + '</td>' + '<td>¥'
								+ overtimeCosts + '</td>' + '<td>¥'
								+ midnightLaborCosts + '</td>' + '<td>¥'
								+ holidayLaborCosts + '</td>' + '<td>¥'
								+ totalAllowance + '</td>' + '<td>¥'
								+ transportationExpenses + '</td>' + '<td>¥'
								+ purchaseMoney + '</td>' + '<td>¥' + expenses
								+ '</td>' + '<td>¥' + accommodationFee
								+ '</td>' + '<td>¥' + others + '</td>'
								+ '<td>¥' + advancePayment + '</td>' + '<td>¥'
								+ otherDeduction + '</td>' + '<td>¥-</td>'
								+ '<td>¥' + paymentAmount + '</td>'
								+ checkedStatusText + '</tr>';

						$("#work_information_table tbody").append(newRow);
					}

					console.log(actualBreakTimeArr);
					let newRow = '<tr style="text-align:right">'
							+ '<td colspan="6"><span id="workTableSpansubTotal">subtotal:</span></td>'
							+ '<td>'
							+ addTimeList(actualBreakTimeArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(midnightBreakTimeArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(actualWorkingHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(overtimeHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(midnightWorkingHoursArr)
							+ '</td>'
							+ '<td>'
							+ addTimeList(holidayWorkingHoursArr)
							+ '</td>'
							+ '<td>¥'
							+ dailyBasicSalarySum
							+ '</td>'
							+ '<td>¥'
							+ overtimeCostsSum
							+ '</td>'
							+ '<td>¥'
							+ midnightLaborCostsSum
							+ '</td>'
							+ '<td>¥'
							+ holidayLaborCostsSum
							+ '</td>'
							+ '<td>¥'
							+ totalAllowanceSum
							+ '</td>'
							+ '<td>¥'
							+ transportationExpensesSum
							+ '</td>'
							+ '<td>¥'
							+ purchaseMoneySum
							+ '</td>'
							+ '<td>¥'
							+ expensesSum
							+ '</td>'
							+ '<td>¥'
							+ accommodationFeeSum
							+ '</td>'
							+ '<td>¥'
							+ othersSum
							+ '</td>'
							+ '<td>¥'
							+ advancePaymentSum
							+ '</td>'
							+ '<td>¥'
							+ otherDeductionSum
							+ '</td>'
							+ '<td>¥-</td>'
							+ '<td>¥'
							+ paymentAmountSum
							+ '</td>' + checkedStatusSumText + '</tr>';

					$("#work_information_table tbody").append(newRow);
				}

				if (result.data.monthlySalaryList) {
					/* if()
					{
					  $("#monthly_salary_table tbody").append(newRow);	
					} */
					for (x = 0; x < result.data.monthlySalaryList.length; x++) {

						let newRow = '<tr style="text-align:right">'
								+ '<td>'
								+ (x + 1)
								+ '</td>'
								+ '<td>'
								+ result.data.monthlySalaryList[x].implementPeriodStart
								+ '</td>'
								+ '<td>'
								+ result.data.monthlySalaryList[x].matter
								+ '</td>'
								+ '<td>'
								+ result.data.monthlySalaryList[x].projectSalaryUnitPrice
								+ '</td>' + '<td>'
								+ result.data.monthlySalaryList[x].basicSalary
								+ '</td>' + '</tr>';

						$("#monthly_salary_table tbody").append(newRow);
					}
				}
			}
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

		function addSkillSheetRow() {
			var $tr = $("#SkillSheetTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdSkillSheet").append($clone);
		}

		function removeSkillSheetRow(element) {
			if ($('#skill_sheet_information_table tr').length > 2) {
				$(element).closest('tr').remove();
			} else {
				showMessage('info', "Sorry can not remove this row!");
			}
		}

		function clearRow(element) {
			var $tr = $(element).closest('tr');
			$tr.find('input').val('');
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
			loadSelectedLanguage(selectedLanguage, "payroll");
			setLanguage(selectedLanguage);
		}

		function addEducationalRow() {
			var $tr = $("#educationalTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#educationalTbodyId").append($clone);
		}

		function addWorkRow() {
			var $tr = $("#workTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#workTbodyId").append($clone);
		}

		function addLicenseRow() {
			var $tr = $("#licenceTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#licenceTbodyId").append($clone);
		}

		function addDependentRow() {
			var $tr = $("#dependentTrId").first('tr');
			var $clone = $tr.clone();
			$clone.find('input').val('');
			$("#tbodyIdDependent").append($clone);
		}

		function copyDependentRow(element) {

			var $tr = $(element).closest('tr');
			var $clone = $tr.clone();
			// $clone.find('select:value');
			$tr.after($clone);
		}

		function loadAssignmentClassification(value) {

			if (value == 1) {
				$('#assignmentClassificationPeriodLoader').hide();
				$('#assignmentClassificationDateLoader').show();
			} else {
				$('#assignmentClassificationDateLoader').hide();
				$('#assignmentClassificationPeriodLoader').show();

			}
		}

		function enableAssignmentButton(i) {
			if (i == 5) {
				document.getElementById("buttonAssignmentManagementbutton").disabled = false;
			} else {
				document.getElementById("buttonAssignmentManagementbutton").disabled = true;
			}
		}

		function redirectAssignmentManagement() {

			sessionStorage.getItem("assignmentClassification");
			sessionStorage.getItem("implementationPeriodStart");
			sessionStorage.getItem("implementationPeriodEnd");

			window.location.href = "assignment-management.jsp";
		}

		function savePayrollInfo() {
			var dataNode = {};

			var targetDate = document.getElementById("theTargetDate").value;
			var targetPeriod = document.getElementById("payslipTargetPeriod").value;
			var supplySalaryAllowance = document
					.getElementById("payrollSalaryAllowance").value;
			var supplyOtherPayment = document.getElementById("otherPayment").value;
			var supplyAdvancePayment = document
					.getElementById("advancePayment").value;
			var supplyTaxExemptionAllowance = document
					.getElementById("taxExemptionAllowance").value;
			var supplyPaidDays = document.getElementById("paidDays").value;
			var supplyPaidAmount = document.getElementById("paidAmount").value;
			var supplySubtotal = document.getElementById("subtotal").value;
			var supplyTaxable = document.getElementById("taxable").value;
			var salaryDeductionPrepaidAmount = document
					.getElementById("payrollPrepaidAmount").value;
			var salaryDeductionOtherDeductions = document
					.getElementById("otherDeductions").value;
			var salaryHealthInsurancePremium = document
					.getElementById("healthInsurancePremium").value;
			var salaryWelfarePensionPremium = document
					.getElementById("welfarePensionPremium").value;
			var salaryLongTermCareInsurancePremium = document
					.getElementById("longTermCareInsurance").value;
			var salaryEmploymentInsurancePremiums = document
					.getElementById("employmentInsurance").value;
			var salaryIncomeTax = document.getElementById("incomeTax").value;
			var salaryResidentTax = document.getElementById("residentTax").value;
			var salaryNumberOfAbsenteeDays = document
					.getElementById("absenceDays").value;
			var salaryAbsenceDeductionAmount = document
					.getElementById("absenceDeductionAmount").value;
			var salaryNumberOfDaysToLeave = document
					.getElementById("numberDaysLeaveEarly").value;
			var salaryEarlyDepartureDeductionAmount = document
					.getElementById("earlyDepartureDeductionAmount").value;
			var totalDeductionPayment = document
					.getElementById("subtotalDeduction").value;

			var sendPaySlipStatus = 1;
			var caseOpen = document.getElementById("CaseOpenCheck");

			if (caseOpen.checked == true) {
				sendPaySlipStatus = caseOpen.value;
			}

			var PaidCheckBoxStatus = 0;
			var PaidCheckBoxNode = document.getElementById("PaidCheckBox");

			if (PaidCheckBoxNode.checked == true) {
				PaidCheckBoxStatus = PaidCheckBoxNode.value;
			}

			var approvalStatus = document.getElementById("approvalStatus").value;
			var remark = document.getElementById("payrollRemarks").value;

			var list = [];
			var assignmentIDArray = document
					.getElementsByName('assignmentId[]');
			var paymentStatusArray = document
					.getElementsByName('salaryPaymentAssignmentId[]');

			for (var i = 0; i < assignmentIDArray.length; i++) {
				var assignmentId = assignmentIDArray[i].value != "" ? assignmentIDArray[i].value
						: null;
				var paymentStatus = null;
				if (paymentStatusArray[i].checked == true) {
					paymentStatus = paymentStatusArray[i].value;
				}

				var tempList = {
					"assignmentId" : assignmentId,
					"salaryPaymentStatus" : paymentStatus
				};

				list.push(tempList);
			}

			dataNode['payrollId'] = payrollId;
			dataNode['staffId'] = staffID;
			dataNode['uuid'] = uuid;
			dataNode['targetDate'] = targetDate;
			dataNode['targetPeriod'] = targetPeriod;
			dataNode['totalDeductionPayment'] = totalDeductionPayment;
			dataNode['sendPaySlipStatus'] = sendPaySlipStatus;
			dataNode['salaryPayment'] = PaidCheckBoxStatus;
			//dataNode['salaryPayment'] = salaryPayment;
			dataNode['approvalStatus'] = approvalStatus;
			dataNode['remark'] = remark;
			dataNode['salaryDeductionPrepaidAmount'] = salaryDeductionPrepaidAmount;
			dataNode['salaryDeductionOtherDeductions'] = salaryDeductionOtherDeductions;
			dataNode['salaryHealthInsurancePremium'] = salaryHealthInsurancePremium;
			dataNode['salaryWelfarePensionPremium'] = salaryWelfarePensionPremium;
			dataNode['salaryLongTermCareInsurancePremium'] = salaryLongTermCareInsurancePremium;
			dataNode['salaryEmploymentInsurancePremiums'] = salaryEmploymentInsurancePremiums;
			dataNode['salaryIncomeTax'] = salaryIncomeTax;
			dataNode['salaryResidentTax'] = salaryResidentTax;
			dataNode['salaryNumberOfAbsenteeDays'] = salaryNumberOfAbsenteeDays;
			dataNode['salaryAbsenceDeductionAmount'] = salaryAbsenceDeductionAmount;
			dataNode['salaryNumberOfDaysToLeave'] = salaryNumberOfDaysToLeave;
			dataNode['salaryEarlyDepartureDeductionAmount'] = salaryEarlyDepartureDeductionAmount;
			//dataNode['subtotalSalaryDeduction'] = subtotalSalaryDeduction;
			dataNode['supplySalaryAllowance'] = supplySalaryAllowance;
			dataNode['supplyOtherPayment'] = supplyOtherPayment;
			dataNode['supplyAdvancePayment'] = supplyAdvancePayment;
			dataNode['supplyTaxExemptionAllowance'] = supplyTaxExemptionAllowance;
			dataNode['supplyPaidDays'] = supplyPaidDays;
			dataNode['supplyPaidAmount'] = supplyPaidAmount;
			dataNode['supplySubtotal'] = supplySubtotal;
			dataNode['supplyTaxable'] = supplyTaxable;
			dataNode['list'] = list;

			$
					.ajax({
						beforeSend : function(request) {
							document.getElementById("loaderNotify").style.display = "";
							request.setRequestHeader("GUID", GUID);
						},
						url : serverHTTP + 'Payroll/SavePayroll',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(dataNode),
						dataType : 'json',
						success : function(result, status, request) {
							if (result.status == 202) { // wishwa
								showMessage('success', "N1266");
								setTimeout(function() {
									let url = "payroll-payslip.jsp";
									let form = $('<form action="' + url + '" method="post">'
											+ '<input type="hidden" name="staffId" value="'+staffID+'" />'
											+ '<input type="hidden" name="targetYear" value="'+targetYear+'" />'
											+ '<input type="hidden" name="targetMonth" value="'+targetMonth+'" />'
											+ '<input type="hidden" name="payrollId" value="'+payrollId+'" />'
											+ '</form>');
									$('body').append(form);
									form.submit();
								});
							} else {
								showMessage('error', "N1265");
								// showMessage("Sorry Data Loding Error");
							}
						},
						complete : function(data) {
							document.getElementById("loaderNotify").style.display = "none";
						},
						error : function(error) {
							console.log(JSON.stringify(error));
						}
					});

		}

		$("#buttonDownloadPayslips")
				.click(
						function(event) {

							var dataNode = {};

							dataNode['payrollId'] = payrollId;
							passData = JSON.stringify(dataNode);

							$.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Payroll/PayrollCSVOutput',
										method : 'POST',
										contentType : 'application/json',
										data : passData,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												window.location = result.data.filePath;
											} else {
												//showMessage('error',"E1024");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});
						});
	</script>
</body>

</html>