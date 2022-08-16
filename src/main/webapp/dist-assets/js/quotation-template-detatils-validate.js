let unitPriceReturn = true;
let quantityReturn = true;

function checkUnitPrice(node) {
	let unitPrice = node.value.trim();
	let tdNode = node.closest("td");

	if (/^[0-9]+$/.test(unitPrice) || unitPrice == "") {
		unitPriceReturn = true;
		tdNode.className = "successVal";
	} else {
		unitPriceReturn = false;
		tdNode.className = "errorVal";
		showMessage('info', "N1200");
	}
}

function checkQuantity(node) {
	let quantity = node.value.trim();
	let tdNode = node.closest("td");

	if (/^[0-9]+$/.test(quantity) || quantity == "") {
		quantityReturn = true;
		tdNode.className = "successVal";
	} else {
		quantityReturn = false;
		tdNode.className = "errorVal";
		showMessage('info',  "N1200")
	}
}


$(function() {

	// Input Elements
	var quotationTemplateName = $("#quotationTemplateName");
	var quotationSortOrder = $("#quotationSortOrder");

	// Buttons
	var buttonEditQuoteDetails = $("#buttonEditQuoteDetails");

	// Return Values
	let quotationTemplateNameReturn = false;
	let quotationSortOrderReturn = false;

	////////////////////////////////////////////////////////////

	let taxTableFill = false;
	let nonTaxTableFill = false;


	// Divs displaying error messages
	var errorTemplateName = $("#errorTemplateName");
	var errorSortOrder = $("#errorSortOrder");


	// Functions for validating.....

	function checkTemplateName() {
		quotationTempNameVal = quotationTemplateName.val();
		try {
			if (quotationTempNameVal.trim() == "") {
				throw "E1200"
			} else {
				quotationTemplateNameReturn = true;
				setSuccessFor(quotationTemplateName, errorTemplateName);
			}

		} catch (error) {
			setErrorFor(quotationTemplateName, errorTemplateName, error);
			quotationTemplateNameReturn = false;
		}
	}

	function checkSortOrder() {
		quotationSortOrderVal = quotationSortOrder.val();
		try {

			if (/^[0-9]+$/.test(quotationSortOrderVal)) {
				setSuccessFor(quotationSortOrder, errorSortOrder);
				quotationSortOrderReturn = true;
			} else {
				quotationSortOrderReturn = false;
				throw "E1201"
			}
		} catch (error) {
			setErrorFor(quotationSortOrder, errorSortOrder, error);
		}

	}

	// Focus Out Events
	quotationTemplateName.focusout(checkTemplateName);
	quotationSortOrder.focusout(checkSortOrder);


	// Button Click Event
	buttonEditQuoteDetails.click(function() {

		let taxableQuotationTableReturn = true;    // 01/10
		let nonTaxableQuotationTableReturn = true;   // 01/10


		checkTemplateName();
		checkSortOrder();
		checkTaxQuotationDetailsTable();
		checkNonTaxQuotationDetailsTable();

		function checkTaxQuotationDetailsTable() {
			//const testArr = document.querySelectorAll("#quotationDetailsTaxableTrId")
			const quotationItemTaxableIDArray = document.getElementsByName("quotationItemTaxableID[]");
			const quotationItemTaxableItemNameArray = document.getElementsByName("quotationItemTaxableItemName[]");
			const quotationItemTaxableUnitPriceArray = document.getElementsByName("quotationItemTaxableUnitPrice[]");
			const quotationItemTaxableQuantityArray = document.getElementsByName("quotationItemTaxableQuantity[]");
			const quotationItemTaxableAmountMoneyArray = document.getElementsByName("quotationItemTaxableAmountMoney[]");


			for (var i = 0; i < quotationItemTaxableIDArray.length; i++) {
				//console.log(" Item NAme  " +  quotationItemTaxableItemNameArray[i].value);

				//if(quotationItemTaxableQuantityArray[i].value != "") console.log("oooooopppppp")

				if (quotationItemTaxableItemNameArray[i].value != "" || quotationItemTaxableUnitPriceArray[i].value != "" || quotationItemTaxableQuantityArray[i].value != "") {
					//Validation code..............
					if (quotationItemTaxableItemNameArray[i].value.trim() != "" && quotationItemTaxableUnitPriceArray[i].value.trim() != "" && quotationItemTaxableQuantityArray[i].value.trim() != "") {
						taxTableFill = true;
						taxableQuotationTableReturn = true;
					} else {
						taxableQuotationTableReturn = false;
						//console.log("Please Fill the Table Correctly!");	
						showMessage('info',  "N1201");
						break;
					}

				}
			}

		}



		function checkNonTaxQuotationDetailsTable() {
			//const testArr = document.querySelectorAll("#quotationDetailsTaxableTrId")
			const quotationItemNonTaxableIDArray = document.getElementsByName("quotationItemNonTaxableID[]");
			const quotationItemNonTaxableItemNameArray = document.getElementsByName("quotationItemNonTaxableItemName[]");
			const quotationItemNonTaxableUnitPriceArray = document.getElementsByName("quotationItemNonTaxableUnitPrice[]");
			const quotationItemNonTaxableQuantityArray = document.getElementsByName("quotationItemNonTaxableQuantity[]");


			for (var i = 0; i < quotationItemNonTaxableIDArray.length; i++) {
				//console.log(" Item NAme  " +  quotationItemTaxableItemNameArray[i].value);

				//if(quotationItemTaxableQuantityArray[i].value != "") console.log("oooooopppppp")

				if (quotationItemNonTaxableItemNameArray[i].value != "" || quotationItemNonTaxableUnitPriceArray[i].value != "" || quotationItemNonTaxableQuantityArray[i].value != "") {
					//Validation code..............

					if (quotationItemNonTaxableItemNameArray[i].value.trim() != "" && quotationItemNonTaxableUnitPriceArray[i].value.trim() != "" && quotationItemNonTaxableQuantityArray[i].value.trim() != "") {
						nonTaxTableFill = true;
						nonTaxableQuotationTableReturn = true;
					} else {
						nonTaxableQuotationTableReturn = false;
						//console.log("Please Fill the Table Correctly!");	
						showMessage('info',  "N1202");
						break;
					}

				}
			}

		}


		//((taxableQuotationTableReturn == true && tableFill == true ) || (nonTaxableQuotationTableReturn == true && tableFill == true))

		if (quotationTemplateNameReturn == true && quotationSortOrderReturn == true && unitPriceReturn == true && quantityReturn == true && taxableQuotationTableReturn == true && nonTaxableQuotationTableReturn == true && (taxTableFill == true || nonTaxTableFill == true)) {
			editQuotationTempInfo();
		} else {
			showMessage('info',  "N1203");
			
		}


	});
})



function setErrorFor(divInput, divError, errorCode) {
	message = quotationTempErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}