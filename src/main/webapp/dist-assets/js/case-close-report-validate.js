let amountOfMoneyReturn = true;


function checkAmountOfMoney(node) {
	let unitPrice = node.value.trim();
	let tdNode = node.closest("td");

	if (/^[0-9]+$/.test(unitPrice) || unitPrice == "") {
		amountOfMoneyReturn = true;
		tdNode.className = "successVal";
	} else {
		amountOfMoneyReturn = false;
		tdNode.className = "errorVal";
		showMessage('info', "N1200");
	}
}


$(function() {

	// Input Elements
	var StartTime = $("#StartTime");
	var EndingTime = $("#EndingTime");
	var BreakTime = $("#BreakTime");
	var InsideMidnightBreakTime = $("#InsideMidnightBreakTime");



	// Buttons
	//var buttonRegisterQuoteDetails = $("#buttonRegisterQuoteDetails");

	// Return Values
	let startTimeFormatReturn = true;
	let EndTimeFormatReturn = true;
	let startEndTimeReturn = true;
	let BreakTimeReturn = true;
	let InsideMidnightBreakTimeReturn = true;
	let breakTimeMatchReturn = true;
	let advancePaymentTableReturn = true;

	// Divs displaying error messages
	var errorStartTime = $("#errorStartTime");
	var errorEndingTime = $("#errorEndingTime");
	var errorBreakTime = $("#errorBreakTime");
	var errorInsideMidnightBreakTime = $("#errorInsideMidnightBreakTime");


	// Functions for validating.....

	function checkStartEndTime() {
		workingHoursStartVal = StartTime.val();
		workingHoursEndVal = EndingTime.val();

		if (workingHoursStartVal != "" && workingHoursEndVal != "" && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursStartVal) && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursEndVal) ) {
			try {
				if (workingHoursStartVal > workingHoursEndVal) {
					throw "Start Time  and Ending Time do not match!";
					// throw "E2059";
				} else {
					startEndTimeReturn = true;
					setSuccessFor(StartTime, errorStartTime);
					setSuccessFor(EndingTime, errorEndingTime);
				}
			} catch (error) {
				setErrorFor(StartTime, errorStartTime, error);
				setErrorFor(EndingTime, errorEndingTime, error);
				startEndTimeReturn = false;
			}

		}
	}
	
	// New Format Validation
	function checkStartimeFormat() {
		quotationSortOrderVal = StartTime.val();
		try {

			if (/^([0-9][0-9]):[0-5][0-9]$/.test(quotationSortOrderVal) || quotationSortOrderVal.trim() == "") {
				setSuccessFor(StartTime, errorStartTime);
				startTimeFormatReturn = true;
				checkStartEndTime();  // Checking for the relationship
			} else {
				throw "Please enter time duration in hh:mm format";
			}
		} catch (error) {
			startTimeFormatReturn = false;
			setErrorFor(StartTime, errorStartTime, error);
		}

	}
	
	function checkEndTimeFormat() {
		quotationSortOrderVal = EndingTime.val();
		try {

			if (/^([0-9][0-9]):[0-5][0-9]$/.test(quotationSortOrderVal) || quotationSortOrderVal.trim() == "") {
				setSuccessFor(EndingTime, errorEndingTime);
				EndTimeFormatReturn = true;
				checkStartEndTime();  // Checking for the relationship
			} else {
				throw "Please enter time duration in hh:mm format";
			}
		} catch (error) {
			EndTimeFormatReturn = false;
			setErrorFor(EndingTime, errorEndingTime, error);
		}

	}
	
	
	

	function checkBreakTime() {
		quotationSortOrderVal = BreakTime.val();
		try {

			if (/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.test(quotationSortOrderVal) || quotationSortOrderVal.trim() == "") {
				setSuccessFor(BreakTime, errorBreakTime);
				BreakTimeReturn = true;
				checkBreakTimeMatch(); // Checking the relationship
			} else {
				throw "Please enter time duration in hh:mm format";
			}
		} catch (error) {
			BreakTimeReturn = false;
			setErrorFor(BreakTime, errorBreakTime, error);
		}

	}

	function checkMidnightBreakTime() {
		quotationSortOrderVal = InsideMidnightBreakTime.val();
		try {

			if (/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.test(quotationSortOrderVal) || quotationSortOrderVal.trim() == "") {
				setSuccessFor(InsideMidnightBreakTime, errorInsideMidnightBreakTime);
				InsideMidnightBreakTimeReturn = true;
				checkBreakTimeMatch(); // Checking the relationship
			} else {
				throw "Please enter time duration in hh:mm format";
			}
		} catch (error) {
			InsideMidnightBreakTimeReturn = false;
			setErrorFor(InsideMidnightBreakTime, errorInsideMidnightBreakTime, error);
		}

	}
	
	// Checking the relationship.........
	function checkBreakTimeMatch() {
		workingHoursStartVal = BreakTime.val();
		workingHoursEndVal = InsideMidnightBreakTime.val();

		if (workingHoursStartVal != "" && workingHoursEndVal != "" && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursStartVal) && /^([0-9][0-9]):[0-5][0-9]$/.test(workingHoursEndVal) ) {
			try {
				if (workingHoursEndVal > workingHoursStartVal) {
					//throw "Working Hours do not match!";
					throw "(Inside) Midnight Break Time can't be greater than Break Time";
				} else {
					breakTimeMatchReturn = true;
					setSuccessFor(BreakTime, errorBreakTime);
					setSuccessFor(InsideMidnightBreakTime, errorInsideMidnightBreakTime);
				}
			} catch (error) {
				setErrorFor(BreakTime, errorBreakTime, error);
				setErrorFor(InsideMidnightBreakTime, errorInsideMidnightBreakTime, error);
				breakTimeMatchReturn = false;
			}

		}
	}

	function checkAdvancePaymentTable() {
		//const testArr = document.querySelectorAll("#quotationDetailsTaxableTrId")
		const advancePaymentItemIdArray = document.getElementsByName("advancePaymentItemId[]");
		const advancePaymentNominalArray = document.getElementsByName("advancePaymentNominal[]");
		const advancePaymentAmountOfMoneyArray = document.getElementsByName("advancePaymentAmountOfMoney[]");
		const advancePaymentDetailArray = document.getElementsByName("advancePaymentDetail[]");

		for (var i = 4; i < advancePaymentItemIdArray.length; i++) {

			if (advancePaymentNominalArray[i].value != "" || advancePaymentAmountOfMoneyArray[i].value != "" || advancePaymentDetailArray[i].value != "") {
				//Validation code..............
				if (advancePaymentNominalArray[i].value.trim() != "" && advancePaymentAmountOfMoneyArray[i].value.trim() != "") {
					advancePaymentTableReturn = true;

				} else {
					advancePaymentTableReturn = false;
					//console.log("Please Fill the Table Correctly!");	
					showMessage('info', "N1094");
					break;
				}

			}
		}

	}


	// Focus Out Events
	//StartTime.focusout(checkStartEndTime);
	StartTime.focusout(checkStartimeFormat);
	EndingTime.focusout(checkEndTimeFormat);
	BreakTime.focusout(checkBreakTime);
	InsideMidnightBreakTime.focusout(checkMidnightBreakTime);


	// Button Click Events

	$("#buttonAttendanceReport").click(function() {
		checkStartEndTime();
		checkBreakTime();
		checkMidnightBreakTime();
		checkBreakTimeMatch();


		if (startEndTimeReturn == true && BreakTimeReturn == true && InsideMidnightBreakTimeReturn == true && breakTimeMatchReturn == true) {
			//showMessage('info', "Can Save to Database");
			saveAttendanceDetails();
		} else {
			console.log("Invalid Attendance Details")
			showMessage('info', "N1094");
		}
	});


	$("#buttonExpenseReport").click(function() {
		checkAdvancePaymentTable();

		if (advancePaymentTableReturn == true && amountOfMoneyReturn == true) {
			//showMessage('info', "Can Save to Database");
			saveAdvancePaymentDetails();
		} else {
			console.log("Invalid Advance Payment")
			showMessage('info', "N1094");
		}


	});
})



/*function setErrorFor(divInput, divError, errorCode) {
	message = quotationTempErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}