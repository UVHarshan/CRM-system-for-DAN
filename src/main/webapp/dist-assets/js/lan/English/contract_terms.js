function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(Contract_infos);
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

Contract_infos = [
		["pageTitleContractConditionInformation", "Contract Condition Information"],
		["pageSpanHeadingContractConditionInformation", "Contract Condition Information"],
		["pageSpanSubHeadingContractConditionInformation", "You can set the contract conditions."],
		["accordionDivNotificationofworkingconditions", "Notification of working conditions and explicit information on working conditions"],
		["subGuidestatementofworkingconditions", "It is applied to the notification of working conditions and the statement of working conditions. Please fill in within the range stipulated by law."],
		["pageSpanMidnightOvertimeHolidayAllowance", "Midnight / Overtime / Holiday Allowance"],
		["pageSpanPaymentTerms", "Payment Terms"],
		["pageSpanAnnualPaidLeave", "Annual Paid Leave"],
		["pageSpanOvertimeHolidayWork", "Overtime / Holiday Work"],
		["pageSpansafetyandHygiene", "Safety and Hygiene"],
		["pageSpanEmploymentStabilizationMeasures", "Employment stabilization measures for dispatched workers taken by canceling the dispatch contract"],
		["pageSpanGrievanceRelatedMatters", "Grievance Related Matters"],
		["pageSpanReasonfornotsubmittingemployment", "Reason for not submitting employment / social insurance insured qualification notification"],
		["pageSpanUseofwelfarefacilities", "Use of welfare facilities, etc."],
		["pageSpanretirementrelatedmatters", "Retirement related matters"],
		["pageSpanContractrenewalrelatedmatters", "Contract renewal related matters Contract renewal related matters"],
		["pageSpanConflictPreventionMeasuresforDirectemployment", "Conflict prevention measures for direct employment of dispatched workers"],
		["pageSpanRemarks", "Remarks"],
		["buttonUpdatedContractTerms", "Updated Contract Terms"]
    
];

contractTermsErrorArray ={"E2240":"Can not be empty",
						   "E2253":"Should contain only numbers",
						   "E2254": " Please enter time duration in hh:mm format",	
 				  		}


