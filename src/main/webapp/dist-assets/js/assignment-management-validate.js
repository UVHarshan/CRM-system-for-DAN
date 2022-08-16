// Validation using Jquery

$(function() {

	// Input Elements

	var AssignmentClassification = $("#assignmentClassification");
	var caseNumber = $("#caseNumber");
	var customerName = $("#customerName");
	var implementationPeriodStart = $("#implementationPeriodStart");
	var implementationPeriodEnd = $("#implementationPeriodEnd");

	// Return Values
	var assignmentClassificationReturn = true;
	var caseNumberReturn = true;
	let implementationPeriodReturn = true;
	let customerNameReturn = true;

	// Divs displaying error messages
	var errorAssignmentClassification = $("#errorAssignmentClassification");
	var errorCaseNumber = $("#errorCaseNumber");
	var errorCustomerName = $("#errorCustomerName");
	var errorImplementationPeriodStart = $("#errorImplementationPeriodStart");
	var errorImplementationPeriodEnd = $("#errorImplementationPeriodEnd");


	function checkAssignmentClassification() {
		AssignmentClassificationVal = AssignmentClassification.val();
		try {
			if (AssignmentClassificationVal == "") {
				throw "Cannot be empty!";
				// throw "E2050";
			} else {
				assignmentClassificationReturn = true;
				setSuccessFor(AssignmentClassification, errorAssignmentClassification);
			}
		} catch (error) {
			setErrorFor(AssignmentClassification, errorAssignmentClassification, error);
			assignmentClassificationReturn = false;
		}

	}


	caseNumber.focusout(function() {
		caseNumberVal = caseNumber.val();
		try {

			if (/^[0-9]+$/.test(caseNumberVal) || caseNumberVal == "") {
				setSuccessFor(caseNumber, errorCaseNumber);
				caseNumberReturn = true;
			} else {
				caseNumberReturn = false;
				throw "Invalid Case Number";
				//throw "E2051";
			}
		} catch (error) {
			setErrorFor(caseNumber, errorCaseNumber, error);
		}
	});

	customerName.focusout(function() {
		customerRepNameVal = customerName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {

				throw "Invalid Customer Name";
				// throw "E2052";
			} else {
				customerNameReturn = true;
				setSuccessFor(customerName, errorCustomerName);
			}
		} catch (error) {
			setErrorFor(customerName, errorCustomerName, error);
			customerNameReturn = false;
		}
	});

	function checkImplementationPeriod() {
		implementPeriodStartVal = implementationPeriodStart.val();
		implementPeriodEndVal = implementationPeriodEnd.val();

		if (implementPeriodStartVal == "") {
			implementationPeriodReturn = false;
			setErrorFor(implementationPeriodStart, errorImplementationPeriodStart, "Cannot be empty"); // E2050
		} else {
			implementationPeriodReturn = true;
			setSuccessFor(implementationPeriodStart, errorImplementationPeriodStart);
		}

		if (implementPeriodEndVal == "") {
			implementationPeriodReturn = false;
			setErrorFor(implementationPeriodEnd, errorImplementationPeriodEnd, "Cannot be empty");  // E2050
		} else {
			implementationPeriodReturn = true;
			setSuccessFor(implementationPeriodEnd, errorImplementationPeriodEnd);
		}


		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					throw "Implementation Periods do not match";
					// throw "E2053";
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
	AssignmentClassification.focusout(checkAssignmentClassification);
	implementationPeriodStart.focusout(checkImplementationPeriod);
	implementationPeriodEnd.focusout(checkImplementationPeriod);

	$("#searchForm").submit(function(event) {
		event.preventDefault();
		//checkAssignmentClassification();
		//checkImplementationPeriod();

		if (assignmentClassificationReturn == true && caseNumberReturn == true && implementationPeriodReturn == true && customerNameReturn == true) {
			console.log("Valid data");
			runSearch();

		} else {
			//showMessage('info', "Please Check Search Values");
			showMessage('info', "N1093");
		}
	});

});


function setErrorFor(divInput, divError, message) {
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}

//Validation for Japanese Translations.......
/*function setErrorFor(divInput, divError, errorCode) {
	divInput.addClass("errorVal").removeClass("successVal");
	message = customerErrorArray[localStorage.getItem('language')][errorCode];
	divError.html(message);
}*/

function setSuccessFor(divInput, divError) {
	//divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
	divError.html("");
}

