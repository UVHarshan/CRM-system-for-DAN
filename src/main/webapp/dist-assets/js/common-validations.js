// Validation for telephone numbers 24/09/2021

function checkTelephoneNo(input) {
	let value = input.value;
	if(/^[0-9]{10,11}$/g.test(value)) {
		return true;
	}else{
		return false;
		
	}
}

function checkTelephoneNoByValue(value)
{ 
	if(/^[0-9]{10,11}$/g.test(value)) {
		return true;
	}else{
		return false;
	}
}


///////////New Edit/////////

function checkTimeFormat(inputElement, errorElement) {
		inputVal = inputElement.val();
		try {

			if (/^([0-9][0-9]):[0-5][0-9]$/.test(inputVal) || inputVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				return true;
				//checkStartEndTime();  // Checking for the relationship
			} else {
				throw "Please enter time duration in hh:mm format";
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
			
		}
}



function setErrorFor(divInput, divError, message) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}