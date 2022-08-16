<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleInvoiceDetails">Invoice Details</title>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900"
	rel="stylesheet" />

<link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
<link href="./dist-assets/css/plugins/perfect-scrollbar.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="./dist-assets/css/plugins/fontawesome-5.css" />
<link href="./dist-assets/css/plugins/metisMenu.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="./dist-assets/css/plugins/datatables.min.css" />

<link href="./dist-assets/css/plugins/fontawesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />

<style>
.no-border {
	border-top-style: hidden;
	border-right-style: hidden;
	border-left-style: hidden;
	border-bottom-style: groove;
	border: none !important;
	background-color: #f8f9fa00 !important;
}

.no-outline:focus {
	outline: none !important;
	background-color: #f8f9fa00 !important;
}

.last-td-color {
	background-color: #578ebe;
	color: white;
	text-align: center;
}

.center-content {
	text-align: center;
	padding: auto;
}

.right-content {
	text-align: right;
}

.amount-content-color {
	background-color: #eee !important;
	text-align: right;
}
</style>
</head>

<body class="text-left">
	<%@ include file="common/CacheControl.jsp"%>
	<div id="sideBarDiv"
		class="app-admin-wrap layout-sidebar-vertical sidebar-full ">

		<!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
		<div class="sidebar-panel bg-white">
			<div
				class="gull-brand pr-3 text-center mt-4 mb-2 d-flex justify-content-center align-items-center">
				<img class="pl-3" src="./dist-assets/images/logo.png" alt="alt" />
				<!--  <span class=" item-name text-20 text-primary font-weight-700">GULL</span> -->
				<div class="sidebar-compact-switch ml-auto">
					<span></span>
				</div>
			</div>
			<!--  user -->
			<!-- ============ leftMenu start ============= -->
			<%@ include file="common/leftMenu.jsp"%>
			<!-- ============ leftMenu end ============= -->
			<!--  side-nav-close -->
		</div>
		<div class="switch-overlay"></div>
		<div class="main-content-wrap mobile-menu-content bg-off-white m-0"
			style="z-index: 1;">

			<!-- ============ topMenu start ============= -->
			<%@ include file="common/topMenu.jsp"%>
			<!-- ============ topMenu end ============= -->

			<!-- ============ Body content start ============= -->

			<div class="main-content pt-2" style="z-index: 1;">
				<!-- <div class="row">
                    <div class="col-md-5">
                        <i class=" text-20 cursor-pointer" role="generic"></i> <h1 class="mr-2">  Staff List</h1>
                    </div>
                    <div class="col-md-7">
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Batch Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff List CSV Output</button> 
                    </div>
                    
                </div> -->
				<!-- <div class="separator-breadcrumb border-top"></div>  -->

				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-4 ">
										<h1>
											<i class="fa fa-file-alt text-30" role="generic"></i><span
												id="pageSpanHeadingInvoiceDetails"> Invoice
												Details </span>
										</h1>

										<p class="pb-0 mb-0"
											id="pageSpanSubHeadingInvoiceDetails">You can modify the invoice</p>
									</div>
									<div class="col-md-8  ">
										<div class="row pt-0  pr-2">
											<div class="col-sm-12 pr-4 TopButDiv">

												<div class="btn-group">
												<div class="dropdown-menu" x-placement="bottom-start">
														<a class="dropdown-item" onclick="copyInvoice();"><span
															id="buttonValueSpanDeleteInvoice">Delete Invoice</span></a> 
													</div>
													<button
														class="DefaultButton btn btn-info TopButtonMinWidth mr-2 dropdown-toggle"
														type="button" data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<span id="buttonSpanDelete">Delete</span>
													</button>
													
												</div>
												<button
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button' >
													<span id="buttonSpanOutputInvoice">Output Invoice</span>
												</button>
												<button
													class="DefaultButton btn btn-info TopButtonMinWidth mr-2"
													role='button' onclick="window.history.back();">
													<span id="buttonSpanReturn">Return</span>
												</button>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div id="accordion" class="m-3 ">

											<div class="card SDAccordionCard mb-2">
												<div class="card-header  pt-2 pb-2" id="headingTwo">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															data-target="#resumeInformation" aria-expanded="false"
															aria-controls="resumeInformation">
															<div class="row">
																<div class="col-10 " style="text-align: left;"
																	id="accordionDivInvoiceInformation">Invoice
																	Information</div>

															</div>
														</button>
													</h5>
												</div>
												<div id="resumeInformation" class="collapse show"
													aria-labelledby="headingTwo" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span class="text-20" id="pageSpanInvoiceInformation">
																		Invoice Information </span>
																</div>


															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceNumber"> Invoice Number </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>

																	 <input
																		type="text" id="invoiceNumber"
																		class="form-control">

																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanInvoiceCreationDate"> Invoice Creation Date </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="date" id="invoiceCreationDate"
																		class="form-control" >

																</div>
															</div>



															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanorderNumber"> Order Number </span>
																</div>
																<div>
																	<input type="Text" id="orderNumber" class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanClosingDate"> Closing Date</span>
																	<span class="RequiredStar">*</span>
																</div>
																<div>
																<input type="date" id="closingDate" class="form-control">
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCaseManager"> Case Manager</span>
																</div>
																<div>
																	<input type="text" id="caseManager"
																		class="form-control" >
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCaseRepresentative">
																		Case Representative</span>
																</div>
																<div>
																	<input type="text"
																		id="caseRepresentativeName"
																		class="form-control">
																</div>
														
															</div>
															
															
																<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerCompanyName"> Customer Company Name</span>
																</div>
																<div>
																	<input id="customerCompanyName"
																		class="form-control" readonly="readonly"> 
																					</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCustomerRepresentativeName">
																		Customer Representative Name</span>
																</div>
																<div>
																	<input type="text"
																		id="customerRepresentativeName"
																		class="form-control" >
																</div>
															</div>
															
															
															

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTaxRate">Tax Rate</span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="taxRate"
																		name="taxRate" class="form-control"
																		role="combobox">
																		<option value="" id="selectOptionSelecttaxRate">Select
																		 Tax</option>
																		<option id="selectOptionSelecttaxRate8" value="1">8%</option>
																		<option id="selectOptionSelecttaxRate10" value="2">10%</option>
																	</select>
																</div>
															</div>

															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBillingStatus"> Billing	Status </span><span class="RequiredStar">*</span>
																</div>
																<div>
																	<select id="billingStatus"
																		name="billingStatus" class="form-control"
																		role="combobox">
																		<option value=""
																			id="selectOptionSelectInvoiceStatus">Select
																			Invoice Status</option>
																		<option value="1" id="pageSpanBillingStatusMakeAInvoice">Make
																			a Invoice</option>
																		<option value="2" id="pageSpanBillingInvoiceSubmitted">Invoice
																			Submitted</option>
																		<option value="3" id="pageSpanBillingDuringNegotiations">During
																			Negotiations</option>
																		<option value="4" id="pageSpanBillingReceived">Orders
																			Received</option>
																		<option value="5" id="pageSpanBillingOnHold">On Hold</option>
																		<option value="6" id="pageSpanBillingCancel">Cancel</option>
																	</select>
																</div>
															</div>

															
															
														</div>
										
													
															<div class="col-sm-12 col-md-12 col-lg-12 mt-3">
																<div class="table-responsive">
																	<table
																		class="display table table-striped table-bordered mb-0"
																		id="InvoiceDetails_table" style="width: 100%">
																		<thead id="InvoiceDetailsTaxableTheadId">
																			<tr>
																				<th id="tableInvoiceDetailsTHNo">No</th>
																				<th id="tableInvoiceDetailsTHMajorItems"
																					style="width: 40%"> Item</th>
																				<th id="tableInvoiceDetailsTHContents" style="width: 30%">Contents</th>
																				<th id="tableInvoiceDetailsTHAmountMoney"
																					style="width: 20%">Amount of Money</th>
																				
																				<th id="tableInvoiceDetailsTHConsumptionTax" style="width: 30%">Consumption
																					Tax</th>
																					<th id="tableInvoiceDetailsTHConsumptionTaxSubTotal" style="width: 30%">Consumption
																					Sub Total</th>
																			</tr>
																		</thead>
																		<tbody id="InvoiceDetailsTaxableTbodyId">
																			<tr >
																				<input type="hidden" name="InvoiceItemTaxableID[]">
																				<td class=""></td>
																				<td class="center-content"></td>
																				<td><input
																					name="InvoiceItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
													<td class="amount-content-color" name="InvoiceItemNonTaxableAmountMoney[]"></td>
																				<td >
																				<button id="Calculation1" class="DefaultButton3 btn btn-info TopButtonMinWidth mr-2" >Calculation</button>
																				</td>
																				<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																			</tr>
																			<tr >
																				<input type="hidden" name="InvoiceItemTaxableID[]">
																				<td class=""></td>
																				<td class="center-content"></td>
																				<td><input
																					name="InvoiceItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																			<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																				<td >
																				<button id="Calculation2" class="DefaultButton3 btn btn-info TopButtonMinWidth mr-2" >Calculation</button>
																				</td>
																				<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																			</tr>
																			<tr >
																				<input type="hidden" name="InvoiceItemTaxableID[]">
																				<td class=""></td>
																				<td class="center-content"></td>
																				<td><input
																					name="InvoiceItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
											<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																				<td >
																				<button id="Calculation3" class="DefaultButton3 btn btn-info TopButtonMinWidth mr-2" >Calculation</button>
																				</td>
																				<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																			</tr>
																			<tr >
																				<input type="hidden" name="InvoiceItemTaxableID[]">
																				<td class=""></td>
																				<td class="center-content"></td>
																				<td><input
																					name="InvoiceItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																			<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																				<td>
																				<button id="Calculation4" class="DefaultButton3 btn btn-info TopButtonMinWidth mr-2" >Calculation</button>
																				</td>
																				<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																			</tr>
																			<tr id="InvoiceDetailsTaxableTrId">
																				<input type="hidden" name="InvoiceItemTaxableID[]">
																				<td class=""></td>
																				<td class="center-content"></td>
																				<td><input
																					name="InvoiceItemTaxableItemName[]" type="text"
																					class="form-control no-border no-outline item-non-major"></td>
																			<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																				<td >
																				<button id="Calculation5" class="DefaultButton3 btn btn-info TopButtonMinWidth mr-2" >Calculation</button>
																				</td>
																				<td class="amount-content-color"
																					name="InvoiceItemNonTaxableAmountMoney[]"></td>
																			</tr>
																		
																		</tbody>
																		<tfoot id="InvoiceDetailsTaxableTfootId">
																			<tr>
																				<th colspan="2"
																					id="tableInvoiceDetailsSubtotalTaxable"
																					class="right-content"></th>
																				<th colspan="1" style="border-right: none"></th>
																				<th colspan="1" class="amount-content-color">
																					<span id="tableInvoiceDetailsSubtotalTaxableVal"
																					style="border-left: none; border-right: none;"></span>
																				</th>
																				
																				
																				<th colspan="1" style="border-right: none"></th>
																				<th colspan="1" class="center-content">
																					<button class="btn SuccessColor"
																						onclick="addTaxableInvoiceItemRow()"
																						id="TaxableInvoiceItemRowAdd">Add Row</button>
																				</th>
																			</tr>
																			<tr >
																				<th colspan="2"
																					id="tableInvoiceDetailsSubtotalTaxable"
																					class="right-content"></th>
																				<th colspan="1" style="border-right: none">Total:</th>
																				<th colspan="1" class="amount-content-color">¥
																					<span id="tableInvoiceDetailsSubtotalTaxableVal"
																					style="border-left: none; border-right: none;">0</span>
																				</th>
																				<th colspan="1" style="border-right: none">Total:</th>
																				<th colspan="1" class="center-content">
																					<span id="tableInvoiceDetailsSubtotalTaxableVal2"
																					style="border-left: none; border-right: none;">0</span>
																			
																				</th>
																			</tr>
																		</tfoot>
																	</table>

															</div>
														</div>




														<div class="row pt-3 pb-3">
															<div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks </span>
																</div>
															</div>
															<div class="col-sm-12 col-md-12 col-lg-12">
																<textarea class="form-control" id="InvoiceRemarks"
																	placeholder=""></textarea>
															</div>


														</div>

														<div
															class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC">
															<button class="btn btn-info"
																id="buttonUpdateInvoiceDetails">Update Invoice</button>
														</div>

													</div>
												</div>
											</div>





										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
 <div class="loading" id="loaderNotify"  style="display: none;"> 
						 <div class="spinner-bubble spinner-bubble-primary m-7"></div>
                         </div>
				<!-- end of main-content -->
			</div>
			<!-- <div class="sidebar-overlay open"></div> Footer Start-->
			<div class="flex-grow-1"></div>
			<!-- Footer Start -->

			<!-- ============ Footer start ============= -->
			<%@ include file="common/footer.jsp"%>
			<!-- ============ Footer end ============= -->

			<!-- fotter end -->
		</div>
	</div>
	<!-- ============ Search UI Start ============= -->

	<!-- ============ Search UI End ============= -->

	<span id="spanScriptID"></span>
	<script src="./dist-assets/js/language_main.js"></script>


	<script src="./dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
	<script src="./dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
	<script src="./dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="./dist-assets/js/scripts/tooltip.script.min.js"></script>
	<script src="./dist-assets/js/scripts/script.min.js"></script>
	<script src="./dist-assets/js/scripts/script_2.min.js"></script>
	<script src="./dist-assets/js/scripts/sidebar.large.script.min.js"></script>
	<script src="./dist-assets/js/plugins/feather.min.js"></script>
	<script src="./dist-assets/js/plugins/metisMenu.min.js"></script>
	<script src="./dist-assets/js/scripts/layout-sidebar-vertical.min.js"></script>
	<script src="./dist-assets/js/plugins/echarts.min.js"></script>
	<script src="./dist-assets/js/scripts/echart.options.min.js"></script>
	<script src="./dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
	<script src="./dist-assets/js/plugins/datatables.min.js"></script>
	<script src="./dist-assets/js/scripts/datatables.script.min.js"></script>


	<script>
	$(document).ready(function() {

		let dataSet = '{"uuid" : "' + uuid + '"}';

		drawDtataTable(lan);

		

	

		


	});





var table;
var dataList;

function drawDtataTable(language) {
if (language == "Japanese") {
search = "探す";
info = "ページを表示しています _PAGE_ の _PAGES_";
lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
zeroRecords = "見つからない - すいません";
infoEmpty = "記録はありません";
infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
previous = "前";
next = "次";
first = "最初のページ";
last = "最終ページ";

} else {
search = "Search";
info = "Showing page _PAGE_ of _PAGES_";
lengthMenu = "Display _MENU_ records per page";
zeroRecords = "Nothing found";
infoEmpty = "No records available";
infoFiltered = "(filtered from _MAX_ total records)";
previous = "Previous";
next = "Next";
first = "First page";
last = "Last page";
}

table = $('#search_table').DataTable({
language : {
search : search,
info : info,
lengthMenu : lengthMenu,
zeroRecords : zeroRecords,
infoEmpty : infoEmpty,
infoFiltered : infoFiltered,
"paginate" : {
	previous : previous,
	next : next,
	first : first,
	last : last
}
},
responsive : true,
responsive : {
details : {
	type : 'column',
	target : 'tr'
}
},
columnDefs : [ 
{
orderable : false,
targets : 0
},{
orderable : false,
targets : 1
}, {
orderable : false,
targets : 5
}, {
responsivePriority : 1,
targets : 5
}, {
responsivePriority : 2,
targets : 2
}, ],
order : [ 1, 'asc' ]

});
}

function addTaxableInvoiceItemRow()
{
    var $tr    =  $("#InvoiceDetailsTaxableTrId").first('tr');
    var $clone =  $tr.clone();
    $clone.find('input').val('');
    $("#InvoiceDetailsTaxableTbodyId").append($clone);
}


function setLanguageWithTables(selectedLanguage) {
pageLanguage = selectedLanguage
loadSelectedLanguage(selectedLanguage, "assignment");
setLanguage(selectedLanguage);
table.destroy();
drawDtataTable(selectedLanguage);
}

window.onscroll = function() {
myFunction()
};

var topNewBar = document.getElementById("topNewBar");
var sticky = topNewBar.offsetTop;

function myFunction() {
if (window.pageYOffset >= sticky) {
topNewBar.classList.add("sticky")
} else {
topNewBar.classList.remove("sticky");
}
}

// Staff Search table result dropdown values load using below arrays, So If we are doing some changes we have to update this arrays too.
var genderArray = {
English : {
"" : "",
1 : "Male",
2 : "Female"
},
Japanese : {
"" : "",
1 : "男",
2 : "女性"
}
};
var attributeArray = {
English : {
"" : "",
1 : "Elderly",
2 : "Foreign Student",
3 : "Foreign worker",
4 : "High schooler"
},
Japanese : {
"" : "",
1 : "お年寄り",
2 : "留学生",
3 : "外国人労働者",
4 : "高校生"
}
};
var validClassificationArray = {
English : {
"" : "",
1 : "Valid",
2 : "Invalid"
},
Japanese : {
"" : "",
1 : "有効",
2 : "無効"
}
};
var dispatchClassificationArray = {
English : {
"" : "",
1 : "General Dispatch",
2 : "Out Sourcing",
3 : "Temp -to- Perm",
4 : "Talent Indtroduction/Recruiting/Placement",
},
Japanese : {
"" : "",
1 : "ジェネラルディスパッチ",
2 : "アウトソーシング",
3 : "温度-に-パーマ",
4 : "才能の紹介/募集/配置",
}
};
var occupationClassificationArray = {
English : {
"" : "",
1 : "Office System",
2 : "Sales / Sales System",
3 : "IT / Creative",
4 : "Medical/Welfare System",
5 : "Manufacturing Business",
6 : "Professional",
7 : "Others"
},
Japanese : {
"" : "",
1 : "オフィスシステム",
2 : "販売/販売システム",
3 : "IT /クリエイティブ",
4 : "医療・福祉制度",
5 : "製造業",
6 : "プロ",
7 : "その他"
}
};

var prefectureArray = {
English : {
"" : "",
1 : "Hokkaido",
2 : "Aomori",
3 : "Iwate",
4 : "Miyagi",
5 : "Akita",
6 : "Yamagata",
7 : "Fukushima",
8 : "Ibaraki",
9 : "Tochigi",
10 : "Gunma",
11 : "Saitama",
12 : "Chiba",
13 : "Tokyo",
14 : "Kanagawa",
15 : "Niigata",
16 : "Toyama",
17 : "Ishikawa",
18 : "Fukui",
19 : "Yamanashi",
20 : "Nagano",
21 : "Gifu",
22 : "Shizuoka",
23 : "Aichi",
24 : "Mie",
25 : "Shiga",
26 : "Kyoto",
27 : "Osaka",
28 : "Hyogo",
29 : "Nara",
30 : "Wakayama",
31 : "Tottori",
32 : "Shimane",
33 : "Okayama",
34 : "Hiroshima",
35 : "Yamaguchi",
36 : "Tokushima",
37 : "Kagawa",
38 : "Ehime",
39 : "Kochi",
40 : "Fukuoka",
41 : "Saga",
42 : "Nagasaki",
43 : "Kumamoto",
44 : "Oita",
45 : "Miyazaki",
46 : "Kagoshima",
47 : "Okinawa"
},
Japanese : {
"" : "",
1 : "北海道",
2 : "青森",
3 : "岩手",
4 : "宮城",
5 : "秋田",
6 : "山形",
7 : "福島",
8 : "茨城",
9 : "栃木",
10 : "群馬",
11 : "さいたま",
12 : "千葉",
13 : "東京",
14 : "神奈川",
15 : "新潟",
16 : "富山",
17 : "石川",
18 : "福井",
19 : "山梨",
20 : "長野",
21 : "岐阜",
22 : "静岡",
23 : "愛知",
24 : "私の",
25 : "滋賀",
26 : "京都",
27 : "大阪",
28 : "兵庫",
29 : "奈良",
30 : "和歌山",
31 : "鳥取",
32 : "島根",
33 : "岡山",
34 : "広島",
35 : "山口",
36 : "徳島",
37 : "香川",
38 : "愛媛",
39 : "高知",
40 : "福岡",
41 : "佐賀",
42 : "長崎",
43 : "熊本",
44 : "大分",
45 : "宮崎",
46 : "鹿児島",
47 : "沖縄"
}
};

 
        </script>
</body>

</html>