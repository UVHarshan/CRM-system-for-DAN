function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(Attendence);
    convertContentToLanguageByName(pageNameData);
}

TopMenu = [
       	["menuButtonProfile", "プロフィール"],
       	["menuButtonManual", "マニュアル"],
       	["menuButtonLogout", "ログアウト"]
];

LeftMenu = [
       	["menuSpanHome", "Home"],
       	["menuSpanItemList", "案件一覧"],
       	["menuSpanShiftScheduleRegistration", "シフト予定登録"],
       	["menuSpanMonthlyAttendanceList", "月次勤怠一覧"],
       	["menuSpanStaffInformation", "スタッフ情報"]
];

Attendence = [
		["pageTitleAttendanceList", "スタッフ - 出席者リスト"],
        ["pageSpanHeadingCaseList", " 参加者リスト"],
        ["pageSpanHeadingText1", "毎月の出席リストを確認できます。"],
        ["pageSpanHeadingText2", "行をタップすると、毎月の出席の詳細画面が表示されます。"],
		["pageSpanHeadingMonthlyAttendanceDetails", "勤怠詳細"],
		["buttonSpanReturn", "戻る"],
		["pageCaseViewSpanHeadingText1", "各実施日の勤怠情報の確認ができます。"],
		["pageCaseViewSpanHeadingText2", "※表示されている基本給、立替金などが未確定の金額の場合もあります。ご不明な点があれば、派遣会社にお問い合わせください。"],
		["tableTHNo", "番号"],
		["tableTHMonth", "月"]
];

pageNameData =[
		["pSpanImplementationDate", " 実施日： "],
		["pSpanProjectName", " プロジェクト名： "],
		["divWorkLocation", "勤務地"],
		["divWorkHoursStart", "労働時間開始"],
		["divWorkHoursEnd", "労働時間終了"],
		["divBasicSalary", "基本給（日給）"],
		["divAllowance", "手当"],
		["divOvertimeCost", "残業代"],
		["divAdvancePaymentTransportation", "前払い（交通費）"],
		["divAdvancePaymentExpenses", "前払い（費用）"],
		["divAdvancePaymentPurchaseMoney", "前払い（購入代金）"],
		["divAdvancePaymentAccommodationFee", "前払い（宿泊費）"],
		["divAdvancePaymentOther", "前払い（その他）"],
		["divTotalAdvancePayment", "合計前払い"]
	];