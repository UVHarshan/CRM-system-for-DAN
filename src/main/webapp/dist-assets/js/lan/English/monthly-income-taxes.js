function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(MonthlyIncomeTaxes);
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

MonthlyIncomeTaxes = [
	["pageTitleMonthlyIncomeTaxes", "Monthly Income Taxes"],
	["pageTitleMonthlyIncomeTaxesDetails", "Monthly Income Taxes Details"],
	["pageTitleMonthlyIncomeTaxesRegistration", "Monthly Income Taxes Registration"],
	["pageSpanHeadingIncomeMonthlyRegistration", "Monthly Income Tax Registration"],
	["pageSpanHeadingMonthlyIncomeTaxDetails", "Monthly Income Tax Details"],
	["pageSpanSubHeadingMonthlyIncomeTaxDetails", "You can check the details of the monthly income tax amount."],
	["buttonSpanReturn", "Return"],
	["accordionDivIncometaxmonthlyinformation", "Monthly Income Tax Information"],
	["pageSpanyear", " Year"],
	["pageSpanThresholdhigherthan", "Threshold (higher than)"],
	["pageSpanThresholdlessthan", "Threshold (less than)"],
	["accordionDivdeclarationofdependentdeduction", "There is a declaration of dependent deduction, etc. (A)"],
	["pageSpanTaxamountdependents0", "Tax amount (0 dependents)"],
	["pageSpanTaxamountdependents1", "Tax amount (1 dependents)"],
	["pageSpanTaxamountdependents2", "Tax amount (2 dependents)"],
	["pageSpanTaxamountdependents3", "Tax amount (3 dependents)"],
	["pageSpanTaxamountdependents4", "Tax amount (4 dependents)"],
	["pageSpanTaxamountdependents5", "Tax amount (5 dependents)"],
	["pageSpanTaxamountdependents6", "Tax amount (6 dependents)"],
	["pageSpanTaxamountdependents7", "Tax amount (7 dependents)"],
	["pageSpandeclarationtaxrate", "Tax Rate"],
	["notaxreturnfordependentdeductions", "No tax return for dependent deductions (B)"],
	["pageSpannoTaxamount", "Tax Amount"],
	["pageSpancalculationstandardamount", "Calculation Standard Amount"],
	["pageSpannoTaxtaxrate", "Tax Rate"],
	["pageSpanHeadingMonthlyIncomeTaxList", "Monthly Income Tax List"],
	["pageSpanSubHeadingMonthlyIncomeTaxList", "You can check the monthly income tax information in a list."],
	["buttonSpanAddMonthlyIncomeTaxes", "Add Monthly Income Taxes"],
	["pageSpanSearch", " Search"],
	["pageLabelYear", "Year"],
	["selectOptionyearYear", "Select Year"],
	["clearAllBtn", "Clear All"],
	["searchBtn", "Search"],
	["pageSpanSearchIncomeTaxDetails", "Search Income Tax Details"],
	["MonthlyIncomeTHInstep", "Instep"],
	["MonthlyIncomeTHb", "B"],
	["MonthlyIncomeTHYear", "Year"],
	["MonthlyIncomeTHThreshold", "Threshold"],
	["MonthlyIncomeTHTaxDependent0", "Tax Dependent 0"],
	["MonthlyIncomeTHTaxDependent1", "Tax Dependent 1"],
	["MonthlyIncomeTHTaxDependent2", "Tax Dependent 2"],
	["MonthlyIncomeTHTaxDependent3", "Tax Dependent 3"],
	["MonthlyIncomeTHTaxDependent4", "Tax Dependent 4"],
	["MonthlyIncomeTHTaxDependent5", "Tax Dependent 5"],
	["MonthlyIncomeTHTaxDependent6", "Tax Dependent 6"],
	["MonthlyIncomeTHTaxDependent7", "Tax Dependent 7"],
	["MonthlyIncomeTHTaxRate1", "Tax Rate"],
	["MonthlyIncomeTHTaxAmount", "Tax Amount"],
	["MonthlyIncomeTHTaxRate2", "Tax Rate"],
	["pageSpanHeadingIncomeMonthlyDetails", "Monthly Income Tax Details"],
	["pageSpanSubHeadingIncomeTaxMonthlyDetails", "You can check the details of the monthly income tax amount."],
	["pageSpantaxrate", "Tax Rate"],
	["pageSpanremarks", "Remark"],
	["buttonTaxDailySaveInformation", "Update Information"],
	["buttonTaxSaveMonthlyIncomeTaxDetail", "Save Monthly Income Tax Details"],
	
	          
];



MonthlyIncomeTaxesErrorArray ={"E2240":"Can not be empty",
						   "E2253":"Should contain only numbers",
						   "E2254": " Please enter time duration in hh:mm format",	
 				  		}
