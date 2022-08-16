function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(OverTimeHoliday);

}

TopMenu = [
 
    ["menuButtonProfile", "Profile"],
    ["menuButtonManual", "Manual"],
    ["menuButtonLogout", "Logout"]
];

LeftMenu = [
	["pageTitle", "Staff List"],
	["menuSpanHome", "Home"],
	["menuSubSpanHome", "Home"],
	["menuSpanCustomer", "Customer Management"],
	["menuSpanQuoMan", "Quotation Management"],
	["menuSpanInvoiceMan", "Invoice Management"],
	["menuSpanMatterMan", "Case Management"],
	["menuSpanAssignment", "Assignment Management"],
	["menuSpanStaff", "Staff Management"],
	["menuSpanShifftSchedule", "Staff Shift Schedule Management" ],
	["menuSpanAttendance", "Attendance"],
	["menuSpanPayrollMan", "Payroll Management"],
	["menuSpanAnnualPayroll", "Annual Payroll"],
	["menuSpanPaidGrand", "Paid Grant"],
	["menuSpanEmployeeManagement", "Employee Management"],
	["menuSpanAgencyManagement", "Agency Management"],
	["menuSpanStaffPageLogin", "Staff Page Login"],
	["menuSpanMasterAdmin", "Master Admin"],
	["menuSubSpanCompanyInformationManagement", "Company Information"],
	["menuSubSpanConsumptionTaxManagement", "Consumption Tax"],
	["menuSubSpanDailyIncomeTax", "Income Tax Daily"],
	["menuSubSpanMonthlyTaxManagement", "Monthly Tax"],
	["menuSubSpanAllowanceManagement", "Over Time/Holiday Allowance"],
	["menuSubSpanPaidTableManagement", "Paid Table"],
	["menuSubSpanContractTerms", "Contract Terms"],
	["menuSubSpanEmailTemplateManagement", "Email Template"],
	["menuSubSpanQuoteTemplateManagement", "Quote Template"],
	["menuSpanAboutCompliance", "About Compliance"],
	["menuTermsofServices", "Terms of Services"],
	["menuPrivacyPolicy", "Privacy Policy"],
	["menuBasedCommercial", "Transaction Laws"]
];


OverTimeHoliday = [
	["pageTitleOvertimeMidnightHolidayAllowanceInformation", "Overtime/ Midnight / Holiday Allowance Information"],
    ["pageSpanHeadingOvertimeMidnightHolidayAllowanceInformation", " Overtime / Midnight / Holiday Allowance Information"],
    ["pageSpanSubHeadingOvertimeMidnightHolidayAllowanceInformation", "You can set the rate of increase in overtime, midnight, and holiday allowances."],
    ["accordionDivOvertimeMidnightHolidayAllowanceInformation", "Overtime / Midnight / Holiday Allowance Information"],
    ["pageSpanSubHeadingOverTimeHolidayAllowance", "Overtime / midnight / holiday allowance information hours and percentages apply to salaries and bonuses. Please fill in within the range stipulated by law."],
    ["pageSpanlegalWorkingHoursPerDay", "Legal Working Hours Per Day"],
    ["pageSpanIncreaseRateofLegalOvertimeWork", "Increase Rate of Legal Overtime Work"],
    ["pageSpanIncreaseRateofLegalOvertimeWorkHourlyorMonthly", "Increase Rate of Legal Overtime Work (60 hours or more per month)"],
    ["pageSpanIncreaserateoflatenightworkinghours", " Increase rate of late-night working hours (working hours from 22:00 to 5:00)"],
    ["pageSpanIncreaserateofholidaywork", "Increase rate of holiday work"],
    ["buttonUpateAllowanceInformation", "Updated overtime / midnight / holiday allowance information"]
	          
];

overTimeHolidayErrorArray ={"E2240":"Can not be empty",
						   "E2253":"Should contain only numbers",
						   "E2254": " Please enter time duration in hh:mm format",	
 				  		}
