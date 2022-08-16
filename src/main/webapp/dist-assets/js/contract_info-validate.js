
$(function() {

	// Input Elements
	var midnightOTHolidayAllowance = $("#midnightOvertimeHolidayAllowance");	
	var paymentTerms = $("#paymentTerms");	
	var annualPaidLeave = $("#annualPaidLeave");
	var overtimeHolidayWork = $("#overtimeHolidayWork");
	var safetyandHygiene = $("#safetyandHygiene");
	var employmentStabilizationMeasures = $("#employmentStabilizationMeasures");
	var grievanceRelatedMatters = $("#grievanceRelatedMatters");
	var reasonfornotsubmittingemployment = $("#reasonfornotsubmittingemployment");
	var useofwelfarefacilities = $("#useofwelfarefacilities");
	var retirementrelatedmatters = $("#retirementrelatedmatters");
	var contractrenewalrelatedmatters = $("#contractrenewalrelatedmatters");
	var conflictPreventionMeasures = $("#conflictPreventionMeasuresforDirectemployment");
	var remarks = $("#remarks");	
	
		
	// Return Values
	let midnightOTHolidayAllowanceReturn = false;
	let paymentTermsReturn = false;
	let annualPaidLeaveReturn = false;
	let overtimeHolidayWorkReturn = false;
	let safetyandHygieneReturn = false;
	let employmentStabilizationMeasuresReturn = false;
	let grievanceRelatedMattersReturn = false;
	let reasonfornotSubmitEmployReturn = false;
	let useofwelfarefacilitiesReturn = false;
	let retirementRelatedMattersReturn = false;
	let contractrenewalrelatedmattersReturn = false;
	let conflictPreventionMeasuresReturn = false;
	let remarksReturn = false;
	
	// Divs displaying error messages
	var errorMidnightOTHolidayAllowance = $("#errorMidnightOTHolidayAllowance");
	var errorPaymentTerms = $("#errorPaymentTerms");
	var errorAnnualPaidLeave = $("#errorAnnualPaidLeave");
	var errorOvertimeHolidayWork = $("#errorOvertimeHolidayWork");
	var errorSafetyandHygiene = $("#errorSafetyandHygiene");
	var errorEmploymentStabilizationMeasures = $("#errorEmploymentStabilizationMeasures");
	var errorGrievanceRelatedMatters = $("#errorGrievanceRelatedMatters");
	var errorReasonfornotsubmitEmploy = $("#errorReasonfornotsubmitEmploy");
	var errorUseofWelfareFacilities = $("#errorUseofWelfareFacilities");
	var errorRetirementrelatedmatters = $("#errorRetirementrelatedmatters");
	var errorContractRenewalMatters = $("#errorContractRenewalMatters");
	var errorConflictPreventionMeasures = $("#errorConflictPreventionMeasures");
	var errorRemarks = $("#errorRemarks");
	
	
	

	// Buttons
	var buttonUpdatedContractTerms = $("#buttonUpdatedContractTerms");


	// Functions for validating.....

	
	
	// Common Validation for checking Mandatory numeric fields
	function checkMandatoryNumber(inputElement, errorElement) {
		var inputVal = inputElement.val();
		try {
			if(inputVal.trim() == "") throw "E2240";

			if (/^[0-9]+$/.test(inputVal)) {
				setSuccessFor(inputElement, errorElement);
				return true;
			} else {
				throw "E2253";
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}
	
	// Common Validation for checking Optional numeric fields
	function checkOptionalNumber(inputElement, errorElement) {
		var inputVal = inputElement.val();
		try {

			if (/^[0-9]+$/.test(inputVal) || inputVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				return true;
			} else {
				throw "E2253";
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}

	
	function checkMandatoryField(inputElement, errorElement) {
		inputElementVal = inputElement.val();

		try {
			if (inputElementVal.trim() == "") {
				throw "E2240";  //E2180
			} else {
				setSuccessFor(inputElement, errorElement);
				return true;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}

	}
	

	// Focus Out Events
	midnightOTHolidayAllowance.focusout(() => {
		midnightOTHolidayAllowanceReturn = checkMandatoryNumber(midnightOTHolidayAllowance, errorMidnightOTHolidayAllowance);
	});	
	
	paymentTerms.focusout(() => {
		paymentTermsReturn = checkMandatoryField(paymentTerms, errorPaymentTerms);
	});	
	
	annualPaidLeave.focusout(() => {
		annualPaidLeaveReturn = checkMandatoryField(annualPaidLeave, errorAnnualPaidLeave);
	});	

	overtimeHolidayWork.focusout(() => {
		overtimeHolidayWorkReturn = checkMandatoryField(overtimeHolidayWork, errorOvertimeHolidayWork);
	});	

	safetyandHygiene.focusout(() => {
		safetyandHygieneReturn = checkMandatoryField(safetyandHygiene, errorSafetyandHygiene);
	});
	
	employmentStabilizationMeasures.focusout(() => {
		employmentStabilizationMeasuresReturn = checkMandatoryField(employmentStabilizationMeasures, errorEmploymentStabilizationMeasures);
	});	
	
	grievanceRelatedMatters.focusout(() => {
		grievanceRelatedMattersReturn = checkMandatoryField(grievanceRelatedMatters, errorGrievanceRelatedMatters);
	});	
	
	reasonfornotsubmittingemployment.focusout(() => {
		reasonfornotSubmitEmployReturn = checkMandatoryField(reasonfornotsubmittingemployment, errorReasonfornotsubmitEmploy);
	});	
	
	useofwelfarefacilities.focusout(() => {
		useofwelfarefacilitiesReturn = checkMandatoryField(useofwelfarefacilities, errorUseofWelfareFacilities);
	});	
	
	retirementrelatedmatters.focusout(() => {
		retirementRelatedMattersReturn = checkMandatoryField(retirementrelatedmatters, errorRetirementrelatedmatters);
	});	
	
	contractrenewalrelatedmatters.focusout(() => {
		contractrenewalrelatedmattersReturn = checkMandatoryField(contractrenewalrelatedmatters, errorContractRenewalMatters);
	});	
	
	conflictPreventionMeasures.focusout(() => {
		conflictPreventionMeasuresReturn = checkMandatoryField(conflictPreventionMeasures, errorConflictPreventionMeasures);
	});	
	
	remarks.focusout(() => {
		remarksReturn = checkMandatoryField(remarks, errorRemarks);
	});		
	

	buttonUpdatedContractTerms.click(function() {
		
		midnightOTHolidayAllowanceReturn = checkMandatoryNumber(midnightOTHolidayAllowance, errorMidnightOTHolidayAllowance);
		paymentTermsReturn = checkMandatoryField(paymentTerms, errorPaymentTerms);
		annualPaidLeaveReturn = checkMandatoryField(annualPaidLeave, errorAnnualPaidLeave);
		overtimeHolidayWorkReturn = checkMandatoryField(overtimeHolidayWork, errorOvertimeHolidayWork);
		safetyandHygieneReturn = checkMandatoryField(safetyandHygiene, errorSafetyandHygiene);
		employmentStabilizationMeasuresReturn = checkMandatoryField(employmentStabilizationMeasures, errorEmploymentStabilizationMeasures);
		grievanceRelatedMattersReturn = checkMandatoryField(grievanceRelatedMatters, errorGrievanceRelatedMatters);
		reasonfornotSubmitEmployReturn = checkMandatoryField(reasonfornotsubmittingemployment, errorReasonfornotsubmitEmploy);
		useofwelfarefacilitiesReturn = checkMandatoryField(useofwelfarefacilities, errorUseofWelfareFacilities);
		retirementRelatedMattersReturn = checkMandatoryField(retirementrelatedmatters, errorRetirementrelatedmatters);
		contractrenewalrelatedmattersReturn = checkMandatoryField(contractrenewalrelatedmatters, errorContractRenewalMatters);
		conflictPreventionMeasuresReturn = checkMandatoryField(conflictPreventionMeasures, errorConflictPreventionMeasures);
		remarksReturn = checkMandatoryField(remarks, errorRemarks);
		
		if ( midnightOTHolidayAllowanceReturn == true && paymentTermsReturn == true && annualPaidLeaveReturn == true && overtimeHolidayWorkReturn == true && safetyandHygieneReturn == true && employmentStabilizationMeasuresReturn == true && grievanceRelatedMattersReturn == true && reasonfornotSubmitEmployReturn == true && useofwelfarefacilitiesReturn == true && retirementRelatedMattersReturn == true && contractrenewalrelatedmattersReturn == true && conflictPreventionMeasuresReturn == true && remarksReturn == true) {
			console.log("Valid")
			saveContractInfo();		
		} else {
			showMessage('info',"N1212");			
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
    message = contractTermsErrorArray[errorCode];
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}


/*function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}
*/
function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}
