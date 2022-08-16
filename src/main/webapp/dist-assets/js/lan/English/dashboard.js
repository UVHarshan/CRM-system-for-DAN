function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(dashboard);
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


dashboard = [
			 ["pageTitleDashboard", "Dashboard"],
             ["pageCardDivNumberofQuotation", "Number of Quotation"],
             ["pageCardDivNumberofInvoices", "Number of Invoices"],
             ["pageCardDivNumberofCases", "Number of Cases"],
             ["pageCardDivTotalActiveStaff", "Total Active Staff"],
             ["pageSpanDetails", " Cases ("],
			 ["pageSpanDetails2", " In order of assignment deadline)"],
             ["tableStaffTHNo", "No"],
             ["tableTHProposalNumber", "Proposal Number"],
             ["tableTHCaseName", "Case Name"],
             ["tableTHCustomerCompanyName", "Customer Company Name"],
             ["tableTHCustomerRepresentativeName", "Customer Representative Name"],
             ["tableTHPersonInchargeofCase", "Person Incharge of the Case"],
             ["tableTHAssignmentDeadline", "Assignment Deadline"],
			 ["btnSeeMore", "See More"],

         ];

