function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(companyInformation);
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

companyInformation = [
	["pageTitleCompanyInformationDetails","Company Information Details"],
	["pageSpanHeadingCompanyInformationDetails","Company Information Details"],
	["pageSpanSubHeadingCompanyInformation","You can correct the company information."],
	["accordionDivAboutUs","About Us"],
	["pageSpanSubHeadingHelp","It will be displayed to clients and dispatched staff as company information."],
	["pageSpanCompanyName","Company Name"],
	["pageSpanCompanyNameFurigana","Company Name Furigana"],
	["pageSpanRepresentativeName","Representative Name"],
	["pageSpanRepresentativeNameFurigana","Representative Name Furigana"],
	["pageSpanRepresentativePosition","Representative Position"],
	["pageSpanZipCode","Zip Code"],
	["btnAddressSearch","Address Search"],
	["pageSpanHelpZipCode","Please enterwithout hyphens"],
	["pageSpanAddress","Address"],
	["pageSpanPhoneNumber","Phone number"],
	["pageSpanHelpMobile","Please enter without hyphens"],
	["pageSpanFax","Fax"],
	["pageSpanHelpFax","Please enter without hyphens"],
	["pageSpanWorkerDispatchBusinessPermit","Worker Dispatch Business Permit number"],
	["pageSpanPermitDate1","Permit Date"],
	["pageSpanEmploymentAgencyBusinessPermit","Employment Agency Business Permit Number"],
	["pageSpanPermitDate2","Permit Date"],
	["pageSpanDisClassification","Dispatch classification"],
	["pageSpanGeneralDispatch","General Dispatch"],
	["pageSpanDispatchBusinessContract","Business contract"],
	["pageSpanDispatchIntroductionDispatching","Introduction Dispatching"],
	["pageSpanDispatchRecruitment","Recruitment"],
	["pageSpanOccuClassification","Occupation Classification"],
	["pageSpanOfficeSystem","Office System"],
	["pageSpanSalesSystem","Sales / Sales System"],
	["pageSpanITCreative","IT / Creative"],
	["pageSpanMedicalWelfareSystem","Medical / welfare system"],
	["pageSpanManufacturingBusiness","Manufacturing Business"],
	["pageSpanProfessional","Professional"],
	["pageSpanOthers","Others"],
	["pageSpanBusinessArea","Business Area"],
	["pageOption0Prefecture","Select Prefecture"],
	["pageOption1Prefecture","Hokkaido"],
	["pageOption2Prefecture","Aomori"],
	["pageOption3Prefecture","Iwate"],
	["pageOption4Prefecture","Miyagi"],
	["pageOption5Prefecture","Akita"],
	["pageOption6Prefecture","Yamagata"],
	["pageOption7Prefecture","Fukushima"],
	["pageOption8Prefecture","Ibaraki"],
	["pageOption9Prefecture","Tochigi"],
	["pageOption10Prefecture","Gunma"],
	["pageOption11Prefecture","Saitama"],
	["pageOption12Prefecture","Chiba"],
	["pageOption13Prefecture","Tokyo"],
	["pageOption14Prefecture","Kanagawa"],
	["pageOption15Prefecture","Niigata"],
	["pageOption16Prefecture","Toyama"],
	["pageOption17Prefecture","Ishikawa"],
	["pageOption18Prefecture","Fukui"],
	["pageOption19Prefecture","Yamanashi"],
	["pageOption20Prefecture","Nagano"],
	["pageOption21Prefecture","Gifu"],
	["pageOption22Prefecture","Shizuoka"],
	["pageOption23Prefecture","Aichi"],
	["pageOption24Prefecture","Mie"],
	["pageOption25Prefecture","Shiga"],
	["pageOption26Prefecture","Kyoto"],
	["pageOption27Prefecture","Osaka"],
	["pageOption28Prefecture","Hyogo"],
	["pageOption29Prefecture","Nara"],
	["pageOption30Prefecture","Wakayama"],
	["pageOption31Prefecture","Tottori"],
	["pageOption32Prefecture","Shimane"],
	["pageOption33Prefecture","Okayama"],
	["pageOption34Prefecture","Hiroshima"],
	["pageOption35Prefecture","Yamaguchi"],
	["pageOption36Prefecture","Tokushima"],
	["pageOption37Prefecture","Kagawa"],
	["pageOption38Prefecture","Ehime"],
	["pageOption39Prefecture","Kochi"],
	["pageOption40Prefecture","Fukuoka"],
	["pageOption41Prefecture","Saga"],
	["pageOption42Prefecture","Nagasaki"],
	["pageOption43Prefecture","Kumamoto"],
	["pageOption44Prefecture","Oita"],
	["pageOption45Prefecture","Miyazaki"],
	["pageOption46Prefecture","Kagoshima"],
	["pageOption47Prefecture","Okinawa"],
	["pageSpanSalaryPaymentSupport","Salary Payment Support"],
	["pageSpanDailyPayment","Daily Payment"],
	["salaryPaymentWeekly","Weekly Payment"],
	["salaryPaymentMonthly","Monthly Payment"],
	["pageSpanfeesDispatchedWorkers","Fees for Dispatched Workers"],
	["pageSpanPayrollYear","Payroll Year"],
	["selectOptionSelectG","Select Payroll Year"],
	["selectOptionSelectGend","2018"],
	["selectOptionSelectGen","2019"],
	["selectOptionSelectGend","2020"],
	["selectOptionSelectGend","2021"],
	["pageSpanHelpPayrollYera","Please select the year of income tax to be applied when calculating salary"],
	["pageSpanSalaryClosingDate","Salary Closing Date"],
	["OptiontargetDate","Select Salary Closing Date"],
	//["OptiontargetDate0","The End of the month"],
	["OptiontargetDate1","1 st"],
	["OptiontargetDate2","2 nd"],
	["OptiontargetDate3","3 rd"],
	["OptiontargetDate4","4 th"],
	["OptiontargetDate5","5 th"],
	["OptiontargetDate6","6 th"],
	["OptiontargetDate7","7 th"],
	["OptiontargetDate8","8 th"],
	["OptiontargetDate9","9 th"],
	["OptiontargetDate10","10 th"],
	["OptiontargetDate11","11 th"],
	["OptiontargetDate12","12 th"],
	["OptiontargetDate13","13 th"],
	["OptiontargetDate14","14 th"],
	["OptiontargetDate15","15 th"],
	["OptiontargetDate16","16 th"],
	["OptiontargetDate17","17 th"],
	["OptiontargetDate18","18 th"],
	["OptiontargetDate19","19 th"],
	["OptiontargetDate20","20 th"],
	["OptiontargetDate21","21 st"],
	["OptiontargetDate22","22 nd"],
	["OptiontargetDate23","23 rd"],
	["OptiontargetDate24","24 th"],
	["OptiontargetDate25","25 th"],
	["OptiontargetDate26","26 th"],
	["OptiontargetDate27","27 th"],
	["OptiontargetDate28","28 th"],
	["OptiontargetDate29","29 th"],
	["OptiontargetDate30","30 th"],
	["OptiontargetDate31","31 st"],
	["pageSpanSalaryIncomeDeduction","Salary Income Deduction"],
	["selectOptionSelectG","Select Salary Income Deduction"],
	["selectOptionSelectGend","Apply"],
	["selectOptionSelectGen","Does not Apply"],
	["pageSpanUseLogo","Use Logo"],
	["selectOptionSelectG","Select Use Logo"],
	["selectOptionSelectGend","Use"],
	["selectOptionSelectGen","Do not use"],
	["pageSpanURL","URL"],
	["pageSpanLogoImage","Logo Image"],
	["pageSpanHelpLogoImage","Recommended size: width 200px, height 80px"],
	["pageSpanLogoPreview","Preview"],
	["buttonSaveInformationAboutUs","Save Information"],
	["accordionDivEmailAddressInformation","Email Address Information"],
	["pageSpanSubHeadingHelpEmail","This is the content used to send and receive emails from the system."],
	["pageSpanEmailAddressSend","Email Address (Send)"],
	["pageSpanEmailSendHelp","The address to send an email to the staff"],
	["pageSpanEmailAddressReceived","Email Address (Received)"],
	["pageSpanEmailReceivedHelp","This is the address to receive the contents sent to the staff by BCC."],
	["pageSpanEmailSendingUser","Email Sending User"],
	["pageSpanEmailSendingUserHelp","Please enter the sending account user specified by your email provider"],
	["pageSpanEmailPassword","Email Password"],
	["pageSpanHelpEmailPassword","Enter the password you use to sign in to your outgoing account"],
	["pageSpanEmailSendingPort","Email Sending Port"],
	["pageSpanHelpEmailSendingPort","Enter the port of the outgoing mail server specified by your email provider"],
	["pageSpanEmailSendingHost","Email Sending Host"],
	["pageSpanHelpEmailSendingHost","Enter the host name of the outgoing mail server specified by your email provider"],
	["selectOptionIncomeDeduction","Select Salary Income Deduction"],
	["selectOptionIncomeDeductionApply","Apply"],
	["selectOptionIncomeDeductionDoesnotApply","Does not Apply"],
	["selectOptionUseLogo","Select Use Logo"],
	["selectOptionUseLogoUse","Use"],
	["selectOptionUseLogoDonotUse","Do not use"],
];


companyInfoErrorArray = {"E2240":"Can not be empty",
						 "E2241" : "Should contain only letters",
						 "E2242" : "Invalid Zip Code",
						 "E2243" : "Invalid Phone  Number",
					     "E2244" : "Invalid Fax Number",
						 "E2245" : "Select at least one from dispatch classification",
						 "E2246": "Select at least one from Occupation  classification",
					     "E2247": "Select at least one from Salary Payment Support ",
						 "E2248": "Invalid URL",
						 "E2250": "Invalid Fees for Dispatched Workers",
						 "E2251": "Invalid Email",
						 "E2252": "Invalid Email Sending Port",
						   "E2253":"Should contain only numbers",
						   "E2254": " Please enter time duration in hh:mm format",	
 				  		}