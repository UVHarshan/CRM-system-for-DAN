// Validation using Jquery

$(function() {

	// Input Elements
	var email = $("#email");
	var otpCode = $("#otpCode");
	var newPassword = $("#newPassword");
	var retypeNewPassword = $("#retypeNewPassword");	

	// Return Values
	let emailReturn = false;
	let otpCodeReturn = false;
	let newPasswordReturn = false;
	let retypeNewPasswordReturn = false;

	// Divs displaying error messages
	var errorEmail = $("#errorEmail");
	var errorLoginCode = $("#errorLoginCode");
	var errorNewPassword = $("#errorNewPassword");
	var errorRetypeNewPassword = $("#errorRetypeNewPassword");
	
	
	// Buttons
	var pageButtonResetPassword = $("#pageButtonResetPassword");

	// Functions for validating.....

	function checkEmail() {
		mailVal = email.val();

		try {
			if (mailVal.trim() == "") throw "Cannot be empty";

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mailVal)) {
				setSuccessFor(email, errorEmail);
				emailReturn = true;
			} else {
				throw "Invalid Email";
			}
		} catch (error) {
			setErrorFor(email, errorEmail, error);
			emailReturn = false;
		}



	}

	function checkLoginCode() {
		companyNameVal = otpCode.val();

		try {
			if (companyNameVal.trim() == "") {
				throw "Cannot be empty";
			} else {
				otpCodeReturn = true;
				setSuccessFor(otpCode, errorLoginCode);
			}
		} catch (error) {
			setErrorFor(otpCode, errorLoginCode, error);
			otpCodeReturn = false;
		}

	}
	
	function checkNewPassword() {
		companyNameVal = newPassword.val();

		try {
			if (companyNameVal.trim() == "") {
				throw "Cannot be empty";
			} else {
				newPasswordReturn = true;
				setSuccessFor(newPassword, errorNewPassword);
			}
		} catch (error) {
			setErrorFor(newPassword, errorNewPassword, error);
			newPasswordReturn = false;
		}

	}
	
	function checkRetypeNewPassword() {
		newPasswordVal = newPassword.val();
		retypeNewPasswordVal =  retypeNewPassword.val();
		
		try {
			if (retypeNewPasswordVal.trim() == "") 	throw "Cannot be empty";
			
			if( newPasswordVal.trim() == retypeNewPasswordVal.trim()){
				retypeNewPasswordReturn = true;
				setSuccessFor(retypeNewPassword, errorRetypeNewPassword);				
			}else{
				throw "Password does not match";
			}			
			
		} catch (error) {
			setErrorFor(retypeNewPassword, errorRetypeNewPassword, error);
			retypeNewPasswordReturn = false;
		}

	}
	
	


	// Focus Out Events
	email.focusout(checkEmail);
	otpCode.focusout(checkLoginCode);
	newPassword.focusout(checkNewPassword);
	retypeNewPassword.focusout(checkRetypeNewPassword);


	pageButtonResetPassword.click(function() {

		checkEmail();
		checkLoginCode();
		checkNewPassword();
		checkRetypeNewPassword();

		if (emailReturn == true && otpCodeReturn == true && newPasswordReturn == true && retypeNewPasswordReturn == true ) {
			console.log("Valid");
		} else {
			showMessage('info', "N1094");
		}
	});

})

/*function setErrorFor(divInput, divError, errorCode) {
	divInput.addClass("errorVal").removeClass("successVal");
	message = customerErrorArray[errorCode];
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

