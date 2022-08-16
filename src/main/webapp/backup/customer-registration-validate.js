// Validation using Jquery

$(function() {

	// Input Elements
	var companyName = $("#companyName");
	var companyNameKatakana = $("#companyNameKatakana");
	var companyRepPosition = $("#companyRepresentativePosition");
	var companyRepName = $("#companyRepresentativeName");		
	var companyContactNumber = $("#companyContactNumber");
	var companyFaxNumber = $("#companyFaxNumber");
	var companyEmailAddress = $("#companyEmailAddress");
	var companyZipCode = $("#companyZipCode");
	var companyOrganizationName = $("#companyOrganizationName");
	var companyCustRepName = $("#companyCustomerRepresentativeName");
	var companyCustRepNameKata = $("#companyCustomerRepresentativeNameKatakana");
	var companyCustomerContact = $("#companyCustomerContact");
	var companyWebsiteURL = $("#companyWebsiteURL");


	// Buttons
	var buttonSaveCompanyInformation = $("#buttonSaveCompanyInformation");

	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let companyNameReturn = false;
	let companyNameKatakanaReturn = true;
	let companyRepPositionReturn = true;
	let companyRepNameReurn = true;
	let companyContactNumReturn = true;
	let companyFaxNumberReturn = true;
	let companyEmailAddressReturn = false;
	let companyZipCodeReturn = true;
	let companyOrganizationNameReturn = true;
	let companyCustRepNameReturn = false;
	let companyCustRepNameKataReturn = false;
	let companyCustomerContactReturn = false;
	let companyWebsiteURLReturn = true;
	

	// Divs displaying error messages
	var errorName = $("#errorName");
	var errorNameKatakana = $("#errorNameKatakana");
	var errorRepPosition = $("#errorRepPosition");
	var errorRepName = $("#errorRepName");	
	var errorMobile = $("#errorMobile");
	var errorFaxNum = $("#errorFaxNum");
	var errorEmail = $("#errorEmail");
	var errorZip = $("#errorZip");
	var errorOrganizName = $("#errorOrganizName");
	var errorCustRepName = $("#errorCustRepName");
	var errorCustRepNameKatakana = $("#errorCustRepNameKatakana");
	var errorCustContact = $("#errorCustContact");
	var errorURL = $("#errorURL");
	



	companyName.focusout(function() {

		companyNameVal = companyName.val();
		// Using try, catch and throw statements.......
		try {

			if (companyNameVal.trim() == "") throw "E1005"; //throw "cannot be empty";
			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) 
			{
				throw "E1014";
				//throw "Invalid Company Name";
			} else {
				companyNameReturn = true;
				setSuccessFor(companyName, errorName);
			}
		} catch (error) {
			setErrorFor(companyName, errorName, error);
			companyNameReturn = false;
		}
		
	});

	companyNameKatakana.focusout(function() {

		companyNameKatVal = companyNameKatakana.val();

	});
	
	companyRepPosition.focusout(function() {

		companyRepPositionVal = companyRepPosition.val();

		/*try {
			if (companyRepPositionVal != "" && !/[A-Z]/.test(companyRepPositionVal[0])) {
				throw "First letter should be capital";
			} else {
				companyRepPositionReturn = true;
				setSuccessFor(companyRepPosition, errorRepPosition);
			}	
					
		} catch (error) {
			setErrorFor(companyRepPosition, errorRepPosition, error);
			companyRepPositionReturn = false;
		}*/
	});
	
	
	companyRepName.focusout(function() {

		companyRepNameVal = companyRepName.val();

		try {
			if (!/^([^0-9]*)$/.test(companyRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyRepNameVal)) {
				throw "E1006";
				//throw "Invalid Company Representative Name";
			} else {
				companyRepNameReurn = true;
				setSuccessFor(companyRepName, errorRepName);
			}

		} catch (error) {
			setErrorFor(companyRepName, errorRepName, error);
			companyRepNameReurn = false;
		}
	});	


	companyContactNumber.focusout(function() {

		companyContactVal = companyContactNumber.val();

		try {
			//if (companyContactVal.trim() == "") throw "E1005"; //throw "cannot be empty";
			if (checkTelephoneNoByValue(companyContactVal)) {
				setSuccessFor(companyContactNumber, errorMobile);
				companyContactNumReturn = true;
				
			} else {
				companyContactNumReturn = false;
				throw "E1002";
				//throw "Invalid Mobile Number";
			
			}

		} catch (error) {
			setErrorFor(companyContactNumber, errorMobile, error);
		}
		

	});


	companyFaxNumber.focusout(function() {

		mobileVal = companyFaxNumber.val();

		// Using try, catch and throw statements.......
		try {

			//if (mobileVal.trim() == "") throw "cannot be empty!";

			if (/^[0-9]{11}$/g.test(mobileVal) || mobileVal == "") {
				setSuccessFor(companyFaxNumber, errorFaxNum);
				companyFaxNumberReturn = true;
			} else {
				companyFaxNumberReturn = false;
				throw "E1007";
				//throw "Invalid Fax Number";
			}
		} catch (error) {
			setErrorFor(companyFaxNumber, errorFaxNum, error);
		}
	});


	companyEmailAddress.focusout(function() {

		mailVal = companyEmailAddress.val();

		// Using try, catch and throw statements.......
		try {

			if (mailVal.trim() == "") throw "E1005";//throw "cannot be empty!";

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mailVal)) {
				setSuccessFor(companyEmailAddress, errorEmail);
				companyEmailAddressReturn = true;
			} else {
				companyEmailAddressReturn = false;
				throw "E1003";
				//throw "Invalid Email";
			}

		} catch (error) {
			setErrorFor(companyEmailAddress, errorEmail, error);
		}
	});

	companyZipCode.focusout(function() {

		zipVal = companyZipCode.val();

		// Using try, catch and throw statements.......
		try {

			//if (mobileVal.trim() == "") throw "cannot be empty!";

			if (/^[0-9]{7}$/g.test(zipVal) || zipVal == "") {
				setSuccessFor(companyZipCode, errorZip);
				companyZipCodeReturn = true;
			} else {
				companyZipCodeReturn = false;
				throw "E1004";
				//throw "Invalid Zip Code!";
			}
		} catch (error) {
			setErrorFor(companyZipCode, errorZip, error);
		}
	});

	companyOrganizationName.focusout(function() {

		companyNameVal = companyOrganizationName.val();

	/*	try {

			if (! /[A-Z]/.test(companyNameVal[0])) {
				companyOrganizationNameReturn = false;
				throw "First letter should be capital";
			} else {
				companyOrganizationNameReturn = true;
				setSuccessFor(companyOrganizationName, errorOrganizName);
			}
		} catch (error) {
			setErrorFor(companyOrganizationName, errorOrganizName, error);
		}*/
	});

	companyCustRepName.focusout(function() {

		companyNameVal = companyCustRepName.val();

		try {

			if (companyNameVal.trim() == "") throw "E1005";//throw "Cannot be empty";

			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "E1009";
				//throw "Invalid Customer Representative Name";
			} else {
				companyCustRepNameReturn = true;
				setSuccessFor(companyCustRepName, errorCustRepName);
			}
		} catch (error) {
			companyCustRepNameReturn = false;
			setErrorFor(companyCustRepName, errorCustRepName, error);
		}
	});

	companyCustRepNameKata.focusout(function() {

		companyNameVal = companyCustRepNameKata.val();

		try {

			if (companyNameVal.trim() == "") throw "E1005";//throw "Cannot be empty";
			
			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "E1011";
				//throw "Invalid Customer Representative Name Katakana";
			} else {
				companyCustRepNameKataReturn = true;
				setSuccessFor(companyCustRepNameKata, errorCustRepNameKatakana);
			}			
		 } catch (error) {
			companyCustRepNameKataReturn = false;
			setErrorFor(companyCustRepNameKata, errorCustRepNameKatakana, error);
		}
	});

	companyCustomerContact.focusout(function() {

		mobileVal = companyCustomerContact.val();

		// Using try, catch and throw statements.......
		try {

			if (mobileVal.trim() == "") throw "E1005";//throw "Cannot be empty!";

			if (/^[0-9]{11}$/g.test(mobileVal) & mobileVal != "00000000000") {
				setSuccessFor(companyCustomerContact, errorCustContact);
				companyCustomerContactReturn = true;
			} else {
				throw "E1012";
				//throw "Invalid Customer Contact Number";
			}
		} catch (error) {
			companyCustomerContactReturn = false;
			setErrorFor(companyCustomerContact, errorCustContact, error);
		}
	});

	companyWebsiteURL.focusout(function() {

		webURLVal = companyWebsiteURL.val();

		var pattern = new RegExp('^(https?:\\/\\/)?' + // protocol
			'((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|' + // domain name
			'((\\d{1,3}\\.){3}\\d{1,3}))' + // OR ip (v4) address
			'(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*' + // port and path
			'(\\?[;&a-z\\d%_.~+=-]*)?' + // query string
			'(\\#[-a-z\\d_]*)?$', 'i'); // fragment locator

		try {
			
			if(pattern.test(webURLVal) || webURLVal == ""){
				companyWebsiteURLReturn = true;
				setSuccessFor(companyWebsiteURL, errorURL);
			}else{
				throw "E1013";		
				//throw " Invalid URL";			
			}

		} catch (error) {
			companyWebsiteURLReturn = false;
			setErrorFor(companyWebsiteURL, errorURL, error);
		}
	});

	buttonSaveCompanyInformation.click(function() {

		// Mandatory Fields should be checked here
		if (companyName.val() == "") setErrorFor(companyName, errorName, "E1005");
		if (companyEmailAddress.val() == "") setErrorFor(companyEmailAddress, errorEmail, "E1005");
		if (companyCustRepName.val() == "") setErrorFor(companyCustRepName, errorCustRepName, "E1005");
		if (companyCustRepNameKata.val() == "") setErrorFor(companyCustRepNameKata, errorCustRepNameKatakana, "E1005");
		if (companyCustomerContact.val() == "") setErrorFor(companyCustomerContact, errorCustContact, "E1005");

		if (companyNameReturn == true && companyNameKatakanaReturn == true && companyRepPositionReturn == true && companyContactNumReturn == true && companyFaxNumberReturn == true && companyEmailAddressReturn == true && companyZipCodeReturn == true && companyOrganizationNameReturn == true && companyCustRepNameReturn == true && companyCustRepNameKataReturn == true && companyCustomerContactReturn == true && companyWebsiteURLReturn == true) {
			saveCustomerInfo();
			// Function to save data to database
		} else {
			showMessage('info',"N1094");
		}
	});

})


function setErrorFor(divInput, divError, errorCode) {
	divInput.addClass("errorVal").removeClass("successVal");
	message = customerErrorArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

