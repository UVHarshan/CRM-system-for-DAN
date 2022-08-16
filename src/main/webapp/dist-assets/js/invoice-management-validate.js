// Validation using Jquery

$(function() {

	// Input Elements
	var invoiceNumber = $("#invoiceNumber");
	var quotationNumber = $("#quotationNumber");
	var deadlineFrom = $("#deadlineFrom");	
	var closingDateTo = $("#closingDateTo");
	var customerRepresentativeName = $("#customerRepresentativeName");
	var salesRepresentativeName = $("#salesRepresentativeName");
	var nameofPersonInchargeofMatter = $("#nameofPersonInchargeofMatter");
	
	// Return Values
	var invoiceNumberReturn = true;
	var quotationNumberReturn = true;
	var closingDateRetrun = true;
	var customerRepresentativeNameReturn = true;
	var salesRepresentativeNameReturn = true;
	var nameofPersonInchargeofMatterReturn = true;

	// Divs displaying error messages
	var errorInvoiceNumber = $("#errorInvoiceNumber");
	var errorQuotationNumber = $("#errorQuotationNumber");
	var errorDeadlineFrom = $("#errorDeadlineFrom");
	var errorClosingDateTo = $("#errorClosingDateTo");	
	var errorCustomerRepresentativeName = $("#errorCustomerRepresentativeName");
	var errorSalesRepresentativeName = $("#errorSalesRepresentativeName");
	var errorNameofPersonInchargeofMatter = $("#errorNameofPersonInchargeofMatter");	
	
	
	function checkInvoiceNumber() {
		caseNumberVal = invoiceNumber.val();
		try {
			if (/^[0-9]+$/.test(caseNumberVal)|| caseNumberVal.trim() == "") {
				setSuccessFor(invoiceNumber, errorInvoiceNumber);
				invoiceNumberReturn = true;
			} else {
				throw "Invalid Invoice Number";
				//throw "E2051";
			}
		} catch (error) {
			invoiceNumberReturn = false;
			setErrorFor(invoiceNumber, errorInvoiceNumber, error);
		}
		
	}
	
	function checkQuotationNumber() {
		caseNumberVal = quotationNumber.val();
		try {

			if (/^[0-9]+$/.test(caseNumberVal) || caseNumberVal.trim() == "") {
				setSuccessFor(quotationNumber, errorQuotationNumber);
				quotationNumberReturn = true;
			} else {
				throw "Invalid Quotation Number";
				//throw "E2051";
			}
		} catch (error) {
			quotationNumberReturn = false;
			setErrorFor(quotationNumber, errorQuotationNumber, error);
		}
		
	}
	
	function checkClosingDate() {
		implementPeriodStartVal = deadlineFrom.val();
		implementPeriodEndVal = closingDateTo.val();


		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					throw "Closing Dates do not match";
					// throw "E2053";
				} else {
					closingDateRetrun = true;
					setSuccessFor(deadlineFrom, errorDeadlineFrom);
					setSuccessFor(closingDateTo, errorClosingDateTo);
				}
			} catch (error) {
				setErrorFor(deadlineFrom, errorDeadlineFrom, error);
				setErrorFor(closingDateTo, errorClosingDateTo, error);
				closingDateRetrun = false;
			}

		}
	}
	
	function checkCustomerRepresentativeName() {
		customerRepNameVal = customerRepresentativeName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {

				throw "Invalid Customer Representative Name";
				// throw "E2052";
			} else {
				customerRepresentativeNameReturn = true;
				setSuccessFor(customerRepresentativeName, errorCustomerRepresentativeName);
			}
		} catch (error) {
			setErrorFor(customerRepresentativeName, errorCustomerRepresentativeName, error);
			customerRepresentativeNameReturn = false;
		}
	}
	
	function checkSalesRepresentativeName() {
		customerRepNameVal = salesRepresentativeName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {

				throw "Invalid Sales Representative Name";
				// throw "E2052";
			} else {
				salesRepresentativeNameReturn = true;
				setSuccessFor(salesRepresentativeName, errorSalesRepresentativeName);
			}
		} catch (error) {
			setErrorFor(salesRepresentativeName,errorSalesRepresentativeName , error);
			salesRepresentativeNameReturn = false;
		}
	}
	
	function checkNameofPersonInchargeofMatter() {
		customerRepNameVal = nameofPersonInchargeofMatter.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {

				throw "Invalid Name of Person Incharge of Case";
				// throw "E2052";
			} else {
				nameofPersonInchargeofMatterReturn = true;
				setSuccessFor(nameofPersonInchargeofMatter, errorNameofPersonInchargeofMatter );
			}
		} catch (error) {
			setErrorFor(nameofPersonInchargeofMatter, errorNameofPersonInchargeofMatter , error);
			nameofPersonInchargeofMatterReturn = false;
		}
	}
	

	invoiceNumber.focusout(checkInvoiceNumber);
	quotationNumber.focusout(checkQuotationNumber);
	deadlineFrom.focusout(checkClosingDate);
	closingDateTo.focusout(checkClosingDate);
	customerRepresentativeName.focusout(checkCustomerRepresentativeName);
	salesRepresentativeName.focusout(checkSalesRepresentativeName);
	nameofPersonInchargeofMatter.focusout(checkNameofPersonInchargeofMatter);


	$("#searchForm").submit(function(event) {
		event.preventDefault();
		
		checkInvoiceNumber();
		checkQuotationNumber();
		checkClosingDate();
		checkCustomerRepresentativeName();
		checkSalesRepresentativeName();
		checkNameofPersonInchargeofMatter();
		

		if ( invoiceNumberReturn == true && quotationNumberReturn == true && closingDateRetrun == true && customerRepresentativeNameReturn == true && salesRepresentativeNameReturn == true && nameofPersonInchargeofMatterReturn == true) {
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

