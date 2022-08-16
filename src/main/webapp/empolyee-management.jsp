<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleEmployeeManagement">Employee Management</title>
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
                        <div id="bodyMainCard" class="card mb-4" >
                            <div  class="card-body p-0"   >
                              <div class="row pt-4 mt-2 ml-2">
                                    <div class="col-md-4 " >
                                        <h1 > <i class="fa fa-users text-30" role="generic"></i><span id="pageSpanHeadingEmployeeList"> Employee List</span> </h1>
                                    </div>
                                    <div class="col-md-8  pt-0 pr-4 TopButDiv">
                                        <a href="employee-registration.jsp"><button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'><i class="fa fa-plus mr-2 text-20 cursor-pointer" role="generic" ></i><span id="buttonSpanEmployeeRegistration">Employee Registration</span></button> </a>
                                   </div>
                              </div>

                             <div class="row">
                              <div class="col-lg-12 col-md-12 col-xl-12 mt-3">
                                <div class="row ">
                                  <div class="col-lg-10 col-md-12 col-sm-12 pr-0" >
                                    <!-- <div class="card SearchBox"> -->
                                    <div class="card ml-3 SearchCardDiv" >
                                        <div class="card-body" >
                                            <div class="card-title"><i class="fa fa-search text-18" role="generic"></i><span id="pageSpanSearch"> Search</span></div>
                                            <form id="searchForm" method="post">
                                            <div class="row">
                                                <div  class="col-lg-4 col-md-6 pl-4 pr-4">
                                                
                                                    <div class="row">
                                                        <label for="name" id="pageLabelName">Name</label>
                                                        <div class="input-group ">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-user"></i></div>
                                                            </div>
                                                        <input id="name" name="name" placeholder="Enter Name " class="form-control" role="textbox">
                                                        </div>
                                                        <div id="errorName" style="color:red;"> </div>
                                                    </div>
                                                     <div class="row">
                                                        <label for="name" id="pageLabelDateJoinFrom">Date of Joining From</label>
                                                        <div class="input-group ">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-calendar"></i></div>
                                                            </div>
                                                        <input id="dateJoinFrom" type="date" name="dateJoinFrom"class="form-control" role="textbox">
                                                        </div>
                                                        <div id="errorDateJoinFrom" style="color:red;"> </div>
                                                    </div>
                                                   
                                                   
                                                    
                                                </div>

                                                <div  class="col-lg-4 col-md-6 pl-4 pr-4">
                                                    
                                                    <div class="row">
                                                        <label for="mailAddress" id="pageLabelMailAddress">Mail Address</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-envelope"></i></div>
                                                            </div>
                                                        <input id="mailAddress" name="mailAddress" placeholder="Enter Mail Address"  class="form-control" role="textbox">
                                                        </div>
                                                        <div id="errorMail" style="color:red;"> </div>
                                                    </div>
                                                   
                                                      <div class="row">
                                                        <label for="mailAddress" id="pageLabelDateofJoiningTo">Date of Joining To</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-calendar"></i></div>
                                                            </div>
                                                        <input id="dateofJoiningTo" name="dateofJoiningTo" type="date" placeholder="Enter Date of Joining To"  class="form-control" role="textbox">
                                                        </div>
                                                           <div id="errorDateofJoiningTo" style="color:red;"> </div>
                                                       
                                                    </div>
                                                    </div> 
                                                 <div  class="col-lg-4 col-md-6 pl-4 pr-4">
                                                    <div class="row">
                                                        <label for="authority" id="pageLabelAuthority">Authority</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-clone" ></i></div>
                                                            </div>
                                                        <select id="authority" name="occupationClassification" class="form-control" role="combobox">
                                                            <option value="" id="selectOptionSelectAuthority">Select Authority</option>
                                                            <option value="1" id="pageOptionAdministrator">Administrator</option>
                                                            <option value="2" id="pageOptionInchargeoftheMatter">In charge of the Matter</option>
                                                            <option value="3" id="pageOptionSales">Sales</option>
                                                            <option value="4" id="pageOptionAccounting">Accounting</option>
                                                            <option value="5" id="pageOptionStaffCharge">In Charge of Staff </option>
                                                        </select>
                                                        </div>
                                                    </div>
												  
                                                    <div class="row">
                                                        <label for="validClassification" id="pageLabelValidClassification">Valid Classification</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text bg"><i class="far fa-clone" ></i></div>
                                                            </div>
                                                        <select id="validClassification" name="validClassification" class="form-control" role="combobox">
                                                            <option value="" id="optionClassification">Select Classification</option>
                                                            <option value="1" id="option1ValidClassification" >Valid</option>
                                                            <option value="2" id="option2ValidClassification">Invalid</option>
                                                        </select>
                                                        </div>
                                                    </div>
													
                                                    <div class="row pt-1 ContentRight"  >
                                                        <button id="clearAllBtn" class="btn btn-danger SearchButton-2  mr-1" role="button" type="reset">Clear All</button>
                                                        <button  id="searchBtn" class="btn btn-info SearchButton-2   ml-0 mr-0" role="button">Search</button>
                                                        
                                                    </div>
                                                </div>
                                           </div>
                                           </form>
                                         </div>
                                      </div>
                                </div>
                                

                                <div class="col-lg-2 col-md-12 col-sm-12  p-0 m-0">
                                  
                                    <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-1 cardBodyDiv"  >
                                        <div class="card-body" style="margin:auto">
                                            <div class="row"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalNumberofAdministrator" >Total Number of Administrator</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalAdministrator"></p></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-2 cardBodyDiv"  >
                                        <div class="card-body" style="margin:auto">
                                            <div class="row"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalNumberofIncharge" >Total Number of Inchargers</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalInchargers"></p></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv"  >
                                        <div class="card-body" style="margin:auto">
                                            <div class="row"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalNumberofSales">Total Number of Sales</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalSales"></p></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-4 cardBodyDiv"  >
                                        <div class="card-body" style="margin:auto">
                                            <div class="row"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalNumberofAccounting">Total Number of Accounting</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalAccounting"></p></div>
                                            </div>
                                        </div>
                                    </div> -->
                                  <!--  <div class="card card-icon-bg card-icon-bg-primary o-hidden  Color-5 cardBodyDiv "  >
                                        <div class="card-body pt-1 pb-1 mt-1 mb-1" >
                                            <div class="row pt-1 pb-1 mt-1 mb-1"  style="text-align: center;">
                                                <div class="col-12 p-0 " id="pageCardDivTotalPendingStaff">Total Inactive Staff</div>
                                                <div class="col-12 pb-0 "><p class="text text-24 pb-0 mb-2" id="pTotalInactive"></p></div>
                                            </div>
                                        </div>
                                    </div>  -->
                                </div>
                                   
                                </div>
                              </div>
                             </div>

                              <div class="row">
                                  <div class="col-lg-12 col-xl-12 ">
                                    <div class="card m-3">
                                        <div class="card-body" >
                                            <div class="card-title"><i class="i-File-Clipboard-File--Text cursor-pointer" role="generic"></i><span id="pageSpanSearchEmployeeDetails"> Search Employee Details</span> </div>
                                            <div class="table-responsive" >
                                                <table class="display table table-striped table-bordered hover" id="employeeSearch_table"  style="width:100%">
                                                    <thead>
                                                        <tr class="thClass">
                                                            <th style="background: rgb(245 249 253);color: #647a8e;" id="tableSearchEmployeeTHNo">No</th>
                                                            <th style="background: rgb(245 249 253);color: #647a8e;" id="tableSearchEmployeeTHName">Name</th>
                                                            <th style="background: rgb(245 249 253);color: #647a8e;" id="tableSearchEmployeeTHEmail">Email</td>
                                                            <th style="background: #a0dade;color: #647a8e;" id="tableSearchEmployeeTHAuthority">Authority</th>
                                                            <th class="TableTHMinWidth text-center" style="background: #a0dade;color: #647a8e;" id="tableSearchEmployeeTHDateofJoining">Date of Joining</th> 
                                                            <th class="TableTHMinWidth text-center" style="background: #a0dade;color: #647a8e;" id="tableSearchEmployeeTHValidClassification">Valid Classification</th> 
                                                            <th class="TableButtonTH"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbodyId">
                                                      <tr>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                      </tr> 
                                                    </tbody>
                                                   
                                                </table>
                                               
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
                                <h4 id="modalH4AreYouSure">Are You Sure?</h4>
                                <h4 id="modalH4ReallyWantToDelete">Do You Really Want to Delete this Records ?</h4>
                                <h4 id="modalH4CannotBeUndone">This Process Cannot be Undone.</h4>
                                <br>
                                
                                        <table class="display table table-striped table-bordered hover" id="confirm_staff_table" style="width:100%">
                                                    <thead>
                                                        <tr class="thClass">
                                                            <th style="background: rgb(245 249 253);color: #647a8e;" id="tableModalSearchStaffTHNo">Record No</th>
                                                            <th class="color-1" style="background: rgb(208 226 241);color: #647a8e;" id="tableModalSearchStaffTHName">Name</th>
                                                            <th class="TableTHMinWidth text-center" style="background: rgb(208 226 241);color: #647a8e;"id="tableModalSearchStaffTHNameKatakana">Name Katakana</th>
                                                            <th class="TableTHMinWidth text-center" style="background: #a0dade;color: #647a8e;" id="tableModalSearchStaffTHStaffCode">Staff Code</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tBodyBatchDelete">
                                                    
                                                    </tbody>
                                                    </table>
                            </div>
                            <div class="modal-footer pt-2 pb-2">
                                <button class="btn btn-danger SearchButton-2  mr-1" id="batchDeleteConfirm" type="button">Confirm</button>
                                <button class="btn btn-info SearchButton-2   ml-0 mr-0" id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
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
        loadSelectedLanguage(pageLanguage,"employee");
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
    
     <script src="./dist-assets/js/employee-management-validate.js"></script>

	<%
	final String pageID = "37";
	final String[] APNumbers = (String[])session.getAttribute("APNumbers");
	if(session.getAttribute("GUID") !=null && session.getAttribute("uuid")  != null)
	{
	  if(! Arrays.asList(APNumbers).contains(pageID))
	  {
		  response.sendRedirect("403-Error.jsp");
	  }
	}else
	{
		 out.println("<script>");
		 out.println("validateSession();");
		 out.println("</script>");
	}
	%>

    <script>
      
    const serverHTTP = "<%=serverHTTP%>";
	const GUID = localStorage.getItem("GUID");
	const uuid = localStorage.getItem("uuid");

	$(document).ready(function() {
						let dataSet = '{"uuid" : "' + uuid + '"}';
						drawDtataTable(lan); 
						
						 $.ajax({
		                       beforeSend: function(request) {
		                    	   document.getElementById("loaderNotify").style.display = "";
		                        request.setRequestHeader("GUID", GUID);
		                       },
		                       url: serverHTTP +'Employee/GetUserAccount',
		                       method: 'GET',
		                       contentType: 'application/json',
		                     //  data: templateNameReqNode,
		                       dataType: 'json',
		                        success: function(result, status, request){
		                        if(result.status==200)
		                       	 {
		                        	$("#pTotalAdministrator").html(result.data.adminUserCount);
		                        	$("#pTotalInchargers").html(result.data.inchargeUserCount);
		                        	$("#pTotalSales").html(result.data.salesUserCount);
		                        	$("#pTotalAccounting").html(result.data.accountingUserCount);
		                        	$("#pTotalInactive").html(result.data.inActiveStaff);
		                       	 }
		                        else
		                        {
		                       		console.log("Sorry card Data Loding Error");
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
	


	function viewDetails(id,implementationID)
	{
		window.location.href = "employee-details.jsp";
	}

    function runSearch()
    {
	  var templateNameReqNode = {};
      templateNameReqNode['name'] = document.getElementById("name").value.trim()!="" ? document.getElementById("name").value.trim() : null ; 
      templateNameReqNode['email'] = document.getElementById("mailAddress").value.trim()!="" ? document.getElementById("mailAddress").value.trim() : null ;
      templateNameReqNode['authority'] = document.getElementById("authority").value.trim()!="" ? document.getElementById("authority").value.trim() : null ;
      templateNameReqNode['dateOfJoiningFrom'] = document.getElementById("dateJoinFrom").value.trim()!="" ? document.getElementById("dateJoinFrom").value.trim() : null ;
      templateNameReqNode['dateOfJoiningTo'] = document.getElementById("dateofJoiningTo").value.trim()!="" ? document.getElementById("dateofJoiningTo").value.trim() : null ;null 
      templateNameReqNode['validClassification'] = document.getElementById("validClassification").value.trim()!="" ? document.getElementById("validClassification").value.trim() : null ; 
      
	   $.ajax({
          beforeSend: function(request) {
       	   document.getElementById("loaderNotify").style.display = "";
           request.setRequestHeader("GUID", GUID);
          },
          url: serverHTTP +'Employee/SearchEmployee',
          method: 'POST',
          contentType: 'application/json',
          data: JSON.stringify(templateNameReqNode),
          dataType: 'json',
           success: function(result, status, request){
           if(result.status==200)
          	 {
              showSearchResult(result);
          	 }
           else
           {
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
    }

    function showSearchResult(result)
    {
    	 table.destroy();
    	 $("#tbodyId").empty();
    	 for(i=0;i<result.data.length;i++){
    		 let employeeID = result.data[i].id ;
    		 let name = result.data[i].name != null ? result.data[i].name : "";
    		 let email = result.data[i].email != null ? result.data[i].email : "";
    		 let authority =  authorityAray[result.data[i].authority] != 0 ? authorityAray[result.data[i].authority]: ""; 
    		 let dateOfJoiningFrom = result.data[i].dateOfJoiningFrom != null ? result.data[i].dateOfJoiningFrom : "";
    		 let validClassification =  validClassificationArray[result.data[i].validClassification] != null ? validClassificationArray[result.data[i].validClassification]: "";
    		
    		 let newRow='<tr>'+
						'<td>'+(i+1)+'</td>'+
						'<td>'+name+'</td>'+
						'<td>'+email+'</td>'+
						'<td>'+authority+'</td>'+
						'<td>'+dateOfJoiningFrom+'</td>'+
						'<td>'+validClassification+'</td>'+
						'<td class = "actions">'+
						'<button class="btn DetailsButton ml-1" title="Details" role="button" onclick="viewDetails('+employeeID+')"  id="tableButtonDetails_3___"><i class="fa fa-info-circle"></i></button></ td>'+
						'</tr>';           
           $("#employeeSearch_table tbody").append(newRow);
    	 }
    	 drawDtataTable(getSiteLanguage());
    }
    
    function viewDetails(employeeID)
	{			
		let url = "empolyee-details.jsp";
		let form = $('<form action="' + url + '" method="post">' +
			          '<input type="hidden" name="employeeID" value="'+employeeID+'" />' +
					  '</form>');
		$('body').append(form);
		form.submit();
	}
    
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
		

		});
	}
	
    function setLanguageWithTables(selectedLanguage){
    	pageLanguage = selectedLanguage
    	loadSelectedLanguage(selectedLanguage,"employee");
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

        </script>
</body>

</html>