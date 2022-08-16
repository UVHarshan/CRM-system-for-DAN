let invoiceAmountReturn = true;


function checkInvoiceAmountReturn(node) {
	let unitPrice = node.value.trim();
	let tdNode = node.closest("td");

	if (/^[0-9]+$/.test(unitPrice) || unitPrice == "") {
		invoiceAmountReturn = true;
		tdNode.className = "successVal";
	} else {
		invoiceAmountReturn = false;
		tdNode.className = "errorVal";
		showMessage('info', "Please Input a valid number!"); // Erorr Code
	}
}



$(function() {

	// Input Elements
	var invoiceNumber = $("#invoiceNumber");
	var invoiceCreationDate = $("#invoiceCreationDate");
	var orderNumber = $("#orderNumber");
	var closingDate = $("#closingDate");
	var taxRate = $("#taxRate");
	var billingStatus = $("#billingStatus");


	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let invoiceNumberReturn = false;
	let invoiceCreationDateReturn = false;
	let orderNumberReturn = true;
	let closingDateReturn = false;
	let taxRateReturn = false;
	let billingStatusReturn = false;
	let invoiceDetailsTableReturn = true;


	// Divs displaying error messages
	var errorInvoiceNumber = $("#errorInvoiceNumber");
	var errorInvoiceCreationDate = $("#errorInvoiceCreationDate");
	var errorOrderNumber = $("#errorOrderNumber");
	var errorClosingDate = $("#errorClosingDate");
	var errorTaxRate = $("#errorTaxRate");
	var errorBillingStatus = $("#errorBillingStatus");




	// Buttons
	var buttonUpdateInvoiceDetails = $("#buttonUpdateInvoiceDetails");


	// Functions for validating.....

	function checkInvoiceNumber() {
		var caseNumberVal = invoiceNumber.val();
		try {
			if (caseNumberVal.trim() == "") throw "Cannot be empty"; // E2180

			if (/^[0-9]+$/.test(caseNumberVal)) {
				setSuccessFor(invoiceNumber, errorInvoiceNumber);
				invoiceNumberReturn = true;
			} else {
				invoiceNumberReturn = false;
				//throw "Invalid Case Number";
				throw "Invalid Invoice Number";  // E2181
			}
		} catch (error) {
			setErrorFor(invoiceNumber, errorInvoiceNumber, error);
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

	function checkOrderNumber() {
		var caseNumberVal = orderNumber.val();
		try {
			//if(caseNumberVal.trim() == "")  throw "Cannot be empty";

			if (/^[0-9]+$/.test(caseNumberVal) || caseNumberVal.trim() == "") {
				setSuccessFor(orderNumber, errorOrderNumber);
				orderNumberReturn = true;
			} else {
				orderNumberReturn = false;
				//throw "Invalid Case Number";
				throw "Invalid Order Number"; //E2187
			}
		} catch (error) {
			setErrorFor(orderNumber, errorOrderNumber, error);
		}
	}


	function checkInvoiceDetailsTable() {
		//const testArr = document.querySelectorAll("#quotationDetailsTaxableTrId")
		const InvoiceItemTaxableIDArray = document.getElementsByName("InvoiceItemTaxableID[]");
		const invoiceItemTaxableItemNameArray = document.getElementsByName("invoiceItemTaxableItemName[]");
		const invoiceItemTaxableContentsArray = document.getElementsByName("invoiceItemTaxableContents[]");
		const invoiceItemTaxableAmountofMoneyArray = document.getElementsByName("invoiceItemTaxableAmountofMoney[]");


		for (var i = 0; i < InvoiceItemTaxableIDArray.length; i++) {

			if (invoiceItemTaxableItemNameArray[i].value != "" || invoiceItemTaxableContentsArray[i].value != "" || invoiceItemTaxableAmountofMoneyArray[i].value != "") {
				//Validation code..............
				if (invoiceItemTaxableItemNameArray[i].value.trim() != "" && invoiceItemTaxableAmountofMoneyArray[i].value.trim() != "") {
					console.log("valid Table data");
					invoiceDetailsTableReturn = true;
				} else {
					console.log("Invalid Table data");
					invoiceDetailsTableReturn = false;
					showMessage('info', "Please fill the Invoice Details Table Correclty");
					break;
				}

			}
		}

	}






	// Focus Out Events
	invoiceNumber.focusout(checkInvoiceNumber);
	invoiceCreationDate.focusout(() => {
		invoiceCreationDateReturn = checkMandatoryField(invoiceCreationDate, errorInvoiceCreationDate);

	});
	orderNumber.focusout(checkOrderNumber);
	closingDate.focusout(() => {
		closingDateReturn = checkMandatoryField(closingDate, errorClosingDate);

	});

	taxRate.focusout(() => {
		taxRateReturn = checkMandatoryField(taxRate, errorTaxRate);

	});

	billingStatus.focusout(() => {
		billingStatusReturn = checkMandatoryField(billingStatus, errorBillingStatus);

	});



	buttonUpdateInvoiceDetails.click(function() {

		//checkInvoiceNumber();
		invoiceCreationDateReturn = checkMandatoryField(invoiceCreationDate, errorInvoiceCreationDate);
		checkOrderNumber();
		closingDateReturn = checkMandatoryField(closingDate, errorClosingDate);
		taxRateReturn = checkMandatoryField(taxRate, errorTaxRate);
		billingStatusReturn = checkMandatoryField(billingStatus, errorBillingStatus);
		checkInvoiceDetailsTable();

		if (invoiceNumberReturn == true && invoiceCreationDateReturn == true && orderNumberReturn == true && closingDateReturn == true && taxRateReturn == true && billingStatusReturn == true && invoiceAmountReturn == true && invoiceDetailsTableReturn == true) {
			console.log("Valid");

		} else {
			console.log("InValid");
			showMessage('info', "N1093");
		}
	});



})


function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}


/*function setErrorFor(divInput, divError, errorCode) {
	message = caseErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

