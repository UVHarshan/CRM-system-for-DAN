function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(pageData);
    convertContentToLanguageByName(pageNameData);
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
		["menuSpanItemList", "アイテムリスト"],
		["menuSpanShiftScheduleRegistration", "シフトスケジュール"],
		["menuSpanMonthlyAttendanceList", "参加者リスト"],
		["menuSpanStaffInformation", "スタッフ情報"]
];

 pageData = [
	["pageTitleStaffDashboard", "スタッフダッシュボード"],
	["pageSpanHeadingHome", "家"],
	["pSpanHelloText", "こんにちは"],
	["spanTodayDeal", "今日の取引"],
	["spanNoCaseRegisterdToday", "今日登録されたケースはありません。"],
	];

pageNameData =[
	["spanTodayCaseName[]","ケース名 :"],
	["spanTodayWorkLocation[]","勤務地 : "],
	["spanTodayWorkScheduledTime[]","予定時間 : "]
	];
