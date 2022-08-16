// Validation using Jquery

	// Return Values
	var caseNumberReturn = true;
	var quotationNumberReturn = true;
	var customerRepNameReturn = true;
	let implementationPeriodReturn = true;
	let conflictDateReturn = true;

$(function() {

	// Input Elements
	var caseNumber = $("#caseNumber");
	var quotationNumber = $("#quotationNumber");
	var customerRepName = $("#customerRepresentativeName");
	var implementationPeriodStart = $("#implementationPeriodStart");
	var implementationPeriodEnd = $("#implementationPeriodEnd");
	
	var conflictDateFrom = $("#conflictDateFrom");
	var conflictDateTo = $("#conflictDateTo");

	// Buttons
	//var searchBtn = $("#searchBtn");


	// Divs displaying error messages
	var errorCaseNumber = $("#errorCaseNumber");
	var errorQuotationNumber = $("#errorQuotationNumber");
	var errorCustomerRepName = $("#errorCustomerRepresentativeName");
	var errorImplementationPeriodStart = $("#errorImplementationPeriodStart");
	var errorImplementationPeriodEnd = $("#errorImplementationPeriodEnd");

	var errorConflictDateFrom = $("#errorConflictDateFrom");
	var errorConflictDateTo = $("#errorConflictDateTo");


	caseNumber.focusout(function() {
		caseNumberVal = caseNumber.val();
		try {

			if (/^[0-9]+$/.test(caseNumberVal) || caseNumberVal == "") {
				setSuccessFor(caseNumber, errorCaseNumber);
				caseNumberReturn = true;
			} else {
				caseNumberReturn = false;
				//throw "Invalid Case Number";
				throw "E2000";
			}
		} catch (error) {
			setErrorFor(caseNumber, errorCaseNumber, error);
		}
	});

	quotationNumber.focusout(function() {
		quotationNumberVal = quotationNumber.val();
		try {

			if (/^[0-9-]+$/.test(quotationNumberVal) || quotationNumberVal == "") {
				setSuccessFor(quotationNumber, errorQuotationNumber);
				quotationNumberReturn = true;
			} else {
				quotationNumberReturn = false;
				//throw "Invalid Quotation Number";
				 throw "E2001";
			}
		} catch (error) {
			setErrorFor(quotationNumber, errorQuotationNumber, error);
		}
	});

	customerRepName.focusout(function() {
		customerRepNameVal = customerRepName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {

				//throw "Invalid Customer Representative Name";
				 throw "E2002";
			} else {
				customerRepNameReturn = true;
				setSuccessFor(customerRepName, errorCustomerRepName);
			}
		} catch (error) {
			setErrorFor(customerRepName, errorCustomerRepName, error);
			customerRepNameReturn = false;
		}
	});

	function checkImplementationPeriod() {
		implementPeriodStartVal = implementationPeriodStart.val();
		implementPeriodEndVal = implementationPeriodEnd.val();

		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					//throw "Implementation Periods do not match";
					 throw "E2003";
				} else {
					implementationPeriodReturn = true;
					setSuccessFor(implementationPeriodStart, errorImplementationPeriodStart);
					setSuccessFor(implementationPeriodEnd, errorImplementationPeriodEnd);
				}
			} catch (error) {
				setErrorFor(implementationPeriodStart, errorImplementationPeriodStart, error);
				setErrorFor(implementationPeriodEnd, errorImplementationPeriodEnd, error);
				implementationPeriodReturn = false;
			}

		}
	}

	implementationPeriodStart.focusout(checkImplementationPeriod);
	implementationPeriodEnd.focusout(checkImplementationPeriod);
	
	function checkConflictDate() {
		conflictDateFromVal = conflictDateFrom.val();
		conflictDateToVal = conflictDateTo.val();

		if (conflictDateFromVal != "" && conflictDateToVal != "") {
			try {
				if (conflictDateFromVal > conflictDateToVal) {
					//throw "Conflict Dates do not match";
					 throw "E2004";
				} else {
					conflictDateReturn = true;
					setSuccessFor(conflictDateFrom, errorConflictDateFrom);
					setSuccessFor(conflictDateTo, errorConflictDateTo);
				}
			} catch (error) {
				setErrorFor(conflictDateFrom, errorConflictDateFrom, error);
				setErrorFor(conflictDateTo, errorConflictDateTo, error);
				conflictDateReturn = false;
			}

		}
	}

	conflictDateFrom.focusout(checkConflictDate);
	conflictDateTo.focusout(checkConflictDate);

	$("#searchForm").submit(function(event) {
		event.preventDefault();
		if (caseNumberReturn == true && quotationNumberReturn == true && customerRepNameReturn == true && implementationPeriodReturn == true && conflictDateReturn == true) {
			//console.log("Valid data");
			runSearch();
			
		} else {
			//showMessage('info', "Please Check Search Values");
			 showMessage('info', "N1211");
		}
	});

});


function setErrorFor(divInput, divError, errorCode) {
	message = caseErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}


function setSuccessFor(divInput, divError) {
	//divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
	divError.html("");
}

function resetValidationReturnValues() {

    caseNumberReturn = true;
	quotationNumberReturn = true;
	customerRepNameReturn = true;
	implementationPeriodReturn = true;
	conflictDateReturn = true;
}


