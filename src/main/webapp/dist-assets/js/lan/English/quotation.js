function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(QuotationSearch);
    convertContentToLanguage(QuotationDetails);
    convertContentToLanguageByName(nameList);
    convertTitleToLanguageByName(nameList);
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
	["menuSpanAttendance", "Attendance Management"],
	["menuSpanPayrollMan", "Payroll Management"],
	["menuSpanAnnualPayroll", "Annual Payroll"],
	["menuSpanPaidGrand", "Paid Grant"],
	["menuSpanEmployeeManagement", "Employee Management"],
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
	["pageTitleQuotationList", "Quotation list"],
    ["pageSpanHeadingQuotation", "Quotation list"],
    ["pageSpanSearch", "Search"],
    ["buttonSpanCreateQuoteFromCustomer", "Create a Quote From a Customer"],
    ["buttonSpanEstimateListCSVOutput", "Quotation list CSV output"],
    ["pageCardDivTotalQuotations", "Total Number of Quotations"],
    ["pageCardDivTotalActiveQuotations", "Total Submitted Quotations"],
    ["pageCardDivTotalAvailableQuotations", "Total In Active Quotations"],
    ["pageLabelQuotationNumber", "Quotation Number"],
    ["quotationNumber", "Enter Quotation Number"],
    ["pageLabelQuotationStatus", "Quotation Status"],
    ["selectOptionSelectQuotationStatus", "Select Quotation Status"],
    ["pageSpanMakeAQuotation", "Make a Quotation"],
    ["pageSpanQuotationSubmitted", "Quotation Submitted"],
    ["pageSpanDuringNegotiations", "During Negotiations"],
    ["pageSpanReceived", "Orders Received"],
    ["pageSpanOnHold", "On Hold"],
    ["pageSpanCancel", "Cancel"],
    ["pageLabelProjectTitle", "Case Name"],
    ["projectTitle", "Enter Case Name"],
    ["pageLabelCustomerCompanyName", "Customer Company Name"],
    ["customerCompanyName", "Enter Customer Company Name"],
    ["pageLabelCustomerRepresentativeName", "Customer Representative Name"],
    ["customerRepresentativeName", "Enter Customer Representative Name"],
    ["pageLabelSalesRepresentativeName", "Sales Representative Name"],
    ["salesRepresentativeName", "Enter Sales Representative Name"],
    ["pageLabelDispatchClassification", "Dispatch Classification"],
    ["selectOptionSelectDispatchClassification", "Select Dispatch Classification"],
    ["pageSpanGeneralDispatch", "General dispatch"],
    ["pageSpanBusinessContract", "Out Sourcing"],
    ["pageSpanIntroductionDispatching", "Temp -to- Perm"],
    ["pageSpanRecruitment", "Talent Introduction/Recruiting/Placement"],
    ["pageSpanPartTime", "Part Time"],
    ["pageLabelOccupationClassification", "Occupation Classification"],
    ["selectOptionSelectOccupationClassification", "Select Occupation Classification"],
    ["pageSpanOfficeSystem", "Office system"],
    ["pageSpanSalesSystem", "Sales/sales system"],
    ["pageSpanITCreative", "IT / Creative"],
    ["pageSpanMedicalWelfareSystem", "Medical / Welfare system"],
    ["pageSpanManufacturingBusiness", "Manufacturing business"],
    ["pageSpanProfessional", "Professional"],
    ["pageSpanOthers", "Others"],
    ["pageLabelAffiliation", "Belonging"],
    ["affiliation", "Enter Belonging"],
    ["clearAllBtn", "Clear All"],
    ["searchBtn", "Search"],
    ["pageSpanSearchQuotationDetails", " Search Quotation Details"],
    ["tableSearchTHNo", "No"],
    ["tableSearchTHChoice", "Choice"],
    ["tableSearchTHQuotationNumber", "Quotation Number"],
    ["tableSearchTHQuotationStatus", "Quotation Status"],
    ["tableSearchTHQuotationName", "Case Name"],
    ["tableSearchTHCustomerCompanyName", "Customer Company Name"],
    ["tableSearchTHCustomerRepresentativeName", "Customer Representative Name"],
    ["tableSearchTHSalesRepresentative", "Sales Representative"],
    ["tableSearchTHDispatchClassification", "Dispatch Classification"],
    ["tableSearchTHOccupationClassification", "Occupation Classification"],
 
];


QuotationDetails = [
    ["pageTitleQuotationDetails", "Quotation Details"],
    ["pageTitleQuotationRegistration", "Quotation Registration"],
    ["pageSpanHeadingQuotationDetails", "Quotation Details"],
    ["pageSpanHeadingQuotationRegistration", "Quotation Registration"],
    ["pageSpanSubHeadingQuotationDetails", "You can modify the quotation."],
    ["pageSpanSubHeadingQuotationRegistration", "You can register a quotation."],
    ["pageSpanSubHeadingQuotationDetails", "You can revise a quote, create another quote or a case related to this quote."],
    ["buttonSpanCreateFromThisQuotation", "Create  From This Quotation"],
    ["buttonValueSpanCopyAndCreateAnotherQuotatio", "Copy And Create Another Quotation"],
    ["buttonValueSpanCustomerProposalCreation", " Proposal Creation"],
    ["buttonValueSpanCustomerInvoiceCreation", " Invoice Creation"],
    ["buttonSpanQuotationDelete", "Delete"],
    ["buttonValueSpanQuotationDelete", "Delete Quotation"],
    ["buttonSpanReturn", "Return"],
    ["accordionDivQuotationInformation", " Quotation Information "],
    ["pageSpanMatterName", " Case Name "],
    ["pageSpanQuotationNumber", "  Quotation Number "],
    ["pageSpanQuotationInformation", " Quotation Information "],
    ["pageSpanDateOfQuotation", " Date of Quotation"],
    ["pageSpanSalesRepresentative", " Sales Representative "],
    ["pageSpanCustomerCompanyName", "Customer Company Name"],
    ["pageSpanCustomerRepresentativeName", "Customer Representative Name"],
    ["pageSpanConsumptionTax", " Consumption Tax "],
    ["pageSpanQuotationStatus", "Quotation Status"],
    ["pageSpanMatterInformation", " Case Information"],
    ["pageSpanDispatchClassification", " Dispatch Classification"],
    ["pageSpanOccuClassification", "Occupation Classification"],
    ["pageSpanBusinessContent", "Business Content"],
    ["pageSpanWorkLocation", "Work Location"],
    ["pageSpanWorkingHoursStartRecruitment", "Working Hours (Start)"],
    ["pageSpanWorkingHoursEndRecruitment", "Working Hours (End)"],
    ["pageSpanSalary", "Salary"],
    ["pageSpanTreatment", "Treatment:"],
    ["pageSpanHoliday", "Holiday:"],
    ["pageSpanQualificationRequirements", "Qualification Requirements"],
    ["pageSpanNumberOfHires", "Number of Hires"],
    ["pageSpanRecruitmentProcess", "Recruitment Process"],
    ["pageSpanQuotationDetails", "Quotation Details"],
    ["pageSpanTemplate", "Template"],
    ["selectOptionSelectTemplate", "Select Template"],
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
    ["pageSpanRemarks", "Remarks"],
    ["buttonUpdateQuoteDetails", "Update Quotation"],
    ["pageSpanImplementationPeriodStart", "Implementation Period (Start)"],
    ["pageSpanImplementationPeriodEnd", "Implementation Period (End)"],
    ["pageSpanWorkingHoursStart", "Working Hours (start)"],
    ["pageSpanWorkingHoursEnd", "Working Hours (End)"],
    ["pageSpanRequiredNumberOfPeople", "Required Number of People"],
    ["pageSpanWorkAddress", "Work Address (including contact information)"],
    ["buttonRegisterQuoteDetails", "Register Quotation"],
    ["pageSpanRecruiterComments", " Recruiter Comments "],
    ["pageSpanBusinessContentLoder1", "Business Content"],
    ["pageSpanWorkLocationLoder1", "Work Location"],
    ["selectOptionSelectConsumptionTax", "Select Consumption Tax"],
    ["selectQuotationSalesRepresentative", "Select Sales Representative"],
    ["selectQuotationSalesRepresentative1", "Sales Representative 1"],
    ["selectQuotationSalesRepresentative2", "Sales Representative 2"],
	["buttonSpanQuotationDownload", "Quotation Download"],
	["tableSearchTHBelonging", "Belonging"],

];

nameList = [
["tableQuotationDetailsTaxation", "Taxation"],
["tableQuotationDetailsTaxExempt", "Tax exempt"]
];

quotationErrayArray = { "E1200":"Can not be empty!", 
						"E1202":"Invalid Quotation Number",
						"E1203":"Invalid Customer Representative Name", 
						"E1204":"Invalid Company Name",
						"E1205":"Can not be empty!",
						"E1206":"Working Hours do not match!",
						"E1207":"Invalid Required Number Of People",
						"E1208":"Invalid Salary",
						"E1209":"Invalid Number of Hires",
						"E1210":"Implementation Periods do not match!",
						"E1211":"Please enter a proposal subject.",
						"E1212":"Please select a tax rate.",
						"E1213":"Choose your status.",
				
						}
