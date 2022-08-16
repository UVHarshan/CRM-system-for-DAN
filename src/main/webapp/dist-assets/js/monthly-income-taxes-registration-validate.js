
$(function() {

	// Input Elements
	var incomeTaxyear = $("#incomeTaxyear");
	var Thresholdhigherthan = $("#Thresholdhigherthan");
	var Thresholdlessthan = $("#Thresholdlessthan");
	var Taxamountdependents0 = $("#Taxamountdependents0");
	var Taxamountdependents1 = $("#Taxamountdependents1");
	var Taxamountdependents2 = $("#Taxamountdependents2");
	var Taxamountdependents3 = $("#Taxamountdependents3");
	var Taxamountdependents4 = $("#Taxamountdependents4");
	var Taxamountdependents5 = $("#Taxamountdependents5");
	var Taxamountdependents6 = $("#Taxamountdependents6");
	var Taxamountdependents7 = $("#Taxamountdependents7");
	var taxRate = $("#taxRate");
	var noTaxAmountB = $("#noTaxAmountB");	
	var calculationStandardAmount = $("#calculationStandardAmount");
	var noTaxtaxrateB = $("#noTaxtaxrateB");
	
	
	
	

	// Return Values
	let incomeTaxyearReturn = false;
	let ThresholdhigherthanReturn = false;
	let ThresholdlessthanReturn = true;
	let Taxamountdependents0Return = false;
	let Taxamountdependents1Return = false;
	let Taxamountdependents2Return = false;
	let Taxamountdependents3Return = false;
	let Taxamountdependents4Return = false;
	let Taxamountdependents5Return = false;
	let Taxamountdependents6Return = false;
	let Taxamountdependents7Return = false;
	let taxRateReturn = true;
	let noTaxAmountBReturn = true;
	let calculationStandardAmountReturn = true;
	let noTaxtaxrateBReturn = true;
	
	// Divs displaying error messages
	var errorIncomeTaxYear = $("#errorIncomeTaxYear");
	var errorThresholdhigherthan = $("#errorThresholdhigherthan");
	var errorThresholdlessthan = $("#errorThresholdlessthan");
	var errorTaxamountdependents0 = $("#errorTaxamountdependents0");
	var errorTaxamountdependents1 = $("#errorTaxamountdependents1");
	var errorTaxamountdependents2 = $("#errorTaxamountdependents2");
	var errorTaxamountdependents3 = $("#errorTaxamountdependents3");
	var errorTaxamountdependents4 = $("#errorTaxamountdependents4");
	var errorTaxamountdependents5 = $("#errorTaxamountdependents5");
	var errorTaxamountdependents6 = $("#errorTaxamountdependents6");
	var errorTaxamountdependents7 = $("#errorTaxamountdependents7");	
	var errorTaxRate = $("#errorTaxRate");	
	var errorNoTaxAmountB = $("#errorNoTaxAmountB");
	var errorCalculationStandardAmount = $("#errorCalculationStandardAmount");	
	var errorNoTaxtaxrateB = $("#errorNoTaxtaxrateB");	
	

	// Buttons   
	var buttonTaxSaveMonthlyIncomeTaxDetail = $("#buttonTaxSaveMonthlyIncomeTaxDetail");


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
			if (inputElementVal == "") {
				throw "Can not be empty";  //E2180
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
	incomeTaxyear.focusout(() => {
		incomeTaxyearReturn = checkMandatoryNumber(incomeTaxyear, errorIncomeTaxYear);
	});
	
	Thresholdhigherthan.focusout(() => {
		ThresholdhigherthanReturn = checkMandatoryNumber(Thresholdhigherthan, errorThresholdhigherthan);
	});	
	
	Thresholdlessthan.focusout(() => {
		ThresholdlessthanReturn = checkOptionalNumber(Thresholdlessthan, errorThresholdlessthan); 
	});
	
	Taxamountdependents0.focusout(() => {
		Taxamountdependents0Return = checkMandatoryNumber(Taxamountdependents0, errorTaxamountdependents0);
	});	

	Taxamountdependents1.focusout(() => {
		Taxamountdependents1Return = checkMandatoryNumber(Taxamountdependents1, errorTaxamountdependents1);
	});	
	
	Taxamountdependents2.focusout(() => {
		Taxamountdependents2Return = checkMandatoryNumber(Taxamountdependents2, errorTaxamountdependents2);
	});
	
	Taxamountdependents3.focusout(() => {
		Taxamountdependents3Return = checkMandatoryNumber(Taxamountdependents3, errorTaxamountdependents3);
	});	
	
	Taxamountdependents4.focusout(() => {
		Taxamountdependents4Return = checkMandatoryNumber(Taxamountdependents4, errorTaxamountdependents4);
	});	

	Taxamountdependents5.focusout(() => {
		Taxamountdependents5Return = checkMandatoryNumber(Taxamountdependents5, errorTaxamountdependents5);
	});
	
	Taxamountdependents6.focusout(() => {
		Taxamountdependents6Return = checkMandatoryNumber(Taxamountdependents6, errorTaxamountdependents6);
	});
	
	Taxamountdependents7.focusout(() => {
		Taxamountdependents7Return = checkMandatoryNumber(Taxamountdependents7, errorTaxamountdependents7);
	});	
	
	taxRate.focusout(() => {
		taxRateReturn = checkOptionalNumber(taxRate, errorTaxRate); 
	});
	
	noTaxAmountB.focusout(() => {
		noTaxAmountBReturn = checkOptionalNumber(noTaxAmountB, errorNoTaxAmountB); 
	});
	
	calculationStandardAmount.focusout(() => {
		calculationStandardAmountReturn = checkOptionalNumber(calculationStandardAmount, errorCalculationStandardAmount); 
	});
	
	noTaxtaxrateB.focusout(() => {
		noTaxtaxrateBReturn = checkOptionalNumber(noTaxtaxrateB, errorNoTaxtaxrateB); 
	});

	
	

	buttonTaxSaveMonthlyIncomeTaxDetail.click(function() {
		
		incomeTaxyearReturn = checkMandatoryNumber(incomeTaxyear, errorIncomeTaxYear);
		ThresholdhigherthanReturn = checkMandatoryNumber(Thresholdhigherthan, errorThresholdhigherthan);
		ThresholdlessthanReturn = checkOptionalNumber(Thresholdlessthan, errorThresholdlessthan);
		Taxamountdependents0Return = checkMandatoryNumber(Taxamountdependents0, errorTaxamountdependents0);
		Taxamountdependents1Return = checkMandatoryNumber(Taxamountdependents1, errorTaxamountdependents1);
		Taxamountdependents2Return = checkMandatoryNumber(Taxamountdependents2, errorTaxamountdependents2);
		Taxamountdependents3Return = checkMandatoryNumber(Taxamountdependents3, errorTaxamountdependents3);
		Taxamountdependents4Return = checkMandatoryNumber(Taxamountdependents4, errorTaxamountdependents4);
		Taxamountdependents5Return = checkMandatoryNumber(Taxamountdependents5, errorTaxamountdependents5);
		Taxamountdependents6Return = checkMandatoryNumber(Taxamountdependents6, errorTaxamountdependents6);
		Taxamountdependents7Return = checkMandatoryNumber(Taxamountdependents7, errorTaxamountdependents7);
		taxRateReturn = checkOptionalNumber(taxRate, errorTaxRate);
		noTaxAmountBReturn = checkOptionalNumber(noTaxAmountB, errorNoTaxAmountB); 
		calculationStandardAmountReturn = checkOptionalNumber(calculationStandardAmount, errorCalculationStandardAmount);
		noTaxtaxrateBReturn = checkOptionalNumber(noTaxtaxrateB, errorNoTaxtaxrateB);

		if (incomeTaxyearReturn == true && ThresholdhigherthanReturn == true && ThresholdlessthanReturn == true && Taxamountdependents0Return == true && Taxamountdependents1Return == true && Taxamountdependents2Return == true && Taxamountdependents3Return == true && Taxamountdependents4Return == true && Taxamountdependents5Return && Taxamountdependents6Return == true && Taxamountdependents7Return == true && taxRateReturn == true && noTaxAmountBReturn == true && calculationStandardAmountReturn == true && noTaxtaxrateBReturn == true) {
			saveMonthlyIncomeTax();		
		} else {
			showMessage('info',"N1212");			
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
    message = MonthlyIncomeTaxesErrorArray[errorCode];
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
