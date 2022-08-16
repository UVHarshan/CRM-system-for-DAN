<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
     <title id="pageTitleQuotationTemplateList"> Quotation Template List</title>
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
                            <div  class="card-body p-0"   >
                              <div class="row pt-4 mt-2 ml-2">
                                    <div class="col-md-8 " >
                                        <h1 > <i class="fa fa-file text-30" role="generic"></i><span id="pageSpanHeadingQuotationTemplate">  Quotation template list </span> </h1> <br/>
                                        <p id="pageSpanHeadingQuotationHelp"> You can check the quotation template information in a list </p>
                                    </div>
                                    <div class="col-md-4  pt-0 pr-4 TopButDiv">
                                        <a href="quotation-template-registration.jsp"><button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'><i class="fa fa-plus mr-2 text-20 cursor-pointer" role="generic" ></i><span id="buttonSpanAddQuotationTemplate">Add Quotation Template</span></button> </a>
                                    </div>
                              </div>

                             <!-- <div class="row">
                              <div class="col-lg-12 col-md-12 col-xl-12 mt-3">
                                <div class="row pr-3" >
                                  <div class="col-lg-12 col-md-12 col-sm-12 mr-5 " >
                                    <!-- <div class="card SearchBox"> 
                                    <div class="card ml-3 SearchCardDiv" >
                                        <div class="card-body" >
                                            <div class="card-title"><i class="fa fa-search text-18" role="generic"></i><span id="pageSpanSearchQuoatation"> Search</span></div>
                                           <!-- <form id="searchForm" method="post">
                                              <div class="row">
                                                <div  class="col-lg-7 col-md-7 pl-4 pr-4">
                                                  
                                                        <label for="givenNames" id="pageLabelTemplateName">Template Name</label>
                                                        <div class="input-group ">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-user"></i></div>
                                                            </div>
                                                            <input id="templateName" name="givenNames" placeholder="Enter Template Name" class="form-control" role="textbox">
                                                            
                                                        </div>
                                                        <div id="errorGivenName" style="color:red;"></div>
                                                
                                                    
                                                    
                                                </div>
                                                <div  class="col-lg-5 col-md-5 pt-1  ContentRight">
                                                	   <button onclick="checkSearch()" id="searchBtnQuotation" class="btn btn-info SearchButton-2   ml-0 mr-0" role="button">Search</button>
                                                </div>

                                              
                                             </div>
                                                  
                                           </div>
                                           </div>
                                           </form>
                                          
                                         </div>
                                      </div>
                                </div>
                                

                               
                                   
                                </div> -->
                              </div>
                              
                                      <div class="row">
                                  <div class="col-lg-12 col-xl-12 ">



                                    <div class="card m-3">
                                        <div class="card-body" >
                                            <div class="card-title"><i class="i-File-Clipboard-File--Text cursor-pointer" role="generic"></i><span id="pageSpanSearchTemplateDetails"> Search Template  Details</span> </div>
                                            <div class="table-responsive" >
                                                <table class="display table table-striped table-bordered hover" id="search_quotation_table" style="width:100%">
                                                    <thead>
                                                        <tr class="thClass">
                                                            <th style="background: rgb(245 249 253);color: #647a8e;width:10%" id="tableSearchQuotationNo">No</th>
                                                            <th class="color-1" style="background: #a0dade;color: #647a8e; width:65%"  id="tableSearchQuotationTemplate">Template name </th>
                                                            <th class="color-1" style="background: #a0dade;color: #647a8e; width:20%"  id="tableSearchQuotationDisplayOrder">Display order</th>
                                                            <th class="" style="width:5%;"> </th>   
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
                <!-- end of main-content -->
            </div>
            <!-- <div class="sidebar-overlay open"></div> Footer Start-->
            <!-- <div class="flex-grow-1"></div> -->
            
            <!-- ============ Footer start ============= -->
               <%@ include file="common/footer.jsp"%>
            <!-- ============ Footer end ============= --> 
            
        </div>
    </div><!-- ============ Search UI Start ============= -->
                    <div class="modal fade " id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalCenterTitle">Batch Deletion</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            </div>
                            <div class="modal-body text-center">
                                <h4>Are You Sure?</h4>
                                <h4>Do You Really Want to Delete this Records ?</h4>
                                <h4>This Process Cannot be Undone.</h4>
                                <br>
                                
                                        <table class="display table table-striped table-bordered hover" id="confirm_staff_table" style="width:100%">
                                                    <thead>
                                                        <tr class="thClass">
                                                            <th style="background: rgb(245 249 253);color: #647a8e;" id="tableSearchStaffTHNo">Record No</th>
                                                            <th class="color-1" style="background: rgb(208 226 241);color: #647a8e;" id="tableSearchCustomerOrganizationName">Organization Name </th>
                                                            <th class="TableTHMinWidth text-center" style="background: rgb(208 226 241);color: #647a8e;"id="tableSearchStaffCustomerRepresentativeName">Customer Representative Name</th>
                                                            <th class="TableTHMinWidth text-center" style="background: #a0dade;color: #647a8e;" id="tableSearchCustomerCode">Customer Code</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tBodyBatchDelete">
                                                    
                                                    </tbody>
                                                    </table>
                            </div>
                            <div class="modal-footer pt-2 pb-2">
                                <button class="btn btn-danger SearchButton-2  mr-1" id="batchDeleteConfirm" type="button">Confirm</button>
                                <button class="btn btn-info SearchButton-2   ml-0 mr-0" type="button" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
    <!-- ============ Search UI End ============= -->
    
    <span id="spanScriptID"></span>
    <script src="./dist-assets/js/language_main.js"></script>
   

    <script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"quotation-template");
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
         const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
	     //const serverHTTP = "http://sola.ml/SOLA-API/";
         const  GUID = localStorage.getItem("GUID");
          
         var dataNode = {};
         dataNode['quotationTemplate'] = [{"templateName": null}];
         $(document).ready(function () {      	 
                  drawDtataTable(lan);   
                  
                  
              	   $.ajax({
                       beforeSend: function(request) {
                        request.setRequestHeader("GUID", GUID);
                       },
                       url: serverHTTP +'Quotation/SearchQuotationTempInfo',
                       method: 'POST',
                       contentType: 'application/json',
                       data: JSON.stringify({"quotationTemplate":{"templateName": null}}),
                       dataType: 'json',
                        success: function(result, status, request){
                        if(result.status==200)
                       	 {
                        	showSearchResult(result);
                       	 }
                        else
                        {
                       		console.log("Sorry card Data Loding Error");
                       	 }
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

            table= $('#search_quotation_table').DataTable({
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
                    columnDefs: [ 
                       { orderable: false, targets: 0 },
                       { orderable: false, targets: 3 }
                  ]                
                });
        }
        
        function setLanguageWithTables(selectedLanguage){
        	pageLanguage = selectedLanguage
        	loadSelectedLanguage(selectedLanguage,"quotation-template");
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
        
        
        function showSearchResult(result)
        {
        	 table.destroy();
        	 $("#tbodyId").empty();
        	 for(i=0;i<result.data.length;i++){
        		 
        		let newRow='<tr>'+
                             '<td style="background: rgb(255 255 255);color: #647a8e;">'+(i+1)+'</td>'+ 
                              '<td style="background: rgb(245 249 253);color: #647a8e;">'+result.data[i].templateName+'</td>'+
                              '<td style="background: rgb(245 249 253);color: #647a8e;">'+result.data[i].sortOrder+'</td>'+
			                    '<td style="background: rgb(255 255 255);color: #647a8e;">'+
			                        '<button class="btn DetailsButton ml-1" onclick="viewDetails(\''+result.data[i].id+'\')" title="Details" role="button" id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button>'+
			                    '</td>'+
               				'</tr>' ;           
               $("#search_quotation_table tbody").append(newRow);
        	 }
        	 drawDtataTable(getSiteLanguage());
        }

        function viewDetails(templateID)
        {
        	localStorage.setItem("templateID", templateID);	
        	window.location.href = "quotation-template-details.jsp";
        }
        
       
      
        </script>
</body>

</html>