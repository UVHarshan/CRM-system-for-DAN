function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(AssignmentManagement);
	convertContentToLanguage(AssignmentDetails);
	convertContentToLanguage(AssignmentForCase);
	convertContentToLanguageByName(nameList);
}

TopMenu = [
	["menuButtonProfile", "プロフィール"],
	["menuButtonManual", "マニュアル"],
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


nameList = [
	["tableHelptextCustomerName", "顧客名  :"],
	["tableHelptextProjectName", "プロジェクト名 :"],
	["tableHelptextWorkLocation", "勤務地 :"],
	["tableHelptextNearestStation", "最寄駅 :"],
	["tableHelptextDispatchClassification", "派遣区分 :"],
	["tableHelptextOccupationClassification", "職業区分 :"],
	["tableHelptextProjectManager", "プロジェクトマネージャー :"],
	["tableHelptextImplementationDate", "実施時期 :"],
	["tableHelptextBasicSalary", "基本給 :"],
	["tableHelptextStaffPersons", "スタッフ紹介 :"],
	["tableHelptextInHouse", "自社 :"],
	["tableHelptextOutsourcing", "外注 :"],
	["rowTransportationexpenses", "交通費"],
	["rowPurchaseMoney", "購入資金"],
	["rowExpenses", "経費"],
	["rowAccommodationFee", "宿泊料金"],
];


AssignmentManagement = [
    ["pageTitleAssignmentManagement", "アサイン管理"],
    ["pageTitleAssignmentForImplementationCase", "実施情報詳細"],
    ["pageTitleAssignmentDetails", "スタッフ割り当て詳細"],
	["pageSpanHeadingAssignmentManagement", "アサイン管理"],
	["pageSpanAssignmentManagementNote", "案件一覧で選択した案件に、スタッフリストからスタッフを割り当てることができます。"],
	["optionSelectAssignmentClassification", "区分の選択"],
	["optionSelectAssignmentClassificationAssignByDate", "単発・短期案件"],
	["optionSelectAssignmentClassificationAssignByPeriod", "長期案件"],
	["pageSpanDataTableNote", "*"],
	["tableHelptextCustomerName", "お客様名  :"],
	["tableHelptextProjectName", "プロジェクト名 :"],
	["tableHelptextWorkLocation", "勤務地 :"],
	["tableHelptextNearestStation", "最寄駅 :"],
	["tableHelptextDispatchClassification", "派遣区分 :"],
	["tableHelptextOccupationClassification", "職業区分 :"],
	["tableHelptextProjectManager", "プロジェクトマネージャー :"],
	["tableHelptextImplementationDate", "実施時期 :"],
	["tableHelptextBasicSalary", "基本給 :"],
	["tableHelptextStaffPersons", "スタッフ紹介 :"],
	["tableHelptextInHouse", "自社 :"],
	["tableHelptextOutsourcing", "外注 :"],
	["optionPersonInCharge", "担当者の選択"],
	["optionPersonInCharge1", "担当者1"],
	["optionPersonInCharge2", "担当者2"],
	["buttonSpanSwitchToNormalMode", "通常モードに切替"],
	["pageSpanSearch", "検索"],
	["pageSpanSearchCaseList", "検索結果"],
	["pageLabelAssignmentClassification", "アサイン区分"],
	["pageLabelProposalNumber", "案件番号"],
	["caseNumber", "案件番号を入力"],
	["pageLabelCustomerName", "顧客名"],
	["customerName", "顧客名を入力"],
	["pageLabelImplementationPeriodStart", "実施期間(開始)"],
	["pageLabelImplementationPeriodEnd", "実施期間(終了)"],
	["pageLabelWorkLocation", "勤務地"],
	["workLocation", "勤務地を入力"],
	["pageLabelDispatchClassification", "派遣区分"],
	["selectOptionSelectDispatchClassification", "派遣先分類の選択"],
	["pageSpanGeneralDispatch", "一般派遣"],
	["pageSpanBusinessContract", "業務請負"],
	["pageSpanIntroductionDispatching", "紹介予定派遣"],
	["pageSpanRecruitment", "人材紹介"],
	["pageLabelOccupationClassification", "職種区分"],
	["selectOptionSelectOccupationClassification", "職種区分を選択"],
	["pageSpanOfficeSystem", "オフィス系"],
	["pageSpanSalesSystem", "営業・販売系"],
	["pageSpanITCreative", "IT・クリエイティブ系"],
	["pageSpanMedicalWelfareSystem", "医療・福祉系"],
	["pageSpanManufacturingBusiness", "製造業務系"],
	["pageSpanProfessional", "専門職系"],
	["pageSpanOthers", "その他"],
	["pageLabelThePersonInCharge", "案件担当者名"],
	["clearAllBtn", "全て消去"],
	["searchBtn", "検索"],
	["pageCardDivTotalAssignments", "アサインメントの総数"],
	["pageCardDivStaffAssignedAssignments", "日付別課題数"],
	["pageCardDivOngoingAssignments", "期間別課題数"],
	["tableSearchTHNo", "No."],
	["tableSearchTHChoice", "選択"],
	["tableSearchTHCase", "案件"],
	["tableSearchTHWorkInformation", "勤務情報"],
	["tableSearchTHAssignStaff", "割り当てスタッフ"],
	["optionAssignmentClassificationSelectAssignment", "区分を選択"],
	["optionAssignmentClassificationAssignByDate", "単発・短期案件"],
	["optionAssignmentClassificationAssignByPeriod", "長期案件"],
	["optionPersonInChargeセレクトPersonInCharge", "案件担当者を選択"],
	["search_table_info", "記録がありません"]
	
	          
];

AssignmentDetails = [
	["pageSpanHeadingStaffAssignmentDetails", "スタッフ割り当て詳細 " ],
	["buttonAssignmentManagement", "アサイン管理に戻る"],
	["buttonSpanImplementationInformation", "実施情報詳細に戻る"],
	["pageSpanSubHeadingCaseRegistration", "アサインされたスタッフの各種通知報告や交通費などの設定ができます。"],
	["accordionMatterInformation", "案件情報"],
	["pageSpanProjectTitle", "案件名"],
	["pageSpanAssignmentClassification", "アサイン区分"],
	["pageSpanDispatchClassification", "派遣区分"],
	["pageSpanOccuClassification", "職種区分"],
	["pageSpanUnitPriceSetting", "単価設定"],
	["pageSpanBusinessContent", "業務内容"],
	["pageSpanPersonInCharge", "案件担当者"],
	["pageSpanCustomerCompanyName", "顧客会社名"],
	["accordionImplementationInformation", "実施情報"],
	["pageSpanImplementationPeriodStart", "実施日"],
	["pageSpanWorklocation", "勤務地"],
	["pageSpanInternalCommunication", "内部伝達情報(非公開)"],
	["pageSpanDetailsofImplementation", "実施情報詳細(公開用)"],
	["pageSpanRemarks2", "備考"],
	["accordionWorkLocationInfo", "勤務地情報"],
	["pageSpanNearestStationTo", "会場最寄駅"],
	["pageSpanMeetingPlace", "集合場所"],
	["pageSpanWorkLocation", "勤務地"],
	["pageSpanWorkAddress", "勤務地住所(連絡先含む)"],
	["pageSpanStationArrivalTime", "駅到着時間"],
	["pageSpanMeetingTime", "(S)集合時間"],
	["pageSpanStartTime", "(S)開始時間"],
	["pageSpanStationEndTime", "(S)終了時間"],
	["pageSpanWorkLocationTransportation", "勤務地移動手段"],
	["pageSpanWorkRemarks", "勤務備考"],
	["accordionStaffInformation", "スタッフ情報"],
	["pageSpanStaffName", "スタッフ名"],
	["pageSpanAttributeClassification", "属性区分"],
	["pageSpanSalaryPaymentForm", "給与支払形態"],
	["pageSpanStaffMobile", "スタッフ携帯"],
	["pageSpanStaffNearestStation", "スタッフ最寄駅"],
	["pageSpanScheduled DepartureTime", "(S)出発予定時間"],
	["btnTransit", "乗換案内"],
	["pageSpanstaffArraivalText", "(未設定)→(未設定) で検索"],
	["pageSpanBasicSalary", "(S)基本給(日給)"],
	["btnCopyfromDailySalary", "スタッフ日給単価からコピー"],
	["btnCopyfromDailySalaryHelp", "参考基本給：¥"],
	["pageSpanAdvancePayment", "(S)前払い金"],
	["pageSpanReasonforPrepayment", "前払い理由"],
	["pageSpanPrepaidDeliveryDate", "前払い受渡日"],
	["pageSpanDeductionAmount1", "控除額１"],
	["pageSpanResonforDeduction1", "控除理由"],
	["pageSpanDeductionAmount2", "控除額２"],
	["pageSpanResonforDeduction2", "控除理由"],
	["pageSpanAssignOtherProjects", "他案件アサイン"],
	["pageSpanNotificationDate", "通知日時"],
	["btnSendInterviewRequest", "面接依頼メール送信"],
	["btnSendMatterAssignment", "案件割当メール送信"],
	["pageSpanConfirmedTheDayBefore", "前日確認："],
	["btnConfirmedTheDayBeforey", "前日確認報告"],
	["pageSpanConfirmedTheDayBeforeConfirmer", "確認者："],
	["btnConfirmedTheDayBeforeConfirmer", "前日報告確認"],
	["pageSpanDepartureReport", "出発報告："],
	["btnDepartureReport", "出発報告"],
	["pageSpanDepartureReportConfirmer", "確認者："],
	["btnDepartureReportConfirmer", "出発報告確認"],
	["pageSpanArrivalReport", "到着報告："],
	["btnArrivalReport", "到着報告"],
	["pageSpanArrivalReportConfirmer", "確認者："],
	["btnArrivalReportConfirmation", "到着報告確認"],
	["pageSpanClosingReport", "終業報告："],
	["btnClosingReport", "終業報告"],
	["pageSpanClosingReportConfirmer", "確認者："],
	["btnArrivalClosingReportConfirmer", "終業報告確認"],
	["pageSpanExpenseReport", "経費報告："],
	["btnExpenseReport", "経費報告"],
	["pageSpanExpenseReportConfirmer", "確認者："],
	["btnExpenseReportConfirmation", "経費報告確認"],
	["pageSpanReminderEmail", "終業報告催促メール送信:"],
	["btnReminderEmail", "終業報告催促メール送信"],
	["addEducationalRow", "新しい写真の追加"],
	["pageSpanFinalPreparation", "(S)終業備考"],
	["pageSpanRemarks3", "備考"],
	["pageSpanWorkingHours", "(S)勤務時間"],
	["pageSpanActualWorkingHours", "(S)実働時間"],
	["pageSpanActualBreakTime", "(S)実休憩時間"],
	["pageSpanMidnightBreakTime", "(S)(内)深夜休憩時間"],
	["pageSpanOvertimeHours", "(S)残業時間"],
	["pageSpanOvertimeCosts", "残業費"],
	["pageSpanMidnightWorkingHours", "深夜労働時間"],
	["pageSpanMidnightLaborCosts", "深夜労働費"],
	["pageSpanHolidayWorkingHours", "休日労働時間"],
	["pageSpanHolidayLaborCosts", "休日労働費"],
	["pageSpanOvertimeBillingFee", "残業請求費"],
	["pageSpanMidnightLaborBilling", "深夜労働請求費"],
	["pageSpanHolidayLaborBilling", "休日労働請求費"],
	["pageSpanAdvancePaymentfortable", "立替金"],
	["tableAdvancePaymentNo", "No."],
	["tableAdvancePaymentNominal", "公称"],
	["tableAdvancePaymentDetail", "詳細"],
	["tableAdvancePaymentAmountOfMoney", "金額"],
	["tableQuotationDetailsSubtotalTaxable", "立替金合計"],
	["pageSpanAllowance", "手当金"],
	["tableAdvancePaymentNominalAllowance", "公称"],
	["tableAdvancePaymentDetailAllowance", "詳細"],
	["tableAllowanceTaxationAllowance", "課税"],
	["tableAdvancePaymentAmountOfMoneyAllowance", "金額"],
	["tableQuotationDetailsSubtotalTaxableAllowance", "手当金合計"],
	["tableClosingReportPhoto", "終業報告写真"],
	["tablePreview", "プレビュー"],
	["addEducationalRow", "新しい写真の追加"],
	["pageSpanFinalPreparation", "(S) 最終準備"],
	["pageSpanRemarks3", "備考"],
	["pageSpanInterviewRequest","面接依頼メールを送信:"],
	["pageSpanMatterAssignment","マター課題のメール送信:"],
	["buttonUpdateAssignStaff", "アップデート スタッフの割り当て"],
	["pageSpanEnterWorkTimeStart", "勤務開始時刻と終了時刻は、時給計算の際に参照されますので、正確に入力してください。入力形式は「00:00」です。"],
	["pageSpanBreaketimeSchedule", "休憩時間に深夜の時間帯（22：00～05：00）が含まれる場合は、深夜の休憩時間に入力してください。例 1:00から2:00まで休憩する場合、休憩時間1:00と深夜の休憩時間1:00を入力します。21:00～22:00に休憩する場合、休憩時間1:00のみ入力"],
	["tableReportFortheStaff", "スタッフからの報告"],
	["tableConfirmationofthePerson", "担当者の確認"],
	["addRow1", "行の追加"],
	["addRow2", "行の追加"],
	["accordionDailysalaryInformation", "日給情報"],
	["pageSpanIncomeTaxAmount", "所得税の額"],
	["pageSpanPaymentAmount", "日給情報"],
	["btnCalculateSalary", "給与情報の算出"],
	["pageSpanApprovalStatus", "承認状況"],
	["optionSelectApprovalStatus", "承認ステータスの選択"],
	["optionSelectUnapproved", "承認されていない"],
	["optionSelectApproved", "承認"],
	["assignmentClassificationHelpnote", "承認に変更して保存すると、給与が固定されます。変更はできなくなりますのでご注意ください。"],
	["inputRowTransportationexpenses", "交通費"],
	["rowPurchaseMoney", "購入資金"],
	["rowExpenses", "経費"],
	["rowAccommodationFee", "宿泊料金"],
	
];


AssignmentForCase = [
     ["pageSpanHeadingAssignmentForImplementationCase", "実施情報詳細"],
     ["buttonSpanReturn", "案件詳細に戻る"],
     ["accordionMatterInformation", "案件情報"],
     ["pageSpanProjectTitle", "案件名"],
     ["pageSpanMatterNumber", "案件番号"],
     ["pageSpanQuotationNumber", "見積書番号"],
     ["pageSpanAssignmentClassification", "アサイン区分"],
     ["assignmentClassificationHelp", "『長期案件』は1ヶ月以上の長期案件の場合に推奨します"],
     ["pageSpanDispatchClassification", "派遣区分"],
     ["pageSpanDivisionByBusiness", "業務別区分"],
     ["pageSpanOccuClassification", "職種区分"],
     ["pageSpanBusinessContent", "業務内容"],
     ["pageSpanRequiredNumberPeople", "必要人数"],
     ["pageSpanPersonInCharge", "案件担当者"],
     ["pageSpanSalesRepresentative", "営業担当者"],
     ["pageSpanCustomerCompanyName", "顧客会社名"],
     ["pageSpanCustomerRepresentativeName", "顧客担当者名"],
     ["pageSpanNameofDispatcher", "派遣元責任者名"],
     ["pageSpanContacInformationOfDispatcher", "派遣元責任者連絡先"],
     ["pageSpanNameOfDispatcherGrievance", "派遣元苦情処理担当者名"],
     ["pageSpanContactInfoDispatcherGrievance", "派遣元苦情処理担当者連絡先"],
     ["pageSpanCommanderName", "指揮命令者名"],
     ["pageSpanCommanderContact", "指揮命令者連絡先"],
     ["pageSpanOfficerName", "責任者名"],
     ["pageSpanResponsibleContact", "責任者連絡先"],
     ["pageSpanComplaintContactName", "苦情連絡担当名"],
     ["pageSpanComplaintContactInformation", "苦情連絡担当連絡先"],
     ["pageSpanEmploymentStatus", "無期雇用か有期雇用か及び協定対象派遣労働者であるか否かの区別"],
     ["optionEmploymentStatusFixedTermEmploymentWorker", "有期雇用労働者"],
     ["optionEmploymentStatusFixedTermEmploymentWorkerDispatched", "有期雇用労働者(協定対象派遣労働者)"],
     ["optionEmploymentStatusPermanentWorker", "無期雇用労働者"],
     ["optionEmploymentStatusPermanentWorkerDispatched", "無期雇用労働者(協定対象派遣労働者)"],
     ["pageSpanAgeStatus", "60歳以上であるか否かの区別"],
     ["optionAgeStatusLimitedOver60", "60歳以上に限定する"],
     ["optionAgeStatusNotLimitedOver60", "60歳以上に限定しない"],
     ["pageSpanPeriodStart", "実施期間(開始)"],
     ["pageSpanPeriodEnd", "実施期間(終了)"],
     ["accordionImplementationInformation", "実施情報"],
     ["pageSpanImplementationPeriodStart", "(S)実施期間(開始)"],
     ["pageSpanImplementationPeriodEnd", "(S)実施期間(終了)"],
     ["pageSpanImplementationDate", "(S)実施日"],
     ["pageSpanWorkingDays", "勤務日"],
     ["pageSpanWorkingDaysSunday", "日曜日"],
     ["pageSpanWorkingDaysMonday", "月曜日"],
     ["pageSpanWorkingDaysTuesday", "火曜日"],
     ["pageSpanWorkingDaysWednesday", "水曜日"],
     ["pageSpanWorkingDaysThursday", "木曜日"],
     ["pageSpanWorkingDaysFriday", "金曜日"],
     ["pageSpanWorkingDaysSaturday", "土曜日"],
     ["pageSpanHolidays", "休日"],
     ["pageSpanHolidaySunday", "日曜日"],
     ["pageSpanHolidayMonday", "月曜日"],
     ["pageSpanHolidayTuesday", "火曜日"],
     ["pageSpanHolidayWednesday", "水曜日"],
     ["pageSpanHolidayThursday", "木曜日"],
     ["pageSpanHolidayFriday", "金曜日"],
     ["pageSpanHolidaySaturday", "土曜日"],
     ["pageSpanInternalCommunication", "内部伝達情報(非公開)"],
     ["pageSpanDetailsOfImplementation", "(S)実施情報詳細(公開用)"],
     ["buttonAssignStaff", "スタッフ割り当て"],
	 ["tableSearchTHOperation", "操作方法"],
     ["accordionWorkLocationInfo", "勤務地情報"],
     ["pageSpanNearestStationTo", "(S)会場最寄駅"],
     ["pageSpanMeetingPlace", "(S)集合場所"],
     ["pageSpanOfficeName", "事業所名"],
     ["pageSpanOrganizationName", "組織名"],
     ["pageSpanWorkLocation", "(S)勤務地"],
     ["pageSpanWorkAddress", "(S)勤務先住所(連絡先含む)"],
     ["pageSpanSalaryUnitPrice", "給与単価"],
     ["pageSpanProjectUnitPrice", "案件単価"],
     ["pageSpanStaffUnitPrice", "スタッフ単価"],
     ["pageSpanBasicSalary", "基本給(日給)"],
     ["pageSpanBilledAmount", "請求金額(1名分,日給)"],
     ["pageSpanBillingUnitPriceSetting", "請求単価設定"],
     ["billingUnitPriceSettingDailySalary", "日給"],
     ["billingUnitPriceSettingHourlyWage", "時給"],
     ["billingUnitPriceSettingFullMonthlySalary", "完全月給"],
     ["billingUnitPriceSettingDailySalaryMonthly", "日給月給"],
     ["pageSpanWorkLocationTransportation", "勤務地移動手段"],
     ["pageSpanStationArrivalTime", "駅到着時間"],
     ["pageSpanStationMeetingTime", "集合時間"],
     ["pageSpanStationScheduledStartTime", "開始予定時間"],
     ["pageSpanStationScheduledEndTime", "終了予定時間"],
     ["pageSpanStationScheduledActualWorkTime", "実働予定時間"],
     ["pageSpanScheduleBreaktimeTime", "休憩予定時間"],
     ["pageSpanDepartureTime", "出発予定時間"],
     ["pageSpanMidnightBreakingTime", "(内)深夜休憩予定時間"],
     ["pageSpanStationDescriptionTime", " 開始、終了予定時間は時給計算の参照先です。正しく入力してください。休憩予定時間に深夜時間帯(22:00～05：00)が含まれている場合は(内)深夜休憩予定時間に入力してください。実働予定時間が未入力の場合、残業、深夜労働、休日労働の時間が正しく算出されず自動計算されません。"],
     ["pageSpanWorkRemarks", "(S)勤務備考(休憩時間など)"],
     ["pageSpanOvertimePaymentUnit", "残業支給単位"],
     ["accordionNotificationOfWorkingConditions", "労働条件通知書兼就業条件明示書情報"],
     ["pageSpanWorkRemarksNote", "労働条件通知書兼就業条件明示書に適用されます。法律に定められた範囲でご記入ください。"],
     ["pageSpanmidnightOvertimeHolidayAllowance", "深夜・残業・休日手当"],
     ["pageSpanPaymentTerms", "支払条件"],
     ["pageSpanAnnualPaidLeave", "年次有給休暇"],
     ["pageSpanOvertimeHolidayWork", "時間外・休日労働"],
     ["pageSpanSafetyAndHygiene", "安全・衛生"],
     ["pageSpanEmploymentStabilizationMeasures", "派遣契約解除で講ずる派遣労働者の雇用安定措置"],
     ["pageSpanGrievanceRelatedMatters", "苦情処理関連事項"],
     ["pageSpanReasonForNotSubmittingEmployment", "雇用・社会保険の被保険者資格取得届の提出無の理由"],
     ["pageSpanUseOfWelfareFacilities", "福利厚生施設の利用等"],
     ["pageSpanRetirementRelatedMatters", "退職関連事項"],
     ["pageSpanContractRenewalRelated", "契約更新関連事項"],
     ["pageSpanConflictPreventionMeasures", "派遣労働者の直接雇用における紛争防止措置"],
     ["pageSpanRemarks1", "備考"],
     ["accordionDivAssignmentInformation", "アサイン情報"],
     ["pageSpanRequiredNumberOfStaff", "スタッフ必要人数"],
     ["buttonAssignmentManagement", "アサイン管理"],
     ["#tableAssignmentInformationTHNo", "No"],
     ["#tableAssignmentInformationTHAssignStaff", "スタッフ割り当て"],
     ["#tableAssignmentInformationTHConflictDate", "抵触日(個人単位)"],
     ["#tableAssignmentInformationTHNotification", "通知日時"],
     ["#tableAssignmentInformationTHAssignOtherProjects", "他案件アサイン"],
     ["addSkillSheetRow", "行の追加"],
     ["pageSpanInvoiceCreation", "請求書作成"],
     ["pageSpanAssignmentRemarks", "備考"],
	 ["pageSpanAfterConfirmationNote", "割り当てられたスタッフを確認したら、割り当てられたスタッフの欄にあるスタッフ名を選択し、「案件割り当てメール」を送信します。"],
     ["buttonUpdateAssignmentInfo", "実施情報を更新"],
  	 ["optionOvertimePaymentUnitDaily", "デイリー"] , 
  	 ["loadPageSpanApprovalStatus", "承認状況"] , 
     ["loadPageSpanApprovalStatusApprovedValue", "承認"] ,
     ["spanSalaryPaymentCheckboxPaidText", "有償"] , 
     ["btnCancelSalaryApproval", "給与承認の取り消し"] , 
     
      ["exampleModalLabel", "スタッフを検索し、配置する"] , 
     ["pageSpanStaffList", "スタッフ一覧"] , 
     ["pageLabelBelongs", "所属"] , 
     ["belongs", "所属する"] , 
     ["pageLabelStaffName", "スタッフ名"] , 
     ["staffName", "スタッフ名を入力"] , 
     ["staffGender", "性別"] , 
     ["optionSelectGender", "性別を選択して下さい"] , 
     ["optionMale", "男"] , 
     ["optionFemale", "女"], 
     ["pageOption0Prefecture", "県を選択"],
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
     ["pageLabelPrefectures", "都道府県名"] , 
     ["pageLabelExperience", "経験"] , 
     ["experience", "経験を積む"] , 
     ["pageLabelStaffStaff", "担当スタッフ"] , 
     ["selectInchargeStaff", "担当者選択"] , 
     ["pageLabelAddress", "住所"] , 
     ["address", "アドレスを入力してください"] , 
     ["pageSpanAttributeclassification1", "属性分類"] , 
     ["pageOption0AttributeClassification1", "属性分類を選択"] , 
     ["pageOption1AttributeClassification1", "社内"] , 
     ["pageOption2AttributeClassification1", "アウトソーシング"] , 
     ["pageLabelAttribute", "アトリビュート"] , 
     ["pageOption0Attribute", "アトリビュート選択"] , 
     ["pageOption1Attribute", "年長者"] , 
     ["pageOption2Attribute", "外国人留学生"] , 
     ["pageOption3Attribute", "外国人労働者"] , 
     ["pageOption4Attribute", "ハイスクーラー"] ,
     ["pageLabelDateofbirthFrom", "生年月日 From"] , 
     ["pageLabelDateOfBirthTo", "生年月日 To"] ,
     ["pageLabelSalaryPaymentForm", "給与振込用紙"] , 
     ["selectSalaryPaymentForm", "給与支払方法の選択"] ,
     ["selectDaily", "日払い・週払い"] ,
     ["selectMonthly", "月々のお支払い"] ,
     ["pageLabelQualification", "資格"] , 
     ["qualification", "資格の入力"] ,
     ["pageLabelRegistrationDivision", "登録部門"] , 
     ["selectOptionSelectRegistrationDevision", "登録部門を選択"] ,
     ["selectOptionSelectRegistrationDevision1", "テンポラリー登録"] , 
     ["selectOptionSelectRegistrationDevision2", "本登録"] ,
     ["pageSpanSearchTargetStaff", "対象スタッフ"] , 
     ["tableSearchTHStaff", "スタッフ"] ,
     ["tableSearchTHDispatchClassification", "派遣／職業／所属"] , 
     ["tableSearchTHExperience", "体験談／シフト備考"] ,
     ["tableSearchTHPrefecture", "都道府県 / 住所 / 最寄り駅"] , 
     ["tableSearchTHAssignOther", "他のプロジェクトのアサイン"] ,
     ["btnTemporarilyAddSelectedStaff", "選択したスタッフを一時的に追加する"] ,
            
];

assignmentErrorArray ={ 
		"E2050":"入力してください。",
		"E2051":"ケース番号が無効です。",
		"E2052":"顧客名が無効です。",
		"E2053":"実施期間が一致しません",
		"E2054":"生年月日が一致しません",
		"E2055":"基本給（日給）が無効です。",
		"E2056":"前払いが無効です。",
		"E2057":"控除額1が無効です",
		"E2058":"控除額2が無効です",
		"E2059":"労働時間が合いません",
		"E2060":"残業代が無効です。",
		"E2061":"深夜労働費が無効です。",
		"E2062":"休日人件費が無効です。",
		"E2063":"残業代請求額が無効です。",
		"E2064":"深夜労働請求料金が無効です。",
		"E2065":"休日労働費が無効です。",
		"E2066":"引当金情報が無効です。 1行のすべての列を埋める必要があります。",
		"E2067":"金額がが無効です。",
		"E2068":"jpg/jpeg、pngファイルのみ使用可能です。",
		"E2069":"時間の長さをhh:mmのフォーマットで入力してください。",}

