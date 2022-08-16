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
 
    ["menuButtonProfile", "Profile", "プロフィール"],
    ["menuButtonManual", "Manual", "マニュアル"],
    ["menuButtonLogout", "Logout", "ログアウト"]
];

let LeftMenu = [
    ["pageTitle", "Staff List", " スタッフリスト"],
    ["menuSpanHome", "Home", "ホーム"],
    ["menuSubSpanHome", "Home", "ホーム"],
    ["menuSpanCustomer", "Customer Management", "お客様 マネジメント"],
    ["menuSpanQuoMan", "Quotation Management", "引用元 マネジメント"],
    ["menuSpanInvoiceMan", "Invoice Management", "インボイス マネジメント"],
    ["menuSpanMatterMan", "Matter Management", "物質 マネジメント"],
    ["menuSpanAssignment", "Assignment", "アサインメント"],
    ["menuSpanStaff", "Staff Management", "スタッフ"],
    ["menuSubSpanStaffMan", "Staff Management", "スタッフ マネジメント"],
    ["menuSubSpanStaffMan2", "Staff Management-2" , "スタッフ マネジメント-2"],
    ["menuSpanShifftSchedule", "Shift Schedule" , "シフト スケジュール"],
    ["menuSpanAttendance", "Attendance", "アテンダンス"],
    ["menuSpanPayrollMan", "Payroll Management", "給与計算 マネジメント"],
    ["menuSpanAnnualPayroll", "Annual Payroll", "年間 給与計算"],
    ["menuSpanPaidGrand", "Paid Grant", "有料 グラント"]
];


let CustomerSearch = [
 
    ["pageTitleCustomerList", "Customer List", "顧客リスト"],
    ["pageSpanHeadingCustomer", "Customer List", "顧客リスト"],
    ["pageSpanSearch", "Search", "検索"],
    ["buttonSpanCustomerReg", "Customer Registration", "顧客登録"],
    ["buttonSpanImportCustomerData", "Import Existing Customer Data", "既存の顧客データをインポートする"],
    ["buttonSpanCustomerListCSV", "Output Customer List CSV", "顧客リストCSVの出力"],
    ["pageCardDivTotalCustomers", "Total Number of Customers", "総顧客数"],
    ["pageCardDivTotalActiveCustomers", "Total Active Customers", "アクティブな顧客の総数"],
    ["pageCardDivTotalAvailableCustomers", "Total Available Customers", "利用可能な顧客の合計"],
    ["pageCardDivTotalPendingCustomers", "Total Pending Customers", "保留中の顧客の合計"],
    ["pageLabelCompanyName", "Company Name", "会社名"],
    ["companyNames", "Enter Company Name", "会社名を入力してください"],
    ["pageLabelCompanyNameKatakana", "Company Name Katakana", "会社名カタカナ"],
    ["companyNameKatakana", "Enter Company Name Katakana", "会社名カタカナを入力してください"],
    ["pageLabelBelonging", "Belonging", "所属する"],
    ["companyBelonging", "Enter Belonging", "所属を入力してください"],
    ["pageLabelCustomerCode", "Customer Code", "顧客コード"],
    ["customerCode", "Enter Customer Code", "顧客コードを入力してください"],
    ["pageLabelMobilePhone", "Mobile Phone", "携帯電話"],
    ["mobilePhone", "Enter Mobile Number", "携帯電話番号を入力してください"],
    ["pageLabelMailAddress", "Email Address", "電子メールアドレス"],
    ["mailAddress", "Enter Email Address", "メールアドレスを入力してください"],
    ["pageLabelDispatchClassification", "Dispatch Classification", "派遣分類"],
    ["selectOptionSelectDispatchClassification", "Select Dispatch Classification", "ディスパッチ分類を選択します"],
    ["pageSpanGeneralDispatch", "General dispatch", "一般派遣"],
    ["pageSpanBusinessContract", "Out Sourcing", "アウトソーシング"],
    ["pageSpanIntroductionDispatching", "Temp - to - Perm", "温度-から-パーマ"],
    ["pageSpanRecruitment", "Talent Introduction/Recruiting/Placement", "人材紹介/採用/配置"],
    ["pageLabelPostalcode", "Postal code", "郵便番号"],
    ["postalCode", "Enter Postal code", "郵便番号を入力してください"],
    ["pageLabelPrefectures", "Prefectures", "都道府県"],
    ["selectOptionSelectPrefectures", "Select Prefecture", "県を選択"],
    ["pageOption1Prefecture", "Hokkaido", "北海道"],
    ["pageOption2Prefecture", "Aomori", "青森"],
    ["pageOption3Prefecture", "Iwate", "岩手"],
    ["pageOption4Prefecture", "Miyagi", "宮城"],
    ["pageOption5Prefecture", "Akita", "秋田"],
    ["pageOption6Prefecture", "Yamagata", "山形"],
    ["pageOption7Prefecture", "Fukushima", "福島"],
    ["pageOption8Prefecture", "Ibaraki", "茨城"],
    ["pageOption9Prefecture", "Tochigi", "栃木"],
    ["pageOption10Prefecture", "Gunma", "群馬"],
    ["pageOption11Prefecture", "Saitama", "さいたま"],
    ["pageOption12Prefecture", "Chiba", "千葉"],
    ["pageOption13Prefecture", "Tokyo", "東京"],
    ["pageOption14Prefecture", "Kanagawa", "神奈川"],
    ["pageOption15Prefecture", "Niigata", "新潟"],
    ["pageOption16Prefecture", "Toyama", "富山"],
    ["pageOption17Prefecture", "Ishikawa", "石川"],
    ["pageOption18Prefecture", "Fukui", "福井"],
    ["pageOption19Prefecture", "Yamanashi", "山梨"],
    ["pageOption20Prefecture", "Nagano", "長野"], // changed
    ["pageOption21Prefecture", "Gifu", "岐阜"], // changed
    ["pageOption22Prefecture", "Shizuoka", "静岡"],
    ["pageOption23Prefecture", "Aichi", "愛知"],
    ["pageOption24Prefecture", "Mie", "私の"],
    ["pageOption25Prefecture", "Shiga", "滋賀"],
    ["pageOption26Prefecture", "Kyoto", "京都"],
    ["pageOption27Prefecture", "Osaka", "大阪"],
    ["pageOption28Prefecture", "Hyogo", "兵庫"],
    ["pageOption29Prefecture", "Nara", "奈良"],
    ["pageOption30Prefecture", "Wakayama", "和歌山"],
    ["pageOption31Prefecture", "Tottori", "鳥取"],
    ["pageOption32Prefecture", "Shimane", "島根"],
    ["pageOption33Prefecture", "Okayama", "岡山"],
    ["pageOption34Prefecture", "Hiroshima", "広島"],
    ["pageOption35Prefecture", "Yamaguchi", "山口"],
    ["pageOption36Prefecture", "Tokushima", "徳島"],
    ["pageOption37Prefecture", "Kagawa", "香川"],
    ["pageOption38Prefecture", "Ehime", "愛媛"],
    ["pageOption39Prefecture", "Kochi", "高知"],
    ["pageOption40Prefecture", "Fukuoka", "福岡"],
    ["pageOption41Prefecture", "Saga", "佐賀"],
    ["pageOption42Prefecture", "Nagasaki", "長崎"],//changed
    ["pageOption43Prefecture", "Kumamoto", "熊本"],
    ["pageOption44Prefecture", "Oita", "大分"], // changed
    ["pageOption45Prefecture", "Miyazaki", "宮崎"],
    ["pageOption46Prefecture", "Kagoshima", "鹿児島"],
    ["pageOption47Prefecture", "Okinawa", "沖縄"],
    ["pageLabelAddress", "Address", "住所"],
    ["companyAddress", "Enter Company Address", "会社の住所を入力してください"],
    ["pageOrganizationName", "Organization Name", "組織名"],
    ["companyOrganizationName", "Enter Organization Name", "組織名を入力してください"],
    ["pageLabelRepresentativeName", "Customer Representative Name", "カスタマー担当者名"],
    ["companyRepresentativeName", "Enter Customer Representative Name", "顧客代表名を入力してください"],
    ["pageLabelRepresentativeNameKatakana", "Customer Representative Name Katakana", "顧客代表名カタカナ"],
    ["companyRepresentativeNameKatakana", "Enter Customer Representative Name Katakana", "顧客代表名カタカナを入力してください"],
    ["pageLabelManager", "Manager", "マネジャー"],
    ["selectOptionSelectCompanyManager", "Select Manager", "マネージャーを選択"],
    ["selectOptionSelectCompanyManagerA", "Company Manager A", "会社長A"],
    ["selectOptionSelectCompanyManagerB", "Company Manager B", "会社長A"],
    ["selectOptionSelectCompanyManagerC", "Company Manager C", "会社長c"],
    ["selectOptionSelectCompanyManagerD", "Company Manager D", "会社長D"],
    ["selectOptionSelectCompanyManagerE", "Company Manager E", "会社長E"],
    ["pageLabelCustomerRank", "Rank", "ランク"],
    ["selectOptionSelectRank", "Select Rank", "ランクを選択"],
    ["clearAllBtn", "Clear All", "すべてクリア"],
    ["searchBtn", "Search", "検索"],
    ["pageSpanSearchCustomerDetails", "Search Customer Details", "顧客の詳細を検索"],
    ["checkAll-btn", "Check All", "すべてチェック"],
    ["uncheckAll-btn", "Uncheck All", "すべてチェックを外します"],
    ["buttonSpanBatchDeletion", "Batch Deletion", "バッチ削除"],
    ["tableSearchStaffTHNo", "No", "番号"],
    ["tableSearchStaffTHChoice", "Choice", "選択"],
    ["tableSearchCustomerTHCustomerCode", "Customer Code", "顧客コード"],
    ["tableSearchCustomerTHTel", "Tel/Email", "電話/メール"],
    ["tableSearchCustomerTHDispatchClassification", "Dispatch Classification", "派遣分類"],
    ["tableSearchCustomerTHAddress", "Address", "住所"],
    ["tableSearchCustomerTHOrganizationName", "Organization Name", "組織名"],
    ["tableSearchCustomerTHCustomerRepresentative", "Customer Representative Name", "カスタマー担当者名"],
    ["tableSearchCustomerTHManager", "Manager", "マネジャー"],
    ["tableSearchCustomerTHRank", "Rank", "ランク"],
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
    
];


let CustomerDetails = [
    ["CustomerRegistrationHeader", "Customer Registration", "顧客登録"],
    ["pageSpanHeadingCustomerRegistration", "Customer Registration", "顧客登録"],
    ["pageSpanHeadingCustomerDetails", "Customer Information", "顧客情報"],
    ["pageSpanSubHeadingCustomerRegistration", "You can register as a customer.", "顧客として登録できます。"],
    ["pageSpanSubHeadingCustomerDetails", "You can modify the customer and create a quote related to this customer.", "顧客を変更して、この顧客に関連する見積もりを作成できます。"],
    ["buttonSpanCreateFromThisCustomer", "Create From This Customer", "この顧客から作成"],
    ["buttonValueSpanCustomerMakeQuote", "Make a Quote", "見積もりをする"],
    ["buttonValueSpanCustomerProposalCreation", "Proposal creation", "提案書の作成"],
    ["buttonValueSpanCustomerInvoiceCreation", "Invoice Creation", "請求書の作成"],
    ["buttonValueSpanCustomerCopyAndCreateAnotherCustomer", "Copy And Create Another Customer", "別の顧客をコピーして作成する"],
    ["buttonSpanStaffDetailsDelete", "Delete", "消去"],
    ["buttonValueSpanStaffDetailsDelete", "Delete Customer", "顧客を削除する"],
    ["buttonSpanReturn", "Return", "戻る"],
    ["accordionDivCustomerInformation", "Customer Information", "顧客情報"],
    ["pageSpanCompanyName", "Company Name", "会社名"],
    ["pageSpanCompanyNameKatakana", "Company Name Katakana", "会社名カタカナ"],
    ["pageSpanRepresentativePosition", "Representative Position", "代表的な立場"],
    ["pageSpanRepresentativeName", "Representative Name", "代表者名"],
    ["pageLabelMobilePhone", "Mobile Phone", "携帯電話"],
    ["pageSpanHelpMobile", "Please enter without hyphens", "ハイフンなしで入力してください"],
    ["pageSpanFaxNumber", "Fax Number", "ファクス番号"],
    ["pageSpanHelpFax", "Please enter without hyphens", "ハイフンなしで入力してください"],
    ["pageLabelMailAddress", "Email Address", "電子メールアドレス"],
    ["pageSpanCustomerCode", "Customer Code", "顧客コード"],
    ["pageSpanDisClassification", "Dispatch classification", "派遣分類"],
    ["pageSpanGeneralDispatch", "General Dispatch", "一般的な派遣"],
    ["pageSpanBusinessContract", "Out Sourcing", "アウトソーシング"],
    ["pageSpanIntroductionDispatching", "Temp -to-Perm", "温度-から-パーマ"],
    ["pageSpanRecruitment", "Talent Introduction/Recruiting/Placement", "人材紹介/採用/配置"],
    ["pageLabelPostalcode", "Postal code", "郵便番号"],
    ["btnAddressSearch", "Address Search", "住所検索"],
    ["pageSpanHelpZipCode", "Please enter without hyphens", "ハイフンなしで入力してください"],
    ["pageSpanPrefecture", "Prefecture", "県"],
    ["pageSpanAddress", "Address", "住所"],
    ["pageSpanHelpAddress", "Please be sure to enter the apartment name and building name", "必ずアパート名と建物名を入力してください"],
    ["pageSpanOrganizationName", "Organization Name", "組織名"],
    ["pageSpanBillingDeadline", "Billing Deadline", "請求期限"],
    ["pageSpanCustomerRepresentativeName", "Customer Representative Name", "カスタマー担当者名"],
    ["pageSpanCustomerRepresentativeNameKatakana", "Customer Representative Name Katakana", "顧客代表名カタカナ"],
    ["pageSpanCustomerContact", "Customer Contact", "顧客の連絡先"],
    ["pageSpanManager", "Manager", "マネジャー"],
    ["SelectCompanyManager", "Select Manager", "マネージャーを選択"],
    ["SelectCompanyManager1", "Manager A", "マネージャーA"],
    ["SelectCompanyManager2", "Manager B", "マネージャーB"],
    ["SelectCompanyManager3", "Manager C", "マネージャーC"],
    ["SelectCompanyManager4", "Manager D", "マネージャーD"],
    ["SelectCompanyManager5", "Manager E", "マネージャーE"],
    ["pageSpanBelongned", "Belonged", "所属"],
    ["pageSpanWebsiteURL", "URL (own website)", "URL（自分のウェブサイト）"],
    ["pageSpanConflictDate", "Conflict Date (Business Unit)", "競合日（ビジネスユニット）"],
    ["pageSpanRank", "Rank", "ランク"],
    ["selectRank", "Select Rank", "ランクを選択"],
    ["pageSpanRemarks", "Remarks", "備考"],
    ["buttonEditCompanyInformation", "Update Company Information", "会社情報の更新"],
    ["buttonSaveCompanyInformation", "Save Company Information", "会社情報を保存する"],
    ["pageSpanHelpContact", "Please enter without hyphens", "ハイフンなしで入力してください"],
    ["", "", ""]
    
];