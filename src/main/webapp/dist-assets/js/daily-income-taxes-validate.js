// Validation using Jquery

$(function() {

	// Input Elements

	var selectYear = $("#selectYear");
	

	// Return Values
	var selectYearReturn = false;


	// Divs displaying error messages
	var errorYear = $("#errorYear");

	
	function checkYear() {
		caseNumberVal = selectYear.val();
		try {
			if(caseNumberVal.trim() == "") {
				throw "E2240";
			}else{
				setSuccessFor(selectYear, errorYear);
				selectYearReturn = true;
			}
		} catch (error) {
			selectYearReturn = false;
			setErrorFor(selectYear, errorYear, error);
		}
		
	}
	

	selectYear.focusout(checkYear);



	$("#searchForm").submit(function(event) {
		event.preventDefault();
		checkYear();		
		if ( selectYearReturn == true) {
			runSearch();
		} else {
			//showMessage('info', "Please Check Search Values");
			showMessage('info', "N1093");
		}
	});

});


/*function setErrorFor(divInput, divError, message) {
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}*/


function setErrorFor(divInput, divError, errorCode) {
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	message = DailyIncomeTaxesErrorArray[errorCode];
	divError.html(message);
}



function setSuccessFor(divInput, divError) {
	//divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
	divError.html("");
}

