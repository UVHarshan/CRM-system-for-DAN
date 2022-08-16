// Validation using Jquery

$(function() {

	// Input Elements
	var dateOfBirthFrom = $("#dateOfBirthFrom");
	var dateOfBirthTo = $("#dateOfBirthTo");

	// Return Values
	let dateOfBirthReturn = true;

	// Divs displaying error messages
	var errorDateofBirthFrom = $("#errorDateofBirthFrom");
	var errorDateOfBirthTo = $("#errorDateOfBirthTo");

	function checkDateOfBirth() {
		dateOfBirthFromVal = dateOfBirthFrom.val();
		dateOfBirthToVal = dateOfBirthTo.val();


		if (dateOfBirthFromVal != "" && dateOfBirthToVal != "") {
			try {
				if (dateOfBirthFromVal > dateOfBirthToVal) {
					//throw "Dates of Birth do not match";
					throw "E2054";
				} else {
					dateOfBirthReturn = true;
					setSuccessFor(dateOfBirthFrom, errorDateofBirthFrom);
					setSuccessFor(dateOfBirthTo, errorDateOfBirthTo);
				}
			} catch (error) {
				setErrorFor(dateOfBirthFrom, errorDateofBirthFrom, error);
				setErrorFor(dateOfBirthTo, errorDateOfBirthTo, error);
				dateOfBirthReturn = false;
			}

		}
	}
	
	dateOfBirthFrom.focusout(checkDateOfBirth);
	dateOfBirthTo.focusout(checkDateOfBirth);

	$("#searchForm").submit(function(event) {
		event.preventDefault();
		

		if (dateOfBirthReturn == true) {
			console.log("Valid data");
			runSearch();
		} else {
			//showMessage('info', "Please Check Search Values");
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
	message = assignmentErrorArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	//divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
	divError.html("");
}

