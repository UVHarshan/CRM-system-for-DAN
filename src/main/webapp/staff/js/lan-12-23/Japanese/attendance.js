﻿function switchLanguage(siteLanguage) {
  //  convertContentToLanguage(TopMenu);
  //  convertContentToLanguage(LeftMenu);
  //  convertContentToLanguage(StaffManagement);
  //  convertContentToLanguage(StaffDetails);
  //  convertContentToLanguage(StaffBatchRegister);
  //  convertContentToLanguage(InChargeStaffChange);
  //  convertTitleToLanguageByName(TitleList);
}

TopMenu = [
 
      ["menuButtonProfile", "プロフィール"],
      ["menuButtonManual", "マニュアル"],
      ["menuButtonLogout", "ログアウト"],
      ["pageTitle", "スタッフ一覧"],
		["menuSpanHome", "Home"],
		["menuSubSpanHome", "Home"],
		["menuSpanItemList", "アイテムリスト"],
		["menuSpanShiftScheduleRegistration", "シフトスケジュール"],
		["menuSpanMonthlyAttendanceList", "参加者リスト"],
		["menuSpanStaffInformation", "スタッフ情報"]
];

LeftMenu = [
		["pageTitle", "スタッフ一覧"],
		["menuSpanHome", "Home"],
		["menuSubSpanHome", "Home"],
		["menuSpanItemList", "アイテムリスト"],
		["menuSpanShiftScheduleRegistration", "シフトスケジュール"],
		["menuSpanMonthlyAttendanceList", "参加者リスト"],
		["menuSpanStaffInformation", "スタッフ情報"]
];

TitleList = [
["viewDetails", "詳細を見る"],
["shiftSchedule", "シフトスケジュールを見る"],
["assignmentList", "アサインメントリストの表示"],
["pageSpanAge", "歳 /"],
];


StaffManagement = [
      ["pageSpanHeading", "スタッフ一覧"],
      ["buttonSpanStaffReg", "スタッフ登録"],
      ["buttonSpanBatchReg", "スタッフ一括登録"],
      ["buttonSpanStaffListCSV", "スタッフ一覧CSVを出力"],
      ["pageSpanSearch", " 検索"],
      ["pageLabelGivenNames", "名前"],
      ["givenNames", "名前を入力してください"],
      ["pageLabelNameKatakana", "名前カナ"],
      ["nameKatakana", "フリガナを入力してください"],
      ["pageLabelStaffCode", "スタッフコード"],
      ["staffCode", "スタッフコードを入力してください"],
      ["pageLabelPrefectures", "都道府県"],
      ["selectOptionSelectPrefectures", "県を選択"],
      ["pageLabelStreetAddress", "住所"],
      ["streetAddress", "住所を入力してください"],
      ["pageLabelDOB", "生年月日From/To"],
      ["dateOfBirthFrom", "yyyy/mm/dd で入力"],
      ["dateOfBirthTo", "yyyy/mm/dd で入力"],
      ["pageLabelMobilePhone", "携帯"],
      ["mobilePhone", "携帯電話番号を入力してください"],
      ["pageLabelStaffStaff", "スタッフ担当者"],
      ["staffInChargeStaff", "担当スタッフを入力してください"],
      ["pageLabelMailAddress", "メールアドレス"],
      ["mailAddress", "メールアドレスを入力してください"],
      ["pageLabelExperience", "経験"],
      ["experience", "職務履歴を入力してください"],
      ["pageLabelRegistrationDivision", "登録区分"],
      ["selectOptionSelectRegistrationDevision", "登録部門を選択"],
      ["selectOptionSelectRegistrationDevision1", "本登録"],
      ["selectOptionSelectRegistrationDevision2", "仮登録"],
      ["pageLabelDispatchClassification", "派遣区分"],
      ["selectOptionSelectDispatchClassification", "派遣区分を選択"],
      ["pageLabelOccupationClassification", "職種区分"],
      ["selectOptionSelectOccupationClassification", "職業分類を選択します"],
      ["pageLabelAttribute", "属性"],
      ["pageOption0Attribute", "属性を選択"],
      ["pageOption1Attribute", "高齢者(65歳以上）"],
      ["pageOption2Attribute", "学生(大学・専門学校など)"],
      ["pageOption3Attribute", "外国人労働者"],
      ["pageOption4Attribute", "留学生"],
      ["attribute", "属性を入力してください"],
      ["pageLabelValidClassification", "*有効区分"],
      ["selectOptionSelectValidClassification", "有効な分類を選択してください"],
      ["pageLabelCurrentUnitPrice", "現在単価From/To"],
      ["unitPriceFrom", "下限値を入力"],
      ["unitPriceTo", "上限値を入力"],
      ["pageLabelBelongs", "所属"],
      ["belongs", "所属する"],
      ["pageLabelGender", "性別"],
      ["selectOptionSelectGender", "性別を選択して下さい"],
      ["selectOptionSelectGenderMale", "男"],
      ["selectOptionSelectGenderFemale", "女"],
      ["selectOptionSelectGender_1", "性別を選択して下さい"],
      ["selectOptionSelectGenderMale_1", "男"],
      ["selectOptionSelectGenderFemale_1", "女"],
      ["clearAllBtn", "すべてクリア"],
      ["searchBtn", "検索"],
      ["pageCardDivTotalStaff", "スタッフの総数"],
      ["pageCardDivTotalActiveStaff", "総有効スタッフ"],
      ["pageCardDivTotalAvailableStaff", "派遣可能なスタッフの総数"],
      ["pageCardDivTotalPendingStaff", "保留中のスタッフの合計"],
      ["pageSpanSearchStaffDetails", " 検索結果"],

      ["tableSearchStaffTHNo", "番号"],
      ["tableSearchStaffTHChoice", "選択"],
      ["tableSearchStaffTHName", "名前"],
      ["tableSearchStaffTHNameKatakana", "名前カナ"],
      ["tableSearchStaffTHAttribute", "属性"],
      ["tableSearchStaffTHStaffCode", "スタッフコード"],
      ["tableSearchStaffTHStaffStaff", "スタッフ担当者"],
      ["tableSearchStaffTHCellPhone", "携帯"],
      ["tableSearchStaffTHEmailAddress", "メールアドレス"],
      ["tableSearchStaffTHDispatchClassification", "派遣区分"],
      ["tableSearchStaffTHPrefecture", "都道府県"],
      ["tableSearchStaffTHPostalCode", "郵便番号"],
      ["tableSearchStaffTHExperience", "経験"],
      ["tableSearchStaffTHAddress", "住所"],
      ["tableSearchStaffTHOccupationClassification", "職種区分"],
      ["tableSearchStaffTHDOB", "生年月日/年齢/性別"],
      ["tableSearchStaffTHRegistrationCategory", "登録区分/有効区分"],
      ["tableSearchStaffTHUnitPrice", "現在単価From/To"],

      ["tableButtonDetails", "詳細"],
      ["tableButtonScheduleShift", "シフト予定"],
      ["tableButtonAssignmentList", "アサイン一覧"],
      ["tableButtonDetails_2", "詳細"],
      ["tableButtonScheduleShift_2", "シフト予定"],
      ["tableButtonAssignmentList_2", "アサイン一覧"],
      ["tableButtonDetails_3", "詳細"],
      ["tableButtonScheduleShift_3", "シフト予定"],
      ["tableButtonAssignmentList_3", "アサイン一覧"],
  	  ["search_staff_table_previous", "前"],
      ["search_staff_table_next", "次"],
      ["buttonSpanCheckAll", "全てをチェックする"],
      ["buttonSpanUncheckAll", "全てのチェックを外す"],
      ["buttonSpanBatchDeletion", "  スタッフ一括削除"],
      ["buttonSpanBatchChange", "担当スタッフ交代"],
    ["selectInchargeofStaff", "選択する 担当するスタッフ"],
];


StaffDetails = [
         ["pageSpanHeadingStaffInformation", " スタッフ情報"],
         ["pageTitleStaffInformation", " スタッフ情報"],
         ["pageSpanHeadingStaffDetails", " スタッフ 詳細"],
         ["pageSpanHeadingStaffRegister", " スタッフ登録"],
         ["pageSpanSubHeadingStaffDetails", "スタッフの修正、このスタッフのシフトスケジュールの確認、割り当て状況の確認ができます。"],
         ["buttonSpanStaffDetailsOption", "オプション"],
         ["buttonValueSpanStaffDetailsRegister", "スタッフの登録"],
         ["buttonValueSpanStaffDetailsDelete", "スタッフを削除"],
         ["buttonSpanScheduledShifts", " シフト予定"],
         ["buttonSpanAssinmentList", " アサイン一覧"],
         ["buttonSpanReturn", "戻る"],

         ["accordionDivStaffInformation", " スタッフ情報"],
         ["accordionDivTransportationInformation", " 交通情報"],
         ["accordionDivResumeInformation", " 履歴書情報"],
         ["accordionDivPayrollInformation", " 給与支払情報"],
         ["accordionDivSocialInsuranceInformation", " 社会保険・所得税・住民税情報"],
         ["accordionDivLoginInformation", " ログイン情報 "],
         ["accordionDivOtherInformation", "その他情報"],
       


      ["pageSpanName", "名前"],
      ["pageSpanHelpTextName", "姓と名の間にスペースを入れてください"],
      ["pageSpanNameKatakana", "フリガナ"],
      ["pageSpanHelpTextNameKatakana", "姓と名の間にスペースを入れてください"],
      ["pageSpanZipCode", "郵便番号"],
      ["btnAddressSearch", "住所検索"],
      ["pageSpanHelpZipCode", "ハイフンなしで入力してください"],
      ["pageSpanPrefecture", "都道府県"],
      ["pageSpanAddress", "緊急連絡先住所"],
      ["pageSpanHelpAddress", "マンション名、ビル名を必ず入力してください"],
      ["pageSpanAddressKatakana", "住所カナ"],
      ["pageSpanDateofBirth", "生年月日"],
      ["pageSpanGender", "性別"],
      ["pageSpanMobile", "連絡先"],
      ["pageSpanHelpMobile", "ハイフンなしで入力してください"],
      ["pageSpanHomeParent", "自宅(実家)）"],
      ["pageSpanFax", "ファックス"],
      ["pageSpanHelpFax", "ハイフンなしで入力してください"],
      ["pageSpanAttributeclassification1", "属性区分１"],
      ["pageSpanAttributeclassification2", "属性区分２"],
      ["pageSpanLaborManagementExpirationDate", "労使協定有効期限"],
      ["pageSpanAttribute", "属性"],
      ["pageSpanBelongs", "所属"],
      ["pageSpanDisClassification", "派遣区分"],
      ["pageSpanGeneralDispatch", "一般派遣"],
      ["pageSpanBusinessContract", "業務請負"],
      ["pageSpanIntroductionDispatching", " 紹介予定派遣"],
      ["pageSpanRecruitment", "人材紹介"],
      ["pageSpanPartTime", "アルバイト"],
      ["pageSpanOccuClassification", "職種区分"],
      ["pageSpanOfficeSystem", "オフィス系"],
      ["pageSpanSalesSystem", "営業・販売系"],
      ["pageSpanITCreative", "IT・クリエイティブ系"],
      ["pageSpanMedicalWelfareSystem", "医療・福祉系"],
      ["pageSpanManufacturingBusiness", "製造業務系"],
      ["pageSpanProfessional", "専門職系"],
      ["pageSpanOthers", "その他"],
      ["pageSpanDailySalaryUnitPrice", "日給単価"],
      ["pageSpanHelpDailySalaryUnitPrice", "業務内容に関係なく固定の単価の場合に、入力して下さい。"],
      ["pageSpanHourlyWageUnitPrice", "時給単価"],
	  ["pageSpanHelpHourlyWageUnitPrice", "業務内容に関係なく固定の単価の場合に、入力して下さい。"],
      ["pageSpanConflictDate", "抵触日(個人単位)一覧"],

      ["tableConflictDateTHNo", "No."],
      ["tableConflictDateTHProjectTitle", "案件名"],
      ["tableConflictDateTHConflictDate", "抵触日(個人単位)）"],


      ["pageSpanNearestStation", "最寄駅"],
      ["pageSpanTimeRequiredNearestStation", "最寄駅までの所要時間(分)"],
      ["pageSpanTransportationNearestStation", "最寄駅までの交通手段"],
      ["pageSpanBusUseSectionFrom", "バス利用区間From"],
      ["pageSpanHelpBusUseSectionFrom", "* 最寄り駅行きのバス利用者のみ記入"],
      ["pageSpanBusUseSectionTo", "バス利用区間To"],
      ["pageSpanHelpBusUseSectionTo", "* 最寄り駅行きのバス利用者のみ記入"],
      ["pageSpanRoundTripBusFare", "バス往復料金(円)"],
      ["pageSpanHelpRoundTripBusFare", "* 最寄り駅行きのバス利用者のみ記入"],
    
      ["pageSpanEducationalBackground", "学歴"],
      ["tableEducationalBackgroundTHYear", "年"],
      ["tableEducationalBackgroundTHMonth", "月"],
      ["tableEducationalBackgroundTHContent", "内容"],
      ["pageSpanWorkHistory", "職歴"],
      ["pageSpanLicenceQualification", "免許・資格"],
      ["pageSpanHope", "本人希望"],
      ["buttonOutputStaffResume", "スタッフの履歴書を出力"],

      ["pageSpanSalaryPaymentMethod", "給与支払方法"],
      ["selectOption", "給与支払い方法を選択します"],
      ["selectOptionPersonalDelivery", "手渡し"],
      ["selectOptionTransfer", "振込"],
      ["pageSpanSalaryPaymentForm", "給与支払形態"],
      ["selectOptionSalary", "給与支払い形態を選択"],
      ["selectOptionSalaryPaymentFormDailyWeekly", "日払い/週払い"],
      ["selectOptionSalaryPaymentFormMonthly", "月払い"],
      ["pageSpanSalaryClosingDate", "給与締日"],
      ["selectOptionSalaryClosingDate", "給与締切日を選択"],
      ["selectOptionSalaryClosingDateTheEndOfTheMonth", "月末"],
      ["selectOptionSalaryClosingDate1Day", "1日"],
      ["selectOptionSalaryClosingDate2Day", "2日"],
      ["selectOptionSalaryClosingDate3Day", "3日"],
      ["selectOptionSalaryClosingDate4Day", "4日"],
      ["selectOptionSalaryClosingDate5Day", "5日"],
      ["selectOptionSalaryClosingDate6Day", "6日"],
      ["selectOptionSalaryClosingDate7Day", "7日"],
      ["selectOptionSalaryClosingDate8Day", "8日"],
      ["selectOptionSalaryClosingDate9Day", "9日"],
      ["selectOptionSalaryClosingDate10Day", "10日"],
      ["selectOptionSalaryClosingDate11Day", "11日"],
      ["selectOptionSalaryClosingDate12Day", "12日"],
      ["selectOptionSalaryClosingDate13Day", "13日"],
      ["selectOptionSalaryClosingDate14Day", "14日"],
      ["selectOptionSalaryClosingDate15Day", "15日"],
      ["selectOptionSalaryClosingDate16Day", "16日"],
      ["selectOptionSalaryClosingDate17Day", "17日"],
      ["selectOptionSalaryClosingDate18Day", "18日"],
      ["selectOptionSalaryClosingDate19Day", "19日"],
      ["selectOptionSalaryClosingDate20Day", "20日"],
      ["selectOptionSalaryClosingDate21Day", "21日"],
      ["selectOptionSalaryClosingDate22Day", "22日"],
      ["selectOptionSalaryClosingDate23Day", "23日"],
      ["selectOptionSalaryClosingDate24Day", "24日"],
      ["selectOptionSalaryClosingDate25Day", "25日"],
      ["selectOptionSalaryClosingDate26Day", "26日"],
      ["selectOptionSalaryClosingDate27Day", "27日"],
      ["selectOptionSalaryClosingDate28Day", "28日"],
    
    
      ["pageSpanHelpSalaryPaymentMethod", "振込の場合は口座情報を入力して下さい。"],
      ["pageSpanPaidTarget", "有給対象 "],
      ["selectOptionPaidTargetYes", "対象"],
      ["selectOptionPaidTargetNothing", "対象外"],
      ["pageSpanPaidStartDate", "有給起算日"],
      ["pageSpanTransferFinancialInstitution", "金融機関名"],
      ["pageSpanTransferBranchName", "支店名"],
      ["pageSpanHelpTransferBranchName", "ゆうちょ銀行の場合は、店舗名を入力してください（例：〇八八支店）"],
      ["pageSpanBankCode", "金融機関コード"],
      ["pageSpanHelpBankCode", "ゆうちょ銀行に入金していません"],
      ["pageSpanBranchCode", "支店コード"],
      ["pageSpanHelpBranchCode", "ゆうちょ銀行の場合は、口座コードを入力してください（例：12345）"],
      ["pageSpanAccountType", "口座の種類"],
      ["selectOptionAccountTypeGeneral", "普通"],
      ["selectOptionAccountTypeCurrent", "当座"],
      ["pageSpanAccountNumber", "口座番号"],
      ["pageSpanAccountName", "口座名義"],
      ["", ""],
      ["", ""],


      ["accordionDivSkillSheetInformation", "スキルシート情報"],
      ["pageSpanNameInitials", "名前（イニシャルのみ）"],
      ["pageSpanCurrentAddress", "現住所"],
      ["pageSpanHelpCurrentAddress", "都道府県後に表示したい住所の情報を入力してください"],
      ["pageDivWorkHistory", "職歴（スキルシート用）"],
      ["pageSpanHelpWorkHistory", "最後の学歴からの経歴を説明してください。 「商号D」、「大手広告代理店」、「サービス業」など、会社名を非表示にして業界・業界別に掲載。"],
      ["tableSkillSheetInformationTHYear", "年"],
      ["tableSkillSheetInformationTHMonth", "月"],
      ["tableSkillSheetInformationTHContent", "内容"],
      ["pageSpanRemarks", "備考"],
      ["staffSkillRemark", "治療履歴、職業、勤務時間、勤務地など、特にご要望がございましたら、ご記入ください."],
      ["buttonOutputStaffSkillSheet", "スキルシートを出力"],
      ["", ""],



      ["pageSpanMyNumber", "マイナンバー"],
      ["pageSocialInsuranceCoverage", "社会保険加入状況"],
      ["selectOptionSocialInsuranceCoverage", "加入状況を選択"],
      ["selectOptionSocialInsuranceCoverageNotSubscribed", "未加入"],
      ["selectOptionSocialInsuranceCoverageSubscribed", "加入済み"],
      ["pageSpanOpensocialinsurance", "社会保険・所得税・住民税情報を開く"],
      ["pageSpanHealthInsuranceCoverage", "健康保険加入状況 "],
      ["selectOptionHealthInsuranceCoverage", "健康保険の加入状況を選択"],
      ["selectOptionHealthInsuranceCoverageNotSubscribed", "未加入"],
      ["selectOptionHealthInsuranceCoverageSubscribed", "加入済み"],
      ["selectOptionHealthInsuranceGrade", "健康保険等級を選択"],
      ["selectOptionWelfareHealthInsuranceCoverage", "厚生年金保険加入状況を選択"],
      ["selectOptionWelfareHealthInsuranceCoverageNotSubscribed", "未加入"],
      ["selectOptionWelfareHealthInsuranceCoverageSubscribed", "加入済み"],
      ["selectOptionEmploymentInsuranceCoverageNotSubscribed", "未加入"],
      ["selectOptionEmploymentInsuranceCoverageSubscribed", "加入済み"],
      ["pageSpanHealthInsuranceGrade", "健康保険等級"],
      ["selectOptionHealthInsuranceGrade", "健康保険等級を選択"],
      ["selectOptionHealthInsuranceGradeNotSubscribed", "未加入"],
      ["selectOptionHealthInsuranceGradeGrade1", "1等級 1～63000,000"],
      ["selectOptionHealthInsuranceGradeGrade2", "2等級 63,000～73,000"],
      ["selectOptionHealthInsuranceGradeGrade3", "3等級 73,000～83,000"],
      ["selectOptionHealthInsuranceGradeGrade4", "4等級 83,000～93,000"],
      ["selectOptionHealthInsuranceGradeGrade5", "5等級 93,000～101,000"],
      ["selectOptionHealthInsuranceGradeGrade6", "6等級 101,000～107,000"],
      ["selectOptionHealthInsuranceGradeGrade7", "7等級 107,000～114,000"],
      ["selectOptionHealthInsuranceGradeGrade8", "8等級 114,000～122,000"],
      ["selectOptionHealthInsuranceGradeGrade9", "9等級 122,000～130,000"],
      ["selectOptionHealthInsuranceGradeGrade10", "10等級 130,000～138,000"],
      ["selectOptionHealthInsuranceGradeGrade11", "11等級 138,000～146,000"],
      ["selectOptionHealthInsuranceGradeGrade12", "12等級 146,000～155,000"],
      ["selectOptionHealthInsuranceGradeGrade13", "13等級 155,000～165,000"],
      ["selectOptionHealthInsuranceGradeGrade14", "14等級 165,000～175,000"],
      ["selectOptionHealthInsuranceGradeGrade15", "15等級 175,000～185,000"],
      ["selectOptionHealthInsuranceGradeGrade16", "16等級 185,000～195,000"],
      ["selectOptionHealthInsuranceGradeGrade17", "17等級 195,000～210,000"],
      ["selectOptionHealthInsuranceGradeGrade18", "18等級 210,000～230,000"],
      ["selectOptionHealthInsuranceGradeGrade19", "19等級 230,000～250,000"],
      ["selectOptionHealthInsuranceGradeGrade20", "20等級 250,000～270,000"],
      ["selectOptionHealthInsuranceGradeGrade21", "21等級 270,000～290,000"],
      ["selectOptionHealthInsuranceGradeGrade22", "22等級 290,000～310,000"],
      ["selectOptionHealthInsuranceGradeGrade23", "23等級 310,000～330,000"],
      ["selectOptionHealthInsuranceGradeGrade24", "24等級 330,000～350,000"],
      ["selectOptionHealthInsuranceGradeGrade25", "25等級 350,000～370,000"],
      ["selectOptionHealthInsuranceGradeGrade26", "26等級 370,000～395,000"],
      ["selectOptionHealthInsuranceGradeGrade27", "27等級 395,000～425,000"],
      ["selectOptionHealthInsuranceGradeGrade28", "28等級 425,000～455,000"],
      ["selectOptionHealthInsuranceGradeGrade29", "29等級 455,000～485,000"],
      ["selectOptionHealthInsuranceGradeGrade30", "30等級 485,000～515,000"],
      ["selectOptionHealthInsuranceGradeGrade31", "31等級 515,000～545,000"],
      ["selectOptionHealthInsuranceGradeGrade32", "32等級 545,000～575,000"],
      ["selectOptionHealthInsuranceGradeGrade33", "33等級 575,000～605,000"],
      ["selectOptionHealthInsuranceGradeGrade34", "34等級 605,000～635,000"],
      ["selectOptionHealthInsuranceGradeGrade35", "35等級 635,000～665,000"],
      ["selectOptionHealthInsuranceGradeGrade36", "36等級 665,000～695,000"],
      ["selectOptionHealthInsuranceGradeGrade37", "37等級 695,000～730,000"],
      ["selectOptionHealthInsuranceGradeGrade38", "38等級 730,000～770,000"],
      ["selectOptionHealthInsuranceGradeGrade39", "39等級 770,000～83,000"],
      ["selectOptionHealthInsuranceGradeGrade40", "40等級 73,000～855,000"],
      ["selectOptionHealthInsuranceGradeGrade41", "41等級 855,000～905,000"],
      ["selectOptionHealthInsuranceGradeGrade42", "42等級 905,000～965,000"],
      ["selectOptionHealthInsuranceGradeGrade43", "43等級 965,000～1,5,000"],
      ["selectOptionHealthInsuranceGradeGrade44", "44等級 1,5,000～1,55,000"],
      ["selectOptionHealthInsuranceGradeGrade45", "45等級 1,55,000～1,115,000"],
      ["selectOptionHealthInsuranceGradeGrade46", "46等級 1,115,000～1,175,000"],
      ["selectOptionHealthInsuranceGradeGrade47", "47等級 1,175,000～1,235,000"],
      ["selectOptionHealthInsuranceGradeGrade48", "48等級 1,235,000～1,295,000"],
      ["selectOptionHealthInsuranceGradeGrade49", "49等級 1,295,000～1,355,000"],
      ["selectOptionHealthInsuranceGradeGrade50", "50等級 1,355,000～"],

	
      ["selectOptionWelfarePensionInsuranceGrade2", "1等級 1-93,000"],
      ["selectOptionWelfarePensionInsuranceGrade3", "2 等級 93,000～101,000"],
      ["selectOptionWelfarePensionInsuranceGrade4", "3 等級 101,000～107,000"],
      ["selectOptionWelfarePensionInsuranceGrade5", "4 等級 107,000～114,000"],
      ["selectOptionWelfarePensionInsuranceGrade6", "5 等級 114,000～122,000"],
      ["selectOptionWelfarePensionInsuranceGrade7", "6 等級 122,000～130,000"],
      ["selectOptionWelfarePensionInsuranceGrade8", "7 等級 130,000～138,000"],
      ["selectOptionWelfarePensionInsuranceGrade9", "8 等級 138,000～146,000"],
      ["selectOptionWelfarePensionInsuranceGrade10", "9 等級 146,000～155,000"],
      ["selectOptionWelfarePensionInsuranceGrade11", "10 等級 155,000～165,000"],
      ["selectOptionWelfarePensionInsuranceGrade12", "11 等級 165,000～175,000"],
      ["selectOptionWelfarePensionInsuranceGrade13", "12 等級 175,000～185,000"],
      ["selectOptionWelfarePensionInsuranceGrade14", "13 等級 185,000～195,000"],
      ["selectOptionWelfarePensionInsuranceGrade15", "14 等級 195,000～210,000"],
      ["selectOptionWelfarePensionInsuranceGrade16", "15 等級 210,000～230,000"],
      ["selectOptionWelfarePensionInsuranceGrade17", "16 等級 230,000～250,000"],
      ["selectOptionWelfarePensionInsuranceGrade18", "17 等級 250,000～270,000"],
      ["selectOptionWelfarePensionInsuranceGrade19", "18 等級 270,000～290,000"],
      ["selectOptionWelfarePensionInsuranceGrade20", "19 等級 290,000～310,000"],
      ["selectOptionWelfarePensionInsuranceGrade21", "20 等級 310,000～330,000"],
      ["selectOptionWelfarePensionInsuranceGrade22", "21 等級 330,000～350,000"],
      ["selectOptionWelfarePensionInsuranceGrade23", "22 等級 350,000～370,000"],
      ["selectOptionWelfarePensionInsuranceGrade24", "23 等級 370,000～395,000"],
      ["selectOptionWelfarePensionInsuranceGrade25", "24 等級 395,000～425,000"],
      ["selectOptionWelfarePensionInsuranceGrade26", "25 等級 425,000～455,000"],
      ["selectOptionWelfarePensionInsuranceGrade27", "26 等級 455,000～485,000"],
      ["selectOptionWelfarePensionInsuranceGrade28", "27 等級 485,000～515,000"],
      ["selectOptionWelfarePensionInsuranceGrade29", "28 等級 515,000～545,000"],
      ["selectOptionWelfarePensionInsuranceGrade30", "29 等級 545,000～575,000"],
      ["selectOptionWelfarePensionInsuranceGrade31", "30 等級 575,000～605,000"],
      ["selectOptionWelfarePensionInsuranceGrade32", "31等級605,000～"],
      ["pageSpanWelfarePensionInsurance", "厚生年金保険加入状況 "],
      ["pageSpanWelfarePensionInsuranceGrade", "厚生年金保険等級"],
      ["pageSpanLongTermCareInsuranceParticipation", "介護保険加入状況"],
      ["pageSpanEmploymentInsuranceCoverage", "雇用保険加入状況"],
      ["pageSpanHelpEmploymentInsuranceCoverage1", "条件①1週間の労働時間が20時間以上の予定、条件②31日以上雇用される予定"],
      ["pageSpanHelpEmploymentInsuranceCoverage2", "給与所得者の扶養控除等申告書の提出がある派遣スタッフを甲、給与所得者の扶養控除等申告書の提出がない派遣スタッフを乙、日雇い・アルバイトの派遣スタッフを丙で選択してくださ"],
      ["pageSpanIncomeTaxTaxpayerClassification", "所得税納税者の分類"],
      ["pageSpanHelpIncomeTaxTaxpayerClassification", "サラリーマンの扶養控除申告書を提出した派遣職員、サラリーマンの扶養控除申告書を提出していない派遣職員、日雇い労働者またはパートタイム労働者の派遣職員を選択してください。"],
      ["pageSpanNumberofDependents", "扶養親族人数 "],
      ["pageSpanHelpNumberOfDependents", "扶養親族人数を直接入力してください。扶養親族の数は、扶養親族の障害者区分などによって扶養控除額の計算方法が異なるため、実人数とは一致しない場合がございますのでご注意ください。"],
      ["pageSpanDependents", "扶養親族"],
      ["tableConflictDateTHFamilyName", "氏名"],
      ["tableConflictDateTHNameKatakana", "氏名（カナ）"],
      ["tableConflictDateTHBirthday", "生年月日"],
      ["tableConflictDateTHGender", "性別"],
      ["tableConflictDateTHRelationship", "続柄"],
      ["tableConflictDateTHClassification", "区分"],
      ["tableConflictDateTHLivingTogether", "同居状況 "],
      ["tableConflictDateTHHandicapped", "障害者"],
      ["tableConflictDateTHDuplicate", "複製"],
      ["btnSpanDuplicateInTheBottomLine1", "結論として重複"],
      ["btnSpanDuplicateInTheBottomLine2", "結論として重複"],
      ["btnSpanDuplicateInTheBottomLine3", "結論として重複"],
      ["btnSpanDuplicateInTheBottomLine4", "結論として重複"],
      ["btnSpanDuplicateInTheBottomLine5", "結論として重複"],
      ["pageSpanResidentTaxClassification", "住民税区分"],
      ["pageSpanNormalCollection", "普通徴収"],
      ["pageSpanSpecialCollection", "特別徴収"],
      ["pageSpanEmail", "メールアドレス"],
      ["pageSpanHelpEmail1", "*システムにログインするためのIDになります"],
      ["pageSpanHelpEmail2", "業務連絡メールを受け取るアドレスになります"],
      ["pageSpanNewPassword", "パスワード"],
      ["pageSpanHelpNewPassword", "* ※6文字以上、半角英数字"],
      ["pageSpanNewPasswordConfirm", "パスワードの確認"],
      ["pageSpanEmailAddressConfirm", "メールアドレス確認用"],
      ["pageSpanRegistrationDivision", "登録区分"],
      ["pageSpanMainRegistration", "主な登録"],
      ["pageSpanTemporaryRegistration", "仮登録"],
      ["pageSpanLineRegistration", "LINE登録"],
      ["pageSpanUnregistered", "未登録"],

      ["pageSpanStaffCode", "スタッフコード"],
      ["pageSpanFacePhoto", "顔写真"],
      ["pageSpanHelpFacePhoto", "一覧や履歴書に表示する顔写真です"],
      ["pageSpanPreview", "プレビュー"],
      ["pageSpanEmergencyContactName", "緊急連絡先氏名"],
      ["pageSpanHelpEmergencyContactName", "姓と名の間にスペースを入れてください"],
      ["pageSpanEmergencyContactNameKatakana", "緊急連絡先氏名カナ"],
      ["pageSpanHelpEmergencyContactNameKatakana", "姓と名の間にスペースを入れてください"],
      ["pageSpanPostalCode", "郵便番号"],
      ["buttonSpanAddressSearch", "住所検索"],
      ["buttonSpanHelpAddressSearch", "ハイフンなしで入力してください"],
      ["pageSpanPrefectures", "都道府県"],
    
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

      ["staffGender0", "性別を選択"],
      ["staffGender1", "男"],
      ["staffGender2", "女"],
      ["pageSpanHelpMobile", "ハイフンなしで入力してください"],
      ["pageSpanHelpHome", "ハイフンなしで入力してください"],
      ["pageOption0AttributeClassification1", "選択してください"],
      ["pageOption1AttributeClassification1", "自社"],
      ["pageOption2AttributeClassification1", "外注"],
      ["pageOption0AttributeClassification2", "属性分類を選択します 2"],
      ["pageOption1AttributeClassification2", "有期雇用労働者"],
      ["pageOption2AttributeClassification2", "有期雇用労働者(協定対象派遣労働者)"],
      ["pageOption3AttributeClassification2", "無期雇用労働者"],
      ["pageOption4AttributeClassification2", "無期雇用労働者(協定対象派遣労働者)"],
      ["pageOption0Attribute", "属性を選択"],
    
    //RESUME INFO
      ["tableEducationalBackgroundTHDateFrom", "入学"],
      ["tableEducationalBackgroundTHDateTo", "卒業"],
      ["tableEducationalBackgroundTHInstitute", "学校名"],
      ["tableEducationalBackgroundTHQualificationType", "学部・学科名"],
      ["tableWorkHistoryTHYear", "入社"],
      ["tableWorkHistoryTHMonth", "退職"],
      ["tableWorkHistoryTHDesignation", "社名"],
      ["tableWorkHistoryTHCompany", "部署名"],
      ["tableWorkHistoryTHContent", "担当業務"],
      ["tableLicenseTHDateFrom", "取得日"],
      ["tableLicenseTHDateTo", " "],
      ["tableLicenseTHLicenseQualification", "資格名"],
      ["tableLicenseTHLicenseNumber", "資格番号"],
      ["tableLicenseTHLiContents", "備考・適用条件など"],
      ["staffHope", "治療履歴、職業、勤務時間、勤務地など、特にご要望がございましたら、ご記入ください。"],
    
    //PAYROLL INFO
      ["selectOptionSalaryPaymentMethod0", "給与支払方法の選択"],
      ["selectOptionSalaryPaymentForm0", "給与支払方法の選択"],
      ["selectOptionSalaryClosingDate0", "選択してください"],
      ["selectOptionPaidTarget", "選択してください"],
      ["selectOptionAccountType", "口座種別の選択"],
      ["selectOptionAccountTypeUsually", "普通"],
	  ["selectOptionAccountTypeCurrent", "当座"],
	  ["selectOptionAccountTypeSavings", "貯蓄"],
	  ["selectOptionAccountTypeOthers", "その他"],
    
    //Social Info
      ["insuranceTaxinformation", "社会保険・所得税・住民税情報"],
      ["selectOptionLongTermInsuranceStatus0", "介護保険加入状況を選択する"],
      ["selectOptionLongTermInsuranceStatus1", "未加入"],
      ["selectOptionLongTermInsuranceStatus2", "加入済"],
      ["selectIncomeTaxTaxpayer", "所得税納税者分類を選択"],
      ["selectOptionInstep", "甲"],
      ["selectOptionB", "乙"],
      ["selectOptionHinoe", "丙"],
      ["selectOptionWelfarePensionInsuranceGrade", "厚生年金保険等級を選択"],
      ["selectOptionWelfarePensionInsuranceGradeNotSubscribed", "未加入"],
      ["selectOptionEmploymentInsuranceCoverage", "雇用保険の補償範囲を選択"],
      ["SelectStaffResidentTaxClassification", "居住者税分類を選択"],
      ["addLicenseRow", "行を追加する"],
      ["addEducationalRow", "行を追加する"],
      ["addWorkRow", "行を追加する"],
      ["addSkillSheetRow", "行を追加する"],
      ["addDependentRow", "行を追加する"],
      ["addDependentRow", "行を追加する"],
      ["dependentGenderMale", "男"],
      ["dependentGenderFemale", "女"],
      ["dependentRelationshipWife", "配偶者"],
      ["dependentRelationshipChild", "子供"],
      ["dependentRelationshipFather", "父"],
      ["dependentRelationshipMother", "母"],
      ["dependentRelationshipOlderBrother", "兄弟"],
	  ["dependentRelationshipYoungerBrother", "弟"],
      ["dependentRelationshipSister", "姉妹"],
	  ["dependentRelationshipGrandchild", "孫"],
	  ["dependentRelationshipFather-in-law" ,"義父"],
      ["dependentRelationshipMother-in-law","義母"],
      ["dependentRelationshipGrandfather","祖父"],
      ["dependentRelationshipGrandmotherr" ,"祖母"],
	  ["dependentRelationshipGrandfather-in-law","義祖父"],
      ["dependentRelationshipGrandmother-in-law","義祖母"],
      ["dependentRelationshipOthers","その他"],
      ["dependentClassificationGeneralDependents", "一般扶養"],
      ["dependentClassificationSpecificDependents", "特別障害者"],
      ["dependentClassificationDependentsOfElderly", "老人扶養"],
      ["dependentLivingTogether", "同居"],
      ["dependentSeparated", "別居"],
      ["dependentSeparatedOverseas", "海外別居"],
      ["dependentGeneralDisabled", "一般障害者"],
      ["dependentSpeciallyDisabled", "特別障害者"],
      ["dependentHealthy", "健常者"],
    
      ["pageSpanConflictDateList", "紛争発生日（個別ユニット）リスト"],
      ["accordionDivCredentialsInformation", "資格情報"],
      ["pageSpanLicenceQualifi", "免許・資格"],
      ["#tableWorkHistoryTHYear", "開始日"],
      ["#tableWorkHistoryTHMonth", "終了日"],
      ["#tableWorkHistoryTHDesignation", "社名/イベント名"],
      ["#tableWorkHistoryTHCompany", "担当業務"],
      ["#tableWorkHistoryTHContent", "役職/ポジション"],
    
        
      ["#pageOption1Prefecture", "北海道"],
      ["#pageOption2Prefecture", "青森県"],
      ["#pageOption3Prefecture", "岩手県"],
      ["#pageOption4Prefecture", "宮城県"],
      ["#pageOption5Prefecture", "秋田県"],
      ["#pageOption6Prefecture", "山形県"],
      ["#pageOption7Prefecture", "福島県"],
      ["#pageOption8Prefecture", "茨城県"],
      ["#pageOption9Prefecture", "栃木県"],
      ["#pageOption10Prefecture", "群馬県"],
      ["#pageOption11Prefecture", "埼玉県"],
      ["#pageOption12Prefecture", "千葉県"],
      ["#pageOption13Prefecture", "東京都"],
      ["#pageOption14Prefecture", "神奈川県"],
      ["#pageOption15Prefecture", "新潟県"],
      ["#pageOption16Prefecture", "富山県"],
      ["#pageOption17Prefecture", "石川県"],
      ["#pageOption18Prefecture", "福井県"],
      ["#pageOption19Prefecture", "山梨県"],
      ["#pageOption20Prefecture", "長野県"], // changed
      ["#pageOption21Prefecture", "岐阜県"], // changed
      ["#pageOption22Prefecture", "静岡県"],
      ["#pageOption23Prefecture", "愛知県"],
      ["#pageOption24Prefecture", "三重県"],
      ["#pageOption25Prefecture", "滋賀県"],
      ["#pageOption26Prefecture", "京都府"],
      ["#pageOption27Prefecture", "大阪府"],
      ["#pageOption28Prefecture", "兵庫県"],
      ["#pageOption29Prefecture", "奈良県"],
      ["#pageOption30Prefecture", "和歌山県"],
      ["#pageOption31Prefecture", "鳥取県"],
      ["#pageOption32Prefecture", "島根県"],
      ["#pageOption33Prefecture", "岡山県"],
      ["#pageOption34Prefecture", "広島県"],
      ["#pageOption35Prefecture", "山口県"],
      ["#pageOption36Prefecture", "徳島県"],
      ["#pageOption37Prefecture", "香川県"],
      ["#pageOption38Prefecture", "愛媛県"],
      ["#pageOption39Prefecture", "高知県"],
      ["#pageOption40Prefecture", "福岡県"],
      ["#pageOption41Prefecture", "佐賀県"],
      ["#pageOption42Prefecture", "長崎県"],  //changed
      ["#pageOption43Prefecture", "熊本県"],
      ["#pageOption44Prefecture", "大分県"], // changed
      ["#pageOption45Prefecture", "宮崎県"],
      ["#pageOption46Prefecture", "鹿児島県"],
      ["#pageOption47Prefecture", "沖縄県"],
      ["pageOption0Prefecture", "県を選択"],
      ["#pageOption0Prefecture", "県を選択"],
    
      ["pageSpanOtheAddress", "住所"],
      ["staffEmergencyAddress", "例：渋谷区渋谷1-11-11○○○○ビル1F"],
      ["pageSpanOtherHelpAddress", "必ずアパート名や建物名は入力してください"],
      ["pageSpanEmergencyContactPhoneNumber", "緊急連絡先電話番号"],
      ["pageSpanHelpEmergencyContactPhoneNumber", "ハイフンなしで入力してください"],
      ["pageSpanRelationship", "続柄"],
      ["pageSpanDateofJoiningTheCompany", "入社年月日"],
      ["pageSpanStaffStaff", "スタッフ担当者"],
      ["pageSpanExperience", "経験"],
      ["staffExperience", "例：営業経験がある。レストランのリーダーとしての経験。 ※スタッフ一覧の検索項目「経験」からフリーワードで入力内容を検索できます。"],
      ["pageSpanStaffMemo", "スタッフメモ"],
      ["StaffMemo", "例：2月1日、派遣会社の業務指示に従わずに苦情が発生した。次の割り当てに注意してください。"],
      ["staffMemo", "例：2月1日、派遣会社の業務指示に従わずに苦情が発生した。次の割り当てに注意してください。"],
      ["pageSpanStaffInformationUpdateHistory", "スタッフ情報更新履歴"],
      ["StaffInformationUpdate", "更新日・更新スタッフは自動登録されますが、内部メモとしても使用できます。"],
      ["pageSpanValidClassification", "*有効区分"],
      ["option0ValidClassification", "区分を選択"],
      ["option1ValidClassification", "有効"],
      ["option2ValidClassification", "無効"],
      ["pageSpanDateofleavingthecompany", "退社年月日"],
      ["buttonUpdateStaff", "スタッフの更新"],
      ["buttonAddStaff", "スタッフを追加"],
      ["staffEmergencyContactName", "例：山田太郎"],
      ["staffEmergencyContactNameKatakana", "例：山田太郎"],
      ["staffEmergencyPostalCode", "例：1234567"],
      ["staffEmergencyContactPhoneNumber", "例：09012345678"],
      ["staffRelationship", "例：父親"],
      ["buttonEditOtherInformation", "その他の情報を編集する"],
      ["buttonEditLoginInformation", "ログイン情報の編集"],
      ["buttonEditSocialInformation", "社会情報の編集"],
      ["buttonEditSkillSheet", "スキルシートの編集"],
      ["buttonEditPayrollInformation", "給与情報の編集"],
      ["buttonEditStaffResume", "履歴書の編集"],
      ["buttonEditCredentialInformation", "資格情報の編集"],
      ["buttonEditTransportationInformation", "交通情報の編集"],
      ["buttonEditStaffInformation", "スタッフ情報の編集"],
      ["buttonSaveStaffInformation", "スタッフ情報の保存"],
      ["buttonSaveTransportationInformation", "交通情報の保存"],
      ["buttonSaveResumeInformation", "履歴書情報の保存"],
      ["buttonSavePayrollInformation", "給与情報の保存"],
      ["buttonSaveSocialInformation", "個人情報の保存"],
      ["buttonSaveLoginInformation", "ログイン情報の保存"],
      ["buttonSaveOtherInformation", "その他の情報の保存"],
      ["pageSpanGrievanceStatusFromStaff", "スタッフからの苦情状況"],
      ["pageSpanHelpGrievanceStatusFromStaff", "*入力内容は、このスタッフに関連して出力される派遣元管理台帳に反映されます。"],
      ["pageSpanContentOfEducationAndTraining", "教育訓練の日時と内容"],
      ["pageSpanHelpContentOfEducationAndTraining", "*入力内容は、このスタッフに関連して出力される派遣元管理台帳に反映されます。"],
      ["pageSpanContentOfCareerConsulting", "キャリアコンサルティングの日時と内容"],
      ["pageSpanHelpContentOfCareerConsulting", "*入力内容は、このスタッフに関連して出力される派遣元管理台帳に反映されます。"],
      ["pageSpanDetailsOfEmploymentStabilizationMeasures", "雇用安定化対策の詳細"],
      ["pageSpanHelpDetailsOfEmploymentStabilizationMeasures", "*入力内容は、このスタッフに関連して出力される派遣元管理台帳に反映されます。"],
      ["pageSpanCVFileUpload", "CSVファイルのアップロード"],
      ["pageSpanHelpCVFileDownload", "CSVファイルのダウンロード"],
      ["exampleModalCenterTitle", "バッチ削除"],
     ["modalH4AreYouSure", "本当ですか？"],
     ["modalH4ReallyWantToDelete", "本当にこのレコードを削除しますか？"],
     ["modalH4CannotBeUndone", "このプロセスを元に戻すことはできません。"],
     ["tableModalSearchStaffTHNo", "記録番号"],
     ["tableModalSearchStaffTHName", "名前"],
     ["tableModalSearchStaffTHNameKatakana", "名前カタカナ"],
     ["tableModalSearchStaffTHStaffCode", "スタッフコード"],
     ["batchDeleteConfirm", "確認"],
     ["batchDeleteClose", "選ぶ"]

];

StaffBatchRegister = [
	
	 ["titleStaffBatchRegistration", "スタッフ一括登録"],
	 ["pageSpanHeadingStaffBatchRegistration", "スタッフ一括登録"],
	 ["spanDownloadLink", "ファイルアップロード用のテンプレートのリンクをダウンロードするには、ここをクリックしてください"],
 	 ["buttonUploadFile", "ファイルをアップロードする"],
 	 ["exampleModalTitleUploadSummary", "ファイルをアップロードする"],
	 ["spanUploadedFileName", "アップロードされたファイル名："],
	 ["spanTotalRowCount", "合計行数："],
	 ["spanValidRowCount", "有効な行数："],
	 ["spanInvalidRowCount", "無効な行数："],
     ["btnDownloadSummaryFile", "要約ファイルのダウンロード"],
	 ["batchDeleteClose", "選ぶ"],

];

InChargeStaffChange = [
	 ["exampleModalCenterTitleInchargeStaff", "担当スタッフ一括変更"],
	 ["titleSelectStaffInCharge", "担当スタッフを選択"],
	 ["selectInchargeofStaffBatchChange", "担当スタッフを選択"],
	 ["tableModalSelectInChargeTHNo", "記録番号"],
     ["tableModalSelectInChargeTHName", "名前"],
     ["tableModalSelectInChargeTHNameKata", "名前カタカナ"],
     ["tableModalSelectInChargeTHStaffCode", "スタッフコード"],
     ["inchargebatchChangeClose", "選ぶ"],
     ["inchargebatchChangeConfirm", "確認"],  

];

staffErrorArray ={  "E1030":"生年月日範囲が無効です", 
					"E1031":"無効な電話番号です", 
					"E1032":"無効なメールアドレスです", 
					"E1033":"無効な名前です", 
					"E1034":"無効なスタッフコードです", 
					"E1035":"単価は数字でないといけません", 
					"E1036":"無効な価格帯です", 
					"E1037":"名前を確認してください", 
					"E1038":"名前カタカナを確認してください", 
					"E1039":"郵便番号を確認してください", 
					"E1040":"都道府県が選択してください", 
					"E1041":"住所をご確認ください", 
					"E1042":"住所カタカナをご確認ください", 
					"E1043":"生年月日をご確認ください", 
					"E1044":"入力してください", 
					"E1045":"ファックス番号を確認してください", 
					"E1046":"区分を選択選択してください", 
					"E1047":"区分を選択選択してください", 
					"E1048":"最寄駅を入力してください", 
					"E1049":"時間を分単位で入力してください(0～999)", 
					"E1050":"バス料金が無効です。", 
					"E1051":"教育情報は無効です", 
					"E1052":"作業履歴情報が無効です", 
					"E1053":"資格情報が無効です", 
					"E1054":"学歴情報は無効です。 行のすべての項目を埋める必要があります！", 
					"E1055":"作業履歴情報が無効です。 行のすべての項目を埋める必要があります！", 
					"E1056":"ライセンス資格情報が無効です。 行のすべての項目を埋める必要があります！", 
					"E1057":"日給単価を入力してください", 
					"E1058":"時給単価を入力してください", 
					"E1059":"支払い方法を選択してください", 
					"E1060":"給与支払用紙が必要です", 
					"E1061":"無効な銀行コードです", 
					"E1062":"無効な支店コードです", 
					"E1063":"無効な口座番号です", 
					"E1064":"番号を入力してください。", 
					"E1065":"選択してください", 
					"E1066":"区分を選択してください", 
					"E1067":"扶養家族の数が無効です", 
					"E1068":"扶養家族の情報が有効でない 行のすべての項目を埋める必要があります。", 
					"E1069":"メールアドレスが一致しません", "E1070":"郵便番号を入力してください。", 
					"E1071":" 緊急連絡先を入力してください", "E1072":" 入社日は必須入力です", 
					"E1073":"分類を選択してください", 
					"E1074":"名前にチェックを入れてください。", 
					"E1075":"職務経歴書の情報が有効ではありません。行のすべての項目を埋める必要があります。", 
					"E1076":"パスワードが無効です。", 
					"E1077":"パスワードが一致しません", 
					"E1078":"無効なファイルタイプです", 
					"E1079":"扶養家族情報は無効です。 行のすべての項目を埋める必要があります！",
					"E1080":"無効な家族名です", 
					"E1081":"無効な名前カタカナです", 
					"E1082":"無効な誕生日です",
					"E1083":"このメールアドレスはすでに存在しています",
					"E1084":"学歴情報は無効です。日付と学校名の欄は必ず入力してください。",
					"E1085":"職務経歴書の情報が無効です。各欄を入力してください",
					"E1086":"資格情報が無効です。 取得日と資格名の入力が必要です",}


