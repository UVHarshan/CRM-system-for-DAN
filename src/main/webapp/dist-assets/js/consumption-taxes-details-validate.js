
$(function() {

	// Input Elements
	var taxRate = $("#taxRate");
	var applicationStartDate = $("#applicationStartDate");		

	// Return Values
	let taxRateReturn = false;
	let applicationStartDateReturn = false;
	
	// Divs displaying error messages
	var errorTaxRate = $("#errorTaxRate");
	var errorApplicationStartDate = $("#errorApplicationStartDate");
	

	// Buttons
	var buttonSaveInformationConsumptionTax = $("#buttonSaveInformationConsumptionTax");


	// Functions for validating.....
	
	// Common Validation for checking Mandatory numeric fields
	function checkMandatoryNumber(inputElement, errorElement) {
		var inputVal = inputElement.val();
		try {
			if(inputVal.trim() == "") throw "E2240";   //Can not be empty

			if (/^[0-9]+$/.test(inputVal)) {
				setSuccessFor(inputElement, errorElement);
				return true;
			} else {
				throw "E2253"; //  Should contain only numbers
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
	taxRate.focusout(() => {
		taxRateReturn = checkMandatoryNumber(taxRate, errorTaxRate);
	});	
	
	applicationStartDate.focusout(() => {
		applicationStartDateReturn = checkMandatoryField(applicationStartDate, errorApplicationStartDate);
	});	
	

	buttonSaveInformationConsumptionTax.click(function() {
		
		taxRateReturn = checkMandatoryNumber(taxRate, errorTaxRate);
		applicationStartDateReturn = checkMandatoryField(applicationStartDate, errorApplicationStartDate);

		if (taxRateReturn == true && applicationStartDateReturn == true) {
			console.log("Valid")
			updaeInfo();		
		} else {
			showMessage('info',"N1212");			
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
    message = consumptionTaxErrorArray[errorCode];
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
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
