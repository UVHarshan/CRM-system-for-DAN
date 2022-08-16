// Validation using Jquery

$(function() {

	// Input Elements
	var mobilePhone = $("#mobilePhone");
	var mailAddress = $("#mailAddress");
	var agencyCode = $("#agencyCode");
	var postalCode = $("#postalCode");

	// Buttons
	var searchBtn = $("#searchBtn");

	// Return Values
	var mobilePhoneReturn = true;
	var mailAddressReturn = true;
	var agencyCodeReturn = true;
	var postalCodeReturn = true;


	// Divs displaying error messages
	var errorMobile = $("#errorMobile");
	var errorMail = $("#errorMail");
	var errorAgencyCode = $("#errorAgencyCode");
	var errorPostalCode = $("#errorPostalCode");


	mobilePhone.focusout(function() {

		mobileVal = mobilePhone.val();

		try {

			if (/^[0-9]{10,11}$/g.test(mobileVal) || mobileVal == "") {
				setSuccessFor(mobilePhone, errorMobile);
				mobilePhoneReturn = true;
			} else {
				mobilePhoneReturn = false;
				throw "Invalid Mobile Number";
			}
		} catch (error) {
			setErrorFor(mobilePhone, errorMobile, error);
		}
	});

	mailAddress.focusout(function() {

		mailVal = mailAddress.val();

		try {

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mailVal) || mailVal == "") {
				setSuccessFor(mailAddress, errorMail);
				mailAddressReturn = true;
			} else {
				mailAddressReturn = false;
				throw "Invalid Email";	        
			}

		} catch (error) {
			setErrorFor(mailAddress, errorMail, error);
		}
	});



	agencyCode.focusout(function() {


		custCodeVal = agencyCode.val();
		try {

			if (/^[0-9]+$/g.test(custCodeVal) || custCodeVal == "") {
				setSuccessFor(agencyCode, errorAgencyCode);
				agencyCodeReturn = true;
			} else {
				agencyCodeReturn = false;
				throw "Invalid Agency Code";            
			}
		} catch (error) {
			setErrorFor(agencyCode, errorAgencyCode, error);
		}
	});

	postalCode.focusout(function() {


		postCodeVal = postalCode.val();
		try {

			if (/^[0-9]+$/g.test(postCodeVal) || postCodeVal.trim() == "") {
				setSuccessFor(postalCode, errorPostalCode);
				postalCodeReturn = true;
			} else {
				postalCodeReturn = false;
				throw "Invalid Postal Code";            
			}
		} catch (error) {
			setErrorFor(postalCode, errorPostalCode, error);
		}
	});



	$("#searchForm").submit(function(event) {
		event.preventDefault();
		if (mobilePhoneReturn == true && mailAddressReturn == true && agencyCodeReturn == true && postalCodeReturn == true) {
			runSearch();
		} else {
			showMessage('info', "N1093");
		}
	});
});


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
	//divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
	divError.html("");
}

/*function resetValidationReturnValues() {

	mobilePhoneReturn = true;
	mailAddressReturn = true;
	agencyCodeReturn = true;
	postalCodeReturn = true;
}*/


