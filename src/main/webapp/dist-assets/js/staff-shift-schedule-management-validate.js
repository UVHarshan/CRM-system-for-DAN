// Validation using Jquery

$(function() {

	// Input Elements

	var targetYear = $("#targetYear");
	var targetMonth = $("#targetMonth");
	var staffCode = $("#staffCode");
	var shiftScheduleName = $("#shiftScheduleName");
	var dateofBirthFrom = $("#dateofBirthFrom");
	var dateofBirthTo = $("#dateofBirthTo");

	// Return Values
	var targetYearReturn = false;
	var targetMonthReturn = false;
	var staffCodeReturn = true;
	var shiftScheduleNameReturn = true;
	var dateofBirthReturn = true;

	// Divs displaying error messages
	var errorTargetYear = $("#errorTargetYear");
	var errorTargetMonth = $("#errorTargetMonth");
	var errorStaffCode = $("#errorStaffCode");
	var errorShiftScheduleName = $("#errorShiftScheduleName");
	var errorDateofBirthFrom = $("#errorDateofBirthFrom");
	var errorDateofBirthTo = $("#errorDateofBirthTo");



	function checkTargetYear() {
		targetYearVal = targetYear.val();

		try {
			if (targetYearVal == "") throw "Cannot be empty";  // throw "E2100"

			if (/^[0-9]{4}$/g.test(targetYearVal)) {
				setSuccessFor(targetYear, errorTargetYear);
				targetYearReturn = true;
			} else {
				throw "Invalid Target Year";
				//throw "E2101";
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
				throw "Cannot be empty!";
				// throw "E2100";
			} else {
				targetMonthReturn = true;
				setSuccessFor(targetMonth, errorTargetMonth);
			}
		} catch (error) {
			setErrorFor(targetMonth, errorTargetMonth, error);
			targetMonthReturn = false;
		}

	}

	function checkStaffCode() {
		staffCodeVal = staffCode.val();
		try {
			if (/^[0-9]+$/.test(staffCodeVal) || staffCodeVal == "") {
				setSuccessFor(staffCode, errorStaffCode);
				staffCodeReturn = true;
			} else {
				throw "Invalid Staff Code";
				//throw "E2102";
			}
		} catch (error) {
			staffCodeReturn = false;
			setErrorFor(staffCode, errorStaffCode, error);
		}

	}

	function checkName() {
		shiftScheduleNameVal = shiftScheduleName.val();
		try {
			if (!/^([^0-9]*)$/.test(shiftScheduleNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(shiftScheduleNameVal)) {

				throw "Invalid Name";
				// throw "E2103";
			} else {
				shiftScheduleNameReturn = true;
				setSuccessFor(shiftScheduleName, errorShiftScheduleName);
			}
		} catch (error) {
			setErrorFor(shiftScheduleName, errorShiftScheduleName, error);
			shiftScheduleNameReturn = false;
		}

	}




	function checkDateOfBirth() {
		implementPeriodStartVal = dateofBirthFrom.val();
		implementPeriodEndVal = dateofBirthTo.val();


		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					throw "Date of Births do not match";
					// throw "E2104";
				} else {
					dateofBirthReturn = true;
					setSuccessFor(dateofBirthFrom, errorDateofBirthFrom);
					setSuccessFor(dateofBirthTo, errorDateofBirthTo);
				}
			} catch (error) {
				setErrorFor(dateofBirthFrom, errorDateofBirthFrom, error);
				setErrorFor(dateofBirthTo, errorDateofBirthTo, error);
				dateofBirthReturn = false;
			}

		}
	}

	targetYear.focusout(checkTargetYear);
	targetMonth.focusout(checkTargetMonth);
	staffCode.focusout(checkStaffCode);
	shiftScheduleName.focusout(checkName);
	dateofBirthFrom.focusout(checkDateOfBirth);
	dateofBirthTo.focusout(checkDateOfBirth)
	


	$("#searchForm").submit(function(event) {
		event.preventDefault();
		checkTargetYear();
		checkTargetMonth();
		checkStaffCode();
		checkDateOfBirth();

		if (targetYearReturn == true && targetMonthReturn == true && staffCodeReturn == true && shiftScheduleNameReturn == true && dateofBirthReturn == true) {
			console.log("Valid data");
			runSearch();
		} else {
			showMessage('info', "Please Check Search Values");
			// showMessage('info', "N1093");
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

