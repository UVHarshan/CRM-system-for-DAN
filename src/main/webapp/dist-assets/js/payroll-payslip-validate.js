function changeUIForSalaryOut() {
		var salaryPaymentForm = $("#payslipSalaryPaymentForm").val();
		var tabType = $("#payrollTabType").val();

		if (tabType == "processed" && salaryPaymentForm == "daily") {

			$("#divOtherPayment").css("visibility", "hidden");
			$("#divNumberOfSalaries").hide();
			$("#divHealthInsurance").hide();
			$("#divWelfarePension").hide();
			$("#divLongtermCareInsurance").hide();
			$("#divResidentTax").hide();
			$("#pageSpanSubtotalHelp").hide();
			$("#pageSpanSubtotalHelpDaily").show();   
			$("#pageSpanTaxableHelp").hide();
			$("#pageSpanTaxableHelpDaily").show(); 

		} else if (tabType == "processed" && salaryPaymentForm == "monthly") {

			$("#divCalculateBonusSocial").css("visibility", "hidden");
			//payrollBonusAmount.prop('disabled', true);
			//healthInsurancePremium.prop('disabled', true);
			//welfarePensionPremiumBonus.prop('disabled', true);
			//longTermCareInsuranceBonus.prop('disabled', true);
			//employmentInsuranceBonus.prop('disabled', true);
			//incomeTaxBonus.prop('disabled', true);
		}
	}



$(function() {

	// Input Elements
	var otherPayment = $("#otherPayment");
	var payrollPrepaidAmount = $("#payrollPrepaidAmount");
	var otherDeductions = $("#otherDeductions");
	var absenceDays = $("#absenceDays");
	var absenceDeductionAmount = $("#absenceDeductionAmount");
	var numberDaysLeaveEarly = $("#numberDaysLeaveEarly");
	var earlyDepartureDeductionAmount = $("#earlyDepartureDeductionAmount");
	var payslipSalaryPaymentForm = $("#payslipSalaryPaymentForm");  // SalaryPaymentForm - Daily / Monthly
	var payrollTabType = $("#payrollTabType");   // payrollTabType - Processed / Unprocessed
	var payrollBonusAmount = $("#payrollBonusAmount");
	var healthInsurancePremium = $("#healthInsurancePremiumBonus");
	var welfarePensionPremiumBonus = $("#welfarePensionPremiumBonus");
	var longTermCareInsuranceBonus = $("#longTermCareInsuranceBonus");
	var employmentInsuranceBonus = $("#employmentInsuranceBonus");
	var incomeTaxBonus = $("#incomeTaxBonus");
	var paidDays = $("#paidDays");
	var paidAmount = $("#paidAmount");
	
	

	// Buttons
	var buttonUpdatePaySlip = $("#buttonUpdatePaySlip");


	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let otherPaymentReturn = true;
	let payrollPrepaidAmountReturn = true;
	let otherDeductionsReturn = true;
	let absenceDaysReturn = true;
	let absenceDeductionAmountReturn = true;
	let numberDaysLeaveEarlyReturn = true;
	let earlyDepartureDeductionAmountReturn = true;
	let payrollBonusAmountReturn = true;
	let healthInsurancePremiumReturn = true;
	let welfarePensionPremiumBonusReturn = true;
	let longTermCareInsuranceBonusReturn = true;
	let employmentInsuranceBonusReturn = true;
	let incomeTaxBonusReturn = true;
	let paidDaysReturn = true;
	let paidAmountReturn = true;

	// Divs displaying error messages
	var errorOtherPayment = $("#errorOtherPayment");
	var errorPrepaidAmount = $("#errorPrepaidAmount");
	var errorOtherDeductions = $("#errorOtherDeductions");
	var errorAbsenceDays = $("#errorAbsenceDays");
	var errorAbsenceDeductionAmount = $("#errorAbsenceDeductionAmount");
	var errorNumberDaysLeaveEarly = $("#errorNumberDaysLeaveEarly");
	var errorEarlyDepartureDeductionAmount = $("#errorEarlyDepartureDeductionAmount");
	var errorPayrollBonusAmount = $("#errorPayrollBonusAmount");
	var errorHealthInsurancePremium = $("#errorHealthInsurancePremium");
	var errorWelfarePensionPremium = $("#errorWelfarePensionPremium");
	var errorLongTermCareInsurance = $("#errorLongTermCareInsurance");
	var errorEmploymentInsurance = $("#errorEmploymentInsurance");
	var errorIncomeTax = $("#errorIncomeTax");
	var errorPaidDays = $("#errorPaidDays");
	var errorPaidAmount = $("#errorPaidAmount");


	///// Common Validation for checking Optional numeric fields
	function checkOptionalNumber(inputElement, errorElement, errorMsg) {
		var inputVal = inputElement.val();
		try {

			if (/^[0-9]+$/.test(inputVal) || inputVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				return true;
			} else {
				throw errorMsg;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}

	// Focus Out Events	
	otherPayment.focusout(() => {
		otherPaymentReturn = checkOptionalNumber(otherPayment, errorOtherPayment, "E2145");   
	});

	payrollPrepaidAmount.focusout(() => {
		payrollPrepaidAmountReturn = checkOptionalNumber(payrollPrepaidAmount, errorPrepaidAmount, "E2146");  
	});

	otherDeductions.focusout(() => {
		otherDeductionsReturn = checkOptionalNumber(otherDeductions, errorOtherDeductions, "E2147");  
	});

	absenceDays.focusout(() => {
		absenceDaysReturn = checkOptionalNumber(absenceDays, errorAbsenceDays, "E2148");  
	});

	absenceDeductionAmount.focusout(() => {
		absenceDeductionAmountReturn = checkOptionalNumber(absenceDeductionAmount, errorAbsenceDeductionAmount, "E2149");  
	});

	numberDaysLeaveEarly.focusout(() => {
		numberDaysLeaveEarlyReturn = checkOptionalNumber(numberDaysLeaveEarly, errorNumberDaysLeaveEarly, "E2150");  
	});

	earlyDepartureDeductionAmount.focusout(() => {
		earlyDepartureDeductionAmountReturn = checkOptionalNumber(earlyDepartureDeductionAmount, errorEarlyDepartureDeductionAmount, "E2151");
	});

	///// Changing UI dynamically according to Tab Type and Salary Payment Form//

	function changeUIForSalary() {
		var salaryPaymentForm = payslipSalaryPaymentForm.val();
		var tabType = payrollTabType.val();

		if (tabType == "processed" && salaryPaymentForm == "daily") {

			$("#divOtherPayment").css("visibility", "hidden");
			$("#divNumberOfSalaries").hide();
			$("#divHealthInsurance").hide();
			$("#divWelfarePension").hide();
			$("#divLongtermCareInsurance").hide();
			$("#divResidentTax").hide();

		} else if (tabType == "processed" && salaryPaymentForm == "monthly") {

			$("#divCalculateBonusSocial").css("visibility", "hidden");
			payrollBonusAmount.prop('disabled', true);
			healthInsurancePremium.prop('disabled', true);
			welfarePensionPremiumBonus.prop('disabled', true);
			longTermCareInsuranceBonus.prop('disabled', true);
			employmentInsuranceBonus.prop('disabled', true);
			incomeTaxBonus.prop('disabled', true);
		}
	}


	payrollBonusAmount.focusout(() => {
		payrollBonusAmountReturn = checkOptionalNumber(payrollBonusAmount, errorPayrollBonusAmount, "E2152");  
	});

	healthInsurancePremium.focusout(() => {
		healthInsurancePremiumReturn = checkOptionalNumber(healthInsurancePremium, errorHealthInsurancePremium, "E2153");
	});

	welfarePensionPremiumBonus.focusout(() => {
		welfarePensionPremiumBonusReturn = checkOptionalNumber(welfarePensionPremiumBonus, errorWelfarePensionPremium, "E2154"); 
	});

	longTermCareInsuranceBonus.focusout(() => {
		longTermCareInsuranceBonusReturn = checkOptionalNumber(longTermCareInsuranceBonus, errorLongTermCareInsurance, "E2155");  
	});

	employmentInsuranceBonus.focusout(() => {
		employmentInsuranceBonusReturn = checkOptionalNumber(employmentInsuranceBonus, errorEmploymentInsurance, "E2156");
	});

	incomeTaxBonus.focusout(() => {
		incomeTaxBonusReturn = checkOptionalNumber(incomeTaxBonus, errorIncomeTax, "E2157"); 
	});
	
	paidDays.focusout(() => {
		paidDaysReturn = checkOptionalNumber(paidDays, errorPaidDays, "E2158");
	});
	
	paidAmount.focusout(() => {
		paidAmountReturn = checkOptionalNumber(paidAmount, errorPaidAmount, "E2159");
	});


	buttonUpdatePaySlip.click(function() {

		otherPaymentReturn = checkOptionalNumber(otherPayment, errorOtherPayment, "E2145"); 
		payrollPrepaidAmountReturn = checkOptionalNumber(payrollPrepaidAmount, errorPrepaidAmount, "E2146");
		otherDeductionsReturn = checkOptionalNumber(otherDeductions, errorOtherDeductions, "E2147");  // 
		absenceDaysReturn = checkOptionalNumber(absenceDays, errorAbsenceDays, "E2148");
		absenceDeductionAmountReturn = checkOptionalNumber(absenceDeductionAmount, errorAbsenceDeductionAmount, "E2149");
		numberDaysLeaveEarlyReturn = checkOptionalNumber(numberDaysLeaveEarly, errorNumberDaysLeaveEarly, "E2150");    
		earlyDepartureDeductionAmountReturn = checkOptionalNumber(earlyDepartureDeductionAmount, errorEarlyDepartureDeductionAmount, "E2151");  
		paidDaysReturn = checkOptionalNumber(paidDays, errorPaidDays, "E2158"); 
		paidAmountReturn = checkOptionalNumber(paidAmount, errorPaidAmount, "E2159");

		if (otherPaymentReturn == true && payrollPrepaidAmountReturn == true && otherDeductionsReturn == true && absenceDaysReturn == true && absenceDeductionAmountReturn == true && numberDaysLeaveEarlyReturn == true && earlyDepartureDeductionAmountReturn == true && paidDaysReturn == true && paidAmountReturn == true) {
			console.log("Valid Info");
			savePayrollInfo();

		} else {
			//showMessage('info', "Please Re-Check Values!");
			showMessage('info', "N1094");

		}
	});

})


/*function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

//Validation for Japanese Translations.......
function setErrorFor(divInput, divError, errorCode) {
	divInput.addClass("errorVal").removeClass("successVal");
	message = payrollErrorArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	if (divInput != "") divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

