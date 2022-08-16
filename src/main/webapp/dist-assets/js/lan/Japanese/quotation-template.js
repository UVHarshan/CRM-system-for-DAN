function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(QuotationSearch);
    convertContentToLanguage(QuotationDetails);
    convertContentToLanguageByName(nameList);
}

 TopMenu = [
    ["menuButtonProfile", "プロフィール"],
    ["menuButtonManual",  "マニュアル"],
    ["menuButtonLogout", "ログアウト"]
];

LeftMenu = [
		["pageTitle", "スタッフ一覧"],
		["menuSpanHome", "Home"],
		["menuSubSpanHome", "Home"],
		["menuSpanCustomer", "顧客管理"],
		["menuSpanQuoMan", "見積書管理"],
		["menuSpanInvoiceMan", "請求書管理"],
		["menuSpanMatterMan", "案件管理"],
		["menuSpanAssignment", "アサイン管理"],
		["menuSpanStaff", "スタッフ管理"],
		["menuSpanShifftSchedule", "スタッフシフト予定管理" ],
		["menuSpanAttendance", "勤怠管理"],
		["menuSpanPayrollMan", "給与管理"],
		["menuSpanAnnualPayroll", "Annual Payroll"],
		["menuSpanPaidGrand", "Paid Grant"],
		["menuSpanEmployeeManagement", "社員管理"],
		["menuSpanAgencyManagement", "代理店管理"],
		["menuSpanStaffPageLogin", "スタッフページログイン"],
		["menuSpanMasterAdmin", "マスタ管理"],
		["menuSubSpanCompanyInformationManagement", "会社情報管理"],
		["menuSubSpanConsumptionTaxManagement", "消費税管理"],
		["menuSubSpanDailyIncomeTax", "源泉徴収日額管理"],
		["menuSubSpanMonthlyTaxManagement", "源泉徴収月額管理"],
		["menuSubSpanAllowanceManagement", "残業・休日手当管理"],
		["menuSubSpanPaidTableManagement", "有給テーブル管理"],
		["menuSubSpanContractTerms", "契約書条件"],
		["menuSubSpanEmailTemplateManagement", "メールテンプレート管理"],
		["menuSubSpanQuoteTemplateManagement", "見積りテンプレート管理"],
		["menuSpanAboutCompliance", "コンプライアンスについて"],
		["menuTermsofServices", "利用規約"],
		["menuPrivacyPolicy", "プライバシーポリシー"],
		["menuBasedCommercial", "特定商取引法に基づく表示"]
];

 QuotationSearch = [
 //QuotationTemplate
    ["pageTitleQuotationTemplateList",  "見積りテンプレート一覧"],
    //["pageSpanHeadingQuotation","見積りテンプレート一覧"],
    ["pageSpanHeadingQuotationTemplate"," 見積りテンプレート一覧"],
    ["pageSpanHeadingQuotationHelp",  "見積りテンプレート情報を一覧で確認できます。"],
    ["buttonSpanAddQuotationTemplate", "見積りテンプレート登録"],
    ["pageSpanSearchTemplateDetails", "検索"],
    ["tableSearchQuotationNo",  "No."],
    ["tableSearchQuotationTemplate", "テンプレート名"],
    ["tableSearchQuotationDisplayOrder",  "詳細"],
    
];


 QuotationDetails = [
    ["pageTitleQuotationTemplateDetails",  "見積りテンプレート詳細"],
    ["pageTitleQuotationTemplateRegistration",  "見積りテンプレート登録"],
    ["pageSpanHeadingQuotationDetails",  " 見積りテンプレート詳細"], 
    ["pageSpanHeadingQuotationRegistration",  " 見積もりテンプレートの登録"], 
    ["pageSpanSubHeadingQuotationDetails","見積りテンプレートの修正ができます。"],
    ["pageSpanSubHeadingQuotationRegistration", "見積りテンプレートの登録ができます。"],
    ["buttonSpanStaffDetailsDelete", "削除"],
    ["buttonValueSpanQuotationTempDelete",  "見積りテンプレートを削除"],
    ["buttonSpanReturn",  "戻る"],
    ["accordionDivQuotationInformation",  "見積もり情報"],
    ["pageSpanQuotationTemplateInformation", "見積りテンプレート情報"],
    ["pageSpanTemplateName",  "テンプレート名"],
    ["pageSpanSortOrder",  "並び順"],
    ["pageSpanQuotationDetails",  "見積書明細"],
    ["tableQuotationDetailsTHNo", "No."],
    ["tableQuotationDetailsTHMajorItems", "大項目"],
    ["tableQuotationDetailsTHItem",  "小項目"],
    ["tableQuotationDetailsTHUnitPrice",  "単価 ¥"],
    ["tableQuotationDetailsTHQuantity",  "数量"],
    ["tableQuotationDetailsTHAmountMoney", "金額(¥)"],
    ["tableQuotationDetailsTHRemarks",  "備考"],
    ["tableQuotationDetailsTHConsumptionTax", "消費税"],
    ["tableQuotationDetailsNonTaxableDetailsTHNo",  "No."],
    ["tableQuotationDetailsNonTaxableDetailsTHMajorItems",  "大項目"],
    ["tableQuotationDetailsNonTaxableDetailsTHItem",  "小項目"],
    ["tableQuotationDetailsNonTaxableDetailsTHUnitPrice",  "単価(¥)"],
    ["tableQuotationDetailsNonTaxableDetailsTHQuantity", "数量"],
    ["tableQuotationDetailsNonTaxableDetailsTHAmountMoney",  "金額(¥)"],
    ["tableQuotationDetailsNonTaxableDetailsTHRemarks",  "備考"],
    ["tableQuotationDetailsNonTaxableDetailsTHConsumptionTax",  "消費税"],
    ["tableQuotationDetailsSubtotalTaxable",  "小計："],
    ["tableQuotationDetailsSubtotalNonTaxable",  "小計："],
    ["tableQuotationDetailsSubtotal",  "合計(課税対象+非課税対象)："],
    ["TaxableQuotationItemRowAdd", "行を追加する"],
    ["NonTaxableQuotationItemRowAdd",  "行を追加する"],
    ["buttonRegisterQuoteDetails",  "登録"],
    ["pageSpanRemarks", "備考"],
    ["buttonEditQuoteDetails",  "更新"],  
];

  nameList = [
    ["tableQuotationDetailsTaxation", "課税" ],
    ["tableQuotationDetailsTaxExempt", "非課税" ]
];

   quotationTempErrorArray={"E1200":"入力してください", "E1201":"無効な見積書です"}