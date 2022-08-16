// Validation using Jquery

$(function() {

	// Input Elements
	var salaryPaymentForm = $("#salaryPaymentForm");
	var targetYear = $("#targetYear");
	var targetMonth = $("#targetMonth");
	var salaryListName = $("#salaryListName");
	var salaryListNameKatakana = $("#salaryListNameKatakana");
	var staffCode = $("#staffCode");

	// Return Values
	var salaryPaymentFormReturn = false;
	var targetYearReturn = false;
	var targetMonthReturn = false;
	var salaryListNameReturn = true;
	var salaryListNameKatakanaReturn = true;
	var staffCodeReturn = true;

	// Divs displaying error messages
	var errorSalaryPaymentForm = $("#errorSalaryPaymentForm");
	var errorTargetYear = $("#errorTargetYear");
	var errorTargetMonth = $("#errorTargetMonth");
	var errorSalaryListName = $("#errorSalaryListName");
	var errorSalaryListNameKatakana = $("#errorSalaryListNameKatakana");
	var errorStaffCode = $("#errorStaffCode");

	function checkSalaryPaymentForm() {
		AssignmentClassificationVal = salaryPaymentForm.val();
		try {
			if (AssignmentClassificationVal == "") {
				throw "E2140";
			} else {
				salaryPaymentFormReturn = true;
				setSuccessFor(salaryPaymentForm, errorSalaryPaymentForm);
			}
		} catch (error) {
			setErrorFor(salaryPaymentForm, errorSalaryPaymentForm, error);
			salaryPaymentFormReturn = false;
		}

	}


	function checkTargetYear() {
		targetYearVal = targetYear.val();

		try {
			if (targetYearVal == "") throw "E2140";

			if (/^[0-9]{4}$/g.test(targetYearVal)) {
				setSuccessFor(targetYear, errorTargetYear);
				targetYearReturn = true;
			} else {
				throw "E2141";
			}
		} catch (error) {
			targetYearReturn = false;
			setErrorFor(targetYear, errorTargetYear, error);
		}


	}

	function checkTargetMonth() {
		AssignmentClassificationVal = targetMonth.val();
		try {
			if (AssignmentClassificationVal == "") {
				throw "E2140";
			} else {
				targetMonthReturn = true;
				setSuccessFor(targetMonth, errorTargetMonth);
			}
		} catch (error) {
			setErrorFor(targetMonth, errorTargetMonth, error);
			targetMonthReturn = false;
		}

	}

	function checkName() {
		shiftScheduleNameVal = salaryListName.val();
		try {
			if (!/^([^0-9]*)$/.test(shiftScheduleNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(shiftScheduleNameVal)) {
				throw "E2142";
			} else {
				salaryListNameReturn = true;
				setSuccessFor(salaryListName, errorSalaryListName);
			}
		} catch (error) {
			setErrorFor(salaryListName, errorSalaryListName, error);
			salaryListNameReturn = false;
		}

	}

	function checkNameKatakana() {
		shiftScheduleNameVal = salaryListNameKatakana.val();
		try {
			if (!/^([^0-9]*)$/.test(shiftScheduleNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(shiftScheduleNameVal)) {
				throw "E2143";
			} else {
				salaryListNameKatakanaReturn = true;
				setSuccessFor(salaryListNameKatakana, errorSalaryListNameKatakana);
			}
		} catch (error) {
			setErrorFor(salaryListNameKatakana, errorSalaryListNameKatakana, error);
			salaryListNameKatakanaReturn = false;
		}
	}



	function checkStaffCode() {
		staffCodeVal = staffCode.val();
		try {
			if (/^[0-9]+$/.test(staffCodeVal) || staffCodeVal == "") {
				setSuccessFor(staffCode, errorStaffCode);
				staffCodeReturn = true;
			} else {
			  throw "E2144";
			}
		} catch (error) {
			staffCodeReturn = false;
			setErrorFor(staffCode, errorStaffCode, error);
		}

	}

	function addRelevantMonthYear() {
		
		var month = targetMonth.val();
		var year = targetYear.val();

		var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
		
		if(targetYearReturn == true && targetMonthReturn == true) {
			document.getElementById("accordianDate").innerHTML = "For " + months[month - 1] + " " + year;
		}else{
			document.getElementById("accordianDate").innerHTML = "";
		}
		
	}

	salaryPaymentForm.focusout(checkSalaryPaymentForm);
	targetYear.focusout(checkTargetYear);
	targetMonth.focusout(checkTargetMonth);
	salaryListName.focusout(checkName);
	salaryListNameKatakana.focusout(checkNameKatakana);
	staffCode.focusout(checkStaffCode);

	$("#searchForm").submit(function(event) {
		event.preventDefault();
		
		addRelevantMonthYear();
		
		checkSalaryPaymentForm();
		checkTargetYear();
		checkTargetMonth();
		checkName();
		checkNameKatakana();
		checkStaffCode();

		if (salaryPaymentFormReturn == true && targetYearReturn == true && targetMonthReturn == true && salaryListNameReturn == true && salaryListNameKatakanaReturn == true && staffCodeReturn == true) {
			console.log("Valid data");
			//runSearch();
		} else {
			//showMessage('info', "Please Check Search Values");
			console.log("Invalid data");
			showMessage('info', "N1093");
		}
	});

});


/*function setErrorFor(divInput, divError, message) {
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

//Validation for Japanese Translations.......
function setErrorFor(divInput, divError, errorCode) {
	divInput.addClass("errorVal").removeClass("successVal");
	message = payrollErrorArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	//divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
	divError.html("");
}

