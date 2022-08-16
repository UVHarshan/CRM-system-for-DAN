function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(pageData);
    convertContentToLanguageByName(pageNameData);
}

 TopMenu = [
    ["menuButtonProfile", "Profile"],
    ["menuButtonManual", "Manual"],
    ["menuButtonLogout", "Logout"]
];

  LeftMenu = [
	["pageTitle", "Item List"],
	["menuSpanHome", "Home"],
	["menuSubSpanHome", "Home"],
	["menuSpanItemList", "Item List"],
	["menuSpanShiftScheduleRegistration", "Shift Schedule"],
	["menuSpanMonthlyAttendanceList", "Attendance List"],
	["menuSpanStaffInformation", "Staff Information"]
];



 pageData = [
	["pageTitleStaffDashboard", "Staff Dashboard"],
	["pageSpanHeadingHome", "Home"],
	["pSpanHelloText", "Hello"],
	["spanTodayDeal", "Today's Deal"],
	["spanNoCaseRegisterdToday", "There Are No Case Registerd Today."],
	];

 pageNameData =[
	["spanTodayCaseName[]","Case Name :"],
	["spanTodayWorkLocation[]","Work Location : "],
	["spanTodayWorkScheduledTime[]","Scheduled Time : "]
	];