function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(DailyIncomeTaxes);
}

TopMenu = [
 
    ["menuButtonProfile", "Profile"],
    ["menuButtonManual", "Manual"],
    ["menuButtonLogout", "Logout"]
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

DailyIncomeTaxes = [
	["pageTitleDailyIncome", "日々の所得税"],
	["pageTitleDailyIncomeTaxesDetails", "日次所得税の詳細"],
	["pageTitleDailyIncomeTaxesRegistration", "所得税の日額登録"],
	["pageSpanHeadingIncomeTaxDailyList", "源泉徴収日額一覧"],
	["pageSpanSubHeadingIncomeTaxDailyList", "源泉徴収日額情報を一覧で確認できます。"],
	["pageLabelYear", "年度"],
	["selectOptionSelectYear", "年を選択"],
	["clearAllBtn", "全て消去"],
	["searchBtn", "検索"],
	["pageSpanSearchIncomeTaxDetails", "源泉徴収の詳細検索"],
	["dailyIncomeTHInstep", "甲"],
	["dailyIncomeTHB", "乙"],
	["dailyIncomeTHHinoe", "丙"],
	["dailyIncomeTHNo", "No"],
	["dailyIncomeTHYear", "年度"],
	["dailyIncomeTHThreshold", "しきい値"],
	["dailyIncomeTHTaxDependent0", "税額 扶養0"],
	["dailyIncomeTHTaxDependent1", "税額 扶養1"],
	["dailyIncomeTHTaxDependent2", "税額 扶養2"],
	["dailyIncomeTHTaxDependent3", "税額 扶養3"],
	["dailyIncomeTHTaxDependent4", "税額 扶養4"],
	["dailyIncomeTHTaxDependent5", "税額 扶養5"],
	["dailyIncomeTHTaxDependent6", "税額 扶養6"],
	["dailyIncomeTHTaxDependent7", "税額 扶養7"],
	["dailyIncomeTHTaxRate1", "税率"],
	["dailyIncomeTHTaxAmount1", "税額"],
	["dailyIncomeTHTaxRate2", "税率"],
	["dailyIncomeTHTaxAmount2", "税額"],
	["dailyIncomeTHTaxRate3", "税率"],
	["pageSpanHeadingIncomeTaxDailyDetails", "源泉徴収日額詳細"],
	["pageSpanSubHeadingIncomeTaxDailyDetails", "源泉徴収日額の詳細が確認できます。"],
	["ButtonReturn", "戻る"],
	["accordionDivIncometaxdailyinformation", "源泉徴収日額情報"],
	["pageSpanyear", "年度"],
	["pageSpanThresholdhigherthan", "しきい値（以上）"],
	["pageSpanThresholdlessthan", "しきい値（未満）"],
	["accordionDivdeclarationofdependentdeduction", "扶養控除等申告書あり（甲）"],
	["pageSpanTaxamountdependents0", "税額(扶養0人)"],
	["pageSpanTaxamountdependents1", "税額(扶養1人)"],
	["pageSpanTaxamountdependents2", "税額(扶養2人)"],
	["pageSpanTaxamountdependents3", "税額(扶養3人)"],
	["pageSpanTaxamountdependents4", "税額(扶養4人)"],
	["pageSpanTaxamountdependents5", "税額(扶養5人)"],
	["pageSpanTaxamountdependents6", "税額(扶養6人)"],
	["pageSpanTaxamountdependents7", "税額(扶養7人)"],
	["pageSpandeclarationtaxrate", "税率"],
	["notaxreturnfordependentdeductions", "扶養控除等申告書なし（乙）"],
	["pageSpannoTaxamount", "税額"],
	["pageSpancalculationstandardamount", "算出基準額"],
	["pageSpannoTaxtaxrate", "税率"],
	["accordionDivIncometaxdailyinformation", "日雇い・アルバイト（丙）"],
	["pageSpantaxamount", "税額"],
	["pageSpantaxrate1", "税率"],
	["pageSpantaxrate2", "税率"],
	["pageSpanremarks", "備考"],
	["buttonSpanAddDailyIncomeTaxes", "源泉徴収日額を追加"],
	["pageSpanSearch", "備考"],
	["accordionDivDayLaborParttime", "日雇い・アルバイト（丙）"],
	["buttonTaxDailySaveInformation", "更新情報"],
	["buttonTaxDailySaveDailyIncomeTaxDetails", "毎日の所得税の明細を保存"],
	["pageSpanHeadingIncomeTaxDailyRegistration", "所得税の日々の登録"],
	["pageSpanSubHeadingIncomeTaxDailyRegistration", "毎日の所得税の金額の詳細を追加することができます。"],
	          
];

DailyIncomeTaxesErrorArray ={"E2240":"空であってはならない",
						   "E2253":"数字のみであること",	
						   "E2254": "継続時間をhh:mm形式で入力してください。",
 				  		}
