function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(ConsumptionTaxDetails)
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


ConsumptionTaxDetails = [
	["pageSpanHeadingConsumptionTax", "Consumption Tax List"],
	["pageSpanHeadingHelpConsumptionTax", " You can check the consumption tax information in a list."],
	["consumptionTHNo", "No"],
	["consumptionTHTaxRate", "Tax Rate"],
	["consumptionTHApplicationStartDate", "Application Start Date"],
	["pageSpanHeadingConsumptionTaxDetails", "Consumption Tax Details"],
	["pageSpanSubHeadingCustomerDetails", "You can check the details of the consumption tax"],
	["accordionDivCustomerInformation", "Consumption Tax Information"],
	["pageSpanTaxRate", "Tax Rate"],
	["pageSpanApplicationStartDate", "Application Start Date"],
	["pageSpanRemarks", "Remarks"],
	["buttonSpanReturn", "Return"],
	["buttonSaveInformationConsumptionTax", "Save Information"]
];


consumptionTaxErrorArray ={"E2240":"Can not be empty",
						   "E2253":"Should contain only numbers",
 				  		}




