function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(EmailTemplates);
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


EmailTemplates = [
		["pageTitleEmailTemplateList", "Email Template List"],
		["pageTitleEmailTemplateDetails", "Email Template Details"],
		["pageSpanHeadingEmailTemplateList", "Email Template List"],
		["pageSpanSubHeadingEmailTemplateList", "You can check the mail template information in a list."],
		["tableTHNo", "No"],
		["tableTHCode", "Code"],
		["tableTHTemplateName", "Template Name"],
		["tableTHTitle", "Title"],
		["tableTHUse", "Use"],
		["pageSpanHeadingEmailTemplateDetails", "Email Template Details"],
		["pageSpanSubHeadingEmailTemplateDetails", "You can modify the email template."],
		["buttonSpanReturn", "Return"],
		["accordionDivEmailTemplateInformation", "Email Template Information"],
		["pageSpanCode", "Code"],
		["pageSpanTemplateName", "Template Name"],
		["pageSpanTitle", "Title"],
		["pageSpanBody", "Body"],
		["pageSpanEmbeddedCharactersforBody", "Embedded characters for body"],
		["helpmbeddedCharactersforBody", "If you select from the list, it will be inserted in the text."],
		["optionmbeddedCharactersforBodyStaffName", "Staff name"],
		["optionmbeddedCharactersforBodyManager", "Manager"],
		["optionmbeddedCharactersforBodyTargetDate", "The Target Date"],
		["optionmbeddedCharactersforBodyConfirmedDateTime", "Confirmed Date and Time"],
		["optionmbeddedCharactersforBodyCompanyPhoneNumber", "Company Phone Number"],
		["optionmbeddedCharactersforBodyCompanyName", "Company Name"],
		["optionmbeddedCharactersforBodyCompanyZipCode", "Company Zip Code"],
		["optionmbeddedCharactersforBodyCompanyAddress", "Company Address"],
		["optionmbeddedCharactersforBodyCompanyFax", "Company Fax"],
		["optionmbeddedCharactersforBodyCompanyEmail", "Company Email Address"],
		["optionmbeddedCharactersforBodySystemURL", "System URL"],
		["pageSpanUse", "Use"],
		["pageSpanRemarks", "Remarks"],
		["buttonUpdateEmailTemplate", "Update Email Template"],
		
];
