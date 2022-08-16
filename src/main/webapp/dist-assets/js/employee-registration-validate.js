const GUIDVal = localStorage.getItem("GUID");


$(function() {

	// Input Elements
	var employeeName = $("#employeeName");
	var mailAddress = $("#mailAddress");	
	var authority = $("#authority");
	var bankCode = $("#bankCode");
	var branchCode = $("#branchCode");
	var accountNumber = $("#accountNumber");	
	var dateJoiningtheCompany = $("#dateofJoiningtheCompany");
	var newPassword = $("#newpassword");
	var forNewPasswordConfirmation = $("#ForNewPasswordConfirmation");	
	var retirementDate = $("#retirementDate");	
	

	// Return Values
	let employeeNameReturn = false;
	var mailAddressReturn = false;
	var authorityReturn = false;
	var bankCodeReturn = true;
	var branchCodeReturn = true;
	var accountNumberReturn = true;
	var dateofJoiningtheCompanyReturn = false;
	var passwordReturn = false;
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
	var buttonUpateEmployeeInformation = $("#buttonSaveEmployeeInformation");


	// Functions for validating.....
	
	
	function checkName() {
		customerRepNameVal = employeeName.val();
		try {
			if(customerRepNameVal.trim() == "" ) throw "E2180" ;//"Can not be empty";
			
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
	
	function checkEmail() {
		emailVal = mailAddress.val();
		let dataSet = '{"email" : "' + emailVal + '"}';
		
		try {
			if(emailVal.trim() == "" ) throw "E2180";  // Can not be empty;			

			if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(emailVal)) {
				
				// AJAX call
				$.ajax({
				beforeSend: function(request) {
					request.setRequestHeader("GUID", GUIDVal);
				},
				url: 'http://5.189.137.133/SOLA-API/users/emailVerified',
				method: 'POST',
				contentType: 'application/json',
				data: dataSet,
				dataType: 'json',
				success: function(result, status, request) {
					if (result.status == 200) {
						console.log(result.message);

						if (result.message == "Email Exists") {
							mailAddressReturn = false;
							setErrorFor(mailAddress, errorMail, "E2187"); //Error Code????
						} else if (result.message == "Email Not Exists") {
							setSuccessFor(mailAddress, errorMail);
							mailAddressReturn = true;
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
			mailAddressReturn = false;
			setErrorFor(mailAddress, errorMail, error);
		}
		
	}
	
	function checkMandatoryField(inputElement, errorElement) {
		inputElementVal = inputElement.val();

		try {
			if (inputElementVal.trim() == "") {
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
	
	function passwordCheck(){
		password = newPassword.val();
		passwordConfirm = forNewPasswordConfirmation.val();
		try {
			if(password.trim() == passwordConfirm.trim()) {
				passwordMatch = true;
				setSuccessFor(forNewPasswordConfirmation, errorNewPasswordConfirmation);
			}else{
				throw "E2186" ; //"Password does not match"
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
	
	newPassword.focusout(() => {
		passwordReturn = checkMandatoryField(newPassword, errorNewPassword);
	});
	
	forNewPasswordConfirmation.focusout(passwordCheck);	


	buttonUpateEmployeeInformation.click(function() {
		checkName();
		checkEmail();
		authorityReturn = checkMandatoryField(authority, errorAuthority);
		bankCodeReturn = checkOptionalNumber(bankCode, errorBankCode, "Invalid Bank Code");
		branchCodeReturn = checkOptionalNumber(branchCode, errorBranchCode, "Invalid Branch Code"); 
		accountNumberReturn = checkOptionalNumber(accountNumber, errorAccountNumber, "Invalid Account Number"); 
		dateofJoiningtheCompanyReturn = checkMandatoryField(dateJoiningtheCompany, errorDateofjoiningthecompany);
		passwordReturn = checkMandatoryField(newPassword, errorNewPassword);
		passwordCheck();
		

		if (employeeNameReturn == true && mailAddressReturn == true && authorityReturn == true && bankCodeReturn == true && branchCodeReturn == true && accountNumberReturn == true && dateofJoiningtheCompanyReturn == true && passwordMatch == true && passwordReturn == true) {
			saveEmployee();		
		} else {
			showMessage('info',"N1212");			
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
}*/

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}
