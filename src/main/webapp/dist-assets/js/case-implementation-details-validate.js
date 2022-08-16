
$(function() {

	// Input Elements
	var nameofDispatcher = $("#nameofDispatcher");
	var contacInformationOfDispatcher = $("#contacInformationOfDispatcher");
	var nameOfDispatcherGrievance = $("#nameOfDispatcherGrievance");
	var contactInfoDispatcherGrievance = $("#contactInfoDispatcherGrievance");
	var commanderName = $("#commanderName");
	var commanderContact = $("#commanderContact");
	var officerName = $("#officerName");
	var responsibleContact = $("#responsibleContact");
	var complaintContactName = $("#complaintContactName");
	var complaintContactInformation = $("#complaintContactInformation");


	// Buttons
	var buttonUpdateCase = $("#buttonUpdateCase");

	// Return Values ( ***Only the mandatory fields have been assigned 'false')
	let nameofDispatcherReturn = true;
	let contacInformationOfDispatcherReturn = true;
	let nameOfDispatcherGrievanceReturn = true;
	let contactInfoDispatcherGrievanceReturn = true;
	let commanderNameReturn = true;
	let commanderContactReturn = true;
	let officerNameReturn = true;
	let responsibleContactReturn = true;
	let complaintContactNameReturn = true;
	let complaintContactInformationReturn = true;


	// Divs displaying error messages
	var errorNameofDispatcher = $("#errorNameofDispatcher");
	var errorContacInformationOfDispatcher = $("#errorContacInformationOfDispatcher");
	var errorNameOfDispatcherGrievance = $("#errorNameOfDispatcherGrievance");
	var errorContactInfoDispatcherGrievance = $("#errorContactInfoDispatcherGrievance");
	var errorCommanderName = $("#errorCommanderName");
	var errorCommanderContact = $("#errorCommanderContact");
	var errorOfficerName = $("#errorOfficerName");
	var errorResponsibleContact = $("#errorResponsibleContact");
	var errorComplaintContactName = $("#errorComplaintContactName");
	var errorComplaintContactInformation = $("#errorComplaintContactInformation");


	// Functions for validating.....

	function checkNameofDispatcher() {
		nameofDispatcherVal = nameofDispatcher.val();
		try {
			if (!/^([^0-9]*)$/.test(nameofDispatcherVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(nameofDispatcherVal)) {
				//throw "Invalid Name of Dispatcher ";
				throw "E2008";
			} else {
				nameofDispatcherReturn = true;
				setSuccessFor(nameofDispatcher, errorNameofDispatcher);
			}
		} catch (error) {
			nameofDispatcherReturn = false;
			setErrorFor(nameofDispatcher, errorNameofDispatcher, error);
		}

	}

	function checkContactInfoOfDispatcher() {
		var contactVal = contacInformationOfDispatcher.val();
		try {
			if (/^[0-9]{10,11}$/g.test(contactVal) | contactVal == "" && contactVal != "00000000000") {
				setSuccessFor(contacInformationOfDispatcher, errorContacInformationOfDispatcher);
				contacInformationOfDispatcherReturn = true;
			} else {
				contacInformationOfDispatcherReturn = false;
				//throw "Invalid Mobile Number";
				throw "E2009";
			}

		} catch (error) {
			setErrorFor(contacInformationOfDispatcher, errorContacInformationOfDispatcher, error);
		}
	}

	function checkNameofDispatcherGrievance() {
		nameOfDispatcherGrievanceVal = nameOfDispatcherGrievance.val();
		try {
			if (!/^([^0-9]*)$/.test(nameOfDispatcherGrievanceVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(nameOfDispatcherGrievanceVal)) {
				//throw "Invalid Name Of Dispatcher Grievance  handler ";
				throw "E2010";
			} else {
				nameOfDispatcherGrievanceReturn = true;
				setSuccessFor(nameOfDispatcherGrievance, errorNameOfDispatcherGrievance);
			}
		} catch (error) {
			nameOfDispatcherGrievanceReturn = false;
			setErrorFor(nameOfDispatcherGrievance, errorNameOfDispatcherGrievance, error);
		}

	}


	function checkContactInfoOfDispatcherGrievance() {
		var contactVal = contactInfoDispatcherGrievance.val();
		try {
			if (/^[0-9]{10,11}$/g.test(contactVal) | contactVal == "" && contactVal != "00000000000") {
				setSuccessFor(contactInfoDispatcherGrievance, errorContactInfoDispatcherGrievance);
				contactInfoDispatcherGrievanceReturn = true;
			} else {
				contactInfoDispatcherGrievanceReturn = false;
				//throw "Invalid Mobile Number";
				throw "E2009";
			}

		} catch (error) {
			setErrorFor(contactInfoDispatcherGrievance, errorContactInfoDispatcherGrievance, error);
		}
	}

	function checkCommanderName() {
		nameofDispatcherVal = commanderName.val();
		try {
			if (!/^([^0-9]*)$/.test(nameofDispatcherVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(nameofDispatcherVal)) {
				//throw "Invalid Commander Name ";
				throw "E2011";
			} else {
				commanderNameReturn = true;
				setSuccessFor(commanderName, errorCommanderName);
			}
		} catch (error) {
			commanderNameReturn = false;
			setErrorFor(commanderName, errorCommanderName, error);
		}

	}

	function checkCommanderContact() {
		var contactVal = commanderContact.val();
		try {
			if (/^[0-9]{10,11}$/g.test(contactVal) | contactVal == "" && contactVal != "00000000000") {
				setSuccessFor(commanderContact, errorCommanderContact);
				commanderContactReturn = true;
			} else {
				commanderContactReturn = false;
				//throw "Invalid Mobile Number";
				throw "E2009";
			}

		} catch (error) {
			setErrorFor(commanderContact, errorCommanderContact, error);
		}
	}

	function checkOfficerName() {
		nameofDispatcherVal = officerName.val();
		try {
			if (!/^([^0-9]*)$/.test(nameofDispatcherVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(nameofDispatcherVal)) {
				//throw "Invalid Officer name ";
				throw "E2012";
			} else {
				officerNameReturn = true;
				setSuccessFor(officerName, errorOfficerName);
			}
		} catch (error) {
			officerNameReturn = false;
			setErrorFor(officerName, errorOfficerName, error);
		}

	}

	function checkResponsibleContact() {
		var contactVal = responsibleContact.val();
		try {
			if (/^[0-9]{10,11}$/g.test(contactVal) | contactVal == "" && contactVal != "00000000000") {
				setSuccessFor(responsibleContact, errorResponsibleContact);
				responsibleContactReturn = true;
			} else {
				responsibleContactReturn = false;
				//throw "Invalid Mobile Number";
				throw "E2009";
			}

		} catch (error) {
			setErrorFor(responsibleContact, errorResponsibleContact, error);
		}
	}


	function checkComplaintContactName() {
		complaintContactNameVal = complaintContactName.val();
		try {
			if (!/^([^0-9]*)$/.test(complaintContactNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(complaintContactNameVal)) {
				//throw "Invalid Complaint Contact Name";
				throw "E2008";
			} else {
				complaintContactNameReturn = true;
				setSuccessFor(complaintContactName, errorComplaintContactName);
			}
		} catch (error) {
			complaintContactNameReturn = false;
			setErrorFor(complaintContactName, errorComplaintContactName, error);
		}

	}

	function checkComplaintContactInformation() {
		var contactVal = complaintContactInformation.val();
		try {
			if (/^[0-9]{10,11}$/g.test(contactVal) | contactVal == "" && contactVal != "00000000000") {
				setSuccessFor(complaintContactInformation, errorComplaintContactInformation);
				complaintContactInformationReturn = true;
			} else {
				complaintContactInformationReturn = false;
				//throw "Invalid Complaint Contact Information";
				throw "E2015";
			}

		} catch (error) {
			setErrorFor(complaintContactInformation, errorComplaintContactInformation, error);
		}
	}

	// Focus Out Events
	nameofDispatcher.focusout(checkNameofDispatcher);
	contacInformationOfDispatcher.focusout(checkContactInfoOfDispatcher);
	nameOfDispatcherGrievance.focusout(checkNameofDispatcherGrievance);
	contactInfoDispatcherGrievance.focusout(checkContactInfoOfDispatcherGrievance);
	commanderName.focusout(checkCommanderName);
	commanderContact.focusout(checkCommanderContact);
	officerName.focusout(checkOfficerName);
	responsibleContact.focusout(checkResponsibleContact);
	complaintContactName.focusout(checkComplaintContactName);
	complaintContactInformation.focusout(checkComplaintContactInformation);


	buttonUpdateCase.click(function() {

		if (nameofDispatcherReturn == true && contacInformationOfDispatcherReturn == true && nameOfDispatcherGrievanceReturn == true && contactInfoDispatcherGrievanceReturn == true && commanderNameReturn == true && commanderContactReturn == true && officerNameReturn == true && responsibleContactReturn == true && complaintContactNameReturn == true && complaintContactInformationReturn == true) {
			saveCaseInformation();
		} else {
			//howMessage('info', "Please Re-Check Values!");
			showMessage('info', "N1094");

		}
	});

	///////////// Implementation Info Accordian /////////////////////////////////////////////////////////////

	var implementationPeriodStartImplementInfo = $("#implementationPeriodStart");
	var implementationPeriodEndImplementInfo = $("#implementationPeriodEnd");
	var implementationDateStart = $("#implementationDateStart");
	var AssignmentClassification = $("#AssignmentClassificationId");

	let implementationPeriodStartImplementInfoReturn = false;
	let implementationPeriodEndImplementInfoRetun = false;
	let implementationPeriodImplementInfoReturn = false;
	let implementationDateReturn = false;

	var errorImplementationPeriodStartImplementInfo = $("#errorImplementationPeriodStart");
	var errorImplementationPeriodEndImplementInfo = $("#errorImplementationPeriodEnd");
	var errorImplementationDateStart = $("#errorImplementationDateStart");

	var buttonUpdateImplementInfo = $("#buttonUpdateImplementInfo");


	function checkImplementationPeriodImple() {
		implementPeriodStartVal = implementationPeriodStartImplementInfo.val();
		implementPeriodEndVal = implementationPeriodEndImplementInfo.val();

		if (implementPeriodStartVal != "" && implementPeriodEndVal != "") {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					//throw "Implementation Periods do not match!";
					throw "E2013";
				} else {
					implementationPeriodImplementInfoReturn = true;
					setSuccessFor(implementationPeriodStartImplementInfo, errorImplementationPeriodStartImplementInfo);
					setSuccessFor(implementationPeriodEndImplementInfo, errorImplementationPeriodEndImplementInfo);
				}
			} catch (error) {
				setErrorFor(implementationPeriodStartImplementInfo, errorImplementationPeriodStartImplementInfo, error);
				setErrorFor(implementationPeriodEndImplementInfo, errorImplementationPeriodEndImplementInfo, error);
				implementationPeriodImplementInfoReturn = false;
			}

		}

	}

	function checkImplementationDate() {
		implementPeriodStartVal = implementationDateStart.val();

		try {
			if (implementPeriodStartVal == "") {
				//throw "Implementation Periods do not match!";
				throw "E2005";
			} else {
				implementationDateReturn = true;
				setSuccessFor(implementationDateStart, errorImplementationDateStart);
			}
		} catch (error) {
			setErrorFor(implementationDateStart, errorImplementationDateStart, error);
			implementationDateReturn = false;
		}

	}

	implementationPeriodStartImplementInfo.focusout(function() {

		try {
			if (implementationPeriodStartImplementInfo.val() == "") {
				//throw "Cannot be empty!";
				throw "E2005";
			} else {
				implementationPeriodStartImplementInfoReturn = true;
				setSuccessFor(implementationPeriodStartImplementInfo, errorImplementationPeriodStartImplementInfo);
			}
		} catch (error) {
			setErrorFor(implementationPeriodStartImplementInfo, errorImplementationPeriodStartImplementInfo, error);
			implementationPeriodStartImplementInfoReturn = false;
		}

		checkImplementationPeriodImple();

	});

	implementationPeriodEndImplementInfo.focusout(function() {

		try {
			if (implementationPeriodEndImplementInfo.val() == "") {
				//throw "Cannot be empty!";
				throw "E2005";
			} else {
				implementationPeriodEndImplementInfoRetun = true;
				setSuccessFor(implementationPeriodEndImplementInfo, errorImplementationPeriodEndImplementInfo);
			}
		} catch (error) {
			setErrorFor(implementationPeriodEndImplementInfo, errorImplementationPeriodEndImplementInfo, error);
			implementationPeriodEndImplementInfoRetun = false;
		}

		checkImplementationPeriodImple();

	});

	implementationDateStart.focusout(checkImplementationDate);

	buttonUpdateImplementInfo.click(function() {

		if (AssignmentClassification.val() == 1) {
			checkImplementationDate();

			if (implementationDateReturn == true) {
				//alert("Valid Info");
				saveImplementationInformation();
			} else {
				//showMessage('info', "Please Re-Check Values!");
				showMessage('info', "N1094");
			}
		} else {
			try {
				if (implementationPeriodStartImplementInfo.val() == "") {
					//throw "Cannot be empty!";
					throw "E2005";
				}
			} catch (error) {
				setErrorFor(implementationPeriodStartImplementInfo, errorImplementationPeriodStartImplementInfo, error);
				implementationPeriodStartImplementInfoReturn = false;
			}


			try {
				if (implementationPeriodEndImplementInfo.val() == "") {
					//throw "Cannot be empty!";
					throw "E2005";
				}
			} catch (error) {
				setErrorFor(implementationPeriodEndImplementInfo, errorImplementationPeriodEndImplementInfo, error);
				implementationPeriodEndImplementInfoRetun = false;
			}

			if (implementationPeriodStartImplementInfoReturn == true && implementationPeriodEndImplementInfoRetun == true && implementationPeriodImplementInfoReturn == true) {
				//alert("Valid Info");
				saveImplementationInformation();
			} else {
				//showMessage('info', "Please Re-Check Values!");
				showMessage('info', "N1094");
			}

		}




	});

	///////////////// Work Location  Info Accordian /////////////////////////////////////////////////////////////

	var workLocation = $("#workLocation");
	var salaryUnitPriceRadio1 = document.getElementById("salaryUnitPriceRadio1");
	var salaryUnitPriceRadio2 = document.getElementById("salaryUnitPriceRadio2");

	var checkedSalaryUnitPrice = document.querySelectorAll('input[name="salaryUnitPriceWorkLOcation"]:checked');
	var basicSalary = $("#basicSalary");
	var billedAmount = $("#billedAmount");
	var billingUnitPriceSetting = $("#billingUnitPriceSetting");
	var stationScheduledStartTime = $("#StationScheduledStartTime");
	var stationScheduledEndTime = $("#StationScheduledEndTime");
	var scheduledActualWorkTime = $("#StationScheduledActualWorkTime"); // Bug Fix
	var ScheduleBreaktime = $("#ScheduleBreaktimeTime");
	var MidnightBreakingTime = $("#MidnightBreakingTime");


	let workLocationReturn = false;
	let salaryUnitPriceRadioReturn = false;
	let basicSalaryReturn = false;
	let billedAmountReturn = false;
	let billingUnitPriceSettingReturn = false;
	let scheduledTimeReturn = true;
	let scheduledActualWorkTimeReturn = true;
	let ScheduleBreaktimeReturn = true;
	let MidnightBreakingTimeReturn = true;
	let scheduledStartTimeReturn = true;
	let scheduledEndTimeReturn = true;

	var errorWorkLocation = $("#errorWorkLocation");
	var errorSalaryUnitPrice = $("#errorSalaryUnitPrice");
	var errorBasicSalary = $("#errorBasicSalary");
	var errorBilledAmount = $("#errorBilledAmount");
	var errorBillingUnitPriceSetting = $("#errorBillingUnitPriceSetting");
	var errorScheduledStartTime = $("#errorScheduledStartTime");
	var errorScheduledEndTime = $("#errorScheduledEndTime");
	var errorScheduledActualWorkTime = $("#errorScheduledActualWorkTime");
	var errorScheduleBreaktime = $("#errorScheduleBreaktime");
	var errorMidnightBreakingTime = $("#errorMidnightBreakingTime");

	var buttonUpdateCaseWorkLocation = $("#buttonUpdateWorkLocation");

	function checkWorkLocation() {
		workLocationVal = workLocation.val();
		try {
			if (workLocationVal.trim() == "") {
				//throw "Cannot be empty";
				throw "E2005";
			} else {
				workLocationReturn = true;
				setSuccessFor(workLocation, errorWorkLocation);
			}
		} catch (error) {
			workLocationReturn = false;
			setErrorFor(workLocation, errorWorkLocation, error);
		}

	}

	function checkSalaryUnitPrice() {
		try {

			if (salaryUnitPriceRadio1.checked || salaryUnitPriceRadio2.checked) {
				setSuccessFor("", errorSalaryUnitPrice);
				salaryUnitPriceRadioReturn = true;
			} else {
				//throw "Please select a Salary Unit Price";
				throw "E2020";
			}
		} catch (error) {
			setErrorFor("", errorSalaryUnitPrice, error);
		}
	}

	function checkBasicSalary() {
		var basicSalaryVal = basicSalary.val();
		try {
			if (basicSalaryVal.trim() == "") throw "E2005";
			//throw "Cannot be empty";       


			if (/^[0-9]+$/.test(basicSalaryVal)) {
				setSuccessFor(basicSalary, errorBasicSalary);
				basicSalaryReturn = true;
			} else {
				basicSalaryReturn = false;
				//throw "Invalid Basic Salary";
				throw "E2016";
			}
		} catch (error) {
			setErrorFor(basicSalary, errorBasicSalary, error);
		}
	}

	function checkBilledAmount() {
		var basicSalaryVal = billedAmount.val();
		try {
			if (basicSalaryVal.trim() == "") throw "E2005";
			//throw "Cannot be empty";      


			if (/^[0-9]+$/.test(basicSalaryVal)) {
				setSuccessFor(billedAmount, errorBilledAmount);
				billedAmountReturn = true;
			} else {
				billedAmountReturn = false;
				//throw "Invalid Billed Amount";
				throw "E2017";
			}
		} catch (error) {
			setErrorFor(billedAmount, errorBilledAmount, error);
		}
	}

	function checkBillingUnitPriceSetting() {
		workLocationVal = billingUnitPriceSetting.val();
		try {
			if (workLocationVal == "") {
				//throw "Cannot be empty";
				throw "E2005";
			} else {
				billingUnitPriceSettingReturn = true;
				setSuccessFor(billingUnitPriceSetting, errorBillingUnitPriceSetting);
			}
		} catch (error) {
			billingUnitPriceSettingReturn = false;
			setErrorFor(billingUnitPriceSetting, errorBillingUnitPriceSetting, error);
		}

	}

	function checkStartEndTime() {
		implementPeriodStartVal = stationScheduledStartTime.val();
		implementPeriodEndVal = stationScheduledEndTime.val();

		if (implementPeriodStartVal != "" && implementPeriodEndVal != "" && /^([0-9][0-9]):[0-5][0-9]$/.test(implementPeriodStartVal) && /^([0-9][0-9]):[0-5][0-9]$/.test(implementPeriodEndVal) ) {
			try {
				if (implementPeriodStartVal > implementPeriodEndVal) {
					//throw "Scheduled Times do not match!";
					throw "E2023";
				} else {
					scheduledTimeReturn = true;
					setSuccessFor(stationScheduledStartTime, errorScheduledStartTime);
					setSuccessFor(stationScheduledEndTime, errorScheduledEndTime);
				}
			} catch (error) {
				setErrorFor(stationScheduledStartTime, errorScheduledStartTime, error);
				setErrorFor(stationScheduledEndTime, errorScheduledEndTime, error);
				scheduledTimeReturn = false;
			}

		}

	}
	
	function checkTimeFormat(inputElement, errorElement) {
		inputVal = inputElement.val();
		try {

			if (/^([0-9][0-9]):[0-5][0-9]$/.test(inputVal) || inputVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				checkStartEndTime(); // Checking for the relationship
				return true;
			} else {
				throw "E2024";//Please enter time duration in hh:mm format
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;			
		}
	}


	
	function checkTimeDuraion(inputElement, errorElement) {
		inputElementVal = inputElement.val();
		try {

			if (/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.test(inputElementVal) || inputElementVal.trim() == "") {
				setSuccessFor(inputElement, errorElement);
				return  true;
			} else {
				throw "E2024";   //Please enter time duration in hh:mm format
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}
	}

	workLocation.focusout(checkWorkLocation);
	basicSalary.focusout(checkBasicSalary);
	billedAmount.focusout(checkBilledAmount);
	billingUnitPriceSetting.focusout(checkBillingUnitPriceSetting);
	salaryUnitPriceRadio1.addEventListener('click', () => {
		checkSalaryUnitPrice();
		basicSalary.prop('disabled', false);

	});
	salaryUnitPriceRadio2.addEventListener('click', () => {
		checkSalaryUnitPrice();
		basicSalary.prop('disabled', true);
		basicSalary.val("");
		basicSalary.removeClass("errorVal");
		errorBasicSalary.html("");
	});

/*	stationScheduledStartTime.focusout(checkScheduledTime);
	stationScheduledEndTime.focusout(checkScheduledTime);*/

	stationScheduledStartTime.focusout( () => {
		scheduledStartTimeReturn = checkTimeFormat(stationScheduledStartTime, errorScheduledStartTime);	
	});

	stationScheduledEndTime.focusout( () => {
		scheduledEndTimeReturn = checkTimeFormat(stationScheduledEndTime, errorScheduledEndTime);	
	});

	scheduledActualWorkTime.focusout(() => {
		scheduledActualWorkTimeReturn = checkTimeDuraion(scheduledActualWorkTime,errorScheduledActualWorkTime);
	});
	
	ScheduleBreaktime.focusout(() => {
		ScheduleBreaktimeReturn = checkTimeDuraion(ScheduleBreaktime,errorScheduleBreaktime);
	});
	
	MidnightBreakingTime.focusout(() => {
		MidnightBreakingTimeReturn = checkTimeDuraion(MidnightBreakingTime,errorMidnightBreakingTime);
	});

	buttonUpdateCaseWorkLocation.click(function() {

		checkWorkLocation();
		checkSalaryUnitPrice();
		if (!salaryUnitPriceRadio2.checked) checkBasicSalary();
		checkBilledAmount();
		checkBillingUnitPriceSetting();
		//checkScheduledTime();
		scheduledActualWorkTimeReturn = checkTimeDuraion(scheduledActualWorkTime,errorScheduledActualWorkTime);
		ScheduleBreaktimeReturn = checkTimeDuraion(ScheduleBreaktime,errorScheduleBreaktime);
		MidnightBreakingTimeReturn = checkTimeDuraion(MidnightBreakingTime,errorMidnightBreakingTime);
		

		if (workLocationReturn == true && salaryUnitPriceRadioReturn == true && (salaryUnitPriceRadio1.checked && basicSalaryReturn == true || salaryUnitPriceRadio2.checked && basicSalaryReturn == false || salaryUnitPriceRadio2.checked && basicSalaryReturn == true) && billedAmountReturn == true && billingUnitPriceSettingReturn == true && scheduledTimeReturn == true && scheduledActualWorkTimeReturn == true && ScheduleBreaktimeReturn == true && MidnightBreakingTimeReturn == true  ) {
			//alert("Valid Info");
			saveWorkLocation();
		} else {
			//alert("inValid Info");
			//showMessage('info', "Please Re-Check Values!");
			showMessage('info', "N1094");

		}
	});

	///////////////// Notification of working conditions Accordian//////////////////////////////////////////////////////////
	var midnightOvertimeHolidayAllowance = $("#midnightOvertimeHolidayAllowance");
	var paymentTerms = $("#PaymentTerms");
	var annualPaidLeave = $("#annualPaidLeave");
	var overtimeHolidayWork = $("#overtimeHolidayWork");
	var safetyAndHygiene = $("#safetyAndHygiene");
	var employmentStabilization = $("#employmentStabilizationMeasures");
	var grievanceRelatedMatters = $("#grievanceRelatedMatters");
	var reasonForNotSubmittingEmployment = $("#reasonForNotSubmittingEmployment");
	var useOfWelfareFacilities = $("#useOfWelfareFacilities");
	var retirementRelatedMatters = $("#retirementRelatedMatters");
	var contractRenewalMatters = $("#contractRenewalRelated");
	var conflictPreventionMeasures = $("#conflictPreventionMeasures");
	var remarksNotification = $("#workConditionRemarks");


	let midnightOvertimeHolidayAllowanceReturn = false;
	let paymentTermsReturn = false;
	let annualPaidLeaveReturn = false;
	let overtimeHolidayWorkReturn = false;
	let safetyAndHygieneReturn = false;
	let employmentStabilizationReturn = false;
	let grievanceRelatedMattersReturn = false;
	let reasonForNotSubmittingEmploymentReturn = false;
	let useOfWelfareFacilitiesReturn = false;
	let retirementRelatedMattersReturn = false;
	let contractRenewalMattersReturn = false;
	let conflictPreventionMeasuresReturn = false;
	let remarksNotificationReturn = false;


	var errorMidnightOvertimeHolidayAllowance = $("#errorMidnightOvertimeHolidayAllowance");
	var errorPaymentTerms = $("#errorPaymentTerms");
	var errorAnnualPaidLeave = $("#errorAnnualPaidLeave");
	var errorOvertimeHolidayWork = $("#errorOvertimeHolidayWork");
	var errorSafetyAndHygiene = $("#errorSafetyAndHygiene");
	var errorEmploymentStabilization = $("#errorEmploymentStabilization");
	var errorGrievanceRelatedMatters = $("#errorGrievanceRelatedMatters");
	var errorReasonForNotSubmittingEmployment = $("#errorReasonForNotSubmittingEmployment");
	var errorUseOfWelfareFacilities = $("#errorUseOfWelfareFacilities");
	var errorRetirementRelatedMatters = $("#errorRetirementRelatedMatters");
	var errorContractRenewalMatters = $("#errorContractRenewalMatters");
	var errorConflictPreventionMeasures = $("#errorConflictPreventionMeasures");
	var errorRemarksNotification = $("#errorRemarksNotification");


	var buttonUpdateWorkConditions = $("#buttonUpdateWorkConditions");



	function checkMidnightOvertimeAllowance() {
		workLocationVal = midnightOvertimeHolidayAllowance.val();
		
		try {
			if (workLocationVal.trim() == "") throw "E2005"; //throw "Cannot be empty";      


			if (/^[0-9]+$/.test(workLocationVal)) {
				setSuccessFor(midnightOvertimeHolidayAllowance, errorMidnightOvertimeHolidayAllowance);
				midnightOvertimeHolidayAllowanceReturn = true;
			} else {
				midnightOvertimeHolidayAllowanceReturn = false;
				//throw "Invalid Billed Amount";
				throw "E2025";
			}
		} catch (error) {
			setErrorFor(midnightOvertimeHolidayAllowance, errorMidnightOvertimeHolidayAllowance, error);
		}

	}

	function checkPaymentTerms() {
		workLocationVal = paymentTerms.val();
		try {
			if (workLocationVal.trim() == "") {
				//throw "Cannot be empty";
				throw "E2005";
			} else {
				paymentTermsReturn = true;
				setSuccessFor(paymentTerms, errorPaymentTerms);
			}
		} catch (error) {
			paymentTermsReturn = false;
			setErrorFor(paymentTerms, errorPaymentTerms, error);
		}

	}

	function checkAnnualPaidLeave() {
		workLocationVal = annualPaidLeave.val();
		try {
			if (workLocationVal.trim() == "") {
				//throw "Cannot be empty";
				throw "E2005";
			} else {
				annualPaidLeaveReturn = true;
				setSuccessFor(annualPaidLeave, errorAnnualPaidLeave);
			}
		} catch (error) {
			annualPaidLeaveReturn = false;
			setErrorFor(annualPaidLeave, errorAnnualPaidLeave, error);
		}

	}

	function checkOvertimeHolidayWork() {
		workLocationVal = overtimeHolidayWork.val();
		try {
			if (workLocationVal.trim() == "") {
				//throw "Cannot be empty";
				throw "E2005";
			} else {
				overtimeHolidayWorkReturn = true;
				setSuccessFor(overtimeHolidayWork, errorOvertimeHolidayWork);
			}
		} catch (error) {
			overtimeHolidayWorkReturn = false;
			setErrorFor(overtimeHolidayWork, errorOvertimeHolidayWork, error);
		}

	}

	/*	function checkSafetyAndHygiene() {
			workLocationVal = safetyAndHygiene.val();
			try {
				if (workLocationVal.trim() == "") {
					//throw "Cannot be empty";
					 throw "E2005";
				} else {
					safetyAndHygieneReturn = true;
					setSuccessFor(safetyAndHygiene, errorSafetyAndHygiene);
				}
			} catch (error) {
				safetyAndHygieneReturn = false;
				setErrorFor(safetyAndHygiene, errorSafetyAndHygiene, error);
			}
	
		}*/

	// Common Validation for checking mandatory fields
	function checkMandatoryFields(inputElement, errorElement) {
		inputElementVal = inputElement.val();
		try {
			if (inputElementVal.trim() == "") {
				//throw "Cannot be empty";
				throw "E2005";
			} else {
				setSuccessFor(inputElement, errorElement);
				return true;
			}
		} catch (error) {
			setErrorFor(inputElement, errorElement, error);
			return false;
		}

	}

	//const checkSafety = checkMandatoryFields(safetyAndHygiene, safetyAndHygieneReturn, errorSafetyAndHygiene );



	// Focus out events for validating
	midnightOvertimeHolidayAllowance.focusout(checkMidnightOvertimeAllowance);
	paymentTerms.focusout(checkPaymentTerms);
	annualPaidLeave.focusout(checkAnnualPaidLeave);
	overtimeHolidayWork.focusout(checkOvertimeHolidayWork);
	safetyAndHygiene.focusout(() => {
		safetyAndHygieneReturn = checkMandatoryFields(safetyAndHygiene, errorSafetyAndHygiene);
	});

	employmentStabilization.focusout(() => {
		employmentStabilizationReturn = checkMandatoryFields(employmentStabilization, errorEmploymentStabilization);
	});

	grievanceRelatedMatters.focusout(() => {
		grievanceRelatedMattersReturn = checkMandatoryFields(grievanceRelatedMatters, errorGrievanceRelatedMatters);
	});

	reasonForNotSubmittingEmployment.focusout(() => {
		reasonForNotSubmittingEmploymentReturn = checkMandatoryFields(reasonForNotSubmittingEmployment, errorReasonForNotSubmittingEmployment);
	});

	useOfWelfareFacilities.focusout(() => {
		useOfWelfareFacilitiesReturn = checkMandatoryFields(useOfWelfareFacilities, errorUseOfWelfareFacilities);
	});

	retirementRelatedMatters.focusout(() => {
		retirementRelatedMattersReturn = checkMandatoryFields(retirementRelatedMatters, errorRetirementRelatedMatters);
	});

	contractRenewalMatters.focusout(() => {
		contractRenewalMattersReturn = checkMandatoryFields(contractRenewalMatters, errorContractRenewalMatters);
	});

	conflictPreventionMeasures.focusout(() => {
		conflictPreventionMeasuresReturn = checkMandatoryFields(conflictPreventionMeasures, errorConflictPreventionMeasures);
	});

	remarksNotification.focusout(() => {
		remarksNotificationReturn = checkMandatoryFields(remarksNotification, errorRemarksNotification);
	});


	buttonUpdateWorkConditions.click(function() {

		checkMidnightOvertimeAllowance();
		checkPaymentTerms();
		checkAnnualPaidLeave();
		checkOvertimeHolidayWork();
		//checkSafetyAndHygiene();
		safetyAndHygieneReturn = checkMandatoryFields(safetyAndHygiene, errorSafetyAndHygiene);
		employmentStabilizationReturn = checkMandatoryFields(employmentStabilization, errorEmploymentStabilization);
		grievanceRelatedMattersReturn = checkMandatoryFields(grievanceRelatedMatters, errorGrievanceRelatedMatters);
		reasonForNotSubmittingEmploymentReturn = checkMandatoryFields(reasonForNotSubmittingEmployment, errorReasonForNotSubmittingEmployment);
		useOfWelfareFacilitiesReturn = checkMandatoryFields(useOfWelfareFacilities, errorUseOfWelfareFacilities);
		retirementRelatedMattersReturn = checkMandatoryFields(retirementRelatedMatters, errorRetirementRelatedMatters);
		contractRenewalMattersReturn = checkMandatoryFields(contractRenewalMatters, errorContractRenewalMatters);
		conflictPreventionMeasuresReturn = checkMandatoryFields(conflictPreventionMeasures, errorConflictPreventionMeasures);
		remarksNotificationReturn = checkMandatoryFields(remarksNotification, errorRemarksNotification);

		if (midnightOvertimeHolidayAllowanceReturn == true && paymentTermsReturn == true && annualPaidLeaveReturn == true && overtimeHolidayWorkReturn == true && safetyAndHygieneReturn == true && employmentStabilizationReturn == true && grievanceRelatedMattersReturn == true && reasonForNotSubmittingEmploymentReturn == true && useOfWelfareFacilitiesReturn == true && retirementRelatedMattersReturn == true && contractRenewalMattersReturn == true && conflictPreventionMeasuresReturn == true && remarksNotificationReturn == true) {

			saveWorkingCondition();
		} else {
			//showMessage('info', "Please Re-Check Values!");
			showMessage('info', "N1094");

		}
	});

	/////////////// Assignment Info Accordian  ////////////////////////////////

	var requiredNumberOfStaff = $("#requiredNumberOfStaff");

	let requiredNumberOfStaffReturn = false;


	var errorRequiredNumberOfStaff = $("#errorRequiredNumberOfStaff");
	var errorAssignmentInfoTable = $("#errorAssignmentInfoTable");


	var buttonImplementationInformation = $("#buttonUpdateAssignmentInfo");



	function checkRequiredNumberOfStaff() {
		var basicSalaryVal = requiredNumberOfStaff.val();
		try {
			if (basicSalaryVal.trim() == "") throw "E2005";
			//throw "Cannot be empty";       


			if (/^[0-9]+$/.test(basicSalaryVal)) {
				setSuccessFor(requiredNumberOfStaff, errorRequiredNumberOfStaff);
				requiredNumberOfStaffReturn = true;
			} else {
				requiredNumberOfStaffReturn = false;
				//throw "Invalid Required Number Of Staff";
				throw "E2018";
			}
		} catch (error) {
			setErrorFor(requiredNumberOfStaff, errorRequiredNumberOfStaff, error);
		}
	}

	requiredNumberOfStaff.focusout(checkRequiredNumberOfStaff);

	buttonImplementationInformation.click(function() {

		let assignmentInfoTableReturn = true;

		checkRequiredNumberOfStaff();

		//checkAssignmentInfoTable();

		function checkAssignmentInfoTable() {

			const assignmentInfoIDArray = document.getElementsByName("assignmentInfoID[]");
			const assignmentInfoNoArray = document.getElementsByName("assignmentInfoNo[]");
			const assignmentInfoAssignStaffArray = document.getElementsByName("assignmentInfoAssignStaff[]");
			const assignmentInfoConflictDateArray = document.getElementsByName("assignmentInfoConflictDate[]");
			const assignmentInfoBasicSalArray = document.getElementsByName("assignmentInfoBasicSal[]");
			const assignmentInfoNotifiDateArray = document.getElementsByName("assignmentInfoNotifiDate[]");


			for (var i = 0; i < assignmentInfoIDArray.length; i++) {

				if (assignmentInfoNoArray[i].value != "" || assignmentInfoAssignStaffArray[i].value != "" || assignmentInfoConflictDateArray[i].value != "" || assignmentInfoBasicSalArray[i].value != "" || assignmentInfoNotifiDateArray[i].value != "") {
					//Validation code..............
					if (assignmentInfoNoArray[i].value.trim() != "" && assignmentInfoAssignStaffArray[i].value.trim() != "" && assignmentInfoConflictDateArray[i].value.trim() != "" && assignmentInfoBasicSalArray[i].value.trim() != "" && assignmentInfoNotifiDateArray[i].value.trim() != "") {
						try {
							if (/^[0-9]+$/.test(assignmentInfoBasicSalArray[i].value.trim())) {
								setSuccessFor("", errorAssignmentInfoTable);
								assignmentInfoTableReturn = true;
							} else {
								//throw "Invalid Reference Basic Salary";
								throw "E2019";
							}
						} catch (error) {
							assignmentInfoTableReturn = false;
							setErrorFor("", errorAssignmentInfoTable, error);
						}



					} else {
						assignmentInfoTableReturn = false;
						showMessage('info', "N1245");
						break;
					}

				}
			}

		}

		if (requiredNumberOfStaffReturn == true && assignmentInfoTableReturn == true) {

			saveAssignmentInformation();
		} else {

			//showMessage('info', "Please Re-Check Values!");
			showMessage('info', "N1094");

		}
	});


})

function setErrorFor(divInput, divError, errorCode) {
	message = caseErrorArray[errorCode];
	if (divInput != "") divInput.addClass("errorVal").removeClass("successVal");
	divError.html(message);
}

function setSuccessFor(divInput, divError) {
	if (divInput != "") divInput.addClass("successVal").removeClass("errorVal");
	divError.html("");
}

