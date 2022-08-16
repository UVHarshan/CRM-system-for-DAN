
var staffFacePhotoFile =  document.getElementById("staffFacePhotoFile");
var errorStaffFacePhoto = $("#errorStaffFacePhoto");
var staffFacePhotoReturn = true;

function validateFileType(node) {
	//var fileName = document.getElementById("fileName").value;
	var fileName = node.value;
	var idxDot = fileName.lastIndexOf(".") + 1;
	var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
	if (extFile == "jpg" || extFile == "jpeg" || extFile == "png") {
		setSuccessFor("", errorStaffFacePhoto);
		staffFacePhotoReturn = true;
	} else {
		//alert("Only jpg/jpeg and png files are allowed!");
		setErrorFor("" , errorStaffFacePhoto, "Only jpg/jpeg and png files are allowed");  //Only jpg/jpeg and png files are allowed
		staffFacePhotoReturn = false;
	}
}

staffFacePhotoFile.addEventListener("change", function(){
  validateFileType(staffFacePhotoFile);
});




$(function() {

	// Input Elements
	var companyName = $("#companyName");
	var representativeName = $("#representativeName");
	var representativeNameFurigana = $("#representativeNameFurigana");
	var staffZipCode = $("#staffZipCode");
	var staffAddress = $("#staffAddress");
	var phoneNumber = $("#phoneNumber");
	var staffFax = $("#staffFax");
	var staffPrefecture = $("#staffPrefecture");
	var feesDispatchedWorkers = $("#feesDispatchedWorkers");
	var payrollYear = $("#payrollYear");
	var useLogo = $("#useLogo");
	var companyWebsiteURL = $("#companyWebsiteURL");



	// Return Values
	let companyNameReturn = false;
	let representativeNameReturn = true;
	let representativeNameFuriganaReturn = true;
	let staffZipCodeReturn = false;
	let staffAddressReturn = false;
	let phoneNumberReturn = false;
	let staffFaxReturn = true;
	let checkboxesDispatchReturn = false;
	let checkboxesOccupationClassiReturn = false;
	let staffPrefectureReturn = false;
	let checkboxesSalaryPaymentReturn = false;
	let feesDispatchedWorkersReturn = true;
	let payrollYearReturn = false;
	let useLogoReturn = false;
	let companyWebsiteURLReturn = true;

	// Divs displaying error messages
	var errorCompanyName = $("#errorCompanyName");
	var errorRepresentativeName = $("#errorRepresentativeName");
	var errorRepresentativeNameFurigana = $("#errorRepresentativeNameFurigana");
	var errorZip = $("#errorZip");
	var errorAddress = $("#errorAddress");
	var errorphoneNumber = $("#errorphoneNumber");
	var errorFax = $("#errorFax");
	var errordispatchClassi = $("#errordispatchClassi");
	var errorOccuClassi = $("#errorOccuClassi");
	var errorPrefecture = $("#errorPrefecture");
	var errorSalaryPayment = $("#errorSalaryPayment");
	var errorFeesDispatchedWorkers = $("#errorFeesDispatchedWorkers");
	var errorPayrollYear = $("#errorPayrollYear");
	var errorUseLogo = $("#errorUseLogo");
	var errorURL = $("#errorURL");

	// Functions for validating.....

	function checkMandatoryField(inputElement, errorElement) {
		inputElementVal = inputElement.val();

		try {
			if (inputElementVal == null || inputElementVal.trim() == "") {
				throw "E2240";  //E2180
			} else {
				setSuccessFor(inputElement, errorElement);
				return true;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}

	}


	function checkOptionalName(inputElement, errorElement) {
		inputElementVal = inputElement.val();
		try {

			if (!/^([^0-9]*)$/.test(inputElementVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(inputElementVal)) {
				throw "E2241"; 
			} else {
				setSuccessFor(inputElement, errorElement);
				return true;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}

	function checkZipCode() {
		zipVal = staffZipCode.val();

		try {

			if (zipVal.trim() == "") throw "E2240";

			if (/^[0-9]{7}$/g.test(zipVal)) {
				setSuccessFor(staffZipCode, errorZip);
				staffZipCodeReturn = true;
			} else {
				throw "E2242"; //
			}
		} catch (error) {
			staffZipCodeReturn = false;
			setErrorFor(staffZipCode, errorZip, error);
		}


	}

	function checkPhoneNo() {
		mobileVal = phoneNumber.val();

		try {
			if (mobileVal.trim() == "") throw "E2240";

			if (/^[0-9]{10,11}$/g.test(mobileVal)) {
				setSuccessFor(phoneNumber, errorphoneNumber);
				phoneNumberReturn = true;
			} else {
				throw "E2243"; 
			}

		} catch (error) {
			phoneNumberReturn = false;
			setErrorFor(phoneNumber, errorphoneNumber, error);
		}
	}

	function checkFax() {
		mobileVal = staffFax.val();

		try {

			if ((/^[0-9]{10}$/g.test(mobileVal)) || mobileVal.trim() == "") {
				setSuccessFor(staffFax, errorFax);
				staffFaxReturn = true;
			} else {
				throw "E2244"; //E2244
			}

		} catch (error) {
			staffFaxReturn = false;
			setErrorFor(staffFax, errorFax, error);
		}
	}

	function checkDispatch() {

		const checkboxesDispatch = document.querySelectorAll('input[name="dispatchClassi"]:checked');

		if (checkboxesDispatch.length == 0) {
			setErrorFor("", errordispatchClassi, "E2245"); //E2245
			checkboxesDispatchReturn = false;
		} else {
			setSuccessFor("", errordispatchClassi);
			checkboxesDispatchReturn = true;
		}


	}

	function checkOccupation() {

		const checkboxesOccupationClassi = document.querySelectorAll('input[name="OccupationClassi"]:checked');

		if (checkboxesOccupationClassi.length == 0) {
			setErrorFor("", errorOccuClassi, "E2246"); //E2246
			checkboxesOccupationClassiReturn = false;
		} else {
			setSuccessFor("", errorOccuClassi);
			checkboxesOccupationClassiReturn = true;
		}
	}

	function checkSalaryPayment() {

		const checkboxesSalaryPayment = document.querySelectorAll('input[name="salaryPayment"]:checked');

		if (checkboxesSalaryPayment.length == 0) {
			setErrorFor("", errorSalaryPayment, "E2247"); //E2247
			checkboxesSalaryPaymentReturn = false;
		} else {
			setSuccessFor("", errorSalaryPayment);
			checkboxesSalaryPaymentReturn = true;
		}
	}

	// Common Validation for checking Optional numeric fields
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

	function checkURL() {
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
				throw "E2248"; //E2248			
			}

		} catch (error) {
			companyWebsiteURLReturn = false;
			setErrorFor(companyWebsiteURL, errorURL, error);
		}
	}


	function passwordCheck() {
		password = newPassword.val();
		passwordConfirm = forNewPasswordConfirmation.val();
		try {
			if (password.trim() == passwordConfirm.trim()) {
				passwordMatch = true;
				setSuccessFor(forNewPasswordConfirmation, errorNewPasswordConfirmation);
			} else {
				throw "Password does not match";
			}
		} catch (error) {
			passwordMatch = false;
			setErrorFor(forNewPasswordConfirmation, errorNewPasswordConfirmation, error);
		}
	}


	// Focus Out Events
	companyName.focusout(() => {
		companyNameReturn = checkMandatoryField(companyName, errorCompanyName);
	});

	representativeName.focusout(() => {
		representativeNameReturn = checkOptionalName(representativeName, errorRepresentativeName);
	});

	representativeNameFurigana.focusout(() => {
		representativeNameFuriganaReturn = checkOptionalName(representativeNameFurigana, errorRepresentativeNameFurigana);
	});

	staffZipCode.focusout(checkZipCode);

	staffAddress.focusout(() => {
		staffAddressReturn = checkMandatoryField(staffAddress, errorAddress);
	});

	phoneNumber.focusout(checkPhoneNo);
	staffFax.focusout(checkFax);

	staffPrefecture.focusout(() => {
		staffPrefectureReturn = checkMandatoryField(staffPrefecture, errorPrefecture);
	});

	feesDispatchedWorkers.focusout(() => {
		feesDispatchedWorkersReturn = checkOptionalNumber(feesDispatchedWorkers, errorFeesDispatchedWorkers, "E2250"); //E2250
	});

	payrollYear.focusout(() => {
		payrollYearReturn = checkMandatoryField(payrollYear, errorPayrollYear);
	});

	useLogo.focusout(() => {
		useLogoReturn = checkMandatoryField(useLogo, errorUseLogo);
	});
	companyWebsiteURL.focusout(checkURL);
	

/*	buttonSaveInformationAboutUs.click(function() {

		companyNameReturn = checkMandatoryField(companyName, errorCompanyName);
		representativeNameReturn = checkOptionalName(representativeName, errorRepresentativeName);
		representativeNameFuriganaReturn = checkOptionalName(representativeNameFurigana, errorRepresentativeNameFurigana);
		checkZipCode();
		staffAddressReturn = checkMandatoryField(staffAddress, errorAddress);
		checkPhoneNo();
		checkFax();
		checkDispatch();
		checkOccupation();
		staffPrefectureReturn = checkMandatoryField(staffPrefecture, errorPrefecture);
		checkSalaryPayment();
		feesDispatchedWorkersReturn = checkOptionalNumber(feesDispatchedWorkers, errorFeesDispatchedWorkers, "Invalid Fees for Dispatched Workers");
		payrollYearReturn = checkMandatoryField(payrollYear, errorPayrollYear);
		useLogoReturn = checkMandatoryField(useLogo, errorUseLogo);
		checkURL();

		if (companyNameReturn == true && representativeNameReturn == true && representativeNameFuriganaReturn == true && staffZipCodeReturn == true && staffAddressReturn == true && phoneNumberReturn == true && staffFaxReturn == true && checkboxesDispatchReturn == true && checkboxesOccupationClassiReturn == true && staffPrefectureReturn == true && checkboxesSalaryPaymentReturn == true && feesDispatchedWorkersReturn == true && payrollYearReturn == true) {
			console.log("Valid")
			//saveCaseInfo();		
		} else {
			showMessage('info', "N1212");
		}
	});*/
	
	
	//////////// Email Address Info Accordian////////////
	
	// Input Elements
	var emailAddressSend = $("#emailAddressSend");
	var emailAddressReceived = $("#emailAddressReceived");
	var emailSendingUser = $("#emailSendingUser");	
	var emailPassword = $("#emailPassword");
	var emailSendingPort = $("#emailSendingPort");
	var emailSendingHost = $("#emailSendingHost");	
	
	
	
	let emailAddressSendReturn = false;
	let emailAddressReceivedReturn = false;
	let emailSendingUserReturn = false;
	let emailPasswordReturn = false;
	let emailSendingPortReturn = false;
	let emailSendingHostReturn = false;
	

	var errorEmailAddressSend = $("#errorEmailAddressSend");
	var errorEmailAddressReceived = $("#errorEmailAddressReceived");
	var errorEmailSendingUser = $("#errorEmailSendingUser");
	var errorEmailPassword = $("#errorEmailPassword");
	var errorEmailSendingPort = $("#errorEmailSendingPort");
	var errorEmailSendingHost = $("#errorEmailSendingHost");
	

	var buttonSaveInformationEmailAddress = $("#buttonSaveInformationEmailAddress");
	
	
	
	
	function checkSendEmail() {
		caseNumberVal = emailAddressSend.val();
		try {
			if (caseNumberVal.trim() == "") throw "E2240";

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(caseNumberVal)) {
				setSuccessFor(emailAddressSend, errorEmailAddressSend);
				emailAddressSendReturn = true;
			} else {
				throw "E2251"; //E2251
			}
		} catch (error) {
			emailAddressSendReturn = false;
			setErrorFor(emailAddressSend, errorEmailAddressSend, error);
		}

	}
	
	function checkReceivedEmail() {
		caseNumberVal = emailAddressReceived.val();
		try {
			if (caseNumberVal.trim() == "") throw "E2240";

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(caseNumberVal)) {
				setSuccessFor(emailAddressReceived, errorEmailAddressReceived);
				emailAddressReceivedReturn = true;
			} else {
				throw "E2251";
			}
		} catch (error) {
			emailAddressReceivedReturn = false;
			setErrorFor(emailAddressReceived, errorEmailAddressReceived, error);
		}

	}
	
	function checkEmailSendingPort() {
		var basicSalaryVal = emailSendingPort.val();
		try {

			if (/^[0-9]+$/.test(basicSalaryVal)) {
				setSuccessFor(emailSendingPort, errorEmailSendingPort);
				emailSendingPortReturn = true;
			} else {
				throw "E2252"; // E2252
			}
		} catch (error) {
			emailSendingPortReturn = false;
			setErrorFor(emailSendingPort, errorEmailSendingPort, error);
		}
	}
	
	emailAddressSend.focusout(checkSendEmail);
	emailAddressReceived.focusout(checkReceivedEmail);
	emailSendingUser.focusout(() => {
		emailSendingUserReturn = checkMandatoryField(emailSendingUser, errorEmailSendingUser);
	});
	
	emailPassword.focusout(() => {
		emailPasswordReturn = checkMandatoryField(emailPassword, errorEmailPassword);
	});
	emailSendingPort.focusout(checkEmailSendingPort);
	emailSendingHost.focusout(() => {
		emailSendingHostReturn = checkMandatoryField(emailSendingHost, errorEmailSendingHost);
	});
	
	
	buttonSaveInformationEmailAddress.click(function() {
		
		companyNameReturn = checkMandatoryField(companyName, errorCompanyName);
		representativeNameReturn = checkOptionalName(representativeName, errorRepresentativeName);
		representativeNameFuriganaReturn = checkOptionalName(representativeNameFurigana, errorRepresentativeNameFurigana);
		checkZipCode();
		staffAddressReturn = checkMandatoryField(staffAddress, errorAddress);
		checkPhoneNo();
		checkFax();
		checkDispatch();
		checkOccupation();
		staffPrefectureReturn = checkMandatoryField(staffPrefecture, errorPrefecture);
		checkSalaryPayment();
		feesDispatchedWorkersReturn = checkOptionalNumber(feesDispatchedWorkers, errorFeesDispatchedWorkers, "E2250");
		payrollYearReturn = checkMandatoryField(payrollYear, errorPayrollYear);
		useLogoReturn = checkMandatoryField(useLogo, errorUseLogo);
		checkURL();
		
		//// Email Address Info Accordian///
		checkSendEmail();
		checkReceivedEmail();
		emailSendingUserReturn = checkMandatoryField(emailSendingUser, errorEmailSendingUser);
		emailPasswordReturn = checkMandatoryField(emailPassword, errorEmailPassword);
		checkEmailSendingPort();
		emailSendingHostReturn = checkMandatoryField(emailSendingHost, errorEmailSendingHost);
		
		if (companyNameReturn == true && representativeNameReturn == true && representativeNameFuriganaReturn == true && staffZipCodeReturn == true && staffAddressReturn == true && phoneNumberReturn == true && staffFaxReturn == true && checkboxesDispatchReturn == true && checkboxesOccupationClassiReturn == true && staffPrefectureReturn == true && checkboxesSalaryPaymentReturn == true && feesDispatchedWorkersReturn == true && payrollYearReturn == true &&   emailAddressSendReturn == true && emailAddressReceivedReturn == true && emailSendingUserReturn == true && emailPasswordReturn == true && emailSendingPortReturn == true && emailSendingHostReturn == true && staffFacePhotoReturn == true) {
			console.log("Valid")
			saveStaffInfo();
					
		} else {
			showMessage('info', "N1212");
		}
	});
})


function setErrorFor(divInput, divError, errorCode) {
	message = companyInfoErrorArray[errorCode];
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}


/*function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

function setSuccessFor(divInput, divError) {
	if (divInput != "") divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}
