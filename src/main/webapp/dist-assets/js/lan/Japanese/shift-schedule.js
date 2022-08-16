function switchLanguage(siteLanguage) {
    convertContentToLanguage(TopMenu);
    convertContentToLanguage(LeftMenu);
    convertContentToLanguage(StaffShiftSchedule);
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
   
StaffShiftSchedule = [
    ["pageSpanHeadingShiftScheduleRegistration","シフト予定登録"],
    ["pageSpanHeadingText1","出勤可否を選択してください。一度勤務可にした日付は、後から修正できません。 ※シフトは月末までに提出してください。 （提出ルールについては、所属先の人材派遣会社に確認してください）"],
    ["spanBtnThisMonthShiftn","月のシフト"],
    ["buttonSpanOutputMatterList","月のシフト"],
    ["buttonSpanReturn","戻る"],
    ["spanUIThisMonth"," "],
    ["spanAllChanged", "全て変更"],
    ["#tableImplementationDetailsTHNo","日付"],
    ["#tableImplementationDetailsTHDuplicateSelection","可否"],
    ["#tableImplementationDetailsTHImplementationPeriod","備考"],
    ["spanBelowTextOne","※勤務可に設定した日は後から修正はできません。 ※シフト予定を登録すると担当者にメールが送信されます。"],
    ["spanBelowTextTwo","※案件が割り当てられる場合は、案件割当メールが後日送信されます。"],   
    ["spanBtnRegisterShiftSchedule","シフト予定を登録する"]
    ];
