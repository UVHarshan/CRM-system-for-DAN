function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(ConsumptionTaxDetails)
}

TopMenu = [
 
     ["menuButtonProfile", "プロフィール"],
     ["menuButtonManual", "マニュアル"],
     ["menuButtonLogout", "ログアウト"],
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

ConsumptionTaxDetails = [
	["pageSpanHeadingConsumptionTax", "消費税一覧"],
	["pageSpanHeadingHelpConsumptionTax", "消費税情報を一覧で確認できます。"],
	["consumptionTHNo", "No"],
	["consumptionTHTaxRate", "税率"],
	["consumptionTHApplicationStartDate", "適用開始日"],
	["pageSpanHeadingConsumptionTaxDetails", "消費税詳細"],
	["pageSpanSubHeadingCustomerDetails", "消費税の詳細が確認できます。"],
	["accordionDivCustomerInformation", "消費税情報"],
	["pageSpanTaxRate", "税率"],
	["pageSpanApplicationStartDate", "適用開始日"],
	["pageSpanRemarks", "備考"],
	["buttonSpanReturn", "戻る"],
	["buttonSaveInformationConsumptionTax", "保存"]
];


consumptionTaxErrorArray ={"E2240":"空であってはならない",
						   "E2253":"数字のみであること",	
 				  		}
