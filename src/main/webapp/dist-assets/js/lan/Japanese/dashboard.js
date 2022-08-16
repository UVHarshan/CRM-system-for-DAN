function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(dashboard);
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

dashboard = [
		     ["pageTitleDashboard", "ダッシュボード"],
             ["pageCardDivNumberofQuotation", "見積書件数"],
             ["pageCardDivNumberofInvoices", "請求書件数"],
             ["pageCardDivNumberofCases", "案件件数"],
             ["pageCardDivTotalActiveStaff", "合計 アクティブ スタッフ"],
             ["pageSpanDetails", "ケース（ "],
			 ["pageSpanDetails2", " 割り当て期限順に ）"],
             ["tableStaffTHNo", "No"],
             ["tableTHProposalNumber", "案件番号"],
             ["tableTHCaseName", "案件名"],
             ["tableTHCustomerCompanyName", "顧客会社名"],
             ["tableTHCustomerRepresentativeName", "顧客担当者名"],
             ["tableTHPersonInchargeofCase", "案件担当者"],
             ["tableTHAssignmentDeadline", "アサイン期限"],
			 ["btnSeeMore", "続きを見る"],
         ];

