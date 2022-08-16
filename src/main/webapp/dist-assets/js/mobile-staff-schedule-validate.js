
$(function() {

	// Input Elements

	// Return Values
	let shiftScheduleTableReturn = true;
	let shiftScheduleTableFill = false;

	// Divs displaying error messages
	var errorShiftSchedule = $("#errorShiftSchedule");
	
	// Buttons
	var btnRegisterShiftSchedule = $("#btnRegisterShiftSchedule");

	function checkShiftScheduleTable() {
		//const testArr = document.querySelectorAll("#quotationDetailsTaxableTrId")
		const shiftScheduleDetailDateArray = document.getElementsByName("shiftScheduleDetailDate[]");
		const shiftScheduleDetailOptionArray = document.getElementsByName("shiftScheduleDetailOption[]");
		const shiftScheduleRemarkArray = document.getElementsByName("shiftScheduleRemark[]");

		for (var i = 0; i < shiftScheduleDetailDateArray.length; i++) {

			if (shiftScheduleDetailOptionArray[i].value != "4" || shiftScheduleRemarkArray[i].value != "") {
				//Validation code..............
				if (shiftScheduleDetailOptionArray[i].value != "4") {
					console.log("valid Table dataaaaa");
					shiftScheduleTableReturn = true;
					shiftScheduleTableFill = true;
					setSuccessFor("", errorShiftSchedule);
				} else {
					console.log("Invalid Table data");
					shiftScheduleTableReturn = false;
					setErrorFor("", errorShiftSchedule,"Second column in the table is mandatory"); //E2282
					//showMessage('info', "Please fill the Shift Schedule Table Correclty");
					break;
				}

			}
		}

	}

	btnRegisterShiftSchedule.click(function() {

		checkShiftScheduleTable();

		if (shiftScheduleTableReturn == true && shiftScheduleTableFill == true) {
			console.log("Valid");
			registerShiftSchedule();
		} else {
			console.log("InValid");
			showMessage('info', "N1094");
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
	if (divInput != "")  divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

