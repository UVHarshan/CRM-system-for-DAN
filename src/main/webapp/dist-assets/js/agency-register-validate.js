// Validation using Jquery

$(function() {

	// Input Elements
	var agencyName = $("#agencyName");
	var companyRepName = $("#companyRepresentativeName");
	var companyContactNumber = $("#companyContactNumber");
	var companyFaxNumber = $("#companyFaxNumber");
	var companyEmailAddress = $("#companyEmailAddress");
	var companyZipCode = $("#companyZipCode");
	var companyOrganizationName = $("#companyOrganizationName");
	var companyCustRepName = $("#agencyRepresentativeName");
	var companyCustRepNameKata = $("#agencyRepNameKatakana");
	var agencyContact = $("#agencyContact");
	var companyWebsiteURL = $("#companyWebsiteURL");


	// Buttons
	var buttonRegisterAgencyInformation = $("#buttonRegisterAgencyInformation");

	// Return Values
	let agencyNameReturn = false;
	let companyRepNameReturn = true;
	let companyContactNumReturn = true;
	let companyFaxNumberReturn = true;
	let companyEmailAddressReturn = false;
	let companyZipCodeReturn = true;
	let companyOrganizationNameReturn = true;
	let companyCustRepNameReturn = true;
	let companyCustRepNameKataReturn = true;
	let companyCustomerContactReturn = true;
	let companyWebsiteURLReturn = true;


	// Divs displaying error messages
	var errorAgencyName = $("#errorAgencyName");
	var errorCompanyRepName = $("#errorCompanyRepName");
	var errorCompanyContactNumber = $("#errorCompanyContactNumber");
	var errorFaxNum = $("#errorFaxNum");
	var errorEmail = $("#errorEmail");
	var errorZip = $("#errorZip");
	var errorOrganizName = $("#errorOrganizName");
	var errorAgencyRepresentativeName = $("#errorAgencyRepresentativeName");
	var errorCustRepNameKatakana = $("#errorAgencyRepNameKatakana");
	var errorAgencyContact = $("#errorAgencyContact");
	var errorURL = $("#errorURL");

	// Functions for validating.....

	function checkAgencyName() {
		companyNameVal = agencyName.val();

		try {
			if (companyNameVal.trim() == "") {
				throw "Cannot be empty";
			} else {
				agencyNameReturn = true;
				setSuccessFor(agencyName, errorAgencyName);
			}
		} catch (error) {
			setErrorFor(agencyName, errorAgencyName, error);
			agencyNameReturn = false;
		}

	}



	function checkCompanyRepName() {
		companyRepNameVal = companyRepName.val();

		try {
			if (!/^([^0-9]*)$/.test(companyRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyRepNameVal)) {
				throw "Invalid Representative Name";
			} else {
				companyRepNameReturn = true;
				setSuccessFor(companyRepName, errorCompanyRepName);
			}

		} catch (error) {
			setErrorFor(companyRepName, errorCompanyRepName, error);
			companyRepNameReturn = false;
		}

	}

	function checkCompanyContact() {
		mobileVal = companyContactNumber.val();

		try {

			if ((/^[0-9]{10,11}$/g.test(mobileVal) && mobileVal != "00000000000") || mobileVal == "") {
				setSuccessFor(companyContactNumber, errorCompanyContactNumber);
				companyContactNumReturn = true;
			} else {
				throw "Invalid Contact Number";
			}
		} catch (error) {
			companyContactNumReturn = false;
			setErrorFor(companyContactNumber, errorCompanyContactNumber, error);
		}
	}

	function checkCompanyFax() {
		mobileVal = companyFaxNumber.val();

		// Using try, catch and throw statements.......
		try {
			//if (mobileVal.trim() == "") throw "cannot be empty!";

			if (/^[0-9]{10}$/g.test(mobileVal) || mobileVal == "") {
				setSuccessFor(companyFaxNumber, errorFaxNum);
				companyFaxNumberReturn = true;
			} else {
				companyFaxNumberReturn = false;
				throw "Invalid Fax Number";
			}
		} catch (error) {
			setErrorFor(companyFaxNumber, errorFaxNum, error);
		}
	}

	function checkEmail() {
		mailVal = companyEmailAddress.val();

		if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mailVal)) {
			setSuccessFor(companyEmailAddress, errorEmail);
			companyEmailAddressReturn = true;
		} else {
			companyEmailAddressReturn = false;
			setErrorFor(companyEmailAddress, errorEmail, "Invalid Email");					
		}

	}

	function checkCompanyZip() {
		zipVal = companyZipCode.val();

		// Using try, catch and throw statements.......
		try {

			if (/^[0-9]{7}$/g.test(zipVal) || zipVal == "") {
				setSuccessFor(companyZipCode, errorZip);
				companyZipCodeReturn = true;
			} else {
				companyZipCodeReturn = false;
				throw "Invalid Postal Code!";
			}
		} catch (error) {
			setErrorFor(companyZipCode, errorZip, error);
		}
	}


	function checkRepName() {
		companyNameVal = companyCustRepName.val();

		try {
			//if (companyNameVal.trim() == "") throw "E1005"; //throw "Cannot be empty";

			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "Invalid Agency Representative Name";
			} else {
				companyCustRepNameReturn = true;
				setSuccessFor(companyCustRepName, errorAgencyRepresentativeName);
			}
		} catch (error) {
			setErrorFor(companyCustRepName, errorAgencyRepresentativeName, error);
			companyCustRepNameReturn = false;
		}

	}

	function checkRepNameKatakana() {
		companyNameVal = companyCustRepNameKata.val();

		try {
			//if (companyNameVal.trim() == "") throw "E1005";// throw "Cannot be empty";

			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "Invalid Agency Representative Name Katakana";
			} else {
				companyCustRepNameKataReturn = true;
				setSuccessFor(companyCustRepNameKata, errorCustRepNameKatakana);
			}
		} catch (error) {
			setErrorFor(companyCustRepNameKata, errorCustRepNameKatakana, error);
			companyCustRepNameKataReturn = false;
		}


	}

	function checkCustomerContact() {
		mobileVal = agencyContact.val();

		// Using try, catch and throw statements.......
		try {

			//if (mobileVal.trim() == "") throw "E1005";//throw "Cannot be empty!";

			if (/^[0-9]{10,11}$/g.test(mobileVal) & mobileVal != "00000000000" || mobileVal.trim() == "") {
				setSuccessFor(agencyContact, errorAgencyContact);
				companyCustomerContactReturn = true;
			} else {
				throw "Invalid Agency Contact Number";
			}
		} catch (error) {
			companyCustomerContactReturn = false;
			setErrorFor(agencyContact, errorAgencyContact, error);
		}
	}

	function checkCompanyURL() {
		webURLVal = companyWebsiteURL.val();

		var pattern = new RegExp('^(https?:\\/\\/)?' + // protocol
			'((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|' + // domain name
			'((\\d{1,3}\\.){3}\\d{1,3}))' + // OR ip (v4) address
			'(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*' + // port and path
			'(\\?[;&a-z\\d%_.~+=-]*)?' + // query string
			'(\\#[-a-z\\d_]*)?$', 'i'); // fragment locator

		try {

			if (pattern.test(webURLVal) || webURLVal == "") {
				companyWebsiteURLReturn = true;
				setSuccessFor(companyWebsiteURL, errorURL);
			} else {
				throw "Invalid URL";		
			}

		} catch (error) {
			companyWebsiteURLReturn = false;
			setErrorFor(companyWebsiteURL, errorURL, error);
		}
	}

	// Focus Out Events
	agencyName.focusout(function() {
		checkAgencyName();
	});

	companyRepName.focusout(function() {
		checkCompanyRepName();
	});


	companyContactNumber.focusout(function() {
		checkCompanyContact();
	});


	companyFaxNumber.focusout(function() {
		checkCompanyFax();
	});


	companyEmailAddress.focusout(function() {
		checkEmail();
	});

	companyZipCode.focusout(function() {
		checkCompanyZip();
	});

	companyCustRepName.focusout(function() {
		checkRepName();

	});

	companyCustRepNameKata.focusout(function() {
		checkRepNameKatakana();
	});

	agencyContact.focusout(function() {
		checkCustomerContact();
	});

	companyWebsiteURL.focusout(function() {
		checkCompanyURL();
	});


	buttonRegisterAgencyInformation.click(function() {

		// Mandatory Fields should be checked here

		checkAgencyName();

		checkCompanyRepName();
		checkCompanyContact();
		checkCompanyFax();
		checkEmail();
		checkCompanyZip();
		checkRepName();
		checkRepNameKatakana();
		checkCustomerContact();
		checkCompanyURL();

		if (agencyNameReturn == true && companyRepNameReturn == true && companyContactNumReturn == true && companyFaxNumberReturn == true && companyEmailAddressReturn == true && companyZipCodeReturn == true && companyOrganizationNameReturn == true && companyCustRepNameReturn == true && companyCustRepNameKataReturn == true && companyCustomerContactReturn == true && companyWebsiteURLReturn == true) {

			//updateCustomerInfo();
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

