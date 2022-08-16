// Validation using Jquery

$(function() {

	// Input Elements	
	var customerName = $("#customerName");
	var staffCode = $("#staffCode");
	var staffName = $("#staffName");
	var implementationPeriodStart = $("#implementationDateFrom");
	var implementationPeriodEnd = $("#implementationdateTo");
	

	// Return Values
	let customerNameReturn = true;
	var staffCodeReturn = true;
	let staffNameReturn = true;
	let implementationPeriodReturn = false;
	let attendanceStatusReturn = false;


	// Divs displaying error messages
	var errorCustomerName = $("#errorCustomerName");
	var errorStaffCode = $("#errorStaffCode");
	var errorStaffName = $("#errorStaffName");	
	var errorImplementationPeriodStart = $("#errorImplementationPeriodStart");
	var errorImplementationPeriodEnd = $("#errorImplementationPeriodEnd");
	var errorAttendanceStatus = $("#errorAttendanceStatus");
	

	customerName.focusout(function() {
		customerRepNameVal = customerName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {
				throw "E2120";  // Invalid Customer Name
				// throw "E2052";
			} else {
				customerNameReturn = true;
				setSuccessFor(customerName, errorCustomerName);
			}
		} catch (error) {
			setErrorFor(customerName, errorCustomerName, error);
			customerNameReturn = false;
		}
	});

	staffCode.focusout(function() {
		caseNumberVal = staffCode.val();
		try {

			if (/^[0-9]+$/.test(caseNumberVal) || caseNumberVal == "") {
				setSuccessFor(staffCode, errorStaffCode);
				staffCodeReturn = true;
			} else {
				staffCodeReturn = false;
				throw "E2121";
				//throw "E2051";
			}
		} catch (error) {
			setErrorFor(staffCode, errorStaffCode, error);
		}
	});

	staffName.focusout(function() {
		customerRepNameVal = staffName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {
				throw "E2122";
				// throw "E2052";
			} else {
				staffNameReturn = true;
				setSuccessFor(staffName, errorStaffName);
			}
		} catch (error) {
			setErrorFor(staffName, errorStaffName, error);
			staffNameReturn = false;
		}
	});


	function checkImplementationPeriod() {
		implementPeriodStartVal = implementationPeriodStart.val();
		implementPeriodEndVal = implementationPeriodEnd.val();

		if (implementPeriodStartVal == "") {
			implementationPeriodReturn = false;
			setErrorFor(implementationPeriodStart, errorImplementationPeriodStart, "E2124"); // E2124
		} else {
			setSuccessFor(implementationPeriodStart, errorImplementationPeriodStart);
		}

		if (implementPeriodEndVal == "") {
			implementationPeriodReturn = false;
			setErrorFor(implementationPeriodEnd, errorImplementationPeriodEnd, "E2124");  // E2050
		} else {
			setSuccessFor(implementationPeriodEnd, errorImplementationPeriodEnd);
		}	
		

		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					throw "E2123";
					// throw "E2053";
				} else {
					implementationPeriodReturn = true;
					setSuccessFor(implementationPeriodStart, errorImplementationPeriodStart);
					setSuccessFor(implementationPeriodEnd, errorImplementationPeriodEnd);
				}
			} catch (error) {
				setErrorFor(implementationPeriodStart, errorImplementationPeriodStart, error);
				setErrorFor(implementationPeriodEnd, errorImplementationPeriodEnd, error);
				implementationPeriodReturn = false;
			}

		}
	}
	
	function checkAttendanceStatus() {
		var checkedAttendanceStatus = $('input[name="attendanceStatus"]:checked');
		console.log("checkedAttendanceStatus   " + checkedAttendanceStatus.val());
		
		try {

			if (checkedAttendanceStatus.val() == 1) {
				setSuccessFor("", errorAttendanceStatus);
				attendanceStatusReturn = true;
			} else {
				throw "E2125";				
			}
		} catch (error) {
			attendanceStatusReturn = false;
			setErrorFor("", errorAttendanceStatus, error);
		}
	}

	implementationPeriodStart.focusout(checkImplementationPeriod);
	implementationPeriodEnd.focusout(checkImplementationPeriod);

	$("#searchBtn").click(function(event) {
		
		event.preventDefault();
		checkImplementationPeriod();
		//checkAttendanceStatus();
		
		console.log(customerNameReturn +" "+ staffCodeReturn +" "+ staffNameReturn+" "+ implementationPeriodReturn);
		
		if (customerNameReturn == true && staffCodeReturn == true && staffNameReturn == true && implementationPeriodReturn == true) {
			console.log("Valid data");
			runSearch();

		} else {
			console.log("InValid");
			//showMessage('info', "Please Check Search Values");
			showMessage('info', "N1093");
		}
	});

});


/*function setErrorFor(divInput, divError, message) {
	if(divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/

//Validation for Japanese Translations.......
function setErrorFor(divInput, divError, errorCode) {
	if(divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	message = attendanceErrorArray[errorCode];
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	//divInput.addClass("successVal").removeClass("errorVal");
	if(divInput != "") divInput.removeClass("errorVal");
	divError.html("");
}

