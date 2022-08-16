function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(attendenceManagement);
    convertTitleToLanguageByName(nameList);
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

attendenceManagement =[
		["pageTitle","スタッフアサイン一覧"],
		["pageSpanHeading","スタッフアサイン一覧"],
		["buttonSpanStaffListCSV","  スタッフアサイン一覧CSVを出力  "],
		["TitleHelpStaffAssignmentList","指定した実施日のスタッフ状況の確認や、各種通知確認ができます。人材紹介の場合、実施期間には募集期間を入力してください。"],
		["pageSpanSearch","検索"],
		["pageLabelAssignmentClassification","アサイン区分"],
		["selectOptionAssignmentClassification","区分の選択"],
		["pageOptionAssignbyDate","単発・短期案件"],
		["pageOptionAssignbyPeriod","長期案件"],
		["pageLabelProjectTitle","案件名"],
		["pageLabelStaffCode","スタッフコード"],
		//["pageLabelImplementationDateFrom","実施日（開始）"],
		["pageLabelDispatchClassification","派遣区分"],
		["selectOptionSelectdispatchClassification","分類を選択"],
		["pageOption1Generaldispatch","一般派遣"],
		["pageOption2Businesscontract","業務請負"],
		["pageOption3IntroductionDispatching","紹介予定派遣"],
		["pageOption4Recruitment","人材紹介"],
		["pageLabelWorkLocation","勤務地"],
		["pageLabelStaffName","スタッフ名"],
		["pageLabelImplementationDateTo","実施日（終了）"],
		["pageLabelAffiliation","所属"],
		["pageLabelCustomerName","顧客名"],
		["pageLabelStaffstaff","スタッフ担当者"],
		["option0staffStaff","スタッフを選択"],
		//["option1staffStaffAbraham","Abraham"],
		//["option1staffStaffSales","Sales A"],
		//["option2staffStaffAccounting","Accounting 1"],
		["pageLabelScheduleddeparturetime","出発予定時間"],
		["spanNoDepartureReport","出発報告なし"],
		["spanDepartureReportDelay","出発報告遅れ"],
		["pageLabelStatus","状態"],
		["spanOpportunityAllocation","案件割当"],
		["spanInterviewRequestEmail","面接依頼メール"],
		["spanMatterAssignmentEmail","案件割当メール"],
		["spanReporttheDayBefore","前日報告"],
		["spanDepartureReport","出発報告"],
		["spanArrivalReport","到着報告"],
		["spanClosingReport","終業報告"],
		["spanExpenseReport","経費報告"],
		["spanAbsenceReport","欠勤報告"],
		["clearAllBtn","全て消去"],
		["searchBtn","検索"],
		["selectOptionReportDayBefore","前日報告"],
		["selectOptionDepartureReport","出発報告"],
		["selectOptionArrivalReport","到着報告"],
		["selectOptionClosingReport","終業報告"],
		["selectOptionExpenseReport","経費報告"],
		["selectOptionAbsenceReport","欠勤報告"],
		//["batchChangeofStatusBtn","  状態一括変更"],
		["pageSpanSearchStaffDetails","検索結果"],
		["tableSearchStaffTHNo","No"],
		["tableSearchStaffTHChoice","選択"],
		["tableSearchStaffTHWorkLocation","	案件 / 勤務地"],
		["tableSearchStaffTHCustomerName","顧客名"],
		["tableSearchStaffTHDispatchClassification","派遣区分"],
		["tableSearchStaffTHImplementationDate","実施日"],
		["tableSearchStaffTHScheduledDepartureTime","出発予定時間"],
		["tableSearchStaffTHAssignStaff","スタッフ割り当て"],
		["tableSearchStaffTHStaffStaff","スタッフ担当者"],
		["tableSearchStaffTHUpdatedRegularly","状態"],
		["tableCheck","定期的に更新"],
		["buttonSpanCheckAll","すべてチェックする"],
		["buttonSpanUncheckAll","すべてチェックを外す"],
		["exampleModalCenterTitle","一括削除"],
		["modalH4AreYouSure","本当にいいのか？"],
		["modalH4ReallyWantToDelete","本当にこのレコードを削除したいのですか？"],
		["modalH4CannotBeUndone","このプロセスは元に戻すことができません。"],
		["tableModalSearchStaffTHNo","レコードNo"],
		["tableModalSearchStaffTHName","名前"],
		["tableModalSearchStaffTHNameKatakana","名前カタカナ"],
		["tableModalSearchStaffTHStaffCode","スタッフコード"],
		["batchDeleteConfirm","確認"],
		["batchDeleteClose","閉じる"],
		["pageLabelPrefectures","実施日 開始日"],
		["projectTitle","プロジェクト名を入力してください。"],
		["workLocation","勤務地の入力"],
		["affiliation","所属を入力"],
		["customerName","お客様名の入力"],
		["staffCode","スタッフコードの入力"],
		["staffName","スタッフ名の入力"],
		["buttonChangeStatus","一括でのステータス変更"],
		["selectInchargeofStaff","担当者選択"],

		];
		
nameList = [
		["tableHelptextCustomerName", ""],
		["tableHelptextProjectName", ""],
		["tableHelptextScheduleDate", ""],
		["tableHelptextScheduleTime", ""],
		["tableHelptextMeetingTime", ""],
		["HelptextExpenseReport", " "],
		["tableHelptextconfirmedText", ""],
		["tableHelptextOvertimeHours", ""],
];


attendanceErrorArray ={"E2120":"無効な顧客名",
					   "E2121":"無効なスタッフコード",
					   "E2122":"無効なスタッフ名",
					   "E2123":"実施時期が一致しない",	
					   "E2124":"空であってはならない",	
					   "E2125":"受講状況を選択してください。",
 				  		}
