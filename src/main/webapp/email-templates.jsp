<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleEmailTemplateList">Email Template List</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />
    <link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="./dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="./dist-assets/css/plugins/fontawesome-5.css" />
    <link href="./dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./dist-assets/css/plugins/datatables.min.css" />
   
    <link href="./dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />
   
    
</head>

<body class="text-left">
     <%@ include file="common/CacheControl.jsp"%>
       <div id="sideBarDiv" class="app-admin-wrap layout-sidebar-vertical sidebar-full ">
       
        <!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
        <div class="sidebar-panel bg-white">
            <div class="gull-brand pr-3 text-center mt-4 mb-2 d-flex justify-content-center align-items-center"><img class="pl-3" src="./dist-assets/images/logo.png" alt="alt" />
                <!--  <span class=" item-name text-20 text-primary font-weight-700">GULL</span> -->
                <div class="sidebar-compact-switch ml-auto"><span></span></div>
            </div>
            <!--  user -->
               <!-- ============ leftMenu start ============= -->
                 <%@ include file="common/leftMenu.jsp"%>
               <!-- ============ leftMenu end ============= --> 
            <!--  side-nav-close -->
        </div>
        <div class="switch-overlay"></div>
        
            
        <div class="main-content-wrap mobile-menu-content bg-off-white m-0" style="z-index: 1;">
          
            <!-- ============ topMenu start ============= -->
             <%@ include file="common/topMenu.jsp"%>
            <!-- ============ topMenu end ============= --> 
           
            <!-- ============ Body content start ============= -->

            <div class="main-content pt-2"  style="z-index: 1;">
                <div class="row">
                    <div class="col-md-12">
                        <div id="bodyMainCard" class="card mb-4" >
                            <div  class="card-body p-0"   >
                              <div class="row pt-4 mt-2 ml-2">
                                    <div class="col-md-8 " >
                                        <h1 > <i class="fa fa-envelope text-30" role="generic"></i><span id="pageSpanHeadingEmailTemplateList"> Email Template List</span> </h1>
                                  <p id="pageSpanSubHeadingEmailTemplateList">You can check the mail template information in a list.</p>
                                    </div>                                
                              </div>
                               <div class="row">
                                  <div class="col-lg-12 col-xl-12 ">
                                    <div class="card m-3">
                                        <div class="card-body" >
                                            <div class="table-responsive" >
                                                <table class="display table table-striped table-bordered hover" id="search_table" style="width:100%">
                                                    <thead>
                                                        <tr class="thClass">
                                                            <th style="background: rgb(245 249 253);color: #647a8e; text-align: center;" id="tableTHNo">No</th>
                                                            <th style="background: rgb(245 249 253);color: #647a8e; text-align: center;" id="tableTHCode">Code</th>
                                                            <th class="color-1" style="background: rgb(208 226 241);color: #647a8e; text-align: center;" id="tableTHTemplateName">Template Name</th>
                                                            <th class="TableTHMinWidth text-center" style="background: rgb(208 226 241);color: #647a8e; text-align:"id="tableTHTitle" >Title</th>
                                                            <th class="TableTHMinWidth text-center" style="background: rgb(208 226 241);color: #647a8e; text-align:"id="tableTHUse" >Use</th>
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
                   <div class="loading" id="loaderNotify" style="display: none;"> 
             <div class="spinner-bubble spinner-bubble-primary m-7"></div>
    </div>
                <!-- end of main-content -->
            </div>
            <!-- <div class="sidebar-overlay open"></div> Footer Start-->
            <!-- <div class="flex-grow-1"></div> -->
            
            <!-- ============ Footer start ============= -->
               <%@ include file="common/footer.jsp"%>
            <!-- ============ Footer end ============= --> 
            
        </div>
    </div><!-- ============ Search UI Start ============= -->
               
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

     <script src="./dist-assets/js/customer-search-Validations.js"></script>

    <script>
	     const serverHTTP = "<%=serverHTTP%>";
         const  GUID = localStorage.getItem("GUID");
         const  searchUuid = localStorage.getItem("uuid");   
       
     
         saveUuid = localStorage.getItem('saveUuid');  
        
         $(document).ready(function () {
  
             drawDtataTable(lan); 
             
        	 $.ajax({
                 beforeSend: function(request) {
              	   document.getElementById("loaderNotify").style.display = "";
                  request.setRequestHeader("GUID", GUID);
                 },
                 url: serverHTTP +'MasterAdminTax/SearchEmailTemplate',
                 method: 'GET',
                 contentType: 'application/json',
                 dataType: 'json',
                  success: function(result, status, request){
                  if(result.status==200)
                 	 {
                	  showResult(result,request);
                 	 }
                  else
                  {
                 		console.log("Sorry Email Data Loding Error");
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

           var table ;
           var dataList;
           
        function drawDtataTable(language){
            if(language =="Japanese" )
            {
                search = "探す";
                info= "ページを表示しています _PAGE_ の _PAGES_";
                lengthMenu = "ディスプレイ _MENU_ ページあたりのレコード数";
                zeroRecords = "見つからない - すいません";
                infoEmpty = "記録はありません";
                infoFiltered = "(からフィルタリングされます。 _MAX_ トータルレコード)";
                previous ="前";
                next ="次";
                first  = "最初のページ"; 
                last = "最終ページ";

            }else{
                search = "Search";
                info= "Showing page _PAGE_ of _PAGES_";
                lengthMenu = "Display _MENU_ records per page";
                zeroRecords = "Nothing found";
                infoEmpty = "No records available";
                infoFiltered = "(filtered from _MAX_ total records)";
                previous ="Previous";
                next ="Next";
                first  = "First page"; 
                last = "Last page";
            }

            table = $('#search_table').DataTable({
                    language: {
                    search : search,
                    info :info,
                    lengthMenu : lengthMenu,
                    zeroRecords : zeroRecords,
                    infoEmpty : infoEmpty,
                    infoFiltered :infoFiltered,
                    "paginate": {
                    previous : previous,
                    next:next,
                    first : first,
                    last :last
                    }
                    },
                    responsive: true,
                    responsive: {
                        details: {
                            type: 'column',
                            target: 'tr'
                        }
                    },
                    columnDefs: [  
                       { orderable: false, targets: 0},
                       { orderable: false, targets: 5 },
                 
                  ], 
                    order: [ 0, 'asc' ]
                    
                });
        }
        

        function showResult(result,request){
         table.destroy();
       	 $("#tbodyId").empty();
       	 for(i=0;i<result.data.length;i++){

       		let newRow='<tr>'+
                            '<td style="background: rgb(245 249 253);color: #647a8e;">'+result.data[i].id+'</td>'+
                            '<td>'+result.data[i].code+'</td>'+
		                   	'<td>'+result.data[i].templateName+'</td>'+
		                   	'<td>'+result.data[i].title+'</td>'+
		                    '<td>'+result.data[i].use+'</td>'+
		                   	'<td ><button class="btn DetailsButton ml-1" title="Details" role="button" onclick="viewDetails('+result.data[i].id+')"  id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button></td>'+ 
              			 '</tr>' ;           
              $("#search_table tbody").append(newRow);
       	 }
       	 drawDtataTable(getSiteLanguage());
       	loadSelectedLanguage(pageLanguage,"email-templates");
        	
        }
        
        function setLanguageWithTables(selectedLanguage){
        	pageLanguage = selectedLanguage
        	loadSelectedLanguage(pageLanguage,"email-templates");
            setLanguage(selectedLanguage);
            table.destroy();
            drawDtataTable(selectedLanguage);
        }

        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;
        
        function myFunction() {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }
        

        function viewDetails(templateId)
        {
        	let url = "email-templates-details.jsp";
			let form = $('<form action="' + url + '" method="post">' +
				          '<input type="hidden" name="templateId" value="'+templateId+'" />' +
						  '</form>');
			$('body').append(form);
			form.submit();
        }

        
        </script>
</body>

</html>