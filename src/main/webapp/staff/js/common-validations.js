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