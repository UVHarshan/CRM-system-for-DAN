var staffZipCodeReturn = false;
const GUIDVal = localStorage.getItem("GUID");

function checkStaff() {

	// Getting the user input elements
	const staffName = document.getElementById("staffName");
	const staffNameKatakana = document.getElementById("staffNameKatakana");
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


	const checkboxesDispatch = document.querySelectorAll('input[name="dispatchClassi"]:checked');
	const checkboxesOccupationClassi = document.querySelectorAll('input[name="OccupationClassi"]:checked');

	// ------- Validation return vars ---------
	let staffNameReturn = false;
	let staffNameKatakanaReturn = false;
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



	//  Getting the divs for displaying error messages
	const errorName = document.getElementById("errorName");
	const errorPrefecture = document.getElementById("errorPrefecture");
	const errorNameKatakana = document.getElementById("errorNameKatakana");
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

	// allowing japanese characters and english both ( Allow spaces between names)
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


	// allowing japanese characters and english both ( Allow spaces between names)
	if (!/^([^0-9]*)$/.test(staffNameKatakana.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffNameKatakana.value) || staffNameKatakana.value.trim() == "") {
		setErrorFor(staffNameKatakana, errorNameKatakana, "E1038");
		staffNameKatakanaReturn = false;
	} else if (/^[a-zA-Z_ ]*$/.test(staffNameKatakana.value)) {
		setSuccessFor(staffNameKatakana, errorNameKatakana);
		staffNameKatakanaReturn = true;
	} else {
		setSuccessFor(staffNameKatakana, errorNameKatakana);
		staffNameKatakanaReturn = true;
	}


	if (staffPrefecture.value === "") {
		setErrorFor(staffPrefecture, errorPrefecture, "E1040");
		// errorPrefecture.innerHTML = "Prefecture is required";
		staffPrefectureReturn = false; //updated
	} else {
		setSuccessFor(staffPrefecture, errorPrefecture);
		staffPrefectureReturn = true;
	}

	if (staffAddress.value.trim() == "") {
		setErrorFor(staffAddress, errorAddress, "E1041");
		staffAddressReturn = false;  // updated
	} else {
		setSuccessFor(staffAddress, errorAddress);
		staffAddressReturn = true;
	}

	if (staffAddressKatakana.value.trim() == "") {
		setErrorFor(staffAddressKatakana, errorAddressKatakana, "E1042");
		staffAddressKatakanaReturn = false; // updated
	} else {
		setSuccessFor(staffAddressKatakana, errorAddressKatakana);
		staffAddressKatakanaReturn = true;
	}

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

	if (staffGender.value == "") {
		setErrorFor(staffGender, errorGender, "E1044");
		staffGenderReturn = false; // updated
	} else {
		setSuccessFor(staffGender, errorGender);
		staffGenderReturn = true;
	}


	if (checkTelephoneNo(staffMobile)) {
		setSuccessFor(staffMobile, errorMobile);
		staffMobileReturn = true;
	} else {
		setErrorFor(staffMobile, errorMobile, "E1031");
		staffMobileReturn = false;  // updated
	}

	if (staffHomeTel.value != "") {
		if (checkTelephoneNo(staffHomeTel)) {
			setSuccessFor(staffHomeTel, errorHomeTel);
			staffHomeTelReturn = true;
		} else {
			setErrorFor(staffHomeTel, errorHomeTel, "E1031");
			staffHomeTelReturn = false;
		}
	}

	if (staffFax.value != "") {
		if (/^[0-9]{11}$/g.test(staffFax.value)) {
			setSuccessFor(staffFax, errorFax);
			staffFaxReturn = true;
		} else {
			setErrorFor(staffFax, errorFax, "E1045");
			staffFaxReturn = false;
		}
	}
	if (staffAttributeclassification1.value == "") {
		setErrorFor(staffAttributeclassification1, errorAttribute1, "E1044");
		staffAttributeclassification1Return = false;
	} else {
		setSuccessFor(staffAttributeclassification1, errorAttribute1);
		staffAttributeclassification1Return = true;
	}

	if (checkboxesDispatch.length == 0) {
		setErrorFor("", errordispatchClassi, "E1046");
		checkboxesDispatchReturn = false;
	} else {
		setSuccessFor("", errordispatchClassi);
		checkboxesDispatchReturn = true;
	}

	if (checkboxesOccupationClassi.length == 0) {
		setErrorFor("", errorOccuClassi, "E1047");
		checkboxesOccupationClassiReturn = false;
	} else {
		setSuccessFor("", errorOccuClassi);
		checkboxesOccupationClassiReturn = true;
	}

	checkZip();

	if (staffZipCodeReturn == true && staffNameReturn == true && staffNameKatakanaReturn == true && staffPrefectureReturn == true && staffAddressKatakanaReturn == true && staffDOBReturn == true && staffGenderReturn == true && staffMobileReturn == true && staffHomeTelReturn == true && staffFaxReturn == true && staffAttributeclassification1Return == true && staffAttributeclassification2Return == true && staffAttributeReturn == true && staffAddressReturn == true && checkboxesDispatchReturn == true && checkboxesOccupationClassiReturn == true) {
		saveStaffInfo();
	} else {
		console.log("staff info Not Valid");
	}
}

function checkZip() {
	const staffZipCode = document.getElementById("staffZipCode");
	const errorZip = document.getElementById("errorZip");
	staffZipCodeReturn = false;
	if (/^[0-9]{7}$/g.test(staffZipCode.value)) {
		setSuccessFor(staffZipCode, errorZip);
		staffZipCodeReturn = true;
	} else {
		setErrorFor(staffZipCode, errorZip, "E1039");
		staffZipCodeReturn = false;
	}
}




function checkTransport() {


	const staffNearestStation = document.getElementById("staffNearestStation");
	const staffTimeRequiredNearestStation = document.getElementById("staffTimeRequiredNearestStation");
	const staffRoundTripBusFare = document.getElementById("staffRoundTripBusFare");

	let staffNearestStationReturn = false;
	let staffTimeRequiredNearestStationReturn = false;
	let staffRoundTripBusFareReturn = false;

	const errorNearestStation = document.getElementById("errorNearestStation");
	const errorTimeStation = document.getElementById("errorTimeStation");
	const errorBusFare = document.getElementById("errorBusFare");


	if (!/^([^0-9]*)$/.test(staffNearestStation.value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(staffNearestStation.value)) {
		setErrorFor(staffNearestStation, errorNearestStation, "E1048");
		staffNearestStationReturn = false;
	} else {
		setSuccessFor(staffNearestStation, errorNearestStation);
		staffNearestStationReturn = true;
	}

	if (parseInt(staffTimeRequiredNearestStation.value) < 0 || parseInt(staffTimeRequiredNearestStation.value) > 999) {
		setErrorFor(staffTimeRequiredNearestStation, errorTimeStation, "E1049");
		staffTimeRequiredNearestStationReturn = false;
	} else {
		setSuccessFor(staffTimeRequiredNearestStation, errorTimeStation);
		staffTimeRequiredNearestStationReturn = true;
	}

	// Round Trip Bus Fare (TC0036 )
	if (staffRoundTripBusFare.value == "") {

		staffRoundTripBusFareReturn = true;//updated wishwa 9/10/2021

	} else {
		if (/^[0-9]+$/.test(staffRoundTripBusFare.value)) {
			setSuccessFor(staffRoundTripBusFare, errorBusFare);
			staffRoundTripBusFareReturn = true;
		} else {
			setErrorFor(staffRoundTripBusFare, errorBusFare, "E1050");
			staffRoundTripBusFareReturn = false;
		}
	}

	if (staffNearestStationReturn == true && staffTimeRequiredNearestStationReturn == true && staffRoundTripBusFareReturn == true) {

		saveTransportInfo();

	} else {

		console.log("check Transport Not Valid");
	}


}

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

			if (staffEducationalDateFromArray[0].value != "") {
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

	var educationalBackgroundStatus = false;


	if ((firstRowValidatorEducation == 0 || firstRowValidatorEducation == 2) && educationalBackgroundReturn == true) {

		educationalBackgroundStatus = true;
		setSuccessFor("", errorEducationalBackground);

	} else {

		educationalBackgroundStatus = false;
		if (dateValidationEducationStatus) {
			setErrorFor("", errorEducationalBackground, "E1051");
		}
		else {
			setErrorFor("", errorEducationalBackground, "E1084"); // "Educational Background information is Not Valid. Date To and Institute / School columns should be filled!"
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
		/*if (staffCompanyNameArray[0].value.trim() != "") {
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

	var workHistoryStatus = false;

	if ((firstRowValidatorWork == 0 || firstRowValidatorWork == 3) && workHistoryReturn == true) {
		workHistoryStatus = true;
		setSuccessFor("", errorWorkHistory)

	} else {
		workHistoryStatus = false;

		if (dateValidationWorkStatus) {
			setErrorFor("", errorWorkHistory, "E1052");
		}
		else {
			setErrorFor("", errorWorkHistory, "E1085");  // "Work History information is Not Valid. Date From, Date To and Designation columns should be filled!"
		}

	}

	// Check License Qualifications................

	const licenseQualificationIDArray = document.getElementsByName("licenseQualificationID[]");
	const licenceDateFromArray = document.getElementsByName("staffLicenseQualificationDateFrom[]");
	//const licenceDateToArray = document.getElementsByName("staffLicenseQualificationDateTo[]");
	const licenceQualificationArray = document.getElementsByName("staffLicenceQualification[]");
	const licenceNumberArray = document.getElementsByName("staffLicenceNumber[]");
	const licenceOperatingItemArray = document.getElementsByName("staffLicenceOperatingItem[]");
	const errorLicenseQualification = document.getElementById("errorLicenseQualification");

	let licenseQualificationReturn = true;
	let licenseDateVlidationStatus = false;

	var firstRowValidatorLicence = 0;
	var checkLength = 0;

	if (licenseQualificationIDArray.length == 1) {

		checkLength = 1;
		if (licenceDateFromArray[0].value != "") {
			firstRowValidatorLicence++;
		}
		/*		if (licenceDateToArray[0].value != "") {
					firstRowValidatorLicence++;
		
					if (licenceDateFromArray[0].value < licenceDateToArray[0].value) {
						licenseQualificationReturn = true;
						setSuccessFor("", errorLicenseQualification);
					}
					else {
						licenseQualificationReturn = false;
						licenseDateVlidationStatus = true;
						setErrorFor("", errorLicenseQualification, "E1053");
					}
				}*/
		if (licenceQualificationArray[0].value.trim() != "") {
			firstRowValidatorLicence++;
		}
		/*	if (licenceNumberArray[0].value.trim() != "") {
				firstRowValidatorLicence++;
			}
			if (licenceOperatingItemArray[0].value.trim() != "") {
				firstRowValidatorLicence++;
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

	var licenseQualificationStatus = false;

	if ((firstRowValidatorLicence == 0 || firstRowValidatorLicence == 2) && licenseQualificationReturn == true) {

		licenseQualificationStatus = true;
		setSuccessFor("", errorLicenseQualification);

	}
	else {
		licenseQualificationStatus = false;
		if (licenseDateVlidationStatus) {
			setErrorFor("", errorLicenseQualification, "E1053");
		}
		else {
			setErrorFor("", errorLicenseQualification, "E1086"); // License Qualification information is Not Valid. Date From and License Qualification columns should be filled - E1086
		}

	}

	if (educationalBackgroundStatus == true && workHistoryStatus == true && licenseQualificationStatus == true) {
		saveResumeInfo();
	} else {
		console.log("Resume Information is not Valid");
	}

}

function checkPayroll() {
	const dailySalary = document.getElementById("dailySalary");
	const staffHourlyWageUnitPrice = document.getElementById("staffHourlyWageUnitPrice");
	const staffPaymentMethod = document.getElementById("staffPaymentMethod");
	const staffSalaryPaymentForm = document.getElementById("staffSalaryPaymentForm");
	const staffFinancialInstitutionName = document.getElementById("staffFinancialInstitutionName");
	const staffBranchName = document.getElementById("staffBranchName");
	const staffBankCode = document.getElementById("staffBankCode");
	const staffBranchCode = document.getElementById("staffBranchCode");
	const staffAccountNumber = document.getElementById("staffAccountNumber");
	const staffAccountName = document.getElementById("staffAccountName"); //updated wishwa 9/10/2021
	const staffAccountType = document.getElementById("staffAccountType");

	let dailySalaryReturn = false;
	let hourlySalaryReturn = false;
	let staffPaymentMethodReturn = false;
	let staffSalaryPaymentFormReturn = false;
	let staffFinancialInstitutionNameReturn = true;
	let staffBranchNameReturn = true;
	let staffBankCodeeReturn = true;
	let staffBranchCodeReturn = true;
	let staffAccountNumberReturn = true;
	let staffAccountNameReturn = true; //updated wishwa 9/10/2021
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
	const errorAccName = document.getElementById("errorAccName"); //updated wishwa 9/10/2021
	const errorAccType = document.getElementById("errorAccType");

	//Daily salary unit price (TC0044) 
	//updated wishwa 09/10/2021
	if (/^[0-9]+$/.test(dailySalary.value) || dailySalary.value == "") {
		setSuccessFor(dailySalary, errorDailySal);
		dailySalaryReturn = true;
	} else {
		setErrorFor(dailySalary, errorDailySal, "E1057");
		dailySalaryReturn = false;

	}


	//Hourly salary unit price (TC0046)
	//updated wishwa 09/10/2021
	if (/^[0-9]+$/.test(staffHourlyWageUnitPrice.value) || staffHourlyWageUnitPrice.value == "") {
		setSuccessFor(staffHourlyWageUnitPrice, errorHourlySal);
		hourlySalaryReturn = true;
	} else {
		setErrorFor(staffHourlyWageUnitPrice, errorHourlySal, "E1058");
		hourlySalaryReturn = false;
	}


	if (staffPaymentMethod.value == "0") {
		setErrorFor(staffPaymentMethod, errorSalaryPay, "E1059");
		staffPaymentMethodReturn = false;
	} else {
		setSuccessFor(staffPaymentMethod, errorSalaryPay);
		staffPaymentMethodReturn = true;
	}

	if (staffSalaryPaymentForm.value == "0") {
		setErrorFor(staffSalaryPaymentForm, errorSalaryPayForm, "E1060");
		staffSalaryPaymentFormReturn = false;
	} else {
		setSuccessFor(staffSalaryPaymentForm, errorSalaryPayForm);
		staffSalaryPaymentFormReturn = true;
	}

	// Should be validated only if Salary Payment method is selected as 'transfer'..........................

	if (staffPaymentMethod.value == 2) {

		if (staffFinancialInstitutionName.value.trim() == "") {
			setErrorFor(staffFinancialInstitutionName, errorTransferFinancial, "E1044");
			staffFinancialInstitutionNameReturn = false;
		} else {
			setSuccessFor(staffFinancialInstitutionName, errorTransferFinancial);
			staffFinancialInstitutionNameReturn = true;
		}

		if (staffBranchName.value.trim() == "") {
			setErrorFor(staffBranchName, errorTransferBranch, "E1044");
			staffBranchNameReturn = false;
		} else {
			setSuccessFor(staffBranchName, errorTransferBranch);
			staffBranchNameReturn = true;
		}

		// Updated Bank Code (TC0048 )
		if (/^[0-9]+$/.test(staffBankCode.value) || staffBankCode.value == "") {
			setSuccessFor(staffBankCode, errorBankCode);
			staffBankCodeeReturn = true;
		} else {
			setErrorFor(staffBankCode, errorBankCode, "E1061");
			staffBankCodeeReturn = false;
		}

		// Updated Branch Code  (TC0048 )
		if (/^[0-9]+$/.test(staffBranchCode.value) || staffBranchCode.value == "") {
			setSuccessFor(staffBranchCode, errorBranchCode);
			staffBranchCodeReturn = true;
		} else {
			setErrorFor(staffBranchCode, errorBranchCode, "E1062");
			staffBranchCodeReturn = false;
		}

		// Account Number  (TC0048 )
		if (/^[0-9]+$/.test(staffAccountNumber.value)) {
			setSuccessFor(staffAccountNumber, errorAccNo);
			staffAccountNumberReturn = true;
		} else {
			setErrorFor(staffAccountNumber, errorAccNo, "E1063");
			staffAccountNumberReturn = false;
		}

		//updated wishwa 9/10/2021
		if (staffAccountName.value.trim() != "") {
			setSuccessFor(staffAccountName, errorAccName);
			staffAccountNameReturn = true;
		} else {
			setErrorFor(staffAccountName, errorAccName, "E1044");
			staffAccountNameReturn = false;
		}



		if (staffAccountType.value == "0") {
			setErrorFor(staffAccountType, errorAccType, "E1044");
			staffAccountTypeReturn = false;
		} else {
			setSuccessFor(staffAccountType, errorAccType);
			staffAccountTypeReturn = true;
		}

	}


	if (dailySalaryReturn == true && hourlySalaryReturn == true && staffPaymentMethodReturn == true && staffSalaryPaymentFormReturn == true && staffBankCodeeReturn == true && staffBranchCodeReturn == true && staffAccountNumberReturn == true) {
		savePayrollInfo();
	} else {
		console.log("check Payroll, Not Valid");
	}

}

function checkSocialInsurance() {

	const staffMyNumber = document.getElementById("staffMyNumber");
	const staffIncomeTaxTaxpayer = document.getElementById("staffIncomeTaxTaxpayer");
	const staffNumberDependents = document.getElementById("staffNumberDependents");
	const staffSocialInsuranceCoverage = document.getElementById("staffSocialInsuranceCoverage");



	let staffMyNumberReturn = false;
	let staffIncomeTaxTaxpayerReturn = false;
	let staffNumberDependentsReturn = false;
	let staffSocialInsuranceCoverageReturn = false;


	const errorMyNumber = document.getElementById("errorMyNumber");
	const errorIncomeTaxTaxpayer = document.getElementById("errorIncomeTaxTaxpayer");
	const errorNumDependents = document.getElementById("errorNumDependents");
	const errorSocialInsurance = document.getElementById("errorSocialInsurance");



	if (/^[0-9]{12}$/g.test(staffMyNumber.value) || staffMyNumber.value == "") {
		setSuccessFor(staffMyNumber, errorMyNumber);
		staffMyNumberReturn = true;
	} else {
		setErrorFor(staffMyNumber, errorMyNumber, "E1064");
		staffMyNumberReturn = false;
	}

	if (staffIncomeTaxTaxpayer.value == "") {
		setErrorFor(staffIncomeTaxTaxpayer, errorIncomeTaxTaxpayer, "E1066");
		staffIncomeTaxTaxpayerReturn = false;
	} else {
		setSuccessFor(staffIncomeTaxTaxpayer, errorIncomeTaxTaxpayer);
		staffIncomeTaxTaxpayerReturn = true;
	}



	// Number of Dependents  (TC0055 )
	if (/^[0-9]+$/.test(staffNumberDependents.value)) {
		setSuccessFor(staffNumberDependents, errorNumDependents);
		staffNumberDependentsReturn = true;
	} else {
		setErrorFor(staffNumberDependents, errorNumDependents, "E1067");
		staffNumberDependentsReturn = false;
	}

	if (staffSocialInsuranceCoverage.value == "") {//update by wishwa 11/9/2021
		setErrorFor(staffSocialInsuranceCoverage, errorSocialInsurance, "E1065");
		staffSocialInsuranceCoverageReturn = false;
	} else {
		setSuccessFor(staffSocialInsuranceCoverage, errorSocialInsurance);
		staffSocialInsuranceCoverageReturn = true;
	}

	// Check Dependents TAble..................................

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

	var socialDependentStatus = false;

	if ((firstRowValidator == 0 || firstRowValidator == 8) && socialDependentsReturn == true) {
		socialDependentStatus = true;
		setSuccessFor("", errorsocialDependents);
	} else {
		socialDependentStatus = false;

	}

	if (staffMyNumberReturn == true && staffSocialInsuranceCoverageReturn == true && staffIncomeTaxTaxpayerReturn == true && staffNumberDependentsReturn == true && socialDependentStatus == true) {
		console.log("Social Info is Valid");
		saveSocialInfo();
	} else {
		console.log("check Social Info Not Valid");
	}

}

// Modification for unique email////////////  SM005
// Should add email return value globally// SM005
let staffEmailReturn = false;

function checkEmail() {

	let dataSet = '{"email" : "' + staffEmail.value + '"}';

	if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(staffEmail.value)) {

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

					if (result.message == "Email  Exists") {
						setErrorFor(staffEmail, errorEmail, "This email already exists");
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



staffEmail.addEventListener("focusout", checkEmail);  // SM005

function checkLoginInfo() {

	const staffEmail = document.getElementById("staffEmail");
	// const staffNewPassword = document.getElementById("staffNewPassword"); 
	const staffEmailAddressConfirmation = document.getElementById("staffEmailAddressConfirmation");


	let staffEmailAddressConfirmationReturn = false;

	const errorEmail = document.getElementById("errorEmail");
	// const errorNewPassword = document.getElementById("errorNewPassword");    
	const errorNewPasswordConfirm = document.getElementById("errorNewPasswordConfirm");

	checkEmail();  // SM005



	if ((staffEmailAddressConfirmation.value != staffEmail.value) || staffEmailAddressConfirmation.value == "") {
		setErrorFor(staffEmailAddressConfirmation, errorNewPasswordConfirm, "E1069");
		staffEmailAddressConfirmationReturn = false;
	} else {
		setSuccessFor(staffEmailAddressConfirmation, errorNewPasswordConfirm);
		staffEmailAddressConfirmationReturn = true;
	}

	if (staffEmailReturn == true && staffEmailAddressConfirmationReturn == true) {
		saveLoginInfo();
	} else {
		console.log("check Login Info Not Valid");
	}


}

function checkOther() {

	const staffStaffCode = document.getElementById("staffStaffCode");
	const staffEmergencyPrefecture = document.getElementById("staffEmergencyPrefecture");
	const staffEmergencyAddress = document.getElementById("staffEmergencyAddress");
	const staffEmergencyContactPhoneNumber = document.getElementById("staffEmergencyContactPhoneNumber");
	const staffCompanyJoiningDate = document.getElementById("staffCompanyJoiningDate");
	const staffValidClassifi = document.getElementById("staffValidClassification");
	const staffFacePhotoFile = document.getElementById("staffFacePhotoFile");
	const staffEmergencyContactName = document.getElementById("staffEmergencyContactName");
	const staffEmergencyContactNameKatakana = document.getElementById("staffEmergencyContactNameKatakana");
	


	let staffStaffCodeReturn = false;
	let staffEmergencyPrefectureReturn = false;
	let staffEmergencyAddressReturn = true; //////Cust feed
	let staffEmergencyContactPhoneNumberReturn = false;
	let staffCompanyJoiningDateReturn = false;
	let staffValidClassifiReturn = false;
	let staffFacePhotoFileReturn = true;
	let staffEmergencyContactNameReturn = false;
	let staffEmergencyContactNameKatakanaReturn = false;
	

	const errorStaffCode = document.getElementById("errorStaffCode");
	const errorOtherPrefecture = document.getElementById("errorOtherPrefecture");
	const errorOtherAddress = document.getElementById("errorOtherAddress");
	const errorOtherEmergencyNo = document.getElementById("errorOtherEmergencyNo");
	const errorOtherDateJoin = document.getElementById("errorOtherDateJoin");
	const errorValdClassi = document.getElementById("errorValdClassi");
	const errorStaffFacePhotoFile = document.getElementById("errorStaffFacePhotoFile");
	const errorStaffEmergencyContactName = document.getElementById("errorStaffEmergencyContactName");
	const errorStaffEmergencyContactNameKatakana = document.getElementById("errorStaffEmergencyContactNameKatakana");
	

	// update to check file type
	if ($('#staffFacePhotoFile')[0].files[0]) {
		var fileNode = $('#staffFacePhotoFile')[0].files[0];
		fileNodeType = fileNode.type;
		majorFileTye = fileNodeType.split("/");

		if (majorFileTye[0] == "image") {
			setSuccessFor(staffFacePhotoFile, errorStaffFacePhotoFile);
			staffFacePhotoFileReturn = true;
		} else {
			setErrorFor(staffFacePhotoFile, errorStaffFacePhotoFile, "E1078");
			staffFacePhotoFileReturn = false;
		}
	}

	// Staff Code   (TC0064 , TC0068 )
	if (/^[0-9]+$/.test(staffStaffCode.value)) {
		setSuccessFor(staffStaffCode, errorStaffCode);
		staffStaffCodeReturn = true;
	} else {
		setErrorFor(staffStaffCode, errorStaffCode, "E1034");
		staffStaffCodeReturn = false;
	}
	
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

	if (staffEmergencyPrefecture.value == "0" || staffEmergencyPrefecture.value == "") {
		setErrorFor(staffEmergencyPrefecture, errorOtherPrefecture, "E1040");
		staffEmergencyPrefectureReturn = false;
	} else {
		setSuccessFor(staffEmergencyPrefecture, errorOtherPrefecture);
		staffEmergencyPrefectureReturn = true;
	}

/*	if (staffEmergencyAddress.value == "") {
		setErrorFor(staffEmergencyAddress, errorOtherAddress, "E1044");
		staffEmergencyAddressReturn = false;
	} else {
		setSuccessFor(staffEmergencyAddress, errorOtherAddress);
		staffEmergencyAddressReturn = true;
	}*/


	if (staffEmergencyContactPhoneNumber.value.trim() != "") {
		if (checkTelephoneNo(staffEmergencyContactPhoneNumber)) {
			setSuccessFor(staffEmergencyContactPhoneNumber, errorOtherEmergencyNo);
			staffEmergencyContactPhoneNumberReturn = true;
		} else {
			setErrorFor(staffEmergencyContactPhoneNumber, errorOtherEmergencyNo, "E1071");
			staffEmergencyContactPhoneNumberReturn = false;
		}
	}
	else {
		setErrorFor(staffEmergencyContactPhoneNumber, errorOtherEmergencyNo, "E1044");
		staffEmergencyContactPhoneNumberReturn = false;
	}

	if (staffCompanyJoiningDate.value == "") {
		setErrorFor(staffCompanyJoiningDate, errorOtherDateJoin, "E1072");
		staffCompanyJoiningDateReturn = false;
	} else {
		setSuccessFor(staffCompanyJoiningDate, errorOtherDateJoin);
		staffCompanyJoiningDateReturn = true;
	}

	if (staffValidClassifi.value == "") {
		setErrorFor(staffValidClassifi, errorValdClassi, "E1073");
		staffValidClassifiReturn = false;
	} else {
		setSuccessFor(staffValidClassifi, errorValdClassi);
		staffValidClassifiReturn = true;
	}

	if (staffFacePhotoFileReturn == true && staffStaffCodeReturn == true && staffEmergencyPrefectureReturn == true && staffEmergencyAddressReturn == true && staffEmergencyContactPhoneNumberReturn == true && staffCompanyJoiningDateReturn == true && staffValidClassifiReturn == true && staffEmergencyContactNameReturn == true && staffEmergencyContactNameKatakanaReturn == true) {
		saveOtherInfo();
	} else {
		console.log("check Other Info Not Valid");
	}


}

function checkPostalCode() {

	const staffEmergencyPostalCode = document.getElementById("staffEmergencyPostalCode");
	const errorPostalCode = document.getElementById("errorPostalCode");

	if (/^[0-9]{7}$/g.test(staffEmergencyPostalCode.value)) {
		setSuccessFor(staffEmergencyPostalCode, errorPostalCode);
	} else {
		setErrorFor(staffEmergencyPostalCode, errorPostalCode, "E1039");
	}

}

function setErrorFor(divInput, divError, errorCode) {
	message = staffErrorArray[errorCode];
	divInput.className = "form-control errorVal";
	divError.innerHTML = message;
}

function setSuccessFor(input, divError) {
	input.className = "form-control successVal";
	divError.innerHTML = "";
}