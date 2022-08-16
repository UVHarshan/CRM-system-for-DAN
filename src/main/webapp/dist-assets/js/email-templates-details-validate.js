
$(function() {

	// Input Elements
	var templateName = $("#templateName");	
	var title = $("#title");
	var body = $("#body");	
	
		
	// Return Values
	let templateNameReturn = false;
	let titleReturn = false;
	let bodyReturn = false;
	
	// Divs displaying error messages
	var errorTemplateName = $("#errorTemplateName");
	var errorTitle = $("#errorTitle");
	var errorBody = $("#errorBody");	
	

	// Buttons
	var buttonUpdateEmailTemplate = $("#buttonUpdateEmailTemplate");


	// Functions for validating......
	
	function checkMandatoryField(inputElement, errorElement) {
		inputElementVal = inputElement.val();

		try {
			if (inputElementVal.trim() == "") {
				throw "Can not be empty";  //E2180
			} else {
				setSuccessFor(inputElement, errorElement);
				return true;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}

	}
	

	// Focus Out Events	
	templateName.focusout(() => {
		templateNameReturn = checkMandatoryField(templateName, errorTemplateName);
	});	
	
	title.focusout(() => {
		titleReturn = checkMandatoryField(title, errorTitle);
	});
	
	body.focusout(() => {
		bodyReturn = checkMandatoryField(body, errorBody);
	});	
	
	

	buttonUpdateEmailTemplate.click(function() {	
		
		templateNameReturn = checkMandatoryField(templateName, errorTemplateName);
		titleReturn = checkMandatoryField(title, errorTitle);
		bodyReturn = checkMandatoryField(body, errorBody);

		
		if ( templateNameReturn == true && titleReturn == true && bodyReturn == true) {
			console.log("Valid")
			saveTemplate();
		} else {
			showMessage('info',"N1212");			
		}
	});

})


/*function setErrorFor(divInput, divError, errorCode) {
    message = caseErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
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
