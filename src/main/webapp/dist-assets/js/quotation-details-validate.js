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
		showMessage('info', "N1200")
	}
}



$(function() {

	// Input Elements
	var quotationMatterName = $("#quotationMatterName");
	var quotationDateOfQuotation = $("#quotationDateOfQuotation");
	var quotationConsumptionTax = $("#quotationConsumptionTax");
	var quotationQuotationStatus = $("#quotationQuotationStatus");
	var quotationDispatchClassification = $("#quotationDispatchClassification");
	var implementationPeriodStart = $("#implementationPeriodStart");	
	var implementationPeriodEnd = $("#implementationPeriodEnd");
	var requiredNumberOfPeople = $("#requiredNumberOfPeople");	
	var salary = $("#salary");	
	var numberOfHires = $("#numberOfHires");	
	var workingHoursStart = $("#workingHoursStart");
	var workingHoursEnd = $("#workingHoursEnd");
	var workingHoursStartRecruitment = $("#workingHoursStartRecruitment");
	var workingHoursEndRecruitment = $("#workingHoursEndRecruitment");
	
		
		

	// Buttons
	var buttonUpdateQuoteDetails = $("#buttonUpdateQuoteDetails");

	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let quotationMatterNameReturn = false;
	let quotationDateOfQuotationReturn = false;
	let quotationConsumptionTaxReturn = false;
	let quotationQuotationStatusReturn = false;
	let implementationPeriodReturn = true;
	let requiredNumberOfPeopleReturn = true;
	let salaryReturn = true;
	let numberOfHiresReturn = true;
	let taxableQuotationTableReturn = false;
	let nonTaxableQuotationTableReturn = false;
	let workingHoursReturn = true;
	let workingHoursRecruitmentReturn = true;
	
	////////////////////////////////////////////
	let taxTableFill = false;
	let nonTaxTableFill = false;

	// Divs displaying error messages
	var errorMatterName = $("#errorMatterName");
	var errorDateOfQuotation = $("#errorDateOfQuotation");	
	var errorConsumptionTax = $("#errorConsumptionTax");	
	var errorQuotationStatus = $("#errorQuotationStatus");	
	var errorImplementationPeriodStart = $("#errorImplementationPeriodStart");	
	var errorImplementationPeriodEnd = $("#errorImplementationPeriodEnd");	
	var errorRequiredNumberOfPeople = $("#errorRequiredNumberOfPeople");
	var errorSalary = $("#errorSalary");
	var errorNoHires = $("#errorNoHires");	
	var errorWorkingHoursStart = $("#errorWorkingHoursStart");
	var errorWorkingHoursEnd = $("#errorWorkingHoursEnd");
	var errorWorkingHoursStartRecruitment = $("#errorWorkingHoursStartRecruitment");
	var errorWorkingHoursEndRecruitment = $("#errorWorkingHoursEndRecruitment");	
	
	
	// Functions for validating.....
	
	function checkMatterName() {
		quotationMatterNameVal = quotationMatterName.val();
		try {
			if (quotationMatterNameVal.trim() == "") {
			
				throw "E1205"
			} else {
				quotationMatterNameReturn = true;
				setSuccessFor(quotationMatterName, errorMatterName);
			}					
		} catch (error) {
			setErrorFor(quotationMatterName, errorMatterName, error);
			quotationMatterNameReturn = false;
		}

	}
	
	function checkQuotationDate() {
		quotationDateVal = quotationDateOfQuotation.val();
		try {
			if (quotationDateVal.trim() == "") {
				throw "E1205"
			} else {
				quotationDateOfQuotationReturn = true;
				setSuccessFor(quotationDateOfQuotation, errorDateOfQuotation);
			}					
		} catch (error) {
			setErrorFor(quotationDateOfQuotation, errorDateOfQuotation, error);
			quotationDateOfQuotationReturn = false;
		}

	}
	
	function checkConsumptionTax() {
		quotationConsumptionTaxVal = quotationConsumptionTax.val();
		
		try {
			if (quotationConsumptionTaxVal == "") {
				throw "E1205"
			} else {
				quotationConsumptionTaxReturn = true;
				setSuccessFor(quotationConsumptionTax, errorConsumptionTax);
			}					
		} catch (error) {
			setErrorFor(quotationConsumptionTax, errorConsumptionTax, error);
			quotationConsumptionTaxReturn = false;
		}

	}
	
	function checkQuotationStatus() {
		quotationQuotationStatusVal = quotationQuotationStatus.val();
		try {
			if (quotationQuotationStatusVal == "") {
				throw "E1205"
			} else {
				quotationQuotationStatusReturn = true;
				setSuccessFor(quotationQuotationStatus, errorQuotationStatus);
			}					
		} catch (error) {
			setErrorFor(quotationQuotationStatus, errorQuotationStatus, error);
			quotationQuotationStatusReturn = false;
		}

	}

	function checkImplementationPeriod() {
		implementPeriodStartVal = implementationPeriodStart.val();
		implementPeriodEndVal = implementationPeriodEnd.val();
		
		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					throw "E1210";
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

	function checkWorkingHours() {
		workingHoursStartVal = workingHoursStart.val();
		workingHoursEndVal = workingHoursEnd.val();		
		
		
		if (workingHoursStartVal != "" && workingHoursEndVal != "") {
			try {
				if (workingHoursStartVal > workingHoursEndVal) {
					throw "E1206";
				} else {
					workingHoursReturn = true;
					setSuccessFor(workingHoursStart, errorWorkingHoursStart);
					setSuccessFor(workingHoursEnd, errorWorkingHoursEnd);
				}
			} catch (error) {
				setErrorFor(workingHoursStart, errorWorkingHoursStart, error);
				setErrorFor(workingHoursEnd, errorWorkingHoursEnd, error);
				workingHoursReturn = false;
			}

		}
	}
	
	function checkWorkingHoursRecruitment() {
		workingHoursStartRecruitmentVal = workingHoursStartRecruitment.val();
		workingHoursEndRecruitmentVal = workingHoursEndRecruitment.val();		
		
		
		if (workingHoursStartRecruitmentVal != "" && workingHoursEndRecruitmentVal != "") {
			try {
				if (workingHoursStartRecruitmentVal > workingHoursEndRecruitmentVal) {
					throw "E1206";
				} else {
					workingHoursRecruitmentReturn = true;
					setSuccessFor(workingHoursStartRecruitment, errorWorkingHoursStartRecruitment);
					setSuccessFor(workingHoursEndRecruitment, errorWorkingHoursEndRecruitment);
				}
			} catch (error) {
				setErrorFor(workingHoursStartRecruitment, errorWorkingHoursStartRecruitment, error);
				setErrorFor(workingHoursEndRecruitment, errorWorkingHoursEndRecruitment, error);
				workingHoursRecruitmentReturn = false;
			}

		}
	}
	
		
	
	function checkRequiredNoPeople() {
		var requiredNumberOfPeopleVal = requiredNumberOfPeople.val();
		try {

			if (/^[0-9]+$/.test(requiredNumberOfPeopleVal) || requiredNumberOfPeopleVal == "") {
				setSuccessFor(requiredNumberOfPeople, errorRequiredNumberOfPeople);
				requiredNumberOfPeopleReturn = true;
			} else {
				requiredNumberOfPeopleReturn = false;
				throw "E1207";
			}
		} catch (error) {
			setErrorFor(requiredNumberOfPeople, errorRequiredNumberOfPeople, error);
		}
	}
	
	function checkSalary() {
		var salaryVal = salary.val();
		try {

			if (/^[0-9]+$/.test(salaryVal) || salaryVal == "") {
				setSuccessFor(salary, errorSalary);
				salaryReturn = true;
			} else {
				salaryReturn = false;
				throw "E1208";
			}
		} catch (error) {
			setErrorFor(salary, errorSalary, error);
		}
	}
	
	function checkNoHires() {
		var numberOfHiresVal = numberOfHires.val();
		try {

			if (/^[0-9]+$/.test(numberOfHiresVal) || numberOfHiresVal == "") {
				setSuccessFor(numberOfHires, errorNoHires);
				numberOfHiresReturn = true;
			} else {
				numberOfHiresReturn = false;
				throw "E1209";
			}
		} catch (error) {
			setErrorFor(numberOfHires, errorNoHires, error);
		}
	}
	
	
	
	// Focus Out Events
	quotationMatterName.focusout(checkMatterName);	
	quotationDateOfQuotation.focusout(checkQuotationDate);	
	quotationConsumptionTax.focusout(checkConsumptionTax);	
	quotationQuotationStatus.focusout(checkQuotationStatus);	
	implementationPeriodStart.focusout(checkImplementationPeriod);
	implementationPeriodEnd.focusout(checkImplementationPeriod);
	workingHoursStart.focusout(checkWorkingHours);
	workingHoursEnd.focusout(checkWorkingHours);
	
	requiredNumberOfPeople.focusout(checkRequiredNoPeople);
	
	workingHoursStartRecruitment.focusout(checkWorkingHoursRecruitment);
	workingHoursEndRecruitment.focusout(checkWorkingHoursRecruitment);
	
	
	salary.focusout(checkSalary);
	numberOfHires.focusout(checkNoHires);


	buttonUpdateQuoteDetails.click(function() {
	
	    let taxableQuotationTableReturn = true;    // 01/10
		let nonTaxableQuotationTableReturn = true;   // 01/10
		
		checkMatterName();
		checkQuotationDate();
		checkConsumptionTax();
		checkQuotationStatus();
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

			if (quotationItemTaxableItemNameArray[i].value != "" || quotationItemTaxableUnitPriceArray[i].value != "" || quotationItemTaxableQuantityArray[i].value != "") {
				//Validation code..............
				if (quotationItemTaxableItemNameArray[i].value.trim() != "" && quotationItemTaxableUnitPriceArray[i].value.trim() != "" && quotationItemTaxableQuantityArray[i].value.trim() != "") {
					taxTableFill = true;
					taxableQuotationTableReturn = true;
				} else {
					taxableQuotationTableReturn = false;
					
					showMessage('info', "N1201");
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
			
			if (quotationItemNonTaxableItemNameArray[i].value != "" || quotationItemNonTaxableUnitPriceArray[i].value != "" || quotationItemNonTaxableQuantityArray[i].value != "") {
				//Validation code..............

				if (quotationItemNonTaxableItemNameArray[i].value.trim() != "" && quotationItemNonTaxableUnitPriceArray[i].value.trim() != "" && quotationItemNonTaxableQuantityArray[i].value.trim() != "") {
					nonTaxTableFill = true;
					nonTaxableQuotationTableReturn = true;
				} else {
					nonTaxableQuotationTableReturn = false;
						
					showMessage('info', "N1202");
					break;
				}

			}
		}

	}

		quotationDispatchClassiVal = quotationDispatchClassification.val();	
		
		if(quotationDispatchClassiVal == 1 || quotationDispatchClassiVal == 2 || quotationDispatchClassiVal == 3){
			checkImplementationPeriod();
			checkRequiredNoPeople();
		}


		if (quotationMatterNameReturn == true && quotationDateOfQuotationReturn ==  true && quotationConsumptionTaxReturn == true && quotationQuotationStatusReturn == true && implementationPeriodReturn == true && requiredNumberOfPeopleReturn == true && salaryReturn == true && numberOfHiresReturn == true && unitPriceReturn == true && quantityReturn == true && workingHoursReturn == true && workingHoursRecruitmentReturn == true && taxableQuotationTableReturn == true && nonTaxableQuotationTableReturn == true && (taxTableFill == true || nonTaxTableFill == true)) {
			
			//console.log("valid info");
			saveQuotationInfo();	
		} else {
		
		   showMessage('info',"N1212");
		   // alert("Can't save to database");
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
	divInput.addClass("errorVal").removeClass("successVal");
	message = quotationErrayArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

