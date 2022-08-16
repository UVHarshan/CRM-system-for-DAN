
$(function() {

	// Input Elements
	var legalWorkingHoursPerDay = $("#legalWorkingHoursPerDay");
	var increaseRateofLegalOvertimeWork = $("#increaseRateofLegalOvertimeWork");
	var increaseRateofOTWork60Hours = $("#increaseRateofOTWork60Hours");
	var Increaserateoflatenightworkinghours = $("#Increaserateoflatenightworkinghours");
	var Increaserateofholidaywork = $("#Increaserateofholidaywork");	
		
	// Return Values
	let legalWorkingHoursPerDayReturn = false;
	let increaseRateofLegalOTWorkReturn  = false;
	let increaseRateofOTWork60HoursReturn = false;
	let increaseRateLatenightWorkHoursReturn = false;
	let IncreaserateofholidayworkReturn = false;
	
	// Divs displaying error messages
	var errorLegalWorkingHoursPerDay = $("#errorLegalWorkingHoursPerDay");
	var errorIncreaseRateofLegalOTWork = $("#errorIncreaseRateofLegalOvertimeWork");
	var errorIncreaseRateofOTWork60Hours = $("#errorIncreaseRateofOTWork60Hours");
	var errorIncreaseRateLatenightWorkHours = $("#errorIncreaseRateLatenightWorkHours");
	var errorIncreaseRateHolidayWork = $("#errorIncreaseRateHolidayWork");
	

	// Buttons
	var buttonUpateAllowanceInformation = $("#buttonUpateAllowanceInformation");


	// Functions for validating.....
	
	function checkLegalWorkingHours() {
		quotationSortOrderVal = legalWorkingHoursPerDay.val();
		try {

			if (/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.test(quotationSortOrderVal)) {
				setSuccessFor(legalWorkingHoursPerDay, errorLegalWorkingHoursPerDay);
				legalWorkingHoursPerDayReturn = true;
			} else {
				throw "E2254";  // Please enter time duration in hh:mm format
			}
		} catch (error) {
			legalWorkingHoursPerDayReturn = false;
			setErrorFor(legalWorkingHoursPerDay, errorLegalWorkingHoursPerDay, error);
		}

	}
	
	
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
			if (inputElementVal == "") {
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
	
	legalWorkingHoursPerDay.focusout(checkLegalWorkingHours);
	increaseRateofLegalOvertimeWork.focusout(() => {
		increaseRateofLegalOTWorkReturn = checkMandatoryNumber(increaseRateofLegalOvertimeWork, errorIncreaseRateofLegalOTWork);
	});	

	increaseRateofOTWork60Hours.focusout(() => {
		increaseRateofOTWork60HoursReturn = checkMandatoryNumber(increaseRateofOTWork60Hours, errorIncreaseRateofOTWork60Hours);
	});	
	
	Increaserateoflatenightworkinghours.focusout(() => {
		increaseRateLatenightWorkHoursReturn = checkMandatoryNumber(Increaserateoflatenightworkinghours, errorIncreaseRateLatenightWorkHours);
	});	
	
	Increaserateofholidaywork.focusout(() => {
		IncreaserateofholidayworkReturn = checkMandatoryNumber(Increaserateofholidaywork, errorIncreaseRateHolidayWork);
	});		

	
	
	
	

	buttonUpateAllowanceInformation.click(function() {
		
		checkLegalWorkingHours();
		increaseRateofLegalOTWorkReturn = checkMandatoryNumber(increaseRateofLegalOvertimeWork, errorIncreaseRateofLegalOTWork);
		increaseRateofOTWork60HoursReturn = checkMandatoryNumber(increaseRateofOTWork60Hours, errorIncreaseRateofOTWork60Hours);
		increaseRateLatenightWorkHoursReturn = checkMandatoryNumber(Increaserateoflatenightworkinghours, errorIncreaseRateLatenightWorkHours);
		IncreaserateofholidayworkReturn = checkMandatoryNumber(Increaserateofholidaywork, errorIncreaseRateHolidayWork);
		
		
		if (legalWorkingHoursPerDayReturn == true && increaseRateofLegalOTWorkReturn == true && increaseRateofOTWork60HoursReturn == true && increaseRateLatenightWorkHoursReturn == true && IncreaserateofholidayworkReturn == true ) {
			console.log("Valid")
			saveOverTimeInfo();		
		} else {
			showMessage('info',"N1212");			
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
    message = overTimeHolidayErrorArray[errorCode];
	if (divInput != "")  divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}


/*function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}
