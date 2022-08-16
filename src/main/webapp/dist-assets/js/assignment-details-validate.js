let allowanceAmountReturn = true;
let advancePaymentAmountReturn = true;
let closingReportPhotoReturn = true;


function checkAllowanceAmount(node) {
	let unitPrice = node.value.trim();
	let tdNode = node.closest("td");

	if (/^[0-9]+$/.test(unitPrice) || unitPrice == "") {
		allowanceAmountReturn = true;
		tdNode.className = "successVal";
	} else {
		allowanceAmountReturn = false;
		tdNode.className = "errorVal";
		showMessage('info', "N1200"); //  Please Input a valid number!
	}
}

function checkAdvancePaymentAmount(node) {
	let unitPrice = node.value.trim();
	let tdNode = node.closest("td");

	if (/^[0-9]+$/.test(unitPrice) || unitPrice == "") {
		advancePaymentAmountReturn = true;
		tdNode.className = "successVal";
	} else {
		advancePaymentAmountReturn = false;
		tdNode.className = "errorVal";
		showMessage('info', "N1200");   //  Please Input a valid number!
	}
}

//const  errorClosingReportPhoto = document.getElementById("errorClosingReportPhoto");
var errorClosingReportPhoto = $("#errorClosingReportPhoto");

function validateFileType(node) {
	//var fileName = document.getElementById("fileName").value;
	var fileName = node.value;
	var idxDot = fileName.lastIndexOf(".") + 1;
	var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
	if (extFile == "jpg" || extFile == "jpeg" || extFile == "png") {
		setSuccessFor("", errorClosingReportPhoto);
		closingReportPhotoReturn = true;
	} else {
		//alert("Only jpg/jpeg and png files are allowed!");
		setErrorFor("", errorClosingReportPhoto, "E2068");  //Only jpg/jpeg and png files are allowed
		closingReportPhotoReturn = false;
	}
}



$(function() {

	// Input Elements
	var basicDailySalary = $("#basicDailySalary");
	var advancePayment = $("#advancePayment");
	var deductionAmount1 = $("#deductionAmount1");
	var deductionAmount2 = $("#deductionAmount2");
	var workingHoursStart = $("#workingHoursStart");
	var workingHoursEnd = $("#workingHoursEnd");
	var overtimeCosts = $("#overtimeCosts");
	var midnightLaborCosts = $("#midnightLaborCosts");
	var holidayLaborCosts = $("#holidayLaborCosts");
	var overtimeBillingFee = $("#overtimeBillingFee");
	var midnightLaborBilling = $("#midnightLaborBilling");
	var holidayLaborBilling = $("#holidayLaborBilling");
	var actualBreakTime = $("#actualBreakTime");
	var midnightBreakTime = $("#midnightBreakTime");	


	// Buttons
	var buttonUpdateAssignStaff = $("#buttonUpdateAssignStaff");

	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let basicDailySalaryReturn = false;
	let advancePaymentReturn = true;
	let deductionAmount1Return = true;
	let deductionAmount2Return = true;
	let workingHoursReturn = true;
	let overtimeCostsReturn = true;
	let midnightLaborCostsReturn = true;
	let holidayLaborCostsReturn = true;
	let overtimeBillingFeeReturn = true;
	let midnightLaborBillingReturn = true;
	let holidayLaborBillingReturn = true;
	let allowanceTableReturn = true;
	let actualBreakTimeReturn = true;
	let midnightBreakTimeReturn = true;
	let complaintContactInformationReturn = true;
	let workingHoursStartFormReturn = true;
	let workingHoursEndFormReturn = true;
	let breakTimeMatchReturn = true;

	// Divs displaying error messages
	var errorBasicDailySalary = $("#errorBasicDailySalary");
	var errorAdvancePayment = $("#errorAdvancePayment");
	var errorDeductionAmount1 = $("#errorDeductionAmount1");
	var errorDeductionAmount2 = $("#errorDeductionAmount2");
	var errorWorkingHoursStart = $("#errorWorkingHoursStart");
	var errorWorkingHoursEnd = $("#errorWorkingHoursEnd");
	var errorOvertimeCosts = $("#errorOvertimeCosts");
	var errorMidnightLaborCosts = $("#errorMidnightLaborCosts");
	var errorHolidayLaborCosts = $("#errorHolidayLaborCosts");
	var errorOvertimeBillingFee = $("#errorOvertimeBillingFee");
	var errorMidnightLaborBilling = $("#errorMidnightLaborBilling");
	var errorHolidayLaborBilling = $("#errorHolidayLaborBilling");
	var errorAllowanceTable = $("#errorAllowanceTable");
	var errorActualBreakTime = $("#errorActualBreakTime");
	var errorMidnightBreakTime = $("#errorMidnightBreakTime");


	// Functions for validating.....

	function checkBasicDailySalary() {
		var basicSalaryVal = basicDailySalary.val();
		try {
			if (basicSalaryVal.trim() == "") throw "E2050";//throw "Cannot be empty";       

			if (/^[0-9]+$/.test(basicSalaryVal)) {
				setSuccessFor(basicDailySalary, errorBasicDailySalary);
				basicDailySalaryReturn = true;
			} else {
				//throw "Invalid Basic Salary (Daily Salary)";
				throw "E2055";
			}
		} catch (error) {
			basicDailySalaryReturn = false;
			setErrorFor(basicDailySalary, errorBasicDailySalary, error);
		}
	}

	function checkAdvancePayment() {
		var basicSalaryVal = advancePayment.val();
		try {

			if (/^[0-9]+$/.test(basicSalaryVal) || basicSalaryVal.trim() == "") {
				setSuccessFor(advancePayment, errorAdvancePayment);
				advancePaymentReturn = true;
			} else {
				//throw "Invalid Advance Payment";
				throw "E2056";
			}
		} catch (error) {
			advancePaymentReturn = false;
			setErrorFor(advancePayment, errorAdvancePayment, error);
		}
	}

	function checkDeductionAmount1() {
		var basicSalaryVal = deductionAmount1.val();
		try {

			if (/^[0-9]+$/.test(basicSalaryVal) || basicSalaryVal.trim() == "") {
				setSuccessFor(deductionAmount1, errorDeductionAmount1);
				deductionAmount1Return = true;
			} else {
				//throw "Invalid Deduction Amount 1 ";
				throw "E2057";
			}
		} catch (error) {
			deductionAmount1Return = false;
			setErrorFor(deductionAmount1, errorDeductionAmount1, error);
		}
	}

	function checkDeductionAmount2() {
		var basicSalaryVal = deductionAmount2.val();
		try {

			if (/^[0-9]+$/.test(basicSalaryVal) || basicSalaryVal.trim() == "") {
				setSuccessFor(deductionAmount2, errorDeductionAmount2);
				deductionAmount2Return = true;
			} else {
				//throw "Invalid Deduction Amount 2 ";
				throw "E2058";
			}
		} catch (error) {
			deductionAmount2Return = false;
			setErrorFor(deductionAmount2, errorDeductionAmount2, error);
		}
	}

	function checkStartEndTime() {
		workingHoursStartVal = workingHoursStart.val();
		workingHoursEndVal = workingHoursEnd.val();

		if (workingHoursStartVal != "" && workingHoursEndVal != "" && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursStartVal) && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursEndVal) ) {
			try {
				if (workingHoursStartVal > workingHoursEndVal) {
					//throw "Working Hours do not match!";
					throw "E2059";
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
	
	function checkTimeFormat(inputElement, errorElement) {
		inputVal = inputElement.val();
		try {

			if (/^([0-9][0-9]):[0-5][0-9]$/.test(inputVal) || inputVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				checkStartEndTime(); // Checking for the relationship
				return true;
			} else {
				throw "E2069";//Please enter time duration in hh:mm format
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;			
		}
	}

	function checkOvertimeCost() {
		var basicSalaryVal = overtimeCosts.val();
		try {

			if (/^[0-9]+$/.test(basicSalaryVal) || basicSalaryVal.trim() == "") {
				setSuccessFor(overtimeCosts, errorOvertimeCosts);
				overtimeCostsReturn = true;
			} else {
				//throw "Invalid Overtime Cost ";
				throw "E2060";
			}
		} catch (error) {
			overtimeCostsReturn = false;
			setErrorFor(overtimeCosts, errorOvertimeCosts, error);
		}
	}

	// Common VAlidation for checking Optional numeric fields
	function checkOptionalNumber(inputElement, errorElement, errorMsg) {
		var inputVal = inputElement.val();
		try {

			if (/^[0-9]+$/.test(inputVal) || inputVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				return true;
			} else {
				throw errorMsg;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}


	function checkAllowanceTable() {

		const allowanceIDArray = document.getElementsByName("allowanceID[]");
		const allowanceNominalArray = document.getElementsByName("allowanceNominal[]");
		const allowanceDetailArray = document.getElementsByName("allowanceDetail[]");
		const allowanceAmountOfMoneyArray = document.getElementsByName("allowanceAmountOfMoney[]");
		//console.log("allowanceIDArray" +  allowanceIDArray.length);

		for (var i = 0; i < allowanceIDArray.length; i++) {

			if (allowanceNominalArray[i].value != "" || allowanceDetailArray[i].value != "" || allowanceAmountOfMoneyArray[i].value != "") {
				//Validation code..............
				try {
					if (isNaN(allowanceAmountOfMoneyArray[i].value.trim())) throw "E2067"; //"Amount of money is not valid";

					if (allowanceNominalArray[i].value.trim() != "" && allowanceDetailArray[i].value.trim() != "" && allowanceAmountOfMoneyArray[i].value.trim() != "") {
						allowanceTableReturn = true;
						setSuccessFor("", errorAllowanceTable);
					} else {
						showMessage('info', "N1100");  // Please Fill the Allowance Table Correctly
						//throw "Allowance info is Not Valid.  All the columns of a row should be filled!"; // E2066	
						throw "E2066";
					}
				} catch (error) {
					allowanceTableReturn = false;
					setErrorFor("", errorAllowanceTable, error);
					break;
				}

			} else {
				allowanceTableReturn = true;
				setSuccessFor("", errorAllowanceTable);

			}
		}

	}
	
	function checkTimeDuraion(inputElement, errorElement) {
		inputElementVal = inputElement.val();
		try {

			if (/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.test(inputElementVal) || inputElementVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				return  true;
			} else {
				throw "E2069";   //Please enter time duration in hh:mm format
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}

	// Focus Out Events
	basicDailySalary.focusout(checkBasicDailySalary);
	advancePayment.focusout(checkAdvancePayment);
	deductionAmount1.focusout(checkDeductionAmount1);
	deductionAmount2.focusout(checkDeductionAmount2);
	//workingHoursStart.focusout(checkWorkingHours);
	workingHoursStart.focusout(() => {
		workingHoursStartFormReturn = checkTimeFormat(workingHoursStart, errorWorkingHoursStart );		
	});
	workingHoursEnd.focusout(() => {
		workingHoursEndFormReturn = checkTimeFormat(workingHoursEnd, errorWorkingHoursEnd );		
	});
	overtimeCosts.focusout(checkOvertimeCost);
	midnightLaborCosts.focusout(() => {
		midnightLaborCostsReturn = checkOptionalNumber(midnightLaborCosts, errorMidnightLaborCosts, "E2061");  //  Invalid Midnight labor costs 
	});

	holidayLaborCosts.focusout(() => {
		holidayLaborCostsReturn = checkOptionalNumber(holidayLaborCosts, errorHolidayLaborCosts, "E2062");  //  Invalid Holiday labor costs
	});

	overtimeBillingFee.focusout(() => {
		overtimeBillingFeeReturn = checkOptionalNumber(overtimeBillingFee, errorOvertimeBillingFee, "E2063");  //  Invalid Overtime Billing Fee
	});

	midnightLaborBilling.focusout(() => {
		midnightLaborBillingReturn = checkOptionalNumber(midnightLaborBilling, errorMidnightLaborBilling, "E2064");  //   Invalid Midnight Labor Billing Fee
	});

	holidayLaborBilling.focusout(() => {
		holidayLaborBillingReturn = checkOptionalNumber(holidayLaborBilling, errorHolidayLaborBilling, "E2065");  //  // Invalid Holiday Labor Billing Fee
	});
	
	actualBreakTime.focusout(() => {
		actualBreakTimeReturn = checkTimeDuraion(actualBreakTime,errorActualBreakTime);
		checkBreakTimeMatch();  // Checking the relationship
	});
	
	midnightBreakTime.focusout(() => {
		midnightBreakTimeReturn = checkTimeDuraion(midnightBreakTime,errorMidnightBreakTime);
		checkBreakTimeMatch();  // Checking the relationship
	});
	
	// Checking the relationship.........
	function checkBreakTimeMatch() {
		workingHoursStartVal = actualBreakTime.val();
		workingHoursEndVal = midnightBreakTime.val();

		if (workingHoursStartVal != "" && workingHoursEndVal != "" && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursStartVal) && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursEndVal) ) {
			try {
				if (workingHoursEndVal > workingHoursStartVal) {
					throw "E2070"; //(Inside) Midnight Break Time can't be greater than Actual Break Time
				} else {
					breakTimeMatchReturn = true;
					setSuccessFor(actualBreakTime, errorActualBreakTime);
					setSuccessFor(midnightBreakTime, errorMidnightBreakTime);
				}
			} catch (error) {
				setErrorFor(actualBreakTime, errorActualBreakTime, error);
				setErrorFor(midnightBreakTime, errorMidnightBreakTime, error);
				breakTimeMatchReturn = false;
			}

		}
	}
	




	buttonUpdateAssignStaff.click(function() {

		checkBasicDailySalary();
		checkAdvancePayment();
		checkDeductionAmount1();
		checkDeductionAmount2();
		//checkWorkingHours();
		checkOvertimeCost();
		midnightLaborCostsReturn = checkOptionalNumber(midnightLaborCosts, errorMidnightLaborCosts, "E2061"); // E2061
		holidayLaborCostsReturn = checkOptionalNumber(holidayLaborCosts, errorHolidayLaborCosts, "E2062");  // E2062
		overtimeBillingFeeReturn = checkOptionalNumber(overtimeBillingFee, errorOvertimeBillingFee, "E2063");  // E2063	
		midnightLaborBillingReturn = checkOptionalNumber(midnightLaborBilling, errorMidnightLaborBilling, "E2064");  // E2064	
		holidayLaborBillingReturn = checkOptionalNumber(holidayLaborBilling, errorHolidayLaborBilling, "E2065");  // E2065
		workingHoursStartFormReturn = checkTimeFormat(workingHoursStart, errorWorkingHoursStart );
		workingHoursEndFormReturn = checkTimeFormat(workingHoursEnd, errorWorkingHoursEnd );

		checkAllowanceTable();

		if (basicDailySalaryReturn == true && advancePaymentReturn == true && deductionAmount1Return == true && deductionAmount2Return == true && workingHoursReturn == true && overtimeCostsReturn == true && midnightLaborCostsReturn == true && holidayLaborCostsReturn == true && overtimeBillingFeeReturn == true && midnightLaborBillingReturn == true && holidayLaborBillingReturn == true && allowanceTableReturn == true && allowanceAmountReturn == true && advancePaymentAmountReturn == true && closingReportPhotoReturn == true && actualBreakTimeReturn == true && midnightBreakTimeReturn == true && workingHoursStartFormReturn == true && workingHoursEndFormReturn == true && breakTimeMatchReturn == true) {
			console.log("Valid Info");
			saveAssignStaffInfo();
		} else {
			//showMessage('info', "Please Re-Check Values!");
			showMessage('info', "N1094");

		}
	});

})


/*function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

//Validation for Japanese Translations.......
function setErrorFor(divInput, divError, errorCode) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	message = assignmentErrorArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	if (divInput != "") divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

