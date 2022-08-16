function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(Attendence);
    convertContentToLanguageByName(pageNameData);
}

TopMenu = [          
           ["menuButtonProfile", "Profile"],
           ["menuButtonManual", "Manual"],
           ["menuButtonLogout", "Logout"]
       ];

 LeftMenu = [
            ["menuSpanHome", "Home"],
            ["menuSpanItemList", "Item list"],
            ["menuSpanShiftScheduleRegistration", "Shift Schedule"],
            ["menuSpanMonthlyAttendanceList", "Attendance List"],
            ["menuSpanStaffInformation", "Staff Information"]
 ];

 Attendence = [
			["pageTitleAttendanceList", "Staff - Attendance List"],
            ["pageSpanHeadingCaseList", " Attendance List"],
            ["pageSpanHeadingText1", "You can check the monthly attendance list."],
            ["pageSpanHeadingText2", "Tap a row to display the monthly attendance details screen."],
			["pageSpanHeadingMonthlyAttendanceDetails", "Attendance Details"],
			["buttonSpanReturn", "Return"],
			["pageCaseViewSpanHeadingText1", "You can check the attendance information for each implementation day."],
			["pageCaseViewSpanHeadingText2", "* The displayed basic salary, advance payment, etc. may be undecided. If you have any questions, please contact the dispatching company."],
			["tableTHNo", "No"],
			["tableTHMonth", "Month"],
		
			
];

pageNameData =[
		["pSpanImplementationDate", " Implementation Date : "],
		["pSpanProjectName", " Project Name : "],
		["divWorkLocation", "Work Location"],
		["divWorkHoursStart", "Work Hours Start"],
		["divWorkHoursEnd", "Work Hours End"],
		["divBasicSalary", "Basic Salary(Daily Salary)"],
		["divAllowance", "Allowance"],
		["divOvertimeCost", "Overtime Cost"],
		["divAdvancePaymentTransportation", "Advance Payment(Transportation Expenses)"],
		["divAdvancePaymentExpenses", "Advance Payment(Expenses)"],
		["divAdvancePaymentPurchaseMoney", "Advance Payment(Purchase Money)"],
		["divAdvancePaymentAccommodationFee", "Advance Payment(Accommodation Fee)"],
		["divAdvancePaymentOther", "Advance Payment(Other)"],
		["divTotalAdvancePayment", "Total Advance Payment"]
	];