function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(StaffShiftSchedule);
}

TopMenu = [
 
     ["menuButtonProfile", "Profile"],
     ["menuButtonManual", "Manual"],
     ["menuButtonLogout", "Logout"],
];

LeftMenu = [
     ["menuSpanHome", "Home"],
     ["menuSpanItemList", "Item list"],
     ["menuSpanShiftScheduleRegistration", "Shift Schedule Registration"],
     ["menuSpanMonthlyAttendanceList", "Monthly Attendance List"],
     ["menuSpanStaffInformation", "Staff Information"]
];


StaffShiftSchedule = [
    ["pageSpanHeadingShiftScheduleRegistration","Shift Schedule Registration"],
    ["pageSpanHeadingText1","Please select whether or not you can go to work. The date once made available for work cannot be modified later."],
    ["spanBtnThisMonthShiftn","Shift In"],
    ["buttonSpanOutputMatterList","Shift"],
    ["buttonSpanReturn","Return"],
    ["spanUIThisMonth","November 2021"],
    ["spanAllChanged", "All Changed"],
    ["#tableImplementationDetailsTHNo","Date"],
    ["#tableImplementationDetailsTHDuplicateSelection","Yes/No"],
    ["#tableImplementationDetailsTHImplementationPeriod","Remark"],
    ["spanBelowTextOne","The date set to work is not available for modification later."],
    ["spanBelowTextTwo"," When you register the shift schedule, an email will be sent to the person in charge."],   
    ["spanBtnRegisterShiftSchedule","Register a shift schedule"]
];

