const prefectures = document.getElementById("prefectures");
const mobilePhone = document.getElementById("mobilePhone");
const dateOfBirthFrom = document.getElementById("dateOfBirthFrom");
const dateOfBirthTo = document.getElementById("dateOfBirthTo");
const givenNames = document.getElementById("givenNames");
const mailAddress = document.getElementById("mailAddress");
const unitPriceFrom = document.getElementById("unitPriceFrom");
const unitPriceTo = document.getElementById("unitPriceTo");
const staffCode = document.getElementById("staffCode");


const errorPrefecture = document.getElementById("errorPrefecture");
const errorMobile = document.getElementById("errorMobile");
const errorDob = document.getElementById("errorDob");
const errorGivenName = document.getElementById("errorGivenName");
const errorMail = document.getElementById("errorMail");
const errorUnitPriceFrom = document.getElementById("errorUnitPriceFrom");
const errorUnitPriceTo = document.getElementById("errorUnitPriceTo");
const errorStaffCode = document.getElementById("errorStaffCode");

// Return Values......
let mobilePhoneReturn = true;
let mailAddressReturn = true;
let dateOfBirthReturn = true;
let givenNameReturn = true;
let unitPriceFromReturn = true;
let unitPriceToReturn = true;
let unitPriceMatchReturn = true;
let staffCodeReturn = true;

const checkMobile =  function() {
	if (/^[0-9]{10,11}$/g.test(mobilePhone.value) || mobilePhone.value == "") {
		setSuccessFor(mobilePhone, errorMobile);
		mobilePhoneReturn = true;
	} else {
		setErrorFor(mobilePhone, errorMobile, "E1031"); //Invalid Mobile Number
		mobilePhoneReturn = false;
	}
}

const checkMail = function() {	
	if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mailAddress.value) || mailAddress.value == "") {
		setSuccessFor(mailAddress, errorMail);
		mailAddressReturn = true;
	} else {
		setErrorFor(mailAddress, errorMail, "E1032"); //Invalid Email.Enter Valid Email Address
		mailAddressReturn = false;
	}
}

const checkDOB =  function() {
	if (dateOfBirthFrom.value > dateOfBirthTo.value) {
		setErrorFor(dateOfBirthFrom, errorDob, "E1030");  //Invalid DOB Range
		 dateOfBirthReturn = false;
	} else {
		setSuccessFor(dateOfBirthFrom, errorDob);
		setSuccessFor(dateOfBirthTo, errorDob);
		dateOfBirthReturn = true;
	}
}

const checkGivenName =  function() {
		// allowing japanese characters and english both
	if (!/^([^0-9]*)$/.test(givenNames.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(givenNames.value)) {
		setErrorFor(givenNames, errorGivenName, "E1033"); //Please check the Given Name
		givenNameReturn = false;
	} else {
		setSuccessFor(givenNames, errorGivenName);
		givenNameReturn = true;
	}
}

const checkUnitPrice = function() {	
	
	if(!isNaN(unitPriceFrom.value) && !isNaN(unitPriceTo.value)) {
		
		if (parseInt(unitPriceFrom.value) > parseInt(unitPriceTo.value)) {
			setErrorFor(unitPriceFrom, errorUnitPriceFrom, "E1036");    // Invalid Unit Price
			setErrorFor(unitPriceTo, errorUnitPriceTo, "E1036");
			unitPriceMatchReturn = false;
		} else {
			setSuccessFor(unitPriceFrom, errorUnitPriceFrom);
			setSuccessFor(unitPriceTo, errorUnitPriceTo);
			unitPriceMatchReturn = true;
		}
		
	}
	
	
}

const checkStaffCode =  function() {
	
	if (/^[0-9]+$/.test(staffCode.value) || staffCode.value == "" ) {
		setSuccessFor(staffCode, errorStaffCode);
		staffCodeReturn = true;
	} else {
		setErrorFor(staffCode, errorStaffCode, "E1034"); //Invalid Staff Code
		staffCodeReturn = false;
	}		
}



mobilePhone.addEventListener("focusout", checkMobile);
mailAddress.addEventListener("focusout", checkMail);
dateOfBirthTo.addEventListener("focusout", checkDOB);
givenNames.addEventListener("focusout", checkGivenName);

unitPriceFrom.addEventListener("focusout", () => {
	if (/^[0-9]+$/.test(unitPriceFrom.value) || unitPriceFrom.value == "" ) {
		setSuccessFor(unitPriceFrom, errorUnitPriceFrom);
		unitPriceFromReturn = true;
	} else {
		setErrorFor(unitPriceFrom, errorUnitPriceFrom, "E1036"); 
		unitPriceFromReturn = false;
	}
	
	checkUnitPrice();
});

unitPriceTo.addEventListener("focusout", () => {
	if (/^[0-9]+$/.test(unitPriceTo.value) || unitPriceTo.value == "" ) {
		setSuccessFor(unitPriceTo, errorUnitPriceTo);
		unitPriceToReturn = true;
	} else {
		setErrorFor(unitPriceTo, errorUnitPriceTo, "E1036"); 
		unitPriceToReturn = false;
	}
	checkUnitPrice();
});

staffCode.addEventListener("focusout", checkStaffCode);

function checkSearch() {

	checkMobile();
	checkMail();
	checkDOB();
	checkGivenName();
	checkUnitPrice();
	checkStaffCode();
	
	$("#searchForm").submit(function(event){
		event.preventDefault();

		if(mobilePhoneReturn == true &&  mailAddressReturn == true && dateOfBirthReturn == true &&  givenNameReturn == true &&   unitPriceFromReturn == true && unitPriceToReturn == true && unitPriceMatchReturn == true &&  staffCodeReturn == true ){
			console.log("Search Info is VAlid!!");
			runStaffSearch();
		} else {
			showMessage('info', "N1093");
			console.log("Invalid");
		}
	});
}


/*function setErrorFor(divInput, divError, message) {
	divInput.className = "form-control errorVal";
	divError.innerHTML = message;
}*/

function setErrorFor(divInput, divError, errorCode) {
	divInput.className = "form-control errorVal";
	message = staffErrorArray[errorCode];
	divError.innerHTML = message;
}

function setSuccessFor(input, divError) {
	// input.className = "form-control successVal";
	input.className = "form-control";
	divError.innerHTML = "";
}