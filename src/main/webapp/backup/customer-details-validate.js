// Validation using Jquery

$(function() {

	// Input Elements
	var companyName = $("#companyName");
	var companyNameKatakana = $("#companyNameKatakana");
	//var companyRepPosition = $("#companyRepresentativePosition");
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
	var buttonEditCompanyInformation = $("#buttonEditCompanyInformation");

	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let companyNameReturn = false;
	let companyNameKatakanaReturn = true;
	//let companyRepPositionReturn = true;
	let companyRepNameReturn = true;
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
	var errorCompanyRepName = $("#errorCompanyRepName");
	var errorMobile = $("#errorMobile");
	var errorFaxNum = $("#errorFaxNum");
	var errorEmail = $("#errorEmail");
	var errorZip = $("#errorZip");
	var errorOrganizName = $("#errorOrganizName");
	var errorCustRepName = $("#errorCustRepName");
	var errorCustRepNameKatakana = $("#errorCustRepNameKatakana");
	var errorCustContact = $("#errorCustContact");
	var errorURL = $("#errorURL");
	
	// Functions for validating.....
	
	function checkCompanyName() {
		companyNameVal = companyName.val();
	
		try {
			if (companyNameVal.trim() == "") throw "E1005"; //throw "Cannot be empty";

			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
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

	}
	
	function checkCompanyNameKatakana() {
		companyNameKatVal = companyNameKatakana.val();
	
	}
	
	function checkCompanyRepName() {
		companyRepNameVal = companyRepName.val();
		
		try {
			if (!/^([^0-9]*)$/.test(companyRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyRepNameVal)) {
				throw "E1006";
				//throw "Invalid Company Representative Name";
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

		// Using try, catch and throw statements.......
		try {

			//if (mobileVal.trim() == "") throw "cannot be empty!";

			if(checkTelephoneNoByValue(mobileVal)||companyContactVal == "") 
			{
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
	}
	
	function checkCompanyFax() {
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
				throw "Invalid Fax Number";
			}
		} catch (error) {
			setErrorFor(companyFaxNumber, errorFaxNum, error);
		}
	}
	
	function checkEmail() {
		mailVal = companyEmailAddress.val();

		// Using try, catch and throw statements.......
		try {

			if (mailVal.trim() == "") throw "E1005";// throw "cannot be empty!";

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
	}
	
	function checkCompanyZip() {
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
	}
	
	function checkcompanyOrganizName() {
		companyNameVal = companyOrganizationName.val();

	}
	
	function checkRepName() {
		companyNameVal = companyCustRepName.val();
		
		try {
			if (companyNameVal.trim() == "") throw "E1005"; //throw "Cannot be empty";

			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "E1009";
				//throw "Invalid Customer Representative Name";
			} else {
				companyCustRepNameReturn = true;
				setSuccessFor(companyCustRepName, errorCustRepName);
			}
		} catch (error) {
			setErrorFor(companyCustRepName, errorCustRepName, error);
			companyCustRepNameReturn = false;
		}

	}
	
	function checkRepNameKatakana() {
		companyNameVal = companyCustRepNameKata.val();
		
		try {
			if (companyNameVal.trim() == "") throw "E1005";// throw "Cannot be empty";

			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "E1011";
				//throw "Invalid Customer Representative Name Katakana";
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
		mobileVal = companyCustomerContact.val();

		// Using try, catch and throw statements.......
		try {

			if (mobileVal.trim() == "") throw "E1005";//throw "Cannot be empty!";

			if (/^[0-9]{11}$/g.test(mobileVal) & mobileVal != "00000000000")  {
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
	}
	
	// Focus Out Events
	companyName.focusout(function() {
		checkCompanyName();		
	});	


	companyNameKatakana.focusout(function() {
		checkCompanyNameKatakana();		
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

	companyOrganizationName.focusout(function() {
		checkcompanyOrganizName();		
	});

	companyCustRepName.focusout(function() {
		checkRepName();
		
	});

	companyCustRepNameKata.focusout(function() {
		checkRepNameKatakana();		
	});

	companyCustomerContact.focusout(function() {
		checkCustomerContact();		
	});

	companyWebsiteURL.focusout(function() {
		checkCompanyURL();		
	});


	buttonEditCompanyInformation.click(function() {

		// Mandatory Fields should be checked here

		checkCompanyName();
		checkCompanyNameKatakana();	
		checkCompanyRepName();		
		checkCompanyContact();	
		checkCompanyFax();
		checkEmail();	
		checkCompanyZip();
		checkcompanyOrganizName();
		checkRepName();
		checkRepNameKatakana();
		checkCustomerContact();
		checkCompanyURL();

		if (companyNameReturn == true && companyNameKatakanaReturn == true && companyRepNameReturn == true && companyContactNumReturn == true && companyFaxNumberReturn == true && companyEmailAddressReturn == true && companyZipCodeReturn == true && companyOrganizationNameReturn == true && companyCustRepNameReturn == true && companyCustRepNameKataReturn == true && companyCustomerContactReturn == true && companyWebsiteURLReturn == true) {

			updateCustomerInfo();
		} else {
		
		    showMessage('info',"N1094");
		   // alert("Can't save to database");
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

