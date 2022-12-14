function setLanguage(selectedLanguage)
{

    if (selectedLanguage == "English") {
        localStorage.setItem('language', "English");
        switchToEnglish();       
    } else if (selectedLanguage == "Japanese") {
        localStorage.setItem('language', "Japanese");
        switchToJapanese();
    }
}

function getLanguage() {
    if (localStorage.getItem("language") === null){
         localStorage.setItem('language', "Japanese");
         return localStorage.getItem('language');
    }else{
         return localStorage.getItem('language');
    }
}

function ToggleLanguageJapanese() {
    console.log("ToggleLanguageJapanese")
    setLanguage("Japanese");
    switchToJapanese();
}

function ToggleLanguageEnglish() {
    setLanguage("English");
    switchToEnglish();
}


function switchToJapanese() {
    convertContentIntoJapaneseAndEnglish(TopMenu, "Japanese");
    convertContentIntoJapaneseAndEnglish(LeftMenu, "Japanese");
    convertContentIntoJapaneseAndEnglish(CustomerSearch, "Japanese");
    convertContentIntoJapaneseAndEnglish(CustomerDetails, "Japanese");
    // convertContentIntoJapaneseAndEnglish(ForgotPasswordNewPasswordRegisterForm, "Japanese");
}

function switchToEnglish() {
    convertContentIntoJapaneseAndEnglish(TopMenu, "English");
    convertContentIntoJapaneseAndEnglish(LeftMenu, "English");
    convertContentIntoJapaneseAndEnglish(CustomerSearch, "English");
    convertContentIntoJapaneseAndEnglish(CustomerDetails, "English");
    // convertContentIntoJapaneseAndEnglish(ForgotPasswordMobileNumberRegisterForm, "English");
 
}



function convertContentIntoJapaneseAndEnglish(contentArray, language) {
    var languageIndex = 0;
    //languageIndex = (language === "English" ? "1" : "2");

    switch (language) {
        case "English":
            languageIndex = 1;
            break;
        case "Japanese":
            languageIndex = 2;
            break;
        default:
        // code block
    }
    for (var i = 0; i < contentArray.length; i++) {
        if (document.getElementById(contentArray[i][0]) == null) {

        } else {
            document.getElementById(contentArray[i][0]).innerHTML = contentArray[i][languageIndex];
            document.getElementById(contentArray[i][0]).placeholder = contentArray[i][languageIndex];
            document.getElementById(contentArray[i][0]).title  = contentArray[i][languageIndex];
            // document.getElementsByName(contentArray[i][0])[0].innerHTML = contentArray[i][languageIndex];
        }
    }
}
let TopMenu = [
 
    ["menuButtonProfile", "Profile", "??????????????????"],
    ["menuButtonManual", "Manual", "???????????????"],
    ["menuButtonLogout", "Logout", "???????????????"]
];

let LeftMenu = [
    ["pageTitle", "Staff List", " ?????????????????????"],
    ["menuSpanHome", "Home", "?????????"],
    ["menuSubSpanHome", "Home", "?????????"],
    ["menuSpanCustomer", "Customer Management", "????????? ??????????????????"],
    ["menuSpanQuoMan", "Quotation Management", "????????? ??????????????????"],
    ["menuSpanInvoiceMan", "Invoice Management", "??????????????? ??????????????????"],
    ["menuSpanMatterMan", "Matter Management", "?????? ??????????????????"],
    ["menuSpanAssignment", "Assignment", "?????????????????????"],
    ["menuSpanStaff", "Staff Management", "????????????"],
    ["menuSubSpanStaffMan", "Staff Management", "???????????? ??????????????????"],
    ["menuSubSpanStaffMan2", "Staff Management-2" , "???????????? ??????????????????-2"],
    ["menuSpanShifftSchedule", "Shift Schedule" , "????????? ??????????????????"],
    ["menuSpanAttendance", "Attendance", "??????????????????"],
    ["menuSpanPayrollMan", "Payroll Management", "???????????? ??????????????????"],
    ["menuSpanAnnualPayroll", "Annual Payroll", "?????? ????????????"],
    ["menuSpanPaidGrand", "Paid Grant", "?????? ????????????"]
];


let CustomerSearch = [
 
    ["pageTitleCustomerList", "Customer List", "???????????????"],
    ["pageSpanHeadingCustomer", "Customer List", "???????????????"],
    ["pageSpanSearch", "Search", "??????"],
    ["buttonSpanCustomerReg", "Customer Registration", "????????????"],
    ["buttonSpanImportCustomerData", "Import Existing Customer Data", "????????????????????????????????????????????????"],
    ["buttonSpanCustomerListCSV", "Output Customer List CSV", "???????????????CSV?????????"],
    ["pageCardDivTotalCustomers", "Total Number of Customers", "????????????"],
    ["pageCardDivTotalActiveCustomers", "Total Active Customers", "?????????????????????????????????"],
    ["pageCardDivTotalAvailableCustomers", "Total Available Customers", "??????????????????????????????"],
    ["pageCardDivTotalPendingCustomers", "Total Pending Customers", "???????????????????????????"],
    ["pageLabelCompanyName", "Company Name", "?????????"],
    ["companyNames", "Enter Company Name", "????????????????????????????????????"],
    ["pageLabelCompanyNameKatakana", "Company Name Katakana", "?????????????????????"],
    ["companyNameKatakana", "Enter Company Name Katakana", "????????????????????????????????????????????????"],
    ["pageLabelBelonging", "Belonging", "????????????"],
    ["companyBelonging", "Enter Belonging", "?????????????????????????????????"],
    ["pageLabelCustomerCode", "Customer Code", "???????????????"],
    ["customerCode", "Enter Customer Code", "??????????????????????????????????????????"],
    ["pageLabelMobilePhone", "Mobile Phone", "????????????"],
    ["mobilePhone", "Enter Mobile Number", "?????????????????????????????????????????????"],
    ["pageLabelMailAddress", "Email Address", "???????????????????????????"],
    ["mailAddress", "Enter Email Address", "????????????????????????????????????????????????"],
    ["pageLabelDispatchClassification", "Dispatch Classification", "????????????"],
    ["selectOptionSelectDispatchClassification", "Select Dispatch Classification", "??????????????????????????????????????????"],
    ["pageSpanGeneralDispatch", "General dispatch", "????????????"],
    ["pageSpanBusinessContract", "Out Sourcing", "????????????????????????"],
    ["pageSpanIntroductionDispatching", "Temp - to - Perm", "??????-??????-?????????"],
    ["pageSpanRecruitment", "Talent Introduction/Recruiting/Placement", "????????????/??????/??????"],
    ["pageLabelPostalcode", "Postal code", "????????????"],
    ["postalCode", "Enter Postal code", "???????????????????????????????????????"],
    ["pageLabelPrefectures", "Prefectures", "????????????"],
    ["selectOptionSelectPrefectures", "Select Prefecture", "????????????"],
    ["pageOption1Prefecture", "Hokkaido", "?????????"],
    ["pageOption2Prefecture", "Aomori", "??????"],
    ["pageOption3Prefecture", "Iwate", "??????"],
    ["pageOption4Prefecture", "Miyagi", "??????"],
    ["pageOption5Prefecture", "Akita", "??????"],
    ["pageOption6Prefecture", "Yamagata", "??????"],
    ["pageOption7Prefecture", "Fukushima", "??????"],
    ["pageOption8Prefecture", "Ibaraki", "??????"],
    ["pageOption9Prefecture", "Tochigi", "??????"],
    ["pageOption10Prefecture", "Gunma", "??????"],
    ["pageOption11Prefecture", "Saitama", "????????????"],
    ["pageOption12Prefecture", "Chiba", "??????"],
    ["pageOption13Prefecture", "Tokyo", "??????"],
    ["pageOption14Prefecture", "Kanagawa", "?????????"],
    ["pageOption15Prefecture", "Niigata", "??????"],
    ["pageOption16Prefecture", "Toyama", "??????"],
    ["pageOption17Prefecture", "Ishikawa", "??????"],
    ["pageOption18Prefecture", "Fukui", "??????"],
    ["pageOption19Prefecture", "Yamanashi", "??????"],
    ["pageOption20Prefecture", "Nagano", "??????"], // changed
    ["pageOption21Prefecture", "Gifu", "??????"], // changed
    ["pageOption22Prefecture", "Shizuoka", "??????"],
    ["pageOption23Prefecture", "Aichi", "??????"],
    ["pageOption24Prefecture", "Mie", "??????"],
    ["pageOption25Prefecture", "Shiga", "??????"],
    ["pageOption26Prefecture", "Kyoto", "??????"],
    ["pageOption27Prefecture", "Osaka", "??????"],
    ["pageOption28Prefecture", "Hyogo", "??????"],
    ["pageOption29Prefecture", "Nara", "??????"],
    ["pageOption30Prefecture", "Wakayama", "?????????"],
    ["pageOption31Prefecture", "Tottori", "??????"],
    ["pageOption32Prefecture", "Shimane", "??????"],
    ["pageOption33Prefecture", "Okayama", "??????"],
    ["pageOption34Prefecture", "Hiroshima", "??????"],
    ["pageOption35Prefecture", "Yamaguchi", "??????"],
    ["pageOption36Prefecture", "Tokushima", "??????"],
    ["pageOption37Prefecture", "Kagawa", "??????"],
    ["pageOption38Prefecture", "Ehime", "??????"],
    ["pageOption39Prefecture", "Kochi", "??????"],
    ["pageOption40Prefecture", "Fukuoka", "??????"],
    ["pageOption41Prefecture", "Saga", "??????"],
    ["pageOption42Prefecture", "Nagasaki", "??????"],//changed
    ["pageOption43Prefecture", "Kumamoto", "??????"],
    ["pageOption44Prefecture", "Oita", "??????"], // changed
    ["pageOption45Prefecture", "Miyazaki", "??????"],
    ["pageOption46Prefecture", "Kagoshima", "?????????"],
    ["pageOption47Prefecture", "Okinawa", "??????"],
    ["pageLabelAddress", "Address", "??????"],
    ["companyAddress", "Enter Company Address", "??????????????????????????????????????????"],
    ["pageOrganizationName", "Organization Name", "?????????"],
    ["companyOrganizationName", "Enter Organization Name", "????????????????????????????????????"],
    ["pageLabelRepresentativeName", "Customer Representative Name", "???????????????????????????"],
    ["companyRepresentativeName", "Enter Customer Representative Name", "??????????????????????????????????????????"],
    ["pageLabelRepresentativeNameKatakana", "Customer Representative Name Katakana", "???????????????????????????"],
    ["companyRepresentativeNameKatakana", "Enter Customer Representative Name Katakana", "??????????????????????????????????????????????????????"],
    ["pageLabelManager", "Manager", "???????????????"],
    ["selectOptionSelectCompanyManager", "Select Manager", "???????????????????????????"],
    ["selectOptionSelectCompanyManagerA", "Company Manager A", "?????????A"],
    ["selectOptionSelectCompanyManagerB", "Company Manager B", "?????????A"],
    ["selectOptionSelectCompanyManagerC", "Company Manager C", "?????????c"],
    ["selectOptionSelectCompanyManagerD", "Company Manager D", "?????????D"],
    ["selectOptionSelectCompanyManagerE", "Company Manager E", "?????????E"],
    ["pageLabelCustomerRank", "Rank", "?????????"],
    ["selectOptionSelectRank", "Select Rank", "??????????????????"],
    ["clearAllBtn", "Clear All", "??????????????????"],
    ["searchBtn", "Search", "??????"],
    ["pageSpanSearchCustomerDetails", "Search Customer Details", "????????????????????????"],
    ["checkAll-btn", "Check All", "?????????????????????"],
    ["uncheckAll-btn", "Uncheck All", "????????????????????????????????????"],
    ["buttonSpanBatchDeletion", "Batch Deletion", "???????????????"],
    ["tableSearchStaffTHNo", "No", "??????"],
    ["tableSearchStaffTHChoice", "Choice", "??????"],
    ["tableSearchCustomerTHCustomerCode", "Customer Code", "???????????????"],
    ["tableSearchCustomerTHTel", "Tel/Email", "??????/?????????"],
    ["tableSearchCustomerTHDispatchClassification", "Dispatch Classification", "????????????"],
    ["tableSearchCustomerTHAddress", "Address", "??????"],
    ["tableSearchCustomerTHOrganizationName", "Organization Name", "?????????"],
    ["tableSearchCustomerTHCustomerRepresentative", "Customer Representative Name", "???????????????????????????"],
    ["tableSearchCustomerTHManager", "Manager", "???????????????"],
    ["tableSearchCustomerTHRank", "Rank", "?????????"],
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
    
];


let CustomerDetails = [
    ["CustomerRegistrationHeader", "Customer Registration", "????????????"],
    ["pageSpanHeadingCustomerRegistration", "Customer Registration", "????????????"],
    ["pageSpanHeadingCustomerDetails", "Customer Information", "????????????"],
    ["pageSpanSubHeadingCustomerRegistration", "You can register as a customer.", "????????????????????????????????????"],
    ["pageSpanSubHeadingCustomerDetails", "You can modify the customer and create a quote related to this customer.", "???????????????????????????????????????????????????????????????????????????????????????"],
    ["buttonSpanCreateFromThisCustomer", "Create From This Customer", "????????????????????????"],
    ["buttonValueSpanCustomerMakeQuote", "Make a Quote", "?????????????????????"],
    ["buttonValueSpanCustomerProposalCreation", "Proposal creation", "??????????????????"],
    ["buttonValueSpanCustomerInvoiceCreation", "Invoice Creation", "??????????????????"],
    ["buttonValueSpanCustomerCopyAndCreateAnotherCustomer", "Copy And Create Another Customer", "??????????????????????????????????????????"],
    ["buttonSpanStaffDetailsDelete", "Delete", "??????"],
    ["buttonValueSpanStaffDetailsDelete", "Delete Customer", "?????????????????????"],
    ["buttonSpanReturn", "Return", "??????"],
    ["accordionDivCustomerInformation", "Customer Information", "????????????"],
    ["pageSpanCompanyName", "Company Name", "?????????"],
    ["pageSpanCompanyNameKatakana", "Company Name Katakana", "?????????????????????"],
    ["pageSpanRepresentativePosition", "Representative Position", "??????????????????"],
    ["pageSpanRepresentativeName", "Representative Name", "????????????"],
    ["pageLabelMobilePhone", "Mobile Phone", "????????????"],
    ["pageSpanHelpMobile", "Please enter without hyphens", "?????????????????????????????????????????????"],
    ["pageSpanFaxNumber", "Fax Number", "??????????????????"],
    ["pageSpanHelpFax", "Please enter without hyphens", "?????????????????????????????????????????????"],
    ["pageLabelMailAddress", "Email Address", "???????????????????????????"],
    ["pageSpanCustomerCode", "Customer Code", "???????????????"],
    ["pageSpanDisClassification", "Dispatch classification", "????????????"],
    ["pageSpanGeneralDispatch", "General Dispatch", "??????????????????"],
    ["pageSpanBusinessContract", "Out Sourcing", "????????????????????????"],
    ["pageSpanIntroductionDispatching", "Temp -to-Perm", "??????-??????-?????????"],
    ["pageSpanRecruitment", "Talent Introduction/Recruiting/Placement", "????????????/??????/??????"],
    ["pageLabelPostalcode", "Postal code", "????????????"],
    ["btnAddressSearch", "Address Search", "????????????"],
    ["pageSpanHelpZipCode", "Please enter without hyphens", "?????????????????????????????????????????????"],
    ["pageSpanPrefecture", "Prefecture", "???"],
    ["pageSpanAddress", "Address", "??????"],
    ["pageSpanHelpAddress", "Please be sure to enter the apartment name and building name", "????????????????????????????????????????????????????????????"],
    ["pageSpanOrganizationName", "Organization Name", "?????????"],
    ["pageSpanBillingDeadline", "Billing Deadline", "????????????"],
    ["pageSpanCustomerRepresentativeName", "Customer Representative Name", "???????????????????????????"],
    ["pageSpanCustomerRepresentativeNameKatakana", "Customer Representative Name Katakana", "???????????????????????????"],
    ["pageSpanCustomerContact", "Customer Contact", "??????????????????"],
    ["pageSpanManager", "Manager", "???????????????"],
    ["SelectCompanyManager", "Select Manager", "???????????????????????????"],
    ["SelectCompanyManager1", "Manager A", "??????????????????A"],
    ["SelectCompanyManager2", "Manager B", "??????????????????B"],
    ["SelectCompanyManager3", "Manager C", "??????????????????C"],
    ["SelectCompanyManager4", "Manager D", "??????????????????D"],
    ["SelectCompanyManager5", "Manager E", "??????????????????E"],
    ["pageSpanBelongned", "Belonged", "??????"],
    ["pageSpanWebsiteURL", "URL (own website)", "URL?????????????????????????????????"],
    ["pageSpanConflictDate", "Conflict Date (Business Unit)", "???????????????????????????????????????"],
    ["pageSpanRank", "Rank", "?????????"],
    ["selectRank", "Select Rank", "??????????????????"],
    ["pageSpanRemarks", "Remarks", "??????"],
    ["buttonEditCompanyInformation", "Update Company Information", "?????????????????????"],
    ["buttonSaveCompanyInformation", "Save Company Information", "???????????????????????????"],
    ["pageSpanHelpContact", "Please enter without hyphens", "?????????????????????????????????????????????"],
    ["", "", ""]
    
];