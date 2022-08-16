// Validation using Jquery

$(function() {

	// Input Elements
	var name = $("#name");
	var mailAddress = $("#mailAddress");	
	var dateJoinFrom = $("#dateJoinFrom");	
	var dateofJoiningTo = $("#dateofJoiningTo");	

	// Return Values
	var nameReturn = true;
	var mailAddressReturn = true;
	var dateJoinReturn = true;


	// Divs displaying error messages
	var errorName = $("#errorName");
	var errorMail = $("#errorMail");
	var errorDateJoinFrom = $("#errorDateJoinFrom");
	var errorDateofJoiningTo = $("#errorDateofJoiningTo");		
	
	function checkName() {
		customerRepNameVal = name.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {

				throw "Invalid Name"; //E2210
			} else {
				nameReturn = true;
				setSuccessFor(name, errorName);
			}
		} catch (error) {
			setErrorFor(name, errorName, error);
			nameReturn = false;
		}
	}
	
	
	function checkEmail() {
		caseNumberVal = mailAddress.val();
		try {

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(caseNumberVal) || caseNumberVal.trim() == "" ) {
				setSuccessFor(mailAddress, errorMail);
				mailAddressReturn = true;
			} else {
				throw "Invalid Email";  //E2211
			}
		} catch (error) {
			mailAddressReturn = false;
			setErrorFor(mailAddress, errorMail, error);
		}
		
	}
	

	
	function checkDateOfJoining() {
		implementPeriodStartVal = dateJoinFrom.val();
		implementPeriodEndVal = dateofJoiningTo.val();


		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					throw "Dates of Joining do not match";  // E2212
				} else {
					dateJoinReturn = true;
					setSuccessFor(dateJoinFrom, errorDateJoinFrom);
					setSuccessFor(dateofJoiningTo, errorDateofJoiningTo);
				}
			} catch (error) {
				setErrorFor(dateJoinFrom, errorDateJoinFrom, error);
				setErrorFor(dateofJoiningTo, errorDateofJoiningTo, error);
				dateJoinReturn = false;
			}

		}
	}	

	name.focusout(checkName);
	mailAddress.focusout(checkEmail);
	dateJoinFrom.focusout(checkDateOfJoining);
	dateofJoiningTo.focusout(checkDateOfJoining);
	


	$("#searchForm").submit(function(event) {
		event.preventDefault();
	
		checkName();	
		checkEmail();	
		checkDateOfJoining();

		if ( nameReturn == true && mailAddressReturn == true && dateJoinReturn == true) {
            runSearch()
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

