<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title id="pageTitleEmailTemplateDetails">Email Template Details</title>
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


				<div class="row">
					<div class="col-md-12">
						<div id="bodyMainCard" class="card mb-4">
							<div class="card-body p-0">
								<div class="row pt-4 mt-2 ml-2">
									<div class="col-sm-12 TopActionButDiv mr-4 pr-4 "></div>
									<div class="col-md-8 ">
										<h1>
											<i class="fa fa-envelope text-30" role="generic"></i><span
												id="pageSpanHeadingEmailTemplateDetails">Email Template Details</span>
										</h1>

										<p class="pb-0 mb-0" id="pageSpanSubHeadingEmailTemplateDetails">You can modify the email template.</p>
									</div>
									<div class="col-md-4">
										<div class="row pt-0 ">
											<div class="col-sm-12 pr-4  TopButDiv">
											
												<button onclick="window.history.back();" class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'>
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
												<div class="card-header pt-2 pb-2" id="headingOne">
													<h5 class="mb-0">
														<button class="btn btn-link2 collapsed SDAccordion"
															 data-target="#customerInformation"
															aria-expanded="false" aria-controls="customerInformation">
															<div class="row">
																<div class="col-10" style="text-align: left;"
																	id="accordionDivEmailTemplateInformation">Email Template Information</div>
																<div class="col-2" style="text-align: right;">
																	
																</div>
															</div>
														</button>
													</h5>
												</div>

												<div id="customerInformation" class="collapse show"
													aria-labelledby="headingOne" data-parent="#accordion">
													<div class="card-body SDAccordionCardBody">
														<div class="row pb-4">
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanCode"> Code </span><span
																		class="RequiredStar">*</span>
																</div>
																<div>
																	<input type="text" readonly="readonly" id="code" class="form-control" maxlength="255">
																</div>
															</div>
															
															<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTemplateName">Template Name </span>
																</div>
																<div>
																	<input type="text" id="templateName" class="form-control" maxlength="255"> 
																</div>
															</div>
															
															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanTitle"> Title</span>
																</div>
																<div>
																	<input type="text" id="title" class="form-control" maxlength="255"> 
																</div>
															</div>
															
															<div class="col-sm-12 col-md-12 col-lg-12 pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanBody"> Body</span>
																</div>
																<div>
																	<textarea id="body" class="form-control" maxlength="255"> </textarea>
																</div>
															</div>
															
															
															<div class="col-sm-12 col-md-6 col-lg-6  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanEmbeddedCharactersforBody">Embedded characters for body

																</span><span class="RequiredStar">*</span>
																<p id="helpmbeddedCharactersforBody"> If you select from the list, it will be inserted in the text.</p>
																</div>
																<div>
																<select name="data[MailTemplate][codes]" class="form-control input-code" id="embeddedCharactersforBody">
																
																</select>
																</div>
															</div>
															
															<div class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanUse">Use</span>
																</div>
																<div>
																	<textarea type="text" id="use" class="form-control"></textarea>
																</div>
															</div>													
															<div class="col-sm-12 col-md-12 col-lg-12  pt-2 pl-3 pr-3">
																<div class="DetailsTitleText">
																	<span id="pageSpanRemarks">Remarks</span>
																</div>
																<div>
																	<textarea type="text" id="remarks" class="form-control"></textarea>
																</div>
															</div>													
														</div>
															<div class="row pb-2">															
																<div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-3 mt-3 ContentAlignRC">
															<button class="btn DefaultButton btn-info TopButtonMinWidth"
																	id="buttonUpdateEmailTemplate" onclick="saveTemplate()">    Update Email Template</button>
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
				</div>
 <div class="loading" id="loaderNotify" style="display: none;"> 
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

    <script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"email-templates");
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

	<script src="./dist-assets/js/common-validations.js"></script>
	<script src="./dist-assets/js/customer-details-validate.js"></script>
		
		
	<script>
		//const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	    const serverHTTP = "<%=serverHTTP%>";
	    //const serverHTTP = "http://sola.ml/SOLA-API/";
        const  GUID = localStorage.getItem("GUID");  
        const  uuid = localStorage.getItem("uuid");

        const templateId = "<%= request.getParameter("templateId")%>" ;

		$(document)
				.ready(
						function() {

							let dataSet = '{"id" : "'+templateId+'"}';
					        
					        $.ajax({
					            beforeSend: function(request) {
					            	 document.getElementById("loaderNotify").style.display = "";
					               request.setRequestHeader("GUID", GUID);
					            },
					            url: serverHTTP +'MasterAdminTax/ViewEmailTemplate',
					            method: 'POST',
					            contentType: 'application/json',
					            data: dataSet,
					            dataType: 'json',
					             success: function(result, status, request){
					             if(result.status==200)
					            	 {
					            	  viewTemplate(result);
					            	 }else{
					            		// showMessage("Sorry Data Loding Error");
					            	 }
					             },
					             complete:function(data){
					            	   document.getElementById("loaderNotify").style.display = "none";
					            	   },
					             error: function(error) {
					             console.log(JSON.stringify(error));
					          }
					        });
						        
						       
						});

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

		var table;

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
				zeroRecords = "Nothing found - sorry";
				infoEmpty = "No records available";
				infoFiltered = "(filtered from _MAX_ total records)";
				previous = "Previous";
				next = "Next";
				first = "First page";
				last = "Last page";
			}

			table = $('#search_staff_table').DataTable({
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
				}
			});
		}
		
		function viewTemplate(result)
		{
			document.getElementById("code").value = result.data1.code;
			document.getElementById("templateName").value = result.data1.templateName;
			document.getElementById("title").value = result.data1.title;
			document.getElementById("body").value = result.data1.body;
			document.getElementById("use").value = result.data1.use;
			document.getElementById("remarks").value = result.data1.remarks;
			
			var select  = document.getElementById('embeddedCharactersforBody');
			
			if(result.data2 != null)
			{
				for(i=0 ; i<result.data2.length; i++ )
				{
					select.options[select.options.length] = new Option(result.data2[i].name, result.data2[i].value);
				}
				
			}
		}
		
		function saveTemplate()
		{
			var dataNode = {};
			
			var code = document.getElementById("code").value;
			var templateName = document.getElementById("templateName").value;
			var title = document.getElementById("title").value;
			var body = document.getElementById("body").value;
			var use = document.getElementById("use").value;
			var remarks = document.getElementById("remarks").value;
			
			dataNode['id'] = templateId;
			dataNode['uuid'] = uuid;
			dataNode['templateName'] = templateName;
			dataNode['title'] = title;
			dataNode['body'] = body;
			dataNode['use'] = use;
			dataNode['remarks'] = remarks;
			
			$.ajax({
		          beforeSend: function(request) {
		       	   document.getElementById("loaderNotify").style.display = "";
		           request.setRequestHeader("GUID", GUID);
		          },
		          url: serverHTTP +'MasterAdminTax/PostEmailTemplate',
		          method: 'POST',
		          contentType: 'application/json',
		          data: JSON.stringify(dataNode),
		          dataType: 'json',
		           success: function(result, status, request){
		           if(result.status==202)
		          	 {	
						showMessage('success',"N1266");
		          	 }
		           else
		             {
		        	    showMessage('error',"N1265");
		          	 }
		           },
		           complete:function(data){
		        	   document.getElementById("loaderNotify").style.display = "none";
		        	   },
		           error: function(error) {
		           console.log(JSON.stringify(error));
		        }
		      }); 
		}
	
		function setLanguageWithTables(selectedLanguage) {
        	pageLanguage = selectedLanguage
        	loadSelectedLanguage(pageLanguage,"email-templates");
            setLanguage(selectedLanguage);
		}
		
		
		 $("#embeddedCharactersforBody").change(function () {
		        let dropdownValue = this.value;
		        let cursorPoint = document.getElementById("body").selectionStart;
		        let textAreaVal = $('#body').val();
		        $('#body').val(textAreaVal.slice(0,cursorPoint)+dropdownValue+textAreaVal.slice(cursorPoint));
		      /*   console.log(dropdownValue);
		        console.log(cursorPoint); */
		        //var firstDropVal = $('#pick').val();
		    });
	</script>
</body>

</html>