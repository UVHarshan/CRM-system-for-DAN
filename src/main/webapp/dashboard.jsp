<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleDashboard">Dashboard</title>
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
</style>
</head>

<body class="text-left">
	<%@ include file="common/CacheControl.jsp"%>
	<div id="sideBarDiv"
		class="app-admin-wrap layout-sidebar-vertical sidebar-full ">

		<!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->

		<!--  user -->

		<!-- ============ leftMenu start ============= -->
		<%@ include file="common/leftMenu.jsp"%>
		<!-- ============ leftMenu end ============= -->
		<!--  side-nav-close -->

		<div class="switch-overlay"></div>
		<div class="main-content-wrap mobile-menu-content bg-off-white m-0"
			style="z-index: 1;">

			<!-- ============ topMenu start ============= -->
			<%@ include file="common/topMenu.jsp"%>
			<!-- ============ topMenu end ============= -->

			<!-- ============ Body content start ============= -->

			<div class="main-content pt-2" style="z-index: 1;">


				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">

								<div class="row">
									<!-- ICON BG-->

									<div class="col-lg-3 col-md-6 col-sm-6">
										<div
											class="card card-icon-bg card-icon-bg-primary o-hidden m-3">
											<a href="quotation-management.jsp">
												<div class="card-body text-center">
													<i class="far fa-file-alt mr-3 mobile-hide text-30"></i>
													<div class="row" style="text-align: center;">
														<div class="col-12 p-0 " id="pageCardDivNumberofQuotation">Number
															of Quotation</div>
														<div class="col-12 pb-0 ">
															<p class="text text-24 pb-0 mb-2"
																id="pagePNumberofQuotationValue"></p>
														</div>
													</div>
												</div>
											</a>

										</div>
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<div
											class="card card-icon-bg card-icon-bg-primary o-hidden m-3">
											<a href="invoice-management.jsp">
												<div class="card-body text-center">
													<i class="far fa-file mr-3 text-30 mobile-hide "></i>
													<div class="row" style="text-align: center;">
														<div class="col-12 p-0 " id="pageCardDivNumberofInvoices">Number
															of Invoices</div>
														<div class="col-12 pb-0 ">
															<p class="text text-24 pb-0 mb-2"
																id="pagePNumberofInvoicesValue"></p>
														</div>
													</div>
												</div>
											</a>

										</div>
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<div
											class="card card-icon-bg card-icon-bg-primary o-hidden m-3">
											<a href="case-management.jsp">
												<div class="card-body text-center">
													<i class="far fa-calendar mr-3 mobile-hide text-30"></i>
													<div class="row" style="text-align: center;">
														<div class="col-12 p-0 " id="pageCardDivNumberofCases">Number
															of Cases</div>
														<div class="col-12 pb-0 ">
															<p class="text text-24 pb-0 mb-2"
																id="pagePNumberofCasesValue"></p>
														</div>
													</div>
												</div>
											</a>

										</div>
									</div>

									<div class="col-lg-3 col-md-6 col-sm-6">
										<div
											class="card card-icon-bg card-icon-bg-primary o-hidden m-3">
											<a href="staff-management.jsp">
												<div class="card-body text-center">
													<i class="far fa-user pt-1 mr-1 text-30"></i>
													<div class="row" style="text-align: center;">
														<div class="col-12 p-0 " id="pageCardDivTotalActiveStaff">Total
															Active Staff</div>
														<div class="col-12 pb-0 ">
															<p class="text text-24 pb-0 mb-2"
																id="pagePTotalActiveStaffValue"></p>
														</div>
													</div>
												</div>
											</a>

										</div>
									</div>
								</div>
								<!-- CARD ICON-->
								<div class="row">
									<div class="col-lg-12 col-xl-12 ">
										<div class="card m-3">
											<div class="card-body">
												<div class="card-title row">
													<div class="col-lg-10 col-md-6 ">
														<i class="i-File-Clipboard-File--Text cursor-pointer"
															role="generic"></i><span id="pageSpanDetails">
															Cases ( </span> <span id="pageSpanCaseCount"> </span> <span
															id="pageSpanDetails2"> In order of assignment
															deadline)</span>
													</div>
													<div class="col-lg-2 col-md-6 ">
														<button id="btnSeeMore"
															class="btn btn-success"
															role="button" onclick="seeMoreCases()">See More</button>
													</div>

												</div>
												<div class="table-responsive">
													<table
														class="display table table-striped table-bordered hover"
														id="dashboard_table" style="width: 100%">
														<thead>
															<tr class="thClass">
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableStaffTHNo">No</th>
																<th
																	style="background: rgb(245, 249, 253); color: #647a8e;"
																	id="tableTHProposalNumber">Proposal Number </td>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableTHCaseName">Case Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableTHCustomerCompanyName">Customer Company
																	Name</th>
																<th class="color-1"
																	style="background: rgb(208, 226, 241); color: #647a8e;"
																	id="tableTHCustomerRepresentativeName">Customer
																	Representative Name</th>
																<th class="TableTHMinWidth text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableTHPersonInchargeofCase">Person Incharge
																	of the Case</th>
																<th class="TableTHMinWidth-2 text-center"
																	style="background: #a0dade; color: #647a8e;"
																	id="tableTHAssignmentDeadline">Assignment Deadline</th>
																<th class="TableButtonTH"></th>
															</tr>
														</thead>
														<tbody id="tbodyId">

														</tbody>

													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- end of main-content -->
			</div>
			<!-- <div class="sidebar-overlay open"></div> Footer Start-->
			<div class="flex-grow-1"></div>

			<!-- ============ Footer start ============= -->
			<%@ include file="common/footer.jsp"%>
			<!-- ============ Footer end ============= -->

		</div>
	</div>
	<!-- ============ Search UI Start ============= -->

	<!-- ============ Search UI End ============= -->

	<span id="spanScriptID"></span>
	<script src="./dist-assets/js/language_main.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"dashboard");
    </script>

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
      const  serverHTTP = "<%=serverHTTP%>";
		const GUID = localStorage.getItem("GUID");
		const uuid = localStorage.getItem("uuid");

		const date = new Date();
		const currentYear = date.getFullYear();
		const currentMonth = date.getMonth() + 1;
		const currentDate = date.getDate();
		const today = currentYear + "-" + currentMonth + "-" + currentDate;

		$(document)
				.ready(
						function() {

							drawDtataTable(lan);

							let dataNode = '{"today" : "' + today + '"}';

							$
									.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Dashboard/GetCardCount',
										method : 'GET',
										contentType : 'application/json',
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												$(
														"#pagePNumberofQuotationValue")
														.html(
																result.data.noOfQuotation);
												$("#pagePNumberofInvoicesValue")
														.html(
																result.data.noOfInvoice);
												$("#pagePNumberofCasesValue")
														.html(
																result.data.noOfCase);
												$("#pagePTotalActiveStaffValue")
														.html(
																result.data.noOfStaff);
											} else {
												console
														.log("Sorry card Data Loding Error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

							$
									.ajax({
										beforeSend : function(request) {
											document
													.getElementById("loaderNotify").style.display = "";
											request.setRequestHeader("GUID",
													GUID);
										},
										url : serverHTTP
												+ 'Dashboard/SearchCases',
										method : 'POST',
										contentType : 'application/json',
										data : dataNode,
										dataType : 'json',
										success : function(result, status,
												request) {
											if (result.status == 200) {
												searchCases(result);
											} else {
												console
														.log("Sorry card Data Loding Error");
											}
										},
										complete : function(data) {
											document
													.getElementById("loaderNotify").style.display = "none";
										},
										error : function(error) {
											console.log(JSON.stringify(error));
										}
									});

						});

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
				columnDefs : [ {
					orderable : false,
					targets : 0
				}, {
					orderable : false,
					targets : 5
				},

				],
				order : [ 0, 'asc' ]

			});
		}
		
        function seeMoreCases()
        {
        	localStorage.setItem("fromDashboard", "yes"); 
        	window.location.href = "case-management.jsp";
        }

		function searchCases(result) {
			if (result.data != null) {
				table.destroy();
				$("#tbodyId").empty();
				for (i = 0; i < result.data.length; i++) {

					let proposalNumber = result.data[i].proposalNumber != null ? result.data[i].proposalNumber
							: "";
					let projectTitle = result.data[i].projectTitle != null ? result.data[i].projectTitle
							: "";
					let companyName = result.data[i].companyName != null ? result.data[i].companyName
							: "";
					let customerRepresentativeName = result.data[i].customerRepresentativeName != null ? result.data[i].customerRepresentativeName
							: "";
					let caseManager = result.data[i].caseManager != null ? result.data[i].caseManager
							: "";
					let assignmentDeadline = result.data[i].assignmentDeadline != null ? result.data[i].assignmentDeadline
							: "";

					let newRow = '<tr>' + '<td>'
							+ (i + 1)
							+ '</td>'
							+ '<td>'
							+ proposalNumber
							+ '</td>'
							+ '<td>'
							+ projectTitle
							+ '</td>'
							+ '<td>'
							+ companyName
							+ '</td>'
							+ '<td>'
							+ customerRepresentativeName
							+ '</td>'
							+ '<td>'
							+ caseManager
							+ '</td>'
							+ '<td>'
							+ assignmentDeadline
							+ '</td>'
							+ '<td ><button class="btn DetailsButton ml-1" name="Details" role="button" onclick="viewDetails('
							+ result.data[i].caseId
							+ ')"  id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button></td>'
							+ '</tr>';
					$("#dashboard_table tbody").append(newRow);
				}
				// 
				var rowCount = $('#dashboard_table tr').length - 1;
				$('#pageSpanCaseCount').html(rowCount);
				drawDtataTable(getSiteLanguage());
				loadSelectedLanguage(pageLanguage, "dashboard");
			}
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

		function setLanguageWithTables(selectedLanguage) {
			pageLanguage = selectedLanguage
			loadSelectedLanguage(selectedLanguage, "dashboard");
			setLanguage(selectedLanguage);
			table.destroy();
			drawDtataTable(selectedLanguage);
		}

		function viewDetails(caseId) {
			let url = "case-details.jsp";
			let form = $('<form action="' + url + '" method="post">'
					+ '<input type="hidden" name="caseId" value="'+caseId+'" />'
					+ '</form>');
			$('body').append(form);
			form.submit();
		}
	
</script></
																body>

</html>