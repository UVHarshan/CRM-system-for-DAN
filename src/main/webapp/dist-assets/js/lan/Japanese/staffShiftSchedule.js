﻿function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(StaffShiftScheduleManagement);
    convertContentToLanguage(shiftScheduleDeitail);
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

StaffShiftScheduleManagement = [
	["pageTitleStaffList", "スタッフリスト"],
    ["pageSpanHeading", "スタッフシフト予定一覧"],
	["pageSpanHeadingHelpStaffShift", "スタッフシフト予定を一覧で確認できます。シフト予定未提出のスタッフへ催促メールの送信ができます。"],
    ["buttonOutputShiftSchedule", "シフト予定一覧CSVを出力"],
    ["pageSpanSearch", "検索"],
    ["pageLabelTargetYear", "対象年"],
    ["targetYear", "対象年を入力"],
    ["pageLabelName", "名前"],
    ["name", "名前を入力"],
    ["pageLabelDispathClassification", "派遣区分"],
    //["dispathClassification", "エンター 派遣区分"],
    ["pageTargetDate", "対象日付"],
    //["targetDate", "エンター 対象日付"],
    ["pageLabelAddress", "住所"],
    ["address", "住所を入力"],
    ["pageLabelExperience", "経験"],
    ["experience", "経験内容を入力"],
    ["pageLabelTargetMonth", "対象月"],
    //["targetMonth", "エンター 対象月"],
    ["pageLabelStaff", "スタッフ担当者"],
    //["staff", "エンター スタッフ担当者"],
    ["pageLabeloccupationClassification", "職種区分"],
    //["occupationClassification", "エンター 職種区分"],
    ["pageLabelAttendanceStatus", "出勤ステータス"],
    //["attendanceStatus", "エンター 出勤ステータス"],
    ["pageLabelDateofBirthFrom", "生年月日（開始）"],
    ["pageLabelAttribute", "属性"],
    ["attribute", "属性を入力"],
    ["pageLabelstaffCode", "スタッフコード"],
    ["staffCode", "スタッフコードを入力"],
    ["pageLabelShiftSubmissionCategory", "シフト提出区分"],
    ["pageOption0Attribute", "区分を選択"],
    ["pageLabelBelongs", "所属"],
    ["optionSelectBelongs", "所属を選択"],
    ["belongs", "所属"],
    ["pageLabelPrefectures", "都道府県"],
    //["prefectures", "エンター 都道府県"],
    ["pageLabelDateofBirthTo", "生年月日（終了）"],
    ["dateofBirthTo", "生年月日を入力"],
    ["pageLabelGender", "性別"],
    //["gender", "エンター 性別"],
    ["clearAllBtn", "全て消去"],
    ["searchBtn", "検索"],
    ["pageCardDivTotalNumberofShiftSchedule", "シフトスケジュールの合計数"],
    ["pageCardDivTotalNumberofStaffShiftSchedule", "合計スタッフ数 シフトスケジュール"],
    ["pageCardDivSubmittedShiftSchedule", "提出されたシフトスケジュール"],
    ["pageCardDivPendingShiftSchedule", "保留中のシフトスケジュール"],
    ["pageSpanSearchStaffDetails", "スタッフ詳細検索"],
    ["tableSearchStaffTHNo", "No."],
    ["tableSearchStaffTHChoice", "選択"],
    ["tableSearchStaffTHName", "名前"],
    ["tableSearchStaffTHMobileE-MailAddress", "携帯/メールアドレス"],
    ["tableSearchStaffTHPrefectureAttribute", "都道府県/属性"],
    ["tableSearchStaffTHPrivateMemo", "非公開メモ"],
    ["tableSearchStaffTHSubmissionDateandTime", "提出日時"],
    ["tableSearchStaffTHStaffstaff", "スタッフ担当者"],
    ["tableSearchStaffTHStaffCode", "スタッフコード"],
    ["buttonSpanCheckAll", "全てチェックする"],
    ["buttonSpanUncheckAll", "全てのチェックを外す"],
    ["buttonsendNotificationEmail", "お知らせメール一括送信"],
    ["buttonSubmissionRemainderEmail", "提出催促メール一括送信"],
    ["pageOptionSelectTargetMonth", "対象月の選択"],
    ["pageOptionJanuary", "1月"],
    ["pageOptionFebruary", "2月"],
    ["pageOptionMarch", "3月"],
    ["pageOptionApril", "4月"],
    ["pageOptionMay", "5月"],
    ["pageOptionJune", "6月"],
    ["pageOptionJuly", "7月"],
    ["pageOptionAugust", "8月"],
    ["pageOptionSeptember", "9月"],
    ["pageOptionOctober", "10月"],
    ["pageOptionNovember", "11月"],
    ["pageOptionDecember", "12月"],
    ["optionPersonInCharge", "担当者の選択"],
	["optionPersonInCharge1", "担当者1"],
	["optionPersonInCharge2", "担当者2"],
	["pageOptionSelectShiftSubmissionCategory", "区分を選択"],
	["pageOptionShiftnotSubmitted", "シフト未提出"],
	["pageOptionShiftSubmitted", "シフト提出済"],
	["selectOptionSelectDispatchClassification", "区分を選択"],
	["pageSpanGeneralDispatch", "一般派遣"],
    ["pageSpanBusinessContract", "業務請負"],
    ["pageSpanIntroductionDispatching", " 紹介予定派遣"],
    ["pageSpanRecruitment", "人材紹介"],
    ["pageSpanPartTime", "アルバイト"],
    ["selectOptionSelectOccupationClassification", "職業分類を選択"],
    ["pageSpanOfficeSystem", "オフィス系"],
    ["pageSpanSalesSystem", "営業・販売系"],
    ["pageSpanITCreative", "IT・クリエイティブ系"],
    ["pageSpanMedicalWelfareSystem", "医療・福祉系"],
    ["pageSpanManufacturingBusiness", "製造業務系"],
    ["pageSpanProfessional", "専門職系"],
    ["pageSpanOthers", "その他"],
    ["OptiontargetDate", "日付を選択"],
    ["OptiontargetDate1","1日"],
	["OptiontargetDate2","2日"],
	["OptiontargetDate3","3日"],
	["OptiontargetDate4","4日"],
	["OptiontargetDate5","5日"],
	["OptiontargetDate6","6日"],
	["OptiontargetDate7","7日"],
	["OptiontargetDate8","8日"],
	["OptiontargetDate9","9日"],
	["OptiontargetDate10","10日"],
	["OptiontargetDate11","11日"],
	["OptiontargetDate12","12日"],
	["OptiontargetDate13","13日"],
	["OptiontargetDate14","14日"],
	["OptiontargetDate15","15日"],
	["OptiontargetDate16","16日"],
	["OptiontargetDate17","17日"],
	["OptiontargetDate18","18日"],
	["OptiontargetDate19","19日"],
	["OptiontargetDate20","20日"],
	["OptiontargetDate21","21日"],
	["OptiontargetDate22","22日"],
	["OptiontargetDate23","23日"],
	["OptiontargetDate24","24日"],
	["OptiontargetDate25","25日"],
	["OptiontargetDate26","26日"],
	["OptiontargetDate27","27日"],
	["OptiontargetDate28","28日"],
	["OptiontargetDate29","29日"],
	["OptiontargetDate30","30日"],
	["OptiontargetDate31","31日"],
	["selectOptionSelectPrefectures", "県を選択"],
    ["OptionattendanceStatusSelectAttendance", "選択してください"],
    ["selectWorkAvailabilityUnanswered", " 未回答"],
    ["pageOption1Prefecture", "北海道"],
      ["pageOption2Prefecture", "青森県"],
      ["pageOption3Prefecture", "岩手県"],
      ["pageOption4Prefecture", "宮城県"],
      ["pageOption5Prefecture", "秋田県"],
      ["pageOption6Prefecture", "山形県"],
      ["pageOption7Prefecture", "福島県"],
      ["pageOption8Prefecture", "茨城県"],
      ["pageOption9Prefecture", "栃木県"],
      ["pageOption10Prefecture", "群馬県"],
      ["pageOption11Prefecture", "埼玉県"],
      ["pageOption12Prefecture", "千葉県"],
      ["pageOption13Prefecture", "東京都"],
      ["pageOption14Prefecture", "神奈川県"],
      ["pageOption15Prefecture", "新潟県"],
      ["pageOption16Prefecture", "富山県"],
      ["pageOption17Prefecture", "石川県"],
      ["pageOption18Prefecture", "福井県"],
      ["pageOption19Prefecture", "山梨県"],
      ["pageOption20Prefecture", "長野県"], // changed
      ["pageOption21Prefecture", "岐阜県"], // changed
      ["pageOption22Prefecture", "静岡県"],
      ["pageOption23Prefecture", "愛知県"],
      ["pageOption24Prefecture", "三重県"],
      ["pageOption25Prefecture", "滋賀県"],
      ["pageOption26Prefecture", "京都府"],
      ["pageOption27Prefecture", "大阪府"],
      ["pageOption28Prefecture", "兵庫県"],
      ["pageOption29Prefecture", "奈良県"],
      ["pageOption30Prefecture", "和歌山県"],
      ["pageOption31Prefecture", "鳥取県"],
      ["pageOption32Prefecture", "島根県"],
      ["pageOption33Prefecture", "岡山県"],
      ["pageOption34Prefecture", "広島県"],
      ["pageOption35Prefecture", "山口県"],
      ["pageOption36Prefecture", "徳島県"],
      ["pageOption37Prefecture", "香川県"],
      ["pageOption38Prefecture", "愛媛県"],
      ["pageOption39Prefecture", "高知県"],
      ["pageOption40Prefecture", "福岡県"],
      ["pageOption41Prefecture", "佐賀県"],
      ["pageOption42Prefecture", "長崎県"],  //changed
      ["pageOption43Prefecture", "熊本県"],
      ["pageOption44Prefecture", "大分県"], // changed
      ["pageOption45Prefecture", "宮崎県"],
      ["pageOption46Prefecture", "鹿児島県"],
      ["pageOption47Prefecture", "沖縄県"],
      ["selectOptionSelectGender", "性別を選択して下さい"],
      ["selectOptionSelectGenderMale", "男"],
      ["selectOptionSelectGenderFemale", "女"],
      ["shiftScheduleName", "名前を入力"],
];

shiftScheduleDeitail =[
	["pageTitleStaffShiftSchedule","スタッフシフト予定"],
	["pageSpanHeadingStaffShiftSchedule","スタッフシフト予定"],
	["pageSpanSubHeadingStaffShiftSchedule","スタッフシフト予定の修正や、このスタッフのアサイン状況の確認ができます。"],
	["buttonSpanAssignmentList","アサイン一覧"],
	["buttonSpanReturn","戻る"],
	["pageSpanStaffShiftScheduleName","名前"],
	["pageSpanNameKatakana","名前カナ"],
	["pageSpanStaffCode","スタッフコード"],
	["pageSpanSubmissionDate","提出日時"],
	["tableShiftScheduleTHDate","日付"],
	["spanStaffShiftScheduleWorkAvailability","(S)勤務可否"],
	["selectWorkAvailability1","O"],
	["selectWorkAvailability2","&#916;"],
	["selectWorkAvailability3","X"],
	["tableShiftScheduleTHPublicMemo","(S)公開メモ"],
	["tableShiftScheduleTHPrivateMemo","非公開メモ"],
	["pageSpanPrivateMemo","非公開メモ(スタッフシフト一覧画面表示用)"],
	["pageSpanRemarks","備考"],
	["pageSpanConfirmationDateAndTime","確認日時"],
	["pageSpanConfirmationPerson","確認担当者"],
	["selectConfirmationPerson","確認者の選択"],
	["selectConfirmationPerson1","確認者1"],
	["selectConfirmationPerson2","確認者2"],
	["buttonUpdateStaffShiftSchedule","スタッフシフト予定を更新"],
];

