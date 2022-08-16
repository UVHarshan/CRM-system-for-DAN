const GUIDVal = localStorage.getItem("GUID");
console.log("serverHTTP1111111  " + serverHTTP);
//const searchUuid = sessionStorage.getItem('viewUuid'); 

$(function() {

	// Input Elements
	var employeeName = $("#staffName");
	var mailAddress = $("#emailAddress");
	var authority = $("#Authority");
	var bankCode = $("#bankCode");
	var branchCode = $("#branchCode");
	var accountNumber = $("#accountNumber");
	var dateJoiningtheCompany = $("#dateofjoiningthecompany");
	var newPassword = $("#newpassword");
	var forNewPasswordConfirmation = $("#newPasswordConfirmation");
	var retirementDate = $("#retirementDate");


	// Return Values
	let employeeNameReturn = false;
	let emailAddressReturn = false;
	var authorityReturn = false;
	var bankCodeReturn = true;
	var branchCodeReturn = true;
	var accountNumberReturn = true;
	var dateofJoiningtheCompanyReturn = false;
	var passwordMatch = true;
	var retirementDateReturn = true;

	// Divs displaying error messages
	var errorEmployeeName = $("#errorEmployeeName");
	var errorMail = $("#errorMail");
	var errorAuthority = $("#errorAuthority");
	var errorBankCode = $("#errorBankCode");
	var errorBranchCode = $("#errorBranchCode");
	var errorAccountNumber = $("#errorAccountNumber");
	var errorDateofjoiningthecompany = $("#errorDateofjoiningthecompany");
	var errorNewPassword = $("#errorNewPassword");
	var errorNewPasswordConfirmation = $("#errorNewPasswordConfirmation");
	var errorRetirementDate = $("#errorRetirementDate");


	// Buttons
	var buttonUpateEmployeeInformation = $("#buttonUpateEmployeeInformation");


	// Functions for validating.....


	function checkName() {
		customerRepNameVal = employeeName.val();
		try {
			if (customerRepNameVal.trim() == "") throw "E2180";//"Can not be empty";

			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {
				throw "E2184"; //Invalid Name
			} else {
				employeeNameReturn = true;
				setSuccessFor(employeeName, errorEmployeeName);
			}
		} catch (error) {
			setErrorFor(employeeName, errorEmployeeName, error);
			employeeNameReturn = false;
		}
	}

	/*	function checkEmail() {
			emailVal = mailAddress.val();
			let searchUuid = sessionStorage.getItem('viewUuid'); 
			//let dataSet = '{"email" : "' + emailVal + '"}';  // MAybe this needs to be changed 
			let dataSet = '{"email" : "' + emailVal + '", "uuid" : "' +searchUuid +'"}';
			
			try {
				if(emailVal.trim() == "" ) throw "E2180";  // Can not be empty;			
	
				if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(emailVal)) {
					
					// AJAX call
					$.ajax({
					beforeSend: function(request) {
						request.setRequestHeader("GUID", GUIDVal);
					},
					url: 'http://5.189.137.133/SOLA-API/users/emailVerifiedByUpdate',
					method: 'POST',
					contentType: 'application/json',
					data: dataSet,
					dataType: 'json',
					success: function(result, status, request) {
						if (result.status == 200) {
							console.log(result.message);
	
							if (result.message == "Email Exists") {
								emailAddressReturn = false;
								setErrorFor(mailAddress, errorMail, "E2187"); //Error Code????
							} else if (result.message == "Email Not Exists") {
								emailAddressReturn = true;
								console.log("HEREEEE!!!!!!!");
								setSuccessFor(mailAddress, errorMail);							
							}
						} else {
							console.log("Sorry  Data Loding Error");
						}
					},
					error: function(error) {
						console.log(JSON.stringify(error));
					}
					});				
					
				} else {
					throw "E2185"; //Invalid Email;
				}
			} catch (error) {
				emailAddressReturn = false;
				setErrorFor(mailAddress, errorMail, error);
			}
			
		}*/

	function checkEmail() {
		emailVal = mailAddress.val();
		let searchUuid = sessionStorage.getItem('viewUuid');
		//let dataSet = '{"email" : "' + emailVal + '"}';  // MAybe this needs to be changed 
		let dataSet = '{"email" : "' + emailVal + '", "uuid" : "' + searchUuid + '"}';

		if (emailVal.trim() == "") {
			emailAddressReturn = false;
			setErrorFor(mailAddress, errorMail, "E2180");
		} else if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(emailVal)) {

			// AJAX call
			$.ajax({
				beforeSend: function(request) {
					request.setRequestHeader("GUID", GUIDVal);
				},
				url: 'http://5.189.137.133/SOLA-API/users/emailVerifiedByUpdate',
				method: 'POST',
				contentType: 'application/json',
				data: dataSet,
				dataType: 'json',
				success: function(result, status, request) {
					if (result.status == 200) {
						console.log(result.message);

						if (result.message == "Email Exists") {
							emailAddressReturn = false;
							setErrorFor(mailAddress, errorMail, "E2187"); //Error Code????
						} else if (result.message == "Email Not Exists") {
							emailAddressReturn = true;
							console.log("HEREEEE!!!!!!!");
							setSuccessFor(mailAddress, errorMail);
						}
					} else {
						console.log("Sorry  Data Loding Error");
					}
				},
				error: function(error) {
					console.log(JSON.stringify(error));
				}
			});

		} else {
			emailAddressReturn = false;
			setErrorFor(mailAddress, errorMail, "E2185"); //Invalid Email;
		}
	}

	function checkMandatoryField(inputElement, errorElement) {
		inputElementVal = inputElement.val();

		try {
			if (inputElementVal == "") {
				throw "E2180";  // Can not be empty
			} else {
				setSuccessFor(inputElement, errorElement);
				return true;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
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

	function passwordCheck() {
		password = newPassword.val();
		passwordConfirm = forNewPasswordConfirmation.val();
		try {
			if (password.trim() == passwordConfirm.trim()) {
				passwordMatch = true;
				setSuccessFor(forNewPasswordConfirmation, errorNewPasswordConfirmation);
			} else {
				throw "E2186"; //"Password does not match"
			}
		} catch (error) {
			passwordMatch = false;
			setErrorFor(forNewPasswordConfirmation, errorNewPasswordConfirmation, error);
		}
	}


	// Focus Out Events
	employeeName.focusout(checkName);
	mailAddress.focusout(checkEmail);
	authority.focusout(() => {
		authorityReturn = checkMandatoryField(authority, errorAuthority);
	});

	bankCode.focusout(() => {
		bankCodeReturn = checkOptionalNumber(bankCode, errorBankCode, "Invalid Bank Code");
	});

	branchCode.focusout(() => {
		branchCodeReturn = checkOptionalNumber(branchCode, errorBranchCode, "Invalid Branch Code");
	});

	accountNumber.focusout(() => {
		accountNumberReturn = checkOptionalNumber(accountNumber, errorAccountNumber, "Invalid Account Number");
	});

	dateJoiningtheCompany.focusout(() => {
		dateofJoiningtheCompanyReturn = checkMandatoryField(dateJoiningtheCompany, errorDateofjoiningthecompany);
	});

	forNewPasswordConfirmation.focusout(passwordCheck);


	buttonUpateEmployeeInformation.click(function() {
		checkName();		
		authorityReturn = checkMandatoryField(authority, errorAuthority);
		bankCodeReturn = checkOptionalNumber(bankCode, errorBankCode, "Invalid Bank Code");
		branchCodeReturn = checkOptionalNumber(branchCode, errorBranchCode, "Invalid Branch Code");
		accountNumberReturn = checkOptionalNumber(accountNumber, errorAccountNumber, "Invalid Account Number");
		dateofJoiningtheCompanyReturn = checkMandatoryField(dateJoiningtheCompany, errorDateofjoiningthecompany);
		passwordCheck();
		checkEmail();


		if (employeeNameReturn == true && emailAddressReturn == true && authorityReturn == true && bankCodeReturn == true && branchCodeReturn == true && accountNumberReturn == true && dateofJoiningtheCompanyReturn == true && passwordMatch == true) {
			updateEmployee();
			console.log(employeeNameReturn, emailAddressReturn, authorityReturn, bankCodeReturn, branchCodeReturn, accountNumberReturn, dateofJoiningtheCompanyReturn, passwordMatch);
		} else {
			showMessage('info', "N1212");
			console.log(employeeNameReturn, emailAddressReturn, authorityReturn, bankCodeReturn, branchCodeReturn, accountNumberReturn, dateofJoiningtheCompanyReturn, passwordMatch);
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
	message = employeeErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}


/*function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message); 
} 
*/

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}
