function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(Contract_infos);
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

Contract_infos = [
		["pageTitleContractConditionInformation", "契約条件情報"],
		["pageSpanHeadingContractConditionInformation", "契約書条件情報"],
		["pageSpanSubHeadingContractConditionInformation", "契約書条件の設定ができます。"],
		["accordionDivNotificationofworkingconditions", "労働条件通知書兼就業条件明示書情報"],
		["subGuidestatementofworkingconditions", "労働条件通知書兼就業条件明示書に適用されます。法律に定められた範囲でご記入ください。"],
		["pageSpanMidnightOvertimeHolidayAllowance", "深夜・残業・休日手当"],
		["pageSpanPaymentTerms", "支払条件"],
		["pageSpanAnnualPaidLeave", "年次有給休暇"],
		["pageSpanOvertimeHolidayWork", "時間外・休日労働"],
		["pageSpansafetyandHygiene", "安全・衛生"],
		["pageSpanEmploymentStabilizationMeasures", "派遣契約解除で講ずる派遣労働者の雇用安定措置"],
		["pageSpanGrievanceRelatedMatters", "苦情処理関連事項"],
		["pageSpanReasonfornotsubmittingemployment", "雇用・社会保険の被保険者資格取得届の提出無の理由"],
		["pageSpanUseofwelfarefacilities", "福利厚生施設の利用等"],
		["pageSpanretirementrelatedmatters", "退職関連事項"],
		["pageSpanContractrenewalrelatedmatters", "契約更新関連事項"],
		["pageSpanConflictPreventionMeasuresforDirectemployment", "派遣労働者の直接雇用における紛争防止措置"],
		["pageSpanRemarks", "備考"],
		["buttonUpdatedContractTerms", "契約書条件を更新"]
    
];


contractTermsErrorArray ={"E2240":"空であってはならない",
						   "E2253":"数字のみであること",	
						   "E2254": "継続時間をhh:mm形式で入力してください。",
 				  		}
			
			