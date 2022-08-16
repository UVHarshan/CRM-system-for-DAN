function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(CaseList);
    convertContentToLanguage(CaseView);
     convertContentToLanguage(CaseCloseReport);
}

TopMenu = [
 
    ["menuButtonProfile", "Profile"],
    ["menuButtonManual", "Manual"],
    ["menuButtonLogout", "Logout"]
];

LeftMenu = [
     ["menuSpanHome", "Home"],
     ["menuSpanItemList", "Item list"],
     ["menuSpanShiftScheduleRegistration", "Shift Schedule Registration"],
     ["menuSpanMonthlyAttendanceList", "Monthly Attendance List"],
     ["menuSpanStaffInformation", "Staff Information"]
];
     
CaseList = [
   ["pageSpanHeadingCaseList", "Case List"],
   ["buttonSpanReturn", "Return"],
   ["pageSpanHeadingText1", "We will confirm the matter information and contact / report the business."],
   ["pageSpanHeadingSubTextPrevious", "Previous"],
   ["pageSpanHeadingSubTextConfirmedandReported", ": Confirmed and reported the day before"],
   ["pageSpanHeadingSubTextOut", "Out"],
   ["pageSpanHeadingSubTextDepartureReported", ": Departure reported"],
   ["pageSpanHeadingSubTextArrival", "Arrival"],
   ["pageSpanHeadingSubTextArrivalReported", "Arrival reported"],
   ["pageSpanHeadingSubTextEnd", "End"],
   ["pageSpanHeadingSubText", ": Reported end of work"],
   ["tableImplementationDetailsTHNo", "No"],
   ["tableTHImplementationDate", "Implementation Date / Case Name"],
   ["tableTHWorkInformation", "Work Information"]
	          
];

CaseView = [
     ["pageSpanHeadingCaseView", "Case View"],
     ["buttonSpanReturn", "Return"],
     ["pageCaseViewSpanHeadingText1", "You can make various reports such as departure reports."],
     ["spanImplementationDate", "Implementation Date"],
     ["spanCaseTitle", "Case Title"],
     ["spanWorkLocation", "Work Location"],
     ["spanWorkAddress", "Work Address (Including Contact Information)"],
     ["spanNearestStation", "Nearest Station To The Venue"],
     ["spanWorkingHours", "Working Hours"],
     ["spanScheduledDepartureTime", "Scheduled Departure Time"],
     ["spanBasicSalary", "Basic Salary (Daily Salary)"],
     ["spanDetailsImplementationInformation", "Details Of Implementation Information"],
     ["spanConfirmedDayBefore", "Confirmed The Day Before"],
     ["SpanConfirmedDayBefore", "Report The Day Before"],
     ["PConfirmedDayBeforeHelpText", "Please be sure to report the confirmation the day before by tapping the button when confirming the day before."],
     ["spanScheduledDepartureTime", "Scheduled Departure Time"],
     ["spanReasonForAbsenteeism", "Reason For Absenteeism"],
     ["spanAbsenceReport", "Absence Report"],
     ["ButtonSpanReportAbsenteeism", "Report Absenteeism"],
     ["PReportAbsenteeismHelpText", "If you are absent, please be sure to report your absence by tapping the button."],
     ["spanDepartureConfirmation", "Departure Confirmation"],
     ["spanReportDeparture", "Report Departure"],
     ["PDepartureConfirmationHelpText", "Please be sure to report your departure by tapping the button at the time of departure."]

 ];
 
 CaseCloseReport = [
	["pageSpanHeadingCaseCloseReport", "Case Close Report"],
	["buttonSpanReturn", "Return"],
	["pageCaseCloseReportSpanHeadingText1", "Please enter overtime hours, transportation expenses, etc. and press the confirm button at the end."],
	["pageCaseCloseReportSpanHeadingText2", "If the break time includes the midnight time zone (22: 00-05: 00), enter it in the midnight break time."],
	["pageCaseCloseReportSpanHeadingText3", "Example: If you take a break from 1:00 to 2:00, enter the break time 1:00 and midnight break time 1:00. Example: If you take a break from 21:00 to 22:00, enter only the break time 1:00."],
	["spanImplementationDate", "Implementation Date"],
	["spanCaseTitle", "Case Title"],
	["spanWorkLocation", "Work Location"],
	["spanWorkingHours", "Working Hours"],
	["spanStartTime", "Start Time"],
	["spanEndingTime", "Ending Time"],
	["divEndingTimeHelpText", "The start time and end time will be the reference for the hourly wage calculation, so enter them correctly."],
	["spanBreakTime", "Break Time"],
	["spanInsideMidnightBreakTime", "(Inside) Midnight Break Time"],
	["spanActualWorkingHours", "Actual Working Hours"],
	["spanOvertimeHours", "Overtime Hours"],
	["spanScheduledDepartureTime", "Photo"],
	["spanPhotoFileType", "Image files (png, jpg, gif) only"],
	["AddNewFile", "Add New File"],
	["spanClosingRemarks", "Closing Remarks"],
	["buttonAttendanceReport", "Attendance Report"],
	["spanHeddingAdvancePayment", "Advance payment (transportation expenses)"],
	["tableTHNo", "No"],
	["tableTHNominal", "Nominal"],
	["tableTHAmountOfMoney", "Amount Of Money"],
	["spanTotalAdvancePayment", "Total Advance Payment"],
	["buttonAddAdvancePayment", "Add Row"],
	["buttonExpenseReport", "Expense Report"]
];
    
