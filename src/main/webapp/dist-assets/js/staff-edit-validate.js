// Getting the user input elements
const staffName = document.getElementById("staffName");
const staffNameKatakana = document.getElementById("staffNameKatakana");
const staffZipCode = document.getElementById("staffZipCode");
const staffPrefecture = document.getElementById("staffPrefecture");
const staffAddressKatakana = document.getElementById("staffAddressKatakana");
const staffDOB = document.getElementById("staffDOB");
const staffGender = document.getElementById("staffGender");
const staffMobile = document.getElementById("staffMobile");
const staffHomeTel = document.getElementById("staffHomeTel");
const staffFax = document.getElementById("staffFax");
const staffAttributeclassification1 = document.getElementById("staffAttributeclassification1");
const staffAttributeclassification2 = document.getElementById("staffAttributeclassification2");
//const staffLaborManagementAgreementExpirationDate = document.getElementById("staffLaborManagementAgreementExpirationDate");     
const staffAttribute = document.getElementById("staffAttribute");
const staffAddress = document.getElementById("staffAddress");


// ------- Validation return vars ---------
let staffNameReturn = false;
let staffNameKatakanaReturn = false;
let staffZipCodeReturn = false;
let staffPrefectureReturn = false;
let staffAddressKatakanaReturn = false;
let staffDOBReturn = false;
let staffGenderReturn = false;
let staffMobileReturn = false;
let staffHomeTelReturn = true;
let staffFaxReturn = true;
let staffAttributeclassification1Return = false;
let staffAttributeclassification2Return = true;
// let staffLaborManagementAgreementExpirationDateReturn = true; 
let staffAttributeReturn = true;
let staffAddressReturn = false;
let checkboxesDispatchReturn = false;
let checkboxesOccupationClassiReturn = false;

//  console.log(checkboxesOccupationClassi);      

//  Getting the divs for displaying error messages
const errorName = document.getElementById("errorName");
const errorPrefecture = document.getElementById("errorPrefecture");
const errorNameKatakana = document.getElementById("errorNameKatakana");
const errorZip = document.getElementById("errorZip");
const errorAddressKatakana = document.getElementById("errorAddressKatakana");
const errorDob = document.getElementById("errorDob");
const errorGender = document.getElementById("errorGender");
const errorMobile = document.getElementById("errorMobile");
const errorHomeTel = document.getElementById("errorHomeTel");
const errorFax = document.getElementById("errorFax");
const errorAttribute1 = document.getElementById("errorAttribute1");
const errorAttribute2 = document.getElementById("errorAttribute2");
// const errorLabourExpire  = document.getElementById("errorLabourExpire");   
const errorAttribute = document.getElementById("errorAttribute");
const errordispatchClassi = document.getElementById("errordispatchClassi");
const errorOccuClassi = document.getElementById("errorOccuClassi");
const errorAddress = document.getElementById("errorAddress");

// Buttons.............
const btnStaffInfo = document.getElementById("buttonEditStaffInformation");

const checkStaffName = function () {
	if (!/^([^0-9]*)$/.test(staffName.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffName.value) || staffName.value.trim() == "") {
		setErrorFor(staffName, errorName, "E1037");
		staffNameReturn = false;
	} else if (/^[a-zA-Z_ ]*$/.test(staffName.value)) {
		setSuccessFor(staffName, errorName);
		staffNameReturn = true;
	} else {
		setSuccessFor(staffName, errorName);
		staffNameReturn = true;
	}
}

const checkStaffNameKatakana = function() {
	if (!/^([^0-9]*)$/.test(staffNameKatakana.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffNameKatakana.value) || staffNameKatakana.value.trim() == "") {
		setErrorFor(staffNameKatakana, errorNameKatakana, "E1038");
		staffNameKatakanaReturn = false;
	} else {
		setSuccessFor(staffNameKatakana, errorNameKatakana);
		staffNameKatakanaReturn = true;
	}
}

const checkZipCode =  function() {

	if (/^[0-9]{7}$/g.test(staffZipCode.value)) {
		setSuccessFor(staffZipCode, errorZip);
		staffZipCodeReturn = true;
	} else {
		setErrorFor(staffZipCode, errorZip, "E1039");
		staffZipCodeReturn = false;
	}
}

const checkPrefecture = function() {
	 if (staffPrefecture.value === "") {
        setErrorFor(staffPrefecture, errorPrefecture, "E1040");
        staffPrefectureReturn = false; //updated
    } else {
        setSuccessFor(staffPrefecture, errorPrefecture);
        staffPrefectureReturn = true;
    }
}

const checkAddress = function() {
	if (staffAddress.value.trim() == "") {
        setErrorFor(staffAddress, errorAddress, "E1041");
        staffAddressReturn = false;  // updated
    } else {
        setSuccessFor(staffAddress, errorAddress);
        staffAddressReturn = true;
    }
}



const checkAddressKatakana = function() {
    if (staffAddressKatakana.value.trim() == "") {
        setErrorFor(staffAddressKatakana, errorAddressKatakana, "E1042");
        staffAddressKatakanaReturn = false; // updated
    } else {
        setSuccessFor(staffAddressKatakana, errorAddressKatakana);
        staffAddressKatakanaReturn = true;
    }
}


const checkDOB = () => {
	 // Date of Birth (TC0020)
    var q = new Date();
    var m = q.getMonth();
    var d = q.getDay();
    var y = q.getFullYear();

    var today = new Date(y, m, d);

    const inputDOB = new Date(staffDOB.value);

    if (inputDOB > today || staffDOB.value == "") {
        setErrorFor(staffDOB, errorDob, "E1043");
        staffDOBReturn = false;
    } else {
        setSuccessFor(staffDOB, errorDob);
        staffDOBReturn = true;
    }
}

const checkGender = () => {
    if (staffGender.value == "") {
        setErrorFor(staffGender, errorGender, "E1044");
        staffGenderReturn = false; // updated
    } else {
        setSuccessFor(staffGender, errorGender);
        staffGenderReturn = true;
    }
}

const checkMobile = () => {
    if (/^[0-9]{10,11}$/g.test(staffMobile.value)) {
        setSuccessFor(staffMobile, errorMobile);
        staffMobileReturn = true;
    } else {
        setErrorFor(staffMobile, errorMobile, "E1031");
        staffMobileReturn = false;  // updated
    }
}

const checkHomeTel = () => {
        if (/^[0-9]{10,11}$/g.test(staffHomeTel.value) || staffHomeTel.value.trim() == "") {
            setSuccessFor(staffHomeTel, errorHomeTel);
            staffHomeTelReturn = true;
        } else {
            setErrorFor(staffHomeTel, errorHomeTel, "E1031");
            staffHomeTelReturn = false;
        }    
}

const checkFax = () => {
    
        if (/^[0-9]{10,11}$/g.test(staffFax.value) || staffFax.value.trim() == "") {
            setSuccessFor(staffFax, errorFax);
            staffFaxReturn = true;
        } else {
            setErrorFor(staffFax, errorFax, "E1045");
            staffFaxReturn = false;
        }
    
}

const checkAttributeClass1 = () => {
    if (staffAttributeclassification1.value == "") {
        setErrorFor(staffAttributeclassification1, errorAttribute1, "E1044");
        staffAttributeclassification1Return = false;
    } else {
        setSuccessFor(staffAttributeclassification1, errorAttribute1);
        staffAttributeclassification1Return = true;
    }
}

const checkDispatchclassi = () => {
	const checkboxesDispatch = document.querySelectorAll('input[name="dispatchClassi"]:checked');
	//console.log("checkboxesDispatch   " + checkboxesDispatch.length);
    if (checkboxesDispatch.length == 0) {
        setErrorFor("", errordispatchClassi, "E1046");
        checkboxesDispatchReturn = false;
    } else {
        setSuccessFor("", errordispatchClassi);
        checkboxesDispatchReturn = true;
    }
}

const checkOccupationClassi = () => {
	const checkboxesOccupationClassi = document.querySelectorAll('input[name="OccupationClassi"]:checked');	
	
    if (checkboxesOccupationClassi.length == 0) {
        setErrorFor("", errorOccuClassi, "E1047");
        checkboxesOccupationClassiReturn = false;
    } else {
        setSuccessFor("", errorOccuClassi);
        checkboxesOccupationClassiReturn = true;
    }	
}

// Focusout events for input tags
staffName.addEventListener("focusout", checkStaffName);
staffNameKatakana.addEventListener("focusout", checkStaffNameKatakana);
staffZipCode.addEventListener("focusout", checkZipCode);
staffPrefecture.addEventListener("focusout", checkPrefecture);
staffAddress.addEventListener("focusout", checkAddress);
staffAddressKatakana.addEventListener("focusout", checkAddressKatakana);
staffDOB.addEventListener("focusout", checkDOB);
staffGender.addEventListener("focusout", checkGender);
staffMobile.addEventListener("focusout", checkMobile);
staffHomeTel.addEventListener("focusout", checkHomeTel);
staffFax.addEventListener("focusout", checkFax);
staffAttributeclassification1.addEventListener("focusout", checkAttributeClass1);


btnStaffInfo.addEventListener("click", () => {
	
	checkStaffName();
	checkStaffNameKatakana();
	checkZipCode();
	checkPrefecture();
	checkAddress();
	checkAddressKatakana();
	checkDOB();
	checkGender();
	checkMobile();
	checkHomeTel();
	checkFax();
	checkAttributeClass1();
	checkDispatchclassi();
	checkOccupationClassi();
	
   if (staffZipCodeReturn == true && staffNameReturn == true && staffNameKatakanaReturn == true && staffPrefectureReturn == true && staffAddressKatakanaReturn == true && staffDOBReturn == true && staffGenderReturn == true && staffMobileReturn == true && staffHomeTelReturn == true && staffFaxReturn == true && staffAttributeclassification1Return == true && staffAttributeclassification2Return == true && staffAttributeReturn == true && staffAddressReturn == true && checkboxesDispatchReturn == true && checkboxesOccupationClassiReturn == true) {
        console.log("staff info is Valid");
		editStaffInfo();
    } else {
		showMessage('info', "N1094");
        console.log("staff info Not Valid");
        console.log(staffZipCodeReturn + staffNameReturn + staffNameKatakanaReturn + staffPrefectureReturn + staffAddressKatakanaReturn + staffDOBReturn + staffGenderReturn + staffMobileReturn + staffHomeTelReturn + staffFaxReturn + staffAttributeclassification1Return + staffAttributeclassification2Return + staffAttributeReturn + staffAddressReturn + checkboxesDispatchReturn + checkboxesOccupationClassiReturn)
    }	
});


//Transportation Information Accordian................
const staffNearestStation = document.getElementById("staffNearestStation");
const staffTimeRequiredNearestStation = document.getElementById("staffTimeRequiredNearestStation");
const staffRoundTripBusFare = document.getElementById("staffRoundTripBusFare");

let staffNearestStationReturn = false;
let staffTimeRequiredNearestStationReturn = false;
let staffRoundTripBusFareReturn = false;

const errorNearestStation = document.getElementById("errorNearestStation");
const errorTimeStation = document.getElementById("errorTimeStation");
const errorBusFare = document.getElementById("errorBusFare");

const buttonSaveTransport = document.getElementById("buttonEditTransportationInformation");


const checkNearestStation = () => {
   if (!/^([^0-9]*)$/.test(staffNearestStation.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffNearestStation.value)) {
		setErrorFor(staffNearestStation, errorNearestStation, "E1048");
        staffNearestStationReturn = false;
    } else {
       setSuccessFor(staffNearestStation, errorNearestStation);
       staffNearestStationReturn = true;
    }
}

const checkTimeStation = () => {
    if ((/^[0-9]+$/.test(staffTimeRequiredNearestStation.value) && parseInt(staffTimeRequiredNearestStation.value) >= 0 &&  parseInt(staffTimeRequiredNearestStation.value) < 999) || staffTimeRequiredNearestStation.value.trim() == "" ) {
        setSuccessFor(staffTimeRequiredNearestStation, errorTimeStation);
        staffTimeRequiredNearestStationReturn = true;
    } else {
		setErrorFor(staffTimeRequiredNearestStation, errorTimeStation, "E1049");
        staffTimeRequiredNearestStationReturn = false;
    }
}

const checkRoundTripBus = () => {
    // Round Trip Bus Fare (TC0036 )
    if (staffRoundTripBusFare.value == "") {
    
           staffRoundTripBusFareReturn = true;

    } else {
        if (/^[0-9]+$/.test(staffRoundTripBusFare.value)) {
            setSuccessFor(staffRoundTripBusFare, errorBusFare);
            staffRoundTripBusFareReturn = true;
        } else {
            setErrorFor(staffRoundTripBusFare, errorBusFare, "E1050");
            staffRoundTripBusFareReturn = false;
        }
    }
  
}

staffNearestStation.addEventListener("focusout", checkNearestStation);
staffTimeRequiredNearestStation.addEventListener("focusout", checkTimeStation);
staffRoundTripBusFare.addEventListener("focusout", checkRoundTripBus);

buttonSaveTransport.addEventListener("click", function() {
	
	checkNearestStation();
	checkTimeStation();
	checkRoundTripBus();
	
    if (staffNearestStationReturn == true && staffTimeRequiredNearestStationReturn == true && staffRoundTripBusFareReturn == true) {
		console.log("Transport is Valid");       
        editTransportInfo();        
    } else {
		showMessage('info', "N1094");    
        console.log("check Transport Not Valid");
    }
});

/// Credentials Info Accordian............

function checkCredential() {

	const licenseQualificationIDArray = document.getElementsByName("licenseQualificationID[]");
	const licenceDateFromArray = document.getElementsByName("staffLicenseQualificationDateFrom[]");
	//const licenceDateToArray = document.getElementsByName("staffLicenseQualificationDateTo[]");
	const licenceQualificationArray = document.getElementsByName("staffLicenceQualification[]");
	const licenceNumberArray = document.getElementsByName("staffLicenceNumber[]");
	const licenceOperatingItemArray = document.getElementsByName("staffLicenceOperatingItem[]");
	const errorLicenseQualification = document.getElementById("errorLicenseQualification");

	let licenseQualificationReturn = true;
	let licenseDateValidationStatus = false;

	var firstRowValidator = 0;
	var checkLength = 0;

	if (licenseQualificationIDArray.length == 1) {

		checkLength = 1;
		if (licenceDateFromArray[0].value.trim() != "") {
			firstRowValidator++;

		}
	/*	if (licenceDateToArray[0].value.trim() != "") {
			firstRowValidator++;

			if (licenceDateFromArray[0].value < licenceDateToArray[0].value) {
				licenseQualificationReturn = true;
			}
			else {
				licenseQualificationReturn = false;
				licenseDateValidationStatus = true;
			}

		}*/
		if (licenceQualificationArray[0].value.trim() != "") {
			firstRowValidator++;
		}
		/*if (licenceNumberArray[0].value.trim() != "") {
			firstRowValidator++;
		}
		if (licenceOperatingItemArray[0].value.trim() != "") {
			firstRowValidator++;
		}*/


	}
	
	for (var i = checkLength; i < licenseQualificationIDArray.length; i++) {

		if (licenceDateFromArray[i].value != "" && licenceQualificationArray[i].value.trim() != "") {
			
			licenseQualificationReturn = true;
			setSuccessFor("", errorLicenseQualification);
		}
		else {
			licenseQualificationReturn = false;
			setErrorFor("", errorLicenseQualification, "E1056");
			break;

		}

	}


	if ((firstRowValidator == 0 || firstRowValidator == 2) && licenseQualificationReturn == true) {
		setSuccessFor("", errorLicenseQualification);
		editCredential();
	}
	else {
		if (licenseDateValidationStatus) {
			showMessage('info', "N1094");
			setErrorFor("", errorLicenseQualification, "E1053");
		}
		else {
			showMessage('info', "N1094");
			setErrorFor("", errorLicenseQualification, "E1086");  // License Qualification information is Not Valid. Date From and License Qualification columns should be filled - E1086
		}
		console.log("check credentials,  Not Valid");
	}

}





/// Resume Info Accordian............
function checkResume() {

	// Check Educational Background.......

	const staffEducationalIDArray = document.getElementsByName("staffEducationalID[]");
	const staffEducationalDateFromArray = document.getElementsByName("staffEducationalBackgroundDateFrom[]");
	const staffEducationalDateToArray = document.getElementsByName("staffEducationalBackgroundDateTo[]");
	const staffInstituteArray = document.getElementsByName("staffInstitute[]");
	const staffQualificationArray = document.getElementsByName("staffQualification[]");
	const errorEducationalBackground = document.getElementById("errorEducationalBackground");

	let educationalBackgroundReturn = true;
	let dateValidationEducationStatus = false;

	var firstRowValidatorEducation = 0;
	var checkLength = 0;

	if (staffEducationalIDArray.length == 1) {

		checkLength = 1;

		/*if (staffEducationalDateFromArray[0].value != "") {
			firstRowValidatorEducation++;
		}*/
		if (staffEducationalDateToArray[0].value != "") {
			firstRowValidatorEducation++;


			if (staffEducationalDateFromArray[0].value < staffEducationalDateToArray[0].value) {
				educationalBackgroundReturn = true;
				setSuccessFor("", errorEducationalBackground);

			}
			else {
				educationalBackgroundReturn = false;
				dateValidationEducationStatus = true;
				setErrorFor("", errorEducationalBackground, "E1051");


			}
		}
		if (staffInstituteArray[0].value.trim() != "") {
			firstRowValidatorEducation++;
		}
	/*	if (staffQualificationArray[0].value.trim() != "") {
			firstRowValidatorEducation++;
		}*/

	}
	
	for (var i = checkLength; i < staffEducationalIDArray.length; i++) {

		if (staffEducationalDateToArray[i].value != "" && staffInstituteArray[i].value.trim() != "") {

			if (staffEducationalDateFromArray[i].value != "") {
				if (staffEducationalDateFromArray[i].value < staffEducationalDateToArray[i].value) {
					educationalBackgroundReturn = true;
					setSuccessFor("", errorEducationalBackground);
				}
				else {
					educationalBackgroundReturn = false;
					dateValidationEducationStatus = true;
					setErrorFor("", errorEducationalBackground, "E1051");
					break;
				}

			} else {
				educationalBackgroundReturn = true;
				setSuccessFor("", errorEducationalBackground);
			}
		}
		else {
			educationalBackgroundReturn = false;
			setErrorFor("", errorEducationalBackground, "E1054");
			break;
		}

	}




	// Check Work History..............

	const staffWorkHistoryIDArray = document.getElementsByName("staffWorkHistoryCredentialsID[]");
	const staffWorkHistoryDateFromArray = document.getElementsByName("staffWorkHistoryCredentialsDateFrom[]");
	const staffWorkHistoryDateToArray = document.getElementsByName("staffWorkHistoryCredentialsDateTo[]");
	const staffDesignationArray = document.getElementsByName("staffDesignationCredentials[]");
	const staffCompanyNameArray = document.getElementsByName("staffCompanyNameCredentials[]");
	const staffExperienceTypeArray = document.getElementsByName("staffExperienceTypeCredentials[]");
	const errorWorkHistory = document.getElementById("errorWorkHistory");

	let workHistoryReturn = true;
	let dateValidationWorkStatus = false;

	var firstRowValidatorWork = 0;
	var checkLength = 0;

	if (staffWorkHistoryIDArray.length == 1) {

		checkLength = 1;

		if (staffWorkHistoryDateFromArray[0].value != "") {
			firstRowValidatorWork++;
		}
		if (staffWorkHistoryDateToArray[0].value != "") {
			firstRowValidatorWork++;

			if (staffWorkHistoryDateFromArray[0].value < staffWorkHistoryDateToArray[0].value) {
				workHistoryReturn = true;
				setSuccessFor("", errorWorkHistory);
			}
			else {
				workHistoryReturn = false;
				dateValidationWorkStatus = true;
				setErrorFor("", errorWorkHistory, "E1052");
			}

		}
		if (staffDesignationArray[0].value.trim() != "") {
			firstRowValidatorWork++;
		}
	/*	if (staffCompanyNameArray[0].value.trim() != "") {
			firstRowValidatorWork++;
		}
		if (staffExperienceTypeArray[0].value.trim() != "") {
			firstRowValidatorWork++;
		}*/

	}

	for (var i = checkLength; i < staffWorkHistoryIDArray.length; i++) {

		if (staffWorkHistoryDateFromArray[i].value != "" && staffWorkHistoryDateToArray[i].value != "" && staffDesignationArray[i].value.trim() != "") {

			if (staffWorkHistoryDateFromArray[i].value < staffWorkHistoryDateToArray[i].value) {
				workHistoryReturn = true;
				setSuccessFor("", errorWorkHistory);
			}
			else {
				workHistoryReturn = false;
				dateValidationWorkStatus = true;
				setErrorFor("", errorWorkHistory, "E1052");
				break;
			}
		}
		else {
			workHistoryReturn = false;
			setErrorFor("", errorWorkHistory, "E1055");
			break;
		}

	}

	var educationalBackgroundStatus = false;
	var workHistoryStatus = false;

	if ((firstRowValidatorEducation == 0 || firstRowValidatorEducation == 2) && educationalBackgroundReturn == true) {

		educationalBackgroundStatus = true;
		setSuccessFor("", errorEducationalBackground);

	} else {

		educationalBackgroundStatus = false;

		if (dateValidationEducationStatus) {
			setErrorFor("", errorEducationalBackground, "E1051");
		}
		else {
			setErrorFor("", errorEducationalBackground, "E1084");  // "Educational Background information is Not Valid. Date To and Institute / School columns should be filled!"
		}

	}

	if ((firstRowValidatorWork == 0 || firstRowValidatorWork == 3) && workHistoryReturn == true) {

		workHistoryStatus = true;
		setSuccessFor("", errorWorkHistory);

	} else {

		workHistoryStatus = false;

		if (dateValidationWorkStatus) {
			setErrorFor("", errorWorkHistory, "E1052");
		}
		else {
			setErrorFor("", errorWorkHistory, "E1085"); // "Work History information is Not Valid. Date From, Date To and Designation columns should be filled!"
		}

	}

	if (educationalBackgroundStatus == true && workHistoryStatus == true) {
		editResumeInfo();
	} else {
		showMessage('info', "N1094");
		console.log("Resume Information is not Valid");
	}
}




// Payroll Info Accordian.......................
const dailySalary = document.getElementById("staffSalaryUnitPrice");
const staffHourlyWageUnitPrice = document.getElementById("staffHourlyWageUnitPrice");
const staffPaymentMethod = document.getElementById("staffPaymentMethod");
const staffSalaryPaymentForm = document.getElementById("staffSalaryPaymentForm");
const staffFinancialInstitutionName = document.getElementById("staffFinancialInstitutionName");
const staffBranchName = document.getElementById("staffBranchName");
const staffBankCode = document.getElementById("staffBankCode");
const staffBranchCode = document.getElementById("staffBranchCode");
const staffAccountNumber = document.getElementById("staffAccountNumber");
const staffAccountName = document.getElementById("staffAccountName"); 
const staffAccountType = document.getElementById("staffAccountType");

console.log(staffPaymentMethod.value);



let dailySalaryReturn = false;
let hourlySalaryReturn = false;
let staffPaymentMethodReturn = false;
let staffSalaryPaymentFormReturn = false;
let staffFinancialInstitutionNameReturn = true;
let staffBranchNameReturn = true;
let staffBankCodeeReturn = true;
let staffBranchCodeReturn = true;
let staffAccountNumberReturn = true;
let staffAccountNameReturn = true;
let staffAccountTypeReturn = true;


const errorDailySal = document.getElementById("errorDailySal");
const errorHourlySal = document.getElementById("errorHourlySal");
const errorSalaryPay = document.getElementById("errorSalaryPay");
const errorSalaryPayForm = document.getElementById("errorSalaryPayForm");
const errorTransferFinancial = document.getElementById("errorTransferFinancial");
const errorTransferBranch = document.getElementById("errorTransferBranch");
const errorBankCode = document.getElementById("errorBankCode");
const errorBranchCode = document.getElementById("errorBranchCode");
const errorAccNo = document.getElementById("errorAccNo");
const errorAccName = document.getElementById("errorAccName"); 
const errorAccType = document.getElementById("errorAccType");

const buttonSavePayroll = document.getElementById("buttonEditPayrollInformation");




const checkDailySalary = () => {
    //Daily salary unit price (TC0044) 
    if (/^[0-9]+$/.test(dailySalary.value)|| dailySalary.value=="") { 
        setSuccessFor(dailySalary, errorDailySal);
        dailySalaryReturn = true;
    } else {
        setErrorFor(dailySalary, errorDailySal, "E1057");
        dailySalaryReturn = false;
      
    }
}

const checkHourlySalary = () => {
    //Hourly salary unit price (TC0046)
    if (/^[0-9]+$/.test(staffHourlyWageUnitPrice.value)||staffHourlyWageUnitPrice.value=="") {
        setSuccessFor(staffHourlyWageUnitPrice, errorHourlySal);
        hourlySalaryReturn = true;
    } else {
        setErrorFor(staffHourlyWageUnitPrice, errorHourlySal, "E1058");
        hourlySalaryReturn = false;
    }
}

const checkSalPayment = () => {
    if (staffPaymentMethod.value == "") {
        console.log(staffPaymentMethod.value);
        setErrorFor(staffPaymentMethod, errorSalaryPay, "E1059");
        staffPaymentMethodReturn = false;
    } else {
        setSuccessFor(staffPaymentMethod, errorSalaryPay);
        staffPaymentMethodReturn = true;
    }
}

const checkSalPaymentForm = () => {
    if (staffSalaryPaymentForm.value == "0") {
        setErrorFor(staffSalaryPaymentForm, errorSalaryPayForm, "E1060");
        staffSalaryPaymentFormReturn = false;
    } else {
        setSuccessFor(staffSalaryPaymentForm, errorSalaryPayForm);
        staffSalaryPaymentFormReturn = true;
    }
}

const checkTransferFinance = () => {
	if (staffFinancialInstitutionName.value.trim() == "") {
		setErrorFor(staffFinancialInstitutionName, errorTransferFinancial, "E1044");
		staffFinancialInstitutionNameReturn = false;
	} else {
		setSuccessFor(staffFinancialInstitutionName, errorTransferFinancial);
		staffFinancialInstitutionNameReturn = true;
	}
}

const checkBranchName = () => {
	if (staffBranchName.value.trim() == "") {
		setErrorFor(staffBranchName, errorTransferBranch, "E1044");
		staffBranchNameReturn = false;
	} else {
		setSuccessFor(staffBranchName, errorTransferBranch);
		staffBranchNameReturn = true;
	}
}

const checkBankCode = () => {
	// Updated Bank Code (TC0048 )
	if (/^[0-9]+$/.test(staffBankCode.value)) {
		setSuccessFor(staffBankCode, errorBankCode);
		staffBankCodeeReturn = true;
	} else {
		setErrorFor(staffBankCode, errorBankCode, "E1061");
		staffBankCodeeReturn = false;
	}
}

const checkBranchCode = () => {
	// Updated Branch Code  (TC0048 )
	if (/^[0-9]+$/.test(staffBranchCode.value)) {
		setSuccessFor(staffBranchCode, errorBranchCode);
		staffBranchCodeReturn = true;
	} else {
		setErrorFor(staffBranchCode, errorBranchCode, "E1062");
		staffBranchCodeReturn = false;
	}
}

const checkAccountNumber = () => {
	// Account Number  (TC0048 )
	if (/^[0-9]+$/.test(staffAccountNumber.value)) {
		setSuccessFor(staffAccountNumber, errorAccNo);
		staffAccountNumberReturn = true;
	} else {
		setErrorFor(staffAccountNumber, errorAccNo, "E1063");
		staffAccountNumberReturn = false;
	}
}

const checkAccountName = () => {
	//updated wishwa 9/10/2021
	if (staffAccountName.value.trim() != "") {
		setSuccessFor(staffAccountName, errorAccName);
		staffAccountNameReturn = true;
	} else {
		setErrorFor(staffAccountName, errorAccName, "E1044");
		staffAccountNameReturn = false;
	}
}

const checkAccountType = () => {
	if (staffAccountType.value == "0") {
		setErrorFor(staffAccountType, errorAccType, "E1044");
		staffAccountTypeReturn = false;
	} else {
		setSuccessFor(staffAccountType, errorAccType);
		staffAccountTypeReturn = true;
	}
}




dailySalary.addEventListener("focusout", checkDailySalary);
staffHourlyWageUnitPrice.addEventListener("focusout", checkHourlySalary);
staffPaymentMethod.addEventListener("focusout", checkSalPayment);
staffSalaryPaymentForm.addEventListener("focusout", checkSalPaymentForm);
staffFinancialInstitutionName.addEventListener("focusout", checkTransferFinance);
staffBranchName.addEventListener("focusout", checkBranchName);
staffBankCode.addEventListener("focusout", checkBankCode);
staffBranchCode.addEventListener("focusout", checkBranchCode);
staffAccountNumber.addEventListener("focusout", checkAccountNumber);
staffAccountName.addEventListener("focusout", checkAccountName);
staffAccountType.addEventListener("focusout", checkAccountType);




buttonSavePayroll.addEventListener("click", function() {
	checkDailySalary();
	checkHourlySalary();
	checkSalPayment();
	checkSalPaymentForm();
	
	if (staffPaymentMethod.value == 2) {
		checkTransferFinance();
		checkBranchName();
		checkBankCode();
		checkBranchCode();
		checkAccountNumber();
		checkAccountName();
		checkAccountType();
	}
	
   if (dailySalaryReturn == true && hourlySalaryReturn == true && staffPaymentMethodReturn == true && staffSalaryPaymentFormReturn == true && staffBankCodeeReturn == true && staffBranchCodeReturn == true && staffAccountNumberReturn == true) {
          console.log("Payroll Info is Valid");
		  editPayrollInfo();
    } else {
		showMessage('info', "N1094");
        console.log("check Payroll, Not Valid");
    }
	
	
});


// Skill Sheet Info Accordian...............

const staffSkillNameInit = document.getElementById("staffSkillNameInit");

let staffSkillNameInitReturn = false;
var SkillSheetStatus = false;

const errorSkillName = document.getElementById("errorSkillName");


const buttonEditSkillSheet = document.getElementById("buttonEditSkillSheet");

const checkNameInitialsOnly = () => {
	if (!/^([^0-9]*)$/.test(staffSkillNameInit.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffSkillNameInit.value)) {
		setErrorFor(staffSkillNameInit, errorSkillName, "E1037");
		staffSkillNameInitReturn = false;
	} else {
		setSuccessFor(staffSkillNameInit, errorSkillName);
		staffSkillNameInitReturn = true;
	}
}

function checkWorkHistorySkillSheet() {

	const staffWorkHistoryIDArray = document.getElementsByName("staffWorkHistoryID[]");
	const staffWorkHistoryDateFromArray = document.getElementsByName("staffWorkHistoryDateFrom[]");
	const staffWorkHistoryDateToArray = document.getElementsByName("staffWorkHistoryDateTo[]");
	const staffDesignationArray = document.getElementsByName("staffDesignation[]");
	const staffCompanyNameArray = document.getElementsByName("staffCompanyName[]");
	const staffExperienceTypeArray = document.getElementsByName("staffExperienceType[]");
	const errorWorkHistory = document.getElementById("errorSkillWorkHistory");

	let workHistoryReturn = true;
	let dateValidationSkillSheetStatus = false;
	var firstRowValidator = 0;

	var checkLength = 0;

	if (staffWorkHistoryIDArray.length == 1) {

		checkLength = 1;

		if (staffWorkHistoryDateFromArray[0].value != "") {
			firstRowValidator++;
		}
		if (staffWorkHistoryDateToArray[0].value != "" && staffWorkHistoryDateFromArray[0].value != "") {
			//firstRowValidator++;

			if (staffWorkHistoryDateFromArray[0].value < staffWorkHistoryDateToArray[0].value) {
				workHistoryReturn = true;
				setSuccessFor("", errorSkillWorkHistory);
			}
			else {
				workHistoryReturn = false;
				dateValidationSkillSheetStatus = true;
				setErrorFor("", errorSkillWorkHistory, "E1052");

			}
		}
		if (staffDesignationArray[0].value.trim() != "") {
			firstRowValidator++;
		}
		/*	if (staffCompanyNameArray[0].value.trim() != "")
			 {
				   firstRowValidator++;
			 }
			 if (staffExperienceTypeArray[0].value.trim() != "")
			 {
				   firstRowValidator++;
			 }*/

	}

	for (var i = checkLength; i < staffWorkHistoryIDArray.length; i++) {

		if (staffWorkHistoryDateFromArray[i].value != "" && staffDesignationArray[i].value.trim() != "") {
			
			if (staffWorkHistoryDateToArray[i].value != "") {
				if (staffWorkHistoryDateFromArray[i].value < staffWorkHistoryDateToArray[i].value) {
					workHistoryReturn = true;
					setSuccessFor("", errorSkillWorkHistory);
				}
				else {
					workHistoryReturn = false;
					dateValidationSkillSheetStatus = true;
					setErrorFor("", errorSkillWorkHistory, "E1052");
					break;
				}
			} else{
				workHistoryReturn = true;
				setSuccessFor("", errorSkillWorkHistory);
				
			}

		}
		else {
			workHistoryReturn = false;
			setErrorFor("", errorSkillWorkHistory, "E1055");
			break;
		}

	}

	

	if ((firstRowValidator == 0 || firstRowValidator == 2) && workHistoryReturn == true) {
		SkillSheetStatus = true;
		setSuccessFor("", errorSkillWorkHistory);
	} else {

		SkillSheetStatus = false;
		if (dateValidationSkillSheetStatus) {
			setErrorFor("", errorSkillWorkHistory, "E1052");
		}
		else {
			setErrorFor("", errorSkillWorkHistory, "E1087");  // Work history (for skill sheet) information is Not Valid. Date From and Designation columns should be filled. 
		}

	}
	
	
}

staffSkillNameInit.addEventListener("focusout", checkNameInitialsOnly);

buttonEditSkillSheet.addEventListener("click", function() {
	checkNameInitialsOnly();
	checkWorkHistorySkillSheet();
	
	if (SkillSheetStatus == true && staffSkillNameInitReturn == true) {

		editSkillSheet();
	} else {
		//console.log("firstRowValidator" + firstRowValidator);
		console.log("SkillSheetStatus" + SkillSheetStatus);
		showMessage('info', "N1094");
		console.log("Skill Sheet Info Not Valid");
	}
	
	
});





// Social Insurance / Income Tax Accordian......................................................

const staffMyNumber = document.getElementById("staffMyNumber");
const staffIncomeTaxTaxpayer = document.getElementById("staffIncomeTaxTaxpayer");
const staffNumberDependents = document.getElementById("staffNumberDependents");
const staffSocialInsuranceCoverage = document.getElementById("staffSocialInsuranceCoverage");
const staffDependentsIDArray = document.getElementsByName("staffDependentsID[]");
const staffDependentsNameArray = document.getElementsByName("staffDependentsName[]");
const staffDependentsNamekatakanaArray = document.getElementsByName("staffDependentsNamekatakana[]");
const staffDependentsBirthdayArray = document.getElementsByName("staffDependentsBirthday[]");
const staffDependentsGenderArray = document.getElementsByName("staffDependentsGender[]");
const staffDependentsRelationshipArray = document.getElementsByName("staffDependentsRelationship[]");
const staffDependentsClassificationArray = document.getElementsByName("staffDependentsClassification[]");
const staffDependentsLivingtogetherArray = document.getElementsByName("staffDependentsLivingtogether[]");
const staffDependentsHandicappedArray = document.getElementsByName("staffDependentsHandicapped[]");





let staffMyNumberReturn = false;
let staffIncomeTaxTaxpayerReturn = false;
let staffNumberDependentsReturn = false;
let staffSocialInsuranceCoverageReturn = false;
var socialDependentStatus = false;


const errorMyNumber = document.getElementById("errorMyNumber");
const errorIncomeTaxTaxpayer = document.getElementById("errorIncomeTaxTaxpayer");
const errorNumDependents = document.getElementById("errorNumDependents");
const errorSocialInsurance = document.getElementById("errorSocialInsurance");
const errorsocialDependents = document.getElementById("errorsocialDependents");

const buttonEditSocialInformation = document.getElementById("buttonEditSocialInformation");

const checkMyNumber = () => {
   if (/^[0-9]*$/g.test(staffMyNumber.value) || staffMyNumber.value == "") {
        setSuccessFor(staffMyNumber, errorMyNumber);
        staffMyNumberReturn = true;
    } else {
        setErrorFor(staffMyNumber, errorMyNumber, "E1064");
        staffMyNumberReturn = false;
    }
}

const checkIncomeTax = () => {
 	if (staffIncomeTaxTaxpayer.value == "") {
		setErrorFor(staffIncomeTaxTaxpayer, errorIncomeTaxTaxpayer, "E1066");
		staffIncomeTaxTaxpayerReturn = false;
	} else {
		setSuccessFor(staffIncomeTaxTaxpayer, errorIncomeTaxTaxpayer);
		staffIncomeTaxTaxpayerReturn = true;
	}
}

const checkNumberDependents = () => {
     // Number of Dependents  (TC0055 )
    if (/^[0-9]+$/.test(staffNumberDependents.value)) {
        setSuccessFor(staffNumberDependents, errorNumDependents);
        staffNumberDependentsReturn = true;
    } else {
        setErrorFor(staffNumberDependents, errorNumDependents, "E1067");
        staffNumberDependentsReturn = false;
    }
}

const checkInsuranceCoverage = () => {
     if (staffSocialInsuranceCoverage.value == "") {//update by wishwa 11/9/2021
        setErrorFor(staffSocialInsuranceCoverage, errorSocialInsurance, "E1065");
        staffSocialInsuranceCoverageReturn = false;
    } else {
        setSuccessFor(staffSocialInsuranceCoverage, errorSocialInsurance);
        staffSocialInsuranceCoverageReturn = true;
    }
}

const checkDependentsTable = () => {
/*	for (var i = 0; i < staffDependentsIDArray.length; i++) {

		if (staffDependentsNameArray[i].value != "" && staffDependentsNamekatakanaArray[i].value != "" && staffDependentsBirthdayArray[i].value != "" && staffDependentsGenderArray[i].value != "" && staffDependentsRelationshipArray[i].value != "" && staffDependentsClassificationArray[i].value != "" && staffDependentsLivingtogetherArray[i].value != "" && staffDependentsHandicappedArray[i].value != "") {
			socialDependentsReturn = true;
			setSuccessFor("", errorsocialDependents);
		}
		else {
			socialDependentsReturn = false;
			setErrorFor("", errorsocialDependents, "Dependents info is Not Valid.  All the columns of a row should be filled!");
			break;
		}
	}*/

	const staffDependentsIDArray = document.getElementsByName("staffDependentsID[]");
	const staffDependentsNameArray = document.getElementsByName("staffDependentsName[]");
	const staffDependentsNamekatakanaArray = document.getElementsByName("staffDependentsNamekatakana[]");
	const staffDependentsBirthdayArray = document.getElementsByName("staffDependentsBirthday[]");
	const staffDependentsGenderArray = document.getElementsByName("staffDependentsGender[]");
	const staffDependentsRelationshipArray = document.getElementsByName("staffDependentsRelationship[]");
	const staffDependentsClassificationArray = document.getElementsByName("staffDependentsClassification[]");
	const staffDependentsLivingtogetherArray = document.getElementsByName("staffDependentsLivingtogether[]");
	const staffDependentsHandicappedArray = document.getElementsByName("staffDependentsHandicapped[]");

	console.log(staffDependentsIDArray);

	const errorsocialDependents = document.getElementById("errorsocialDependents");

	let socialDependentsReturn = true;

	var firstRowValidator = 0;
	var checkLength = 0;

	if (staffDependentsIDArray.length == 1) {

		checkLength = 1;

		if (staffDependentsNameArray[0].value.trim() != "") {
			firstRowValidator++;
		}
		if (staffDependentsNamekatakanaArray[0].value.trim() != "") {
			firstRowValidator++;
		}
		if (staffDependentsBirthdayArray[0].value != "") {
			firstRowValidator++;
		}
		if (staffDependentsGenderArray[0].value != "") {
			firstRowValidator++;
		}
		if (staffDependentsRelationshipArray[0].value != "") {
			firstRowValidator++;
		}
		if (staffDependentsClassificationArray[0].value != "") {
			firstRowValidator++;
		}
		if (staffDependentsLivingtogetherArray[0].value != "") {
			firstRowValidator++;
		}
		if (staffDependentsHandicappedArray[0].value != "") {
			firstRowValidator++;
		}

	}

	// Validating Family name and	Name katakana  
	function checkName(input) {
		var testValue = input.value;
		if (!/^([^0-9]*)$/.test(testValue) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(testValue)) {
			return false;
		} else {
			return true;
		}
	}
	// Validating Birthday 
	function checkBirthDay(input) {
		var testValue = input.value;

		var q = new Date();
		var m = q.getMonth();
		var d = q.getDay();
		var y = q.getFullYear();

		var today = new Date(y, m, d);

		const inputDOB = new Date(testValue);

		if (inputDOB > today) {
			return false;
		} else {
			return true;
		}
	}

	for (var i = 0; i < staffDependentsIDArray.length; i++) {

		if (staffDependentsNameArray[i].value.trim() != "" || staffDependentsNamekatakanaArray[i].value.trim() != "" || staffDependentsBirthdayArray[i].value != "" || staffDependentsGenderArray[i].value != "" || staffDependentsRelationshipArray[i].value != "" || staffDependentsClassificationArray[i].value != "" || staffDependentsLivingtogetherArray[i].value != "" || staffDependentsHandicappedArray[i].value != "") {
			if (staffDependentsNameArray[i].value.trim() != "" && staffDependentsNamekatakanaArray[i].value.trim() != "" && staffDependentsBirthdayArray[i].value != "" && staffDependentsGenderArray[i].value != "" && staffDependentsRelationshipArray[i].value != "" && staffDependentsClassificationArray[i].value != "" && staffDependentsLivingtogetherArray[i].value != "" && staffDependentsHandicappedArray[i].value != "") {

				// Modification for checking Family Name, Name Katakana & Birthday

				try {
					if (!checkName(staffDependentsNameArray[i])) throw "E1080";
					if (!checkName(staffDependentsNamekatakanaArray[i])) throw "E1081";
					if (!checkBirthDay(staffDependentsBirthdayArray[i])) throw "E1082";



					if (checkName(staffDependentsNameArray[i]) && checkName(staffDependentsNamekatakanaArray[i]) && checkBirthDay(staffDependentsBirthdayArray[i])) {
						socialDependentsReturn = true;
						setSuccessFor("", errorsocialDependents);
					}



				} catch (error) {
					socialDependentsReturn = false;
					setErrorFor("", errorsocialDependents, error);
					break;
				}

				/*if (checkName(staffDependentsNameArray[i]) && checkName(staffDependentsNamekatakanaArray[i]) && checkBirthDay(staffDependentsBirthdayArray[i])) {
					socialDependentsReturn = true;
					setSuccessFor("", errorsocialDependents);
				}
				else {
					socialDependentsReturn = false;
					setErrorFor("", errorsocialDependents, "E1068");
					break;
				}*/

			}
			else {

				socialDependentsReturn = false;
				setErrorFor("", errorsocialDependents, "E1079");
				break;
			}


		}
	}

	

	if ((firstRowValidator == 0 || firstRowValidator == 8) && socialDependentsReturn == true) {
		socialDependentStatus = true;
		setSuccessFor("", errorsocialDependents);
	} else {
		socialDependentStatus = false;

	}
	

	
	

}

staffMyNumber.addEventListener("focusout", checkMyNumber);
staffIncomeTaxTaxpayer.addEventListener("focusout", checkIncomeTax);
staffNumberDependents.addEventListener("focusout", checkNumberDependents);
staffSocialInsuranceCoverage.addEventListener("focusout", checkInsuranceCoverage);


buttonEditSocialInformation.addEventListener("click", function() {
	checkMyNumber();
	checkIncomeTax();
	checkNumberDependents();
	checkInsuranceCoverage();
	checkDependentsTable();
	
    if (staffMyNumberReturn == true && staffNumberDependentsReturn == true && staffSocialInsuranceCoverageReturn == true && staffIncomeTaxTaxpayerReturn == true && socialDependentStatus == true) 
    {
		console.log("Social Info is Valid");
        editSocialInfo();
    } else {
		showMessage('info', "N1094");
        console.log("check Social Info Not Valid");
    }	
});


// Login Info Accordian......................................
const GUIDVal = localStorage.getItem("GUID");
searchUuid = sessionStorage.getItem('viewUuid'); 

const staffEmail = document.getElementById("staffEmail");
const staffNewPassword = document.getElementById("staffNewPassword");
const staffNewPasswordConfirm = document.getElementById("staffNewPasswordConfirmation");

let staffEmailReturn = false; 
let staffNewPasswordReturn = false;
let staffNewPasswordConfirmReturn = false;

const errorEmail = document.getElementById("errorEmail");  
const errorNewPassword = document.getElementById("errorNewPassword");
const errorNewPasswordConfirm = document.getElementById("errorNewPasswordConfirm");


const checkEmail = () => {

	//let dataSet = '{"email" : "' + staffEmail.value + '"}';
	let dataSet = '{"email" : "' + staffEmail.value + '", "uuid" : "' +searchUuid +'"}';
	

	if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(staffEmail.value)) {

		$.ajax({
			beforeSend: function(request) {
				request.setRequestHeader("GUID", GUIDVal);
			},
			url: 'https://api.dan-system.jp/users/emailVerifiedByUpdate',
			//url: 'http://5.189.137.133/SOLA-API/users/emailVerifiedByUpdate',
			method: 'POST',
			contentType: 'application/json',
			data: dataSet,
			async: false,
			dataType: 'json',
			success: function(result, status, request) {
				if (result.status == 200) {
					console.log(result.message);

					if (result.message == "Email Exists") {
						setErrorFor(staffEmail, errorEmail, "E1083");
						staffEmailReturn = false;
					} else if (result.message == "Email Not Exists") {
						setSuccessFor(staffEmail, errorEmail);
						staffEmailReturn = true;
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
		setErrorFor(staffEmail, errorEmail, "E1032");
		staffEmailReturn = false;
	}
}

const checkPassword = () => {
	if (staffNewPassword.value.trim().length < 6) {
		setErrorFor(staffNewPassword, errorNewPassword, "E1076");
		staffNewPasswordReturn = false;
	} else {
		setSuccessFor(staffNewPassword, errorNewPassword);
		staffNewPasswordReturn = true;
	}	
}

const checkPasswordConfirm = () => {
	if (staffNewPassword.value.trim() != staffNewPasswordConfirm.value.trim() || staffNewPasswordConfirm.value.trim() == "") {
		setErrorFor(staffNewPasswordConfirm, errorNewPasswordConfirm, "E1077");
		staffNewPasswordConfirmReturn = false;
	} else {
		setSuccessFor(staffNewPasswordConfirm, errorNewPasswordConfirm);
		staffNewPasswordConfirmReturn = true;
	}	
}




staffEmail.addEventListener("focusout", checkEmail);
staffNewPassword.addEventListener("focusout", checkPassword);
staffNewPasswordConfirm.addEventListener("focusout", checkPasswordConfirm);

function checkLoginInfo() {
	checkEmail();
	checkPassword();
	checkPasswordConfirm();
	
	if (staffEmailReturn == true && staffNewPasswordReturn == true && staffNewPasswordConfirmReturn == true ) {
		editLoginInfo();
	} else {
		showMessage('info', "N1094");
		console.log("check Login Info Not Valid");
	}
}


// Other Info Accordian......................................
const staffStaffCode = document.getElementById("staffStaffCode");
const staffEmergencyPostalCode = document.getElementById("staffEmergencyPostalCode");
const staffEmergencyPrefecture = document.getElementById("staffEmergencyPrefecture");
const staffEmergencyAddress = document.getElementById("staffEmergencyAddress");
const staffEmergencyContactPhoneNumber = document.getElementById("staffEmergencyContactPhoneNumber");
const staffCompanyJoiningDate = document.getElementById("staffCompanyJoiningDate");
const staffValidClassifi = document.getElementById("staffValidClassification");
const staffEmergencyContactName = document.getElementById("staffEmergencyContactName");
const staffEmergencyContactNameKatakana = document.getElementById("staffEmergencyContactNameKatakana");
const staffFacePhotoFile = document.getElementById("staffFacePhotoFile");

let staffStaffCodeReturn = true;
let staffEmergencyPostalCodeReturn = true;
let staffEmergencyPrefectureReturn = false;
let staffEmergencyAddressReturn = true;
let staffEmergencyContactPhoneNumberReturn = false;
let staffCompanyJoiningDateReturn = false;
let staffValidClassifiReturn = false;
let staffEmergencyContactNameReturn = false;
let staffEmergencyContactNameKatakanaReturn = false;
let staffFacePhotoFileReturn = true;

const errorStaffCode = document.getElementById("errorStaffCode");
const errorPostalCode = document.getElementById("errorPostalCode");
const errorOtherPrefecture = document.getElementById("errorOtherPrefecture");
const errorOtherAddress = document.getElementById("errorOtherAddress");
const errorOtherEmergencyNo = document.getElementById("errorOtherEmergencyNo");
const errorOtherDateJoin = document.getElementById("errorOtherDateJoin");
const errorValdClassi = document.getElementById("errorValdClassi");
const errorStaffEmergencyContactName = document.getElementById("errorStaffEmergencyContactName");
const errorStaffEmergencyContactNameKatakana = document.getElementById("errorStaffEmergencyContactNameKatakana");
const errorStaffFacePhotoFile = document.getElementById("errorStaffFacePhotoFile");


const checkStaffCode = () => {
	// Staff Code   (TC0064 , TC0068 )
	if (/^[0-9]+$/.test(staffStaffCode.value)) {
		setSuccessFor(staffStaffCode, errorStaffCode);
		staffStaffCodeReturn = true;
	} else {
		setErrorFor(staffStaffCode, errorStaffCode, "Invalid Staff Code");
		staffStaffCodeReturn = false;
	}
}

const checkOtherPostalCode = () => {
	if (/^[0-9]{7}$/g.test(staffEmergencyPostalCode.value) || staffEmergencyPostalCode.value.trim() == "") {
		setSuccessFor(staffEmergencyPostalCode, errorPostalCode);
		staffEmergencyPostalCodeReturn = true;
	} else {
		setErrorFor(staffEmergencyPostalCode, errorPostalCode, "E1039");
		staffEmergencyPostalCodeReturn = false;
	}


}

const otherPrefecture = () => {
	if (staffEmergencyPrefecture.value == "0" || staffEmergencyPrefecture.value == "") {
		setErrorFor(staffEmergencyPrefecture, errorOtherPrefecture, "E1040");
		staffEmergencyPrefectureReturn = false;
	} else {
		setSuccessFor(staffEmergencyPrefecture, errorOtherPrefecture);
		staffEmergencyPrefectureReturn = true;
	}
}

const checkOtherAddress = () => {
    if (staffEmergencyAddress.value == "") {
        setErrorFor(staffEmergencyAddress, errorOtherAddress, "E1044");
        staffEmergencyAddressReturn = false;
    } else {
        setSuccessFor(staffEmergencyAddress, errorOtherAddress);
        staffEmergencyAddressReturn = true;
    }
}

const checkOtherContact = () => {
    if (!/^[0-9]{11}$/g.test(staffEmergencyContactPhoneNumber.value)  || staffEmergencyContactPhoneNumber.value == "00000000000" ) {
		setErrorFor(staffEmergencyContactPhoneNumber, errorOtherEmergencyNo, "E1071");
        staffEmergencyContactPhoneNumberReturn = false;
    } else {
        setSuccessFor(staffEmergencyContactPhoneNumber, errorOtherEmergencyNo);
        staffEmergencyContactPhoneNumberReturn = true;
    }
} 

const checkOtherJoinDate = () => {
    if (staffCompanyJoiningDate.value == "") {
        setErrorFor(staffCompanyJoiningDate, errorOtherDateJoin, "E1072");
        staffCompanyJoiningDateReturn = false;
    } else {
        setSuccessFor(staffCompanyJoiningDate, errorOtherDateJoin);
        staffCompanyJoiningDateReturn = true;
    }
}

const checkValidClassi = () => {
    if (staffValidClassifi.value == "") {
        setErrorFor(staffValidClassifi, errorValdClassi, "E1073");
        staffValidClassifiReturn = false;
    } else {
        setSuccessFor(staffValidClassifi, errorValdClassi);
        staffValidClassifiReturn = true;
    }
}

const checkEmergContactName = () => {
	if (!/^([^0-9]*)$/.test(staffEmergencyContactName.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffEmergencyContactName.value) || staffEmergencyContactName.value.trim() == "") {
		setErrorFor(staffEmergencyContactName, errorStaffEmergencyContactName, "E1037");/////////////
		staffEmergencyContactNameReturn = false;
	} else if (/^[a-zA-Z_ ]*$/.test(staffName.value)) {
		setSuccessFor(staffEmergencyContactName, errorStaffEmergencyContactName);
		staffEmergencyContactNameReturn = true;
	} else {
		setSuccessFor(staffEmergencyContactName, errorStaffEmergencyContactName);
		staffEmergencyContactNameReturn = true;
	}	
}

const checkEmergContactNameKatakana = () => {
	if (!/^([^0-9]*)$/.test(staffEmergencyContactNameKatakana.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffEmergencyContactNameKatakana.value) || staffEmergencyContactNameKatakana.value.trim() == "") {
		setErrorFor(staffEmergencyContactNameKatakana, errorStaffEmergencyContactNameKatakana, "E1037");/////////////
		staffEmergencyContactNameKatakanaReturn = false;
	} else if (/^[a-zA-Z_ ]*$/.test(staffName.value)) {
		setSuccessFor(staffEmergencyContactNameKatakana, errorStaffEmergencyContactNameKatakana);
		staffEmergencyContactNameKatakanaReturn = true;
	} else {
		setSuccessFor(staffEmergencyContactNameKatakana, errorStaffEmergencyContactNameKatakana);
		staffEmergencyContactNameKatakanaReturn = true;
	}	
}

function validateFileType(node) {
	//var fileName = document.getElementById("fileName").value;
	var fileName = node.value;
	var idxDot = fileName.lastIndexOf(".") + 1;
	var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
	if (extFile == "jpg" || extFile == "jpeg" || extFile == "png" || extFile == "gif") {
		setSuccessFor(staffFacePhotoFile, errorStaffFacePhotoFile);
		staffFacePhotoFileReturn = true;
	} else {
		//alert("Only jpg/jpeg and png files are allowed!");
		setErrorFor(staffFacePhotoFile , errorStaffFacePhotoFile, "E1078");  //Only jpg/jpeg and png files are allowed
		staffFacePhotoFileReturn = false;
	}
}



//staffStaffCode.addEventListener("focusout", checkStaffCode);
staffEmergencyPrefecture.addEventListener("focusout", otherPrefecture);
//staffEmergencyAddress.addEventListener("focusout", checkOtherAddress);
staffEmergencyContactPhoneNumber.addEventListener("focusout", checkOtherContact);
staffCompanyJoiningDate.addEventListener("focusout", checkOtherJoinDate);
staffValidClassifi.addEventListener("focusout", checkValidClassi);
staffEmergencyContactName.addEventListener("focusout", checkEmergContactName);
staffEmergencyContactNameKatakana.addEventListener("focusout", checkEmergContactNameKatakana);
staffEmergencyPostalCode.addEventListener("focusout", checkOtherPostalCode);
staffFacePhotoFile.addEventListener("change", function(){
  validateFileType(staffFacePhotoFile);
});

function checkOther() {
	//checkStaffCode();
	otherPrefecture();
	//checkOtherAddress();
	checkOtherContact();
	checkOtherJoinDate();
	checkValidClassi();
	checkEmergContactName();
	checkEmergContactNameKatakana();
	checkOtherPostalCode();
	
	if (staffStaffCodeReturn == true && staffEmergencyPrefectureReturn == true && staffEmergencyAddressReturn == true && staffEmergencyContactPhoneNumberReturn == true && staffCompanyJoiningDateReturn == true && staffValidClassifiReturn == true && staffEmergencyContactNameReturn == true && staffEmergencyContactNameKatakanaReturn == true && staffEmergencyPostalCodeReturn == true ) {
        editOtherInfo();
    } else {
		showMessage('info', "N1094");
        console.log("check Other Info Not Valid");
    }
	
	
	
	
	
}


/*function setErrorFor(divInput, divError, message) {
	divInput.className = "form-control errorVal";
	divError.innerHTML = message;
}*/

function setErrorFor(divInput, divError, errorCode) {
	message = staffErrorArray[errorCode];
	divInput.className = "form-control errorVal";
	divError.innerHTML = message;
}

function setSuccessFor(input, divError) {
	input.className = "form-control successVal";
	divError.innerHTML = "";
}