let timeValueReturn = true;


function checkTimeFormat(node) {
	let timeValue = node.value.trim();
	let tdNode = node.closest("td");

	if (/^([0-9][0-9]):[0-5][0-9]$/.test(timeValue) || timeValue == "") {
		timeValueReturn = true;
		tdNode.className = "successVal";
	} else {
		timeValueReturn = false;
		tdNode.className = "errorVal";
		showMessage('info', "N1279"); //  Please enter time duration in hh:mm format!
	}
}




$(function() {

	// Input Elements
	var caseName = $("#caseName");
	var caseNumber = $("#caseNumber");
	var assignmentClassification = $("#assignmentClassification");
	var dispatchClassification = $("#dispatchClassification");
	var caseUnitPriceSetting = $("#ItemUnitPrice");	
	var requiredNumberPeople = $("#requiredNumberPeople");
	var implementationPeriodStart = $("#implementationPeriodStart");
	var implementationPeriodEnd = $("#implementationPeriodEnd");
	var caseDetailsSalary = $("#salary");
	var numberOfHires = $("#numberOfHires");	
	
    var personInChargeOfCase = $("#PersonInCharge");
	var assignmentDeadline = $("#assignmentDeadline");
	

	// Buttons
	var buttonUpdateCase = $("#buttonUpdateCase");

	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let caseNameReturn = false;
	let caseNumberReturn = false;
	let assignmentClassificationReturn = false;
	let dispatchClassificationReturn = false;
	let caseUnitPriceSettingReturn = true;
	let requiredNumberPeopleReturn = true;
	let implementationPeriodReturn = true;
	let caseDetailsSalaryReturn = true;
	let numberOfHiresReturn = true;
	let personInChargeOfCaseReturn = false;
	let assignmentDeadlineReturn = false;


	// Divs displaying error messages
	var errorCaseName = $("#errorCaseName");
	var errorCaseNumber = $("#errorCaseNumber");
	var errorAssignmentClassification = $("#errorAssignmentClassification");
	var errorDispatchClassification = $("#errorDispatchClassification");
	var errorCaseUnitPriceSetting = $("#errorItemUnitPrice");	
	var errorRequiredNumberPeople = $("#errorRequiredNumberPeople");

	var errorImplementationPeriodStart = $("#errorImplementationPeriodStart");
	var errorImplementationPeriodEnd = $("#errorImplementationPeriodEnd");
	var errorCaseDetailsSalary = $("#errorCaseDetailsSalary");	
	var errorNumberOfHires = $("#errorNumberOfHires");		
	var errorPersonInChargeOfCase = $("#errorPersonInCharge");
	var errorAssignmentDeadline = $("#errorAssignmentDeadline");
	
	let BusinessrelatedMaterialsReturn = true; 
	
		// Functions for validating.....
	
	
	function checkBusinessFiles()
	{
    var businessrelatedMaterialsArray = document.getElementsByName("businessrelatedMaterials[]"); //wi
	var errorBusinessrelatedMaterialsArray = document.getElementsByName("errorBusinessrelatedMaterials[]"); //wi
	
	  for(var i = 0; i < businessrelatedMaterialsArray.length; i++)
	  {
	    if($("input[name='businessrelatedMaterials[]']")[i].files[0])
	    {
		   var fileNode = $("input[name='businessrelatedMaterials[]']")[i].files[0];
		   fileNodeType = fileNode.type;
		   majorFileTye = fileNodeType.split("/");
				console.log(majorFileTye);
				if(majorFileTye[1] == "pdf"){
				    setSuccessForName(businessrelatedMaterialsArray, errorBusinessrelatedMaterialsArray,i);
					BusinessrelatedMaterialsReturn = true;
				}else{
				    setErrorForName(businessrelatedMaterialsArray, errorBusinessrelatedMaterialsArray, "E1078",i); 
					BusinessrelatedMaterialsReturn = false;
					return;
			    }	
		}
	 }
  }


	// Functions for validating.....

	function checkCaseName() {
		caseNameVal = caseName.val();
		try {
			if (caseNameVal.trim() == "") {
				//throw "Can not be empty!";
				throw "E2005";
			} else {
				caseNameReturn = true;
				setSuccessFor(caseName, errorCaseName);
			}
		} catch (error) {
			setErrorFor(caseName, errorCaseName, error);
			caseNameReturn = false;
		}

	}

	function checkCaseNumber() {
		var caseNumberVal = caseNumber.val();
		try {

			if (/^[0-9]+$/.test(caseNumberVal)) {
				setSuccessFor(caseNumber, errorCaseNumber);
				caseNumberReturn = true;
			} else {
				caseNumberReturn = false;
				//throw "Invalid Case Number";
				throw "E2006";
			}
		} catch (error) {
			setErrorFor(caseNumber, errorCaseNumber, error);
		}
	}

	function checkAssignmentClassification() {
		assignmentClassificationVal = assignmentClassification.val();
		
		try {
			if (assignmentClassificationVal == "") {
				//throw "Can not be empty!";
				 throw "E2005";
			} else {
				assignmentClassificationReturn = true;
				setSuccessFor(assignmentClassification, errorAssignmentClassification);
			}
		} catch (error) {
			setErrorFor(assignmentClassification, errorAssignmentClassification, error);
			assignmentClassificationReturn = false;
		}

	}

	function checkDispatchClassification() {
		dispatchClassificationVal = dispatchClassification.val();
		
		try {
			if (dispatchClassificationVal == "") {
				//throw "Can not be empty!";
				throw "E2005";
			} else {
				dispatchClassificationReturn = true;
				setSuccessFor(dispatchClassification, errorDispatchClassification);
			}
		} catch (error) {
			setErrorFor(dispatchClassification, errorDispatchClassification, error);
			dispatchClassificationReturn = false;
		}

	}
	
	function checkCaseUnitPriceSetting() {
		dispatchClassificationVal = caseUnitPriceSetting.val();
		
		try {
			if (dispatchClassificationVal == "") {
				//throw "Can not be empty!";
				throw "E2005";
			} else {
				caseUnitPriceSettingReturn = true;
				setSuccessFor(caseUnitPriceSetting, errorCaseUnitPriceSetting);
			}
		} catch (error) {
			setErrorFor(caseUnitPriceSetting, errorCaseUnitPriceSetting, error);
			caseUnitPriceSettingReturn = false;
		}

	}

	function checkRequiredNumberPeople() {
		var requiredNumberPeopleVal = requiredNumberPeople.val();
		try {

			if (/^[0-9]+$/.test(requiredNumberPeopleVal) || requiredNumberPeopleVal == "") {
				setSuccessFor(requiredNumberPeople, errorRequiredNumberPeople);
				requiredNumberPeopleReturn = true;
			} else {
				requiredNumberPeopleReturn = false;
				//throw "Invalid Required Number of People";
				throw "E2007";
			}
		} catch (error) {
			setErrorFor(requiredNumberPeople, errorRequiredNumberPeople, error);
		}
	}

	function checkSalary() {
		var requiredNumberPeopleVal = caseDetailsSalary.val();
		try {

			if (/^[0-9]+$/.test(requiredNumberPeopleVal) || requiredNumberPeopleVal == "") {
				setSuccessFor(caseDetailsSalary, errorCaseDetailsSalary);
				caseDetailsSalaryReturn = true;
			} else {
				caseDetailsSalaryReturn = false;
				//throw "Invalid Salary";
				throw "E2021";
			}
		} catch (error) {
			setErrorFor(caseDetailsSalary, errorCaseDetailsSalary, error);
		}
	}
	
	function checkNumberofHires() {
		var requiredNumberPeopleVal = numberOfHires.val();
		try {

			if (/^[0-9]+$/.test(requiredNumberPeopleVal) || requiredNumberPeopleVal == "") {
				setSuccessFor(numberOfHires, errorNumberOfHires);
				numberOfHiresReturn = true;
			} else {
				numberOfHiresReturn = false;
				//throw "Invalid Number Of Hires";
				throw "E2022";
			}
		} catch (error) {
			setErrorFor(numberOfHires, errorNumberOfHires, error);
		}
	}
	

	
	function checkPersonInChargeOfCase() {
		personInChargeOfCaseVal = personInChargeOfCase.val();
		
		try {
			if (personInChargeOfCaseVal == "") {
				//throw "Can not be empty!";
				throw "E2005";
			} else {
				personInChargeOfCaseReturn = true;
				setSuccessFor(personInChargeOfCase, errorPersonInChargeOfCase);
			}
		} catch (error) {
			setErrorFor(personInChargeOfCase, errorPersonInChargeOfCase, error);
			personInChargeOfCaseReturn = false;
		}

	}

	function checkAssignmentDeadline() {
		assignmentDeadlineVal = assignmentDeadline.val();
		try {
			if (assignmentDeadlineVal == "") {
				//throw "Can not be empty!";
				 throw "E2005";
			} else {
				assignmentDeadlineReturn = true;
				setSuccessFor(assignmentDeadline, errorAssignmentDeadline);
			}
		} catch (error) {
			setErrorFor(assignmentDeadline, errorAssignmentDeadline, error);
			assignmentDeadlineReturn = false;
		}

	}

	function checkImplementationPeriod() {
		implementPeriodStartVal = implementationPeriodStart.val();
		implementPeriodEndVal = implementationPeriodEnd.val();

		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					//throw "Implementation Periods do not match!";
					 throw "E2013";
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
	
	

	// Focus Out Events
	caseName.focusout(checkCaseName);
	//caseNumber.focusout(checkCaseNumber);
	assignmentClassification.focusout(checkAssignmentClassification);
	dispatchClassification.focusout(checkDispatchClassification);
	caseUnitPriceSetting.focusout(checkCaseUnitPriceSetting);
	
	requiredNumberPeople.focusout(checkRequiredNumberPeople);
	implementationPeriodStart.focusout(checkImplementationPeriod);
	implementationPeriodEnd.focusout(checkImplementationPeriod);
	caseDetailsSalary.focusout(checkSalary);
	numberOfHires.focusout(checkNumberofHires);
	
	
	personInChargeOfCase.focusout(checkPersonInChargeOfCase);
	assignmentDeadline.focusout(checkAssignmentDeadline);


	buttonUpdateCase.click(function() {

		BusinessrelatedMaterialsReturn = true;
        checkBusinessFiles();
		checkCaseName();
		
		checkAssignmentClassification();
		checkDispatchClassification();		
		checkPersonInChargeOfCase();
		checkAssignmentDeadline();
		
		if(dispatchClassification.val() == "1" || dispatchClassification.val() == "2" || dispatchClassification.val() == "3"){
			checkCaseUnitPriceSetting();	
			checkRequiredNumberPeople();
			checkImplementationPeriod();		
		}else if( dispatchClassification.val() == "4" ){
			checkSalary();
			checkNumberofHires();
		}

		if (BusinessrelatedMaterialsReturn == true &&  caseNameReturn == true && assignmentClassificationReturn == true && dispatchClassificationReturn == true && caseUnitPriceSettingReturn == true && requiredNumberPeopleReturn == true && implementationPeriodReturn == true && caseDetailsSalaryReturn == true && numberOfHiresReturn == true && personInChargeOfCaseReturn == true && assignmentDeadlineReturn == true) {
			saveCaseInfo();		
		} else {
			showMessage('info',"N1212");
			
		}
	});



})


function setErrorFor(divInput, divError, errorCode) {
    message = caseErrorArray[errorCode];
	divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

function setErrorForName(divInput, divError, errorCode,val) {
message = caseErrorArray[errorCode];
//divInput[val].addClass("errorVal").removeClass("successVal");
inputDom = $("input[name='businessrelatedMaterials[]']")[val];
console.log("inputDom "+inputDom);
//inputDom.addClass("errorVal").removeClass("successVal");
errorDom = $("input[name='errorBusinessrelatedMaterials[]']")[val];
console.log("errorDom "+ errorDom);
//errorDom.html(message);
//divError[val].html(message);
}



function setSuccessForName(divInput, divError,val) {
//divInput[val].addClass("successVal").removeClass("errorVal");
//divError[val].html("");
}
