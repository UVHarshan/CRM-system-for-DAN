function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(QuotationSearch);
    convertContentToLanguage(QuotationDetails);
    convertContentToLanguageByName(nameList);
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


 QuotationSearch = [
 //QuotationTemplate
    ["pageTitleQuotationTemplateList", " Quotation Template List"],
    //["pageSpanHeadingQuotation", " Quotation template list"],
    ["pageSpanHeadingQuotationTemplate", " Quotation template list"],
    ["pageSpanHeadingQuotationHelp", "You can check the quotation template information in a list"],
    ["buttonSpanAddQuotationTemplate", "Add Quotation Template"],
    ["pageSpanSearchTemplateDetails", "Search Template Details"],
    ["tableSearchQuotationNo", "No"],
    ["tableSearchQuotationTemplate", "Template name"],
    ["tableSearchQuotationDisplayOrder", "Display order"],
    
];


 QuotationDetails = [
    ["pageTitleQuotationTemplateDetails", "Quotation Template Details"],
    ["pageTitleQuotationTemplateRegistration", "Quotation Template Registration"],
    ["pageSpanHeadingQuotationDetails", " Quotation Template Details"],
    ["pageSpanHeadingQuotationRegistration", " Quotation Template Registration"],
    ["pageSpanSubHeadingQuotationDetails", "You can modify the quotation template."],
    ["pageSpanSubHeadingQuotationRegistration", "You can register a quotation template."],
    ["buttonSpanStaffDetailsDelete", "Delete"],
    ["buttonValueSpanQuotationTempDelete", "Delete Quotation Template"],
    ["buttonSpanReturn", " Return"],
    ["accordionDivQuotationInformation", " Quotation Information"],
    ["pageSpanQuotationTemplateInformation", "Quotation Template Information"],
    ["pageSpanTemplateName", "Template Name "],
    ["pageSpanSortOrder", "Sort Order "],
    ["pageSpanQuotationDetails", "Quotation Details "],
    ["tableQuotationDetailsTHNo", " No"],
    ["tableQuotationDetailsTHMajorItems", " Major Items"],
    ["tableQuotationDetailsTHItem", " Item"],
    ["tableQuotationDetailsTHUnitPrice", "Unit Price ¥"],
    ["tableQuotationDetailsTHQuantity", "Quantity"],
    ["tableQuotationDetailsTHAmountMoney", "Amount of Money ¥"],
    ["tableQuotationDetailsTHRemarks", "Remarks"],
    ["tableQuotationDetailsTHConsumptionTax", "Consumption Tax"],
    ["tableQuotationDetailsNonTaxableDetailsTHNo", " No"],
    ["tableQuotationDetailsNonTaxableDetailsTHMajorItems", " Major Items"],
    ["tableQuotationDetailsNonTaxableDetailsTHItem", " Item"],
    ["tableQuotationDetailsNonTaxableDetailsTHUnitPrice", "Unit Price ¥"],
    ["tableQuotationDetailsNonTaxableDetailsTHQuantity", "Quantity"],
    ["tableQuotationDetailsNonTaxableDetailsTHAmountMoney", "Amount of Money ¥"],
    ["tableQuotationDetailsNonTaxableDetailsTHRemarks", "Remarks"],
    ["tableQuotationDetailsNonTaxableDetailsTHConsumptionTax", "Consumption Tax"],
    ["tableQuotationDetailsSubtotalTaxable", "subtotal:"],
    ["tableQuotationDetailsSubtotalNonTaxable", "subtotal:"],
    ["tableQuotationDetailsSubtotal", "Total (taxable + tax exempt):"],
    ["TaxableQuotationItemRowAdd", "Add Row"],
    ["NonTaxableQuotationItemRowAdd", "Add Row"],
    ["buttonRegisterQuoteDetails", "Register Quotation Template"],
    ["pageSpanRemarks", "Remarks"],
    ["buttonEditQuoteDetails", "Update Quotation Template"],  
];

  nameList = [
    ["tableQuotationDetailsTaxation", "Taxation"],
    ["tableQuotationDetailsTaxExempt", "Tax exempt"]
];

  quotationTempErrorArray={"E1200":"Can not be empty!", "E1201":"Invalid quotation Sort Order "}