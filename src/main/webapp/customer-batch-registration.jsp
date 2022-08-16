<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Customer Batch Registration</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="./dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="./dist-assets/css/plugins/fontawesome-5.css" />
    <link href="./dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./dist-assets/css/plugins/datatables.min.css" />
   
    <link href="./dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />

    <style>
    </style>
</head>

<body class="text-left" >
	   <%@ include file="common/CacheControl.jsp"%>
       <div id="sideBarDiv" class="app-admin-wrap layout-sidebar-vertical sidebar-full "  >
       
        <!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
       
            <!--  user -->

            <!-- ============ leftMenu start ============= -->
             <%@ include file="common/leftMenu.jsp"%>
            <!-- ============ leftMenu end ============= -->  
            <!--  side-nav-close -->
        
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
                            <div class="card-body p-0"  >
                      <div class="row pt-4 mt-2 ml-2">
                                    <div class="col-md-8 " >
                                        <h1 > <i class="fa fa-upload text-30" role="generic"></i><span id="pageSpanHeadingCustomerBatchRegistration"> Customer Batch Registration</span> </h1>
                                    </div>
                                    <div class="col-md-4  pt-0 pr-4 TopButDiv"> 
                                    </div>
                       </div>
                              <div class="row pt-4 mt-2 ml-2">
                              <div class="col-sm-12 col-md-6 col-lg-6 pl-3 pr-3">
                              <a href="<%=customerTemplateFile%>" id=""><span class="RequiredStar text-20">*</span><span class="text-20" id="spanDownloadLink">Click Here To Download File Upload Template Link</span></a>
                              </div>
                              </div>
                       <div class="row pt-4 mt-2 ml-2">
									 <div class="col-sm-12 col-md-6 col-lg-6 pl-3 pr-3">
                                              <form method="POST" enctype="multipart/form-data" id="fileUploadForm">
												<input type="file" id="cuscomerFile" class="form-control mt-2 pt-2" >
											    <div id="errorStaffCvPdf" class="RequiredStar"></div>
											 </form>      
                                     </div>
                                     <div class="col-sm-12 col-md-6 col-lg-6 pl-3 pr-3">
                                           <button class="btn DefaultButton btn-info TopButtonMinWidth" onclick="uploadCustomerFile()"
										    id="buttonUploadFile">Upload File</button>
                                     </div>
                            </div>
                            </div>
                        </div>
                       
                    </div>
                     <div class="loading" id="loaderNotify" style="display: none;"> 
                       <div class="spinner-bubble spinner-bubble-primary m-7"></div>
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
        <div class="modal fade " id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalTitleUploadSummary">Upload Summary</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            </div>
                            <div class="modal-body ">
                            <div class="row" style="font-weight: bold;">
                            <div class="col-md-4 col-sm-6"><span id="spanUploadedFileName" >Uploaded File Name : </span></div> <div class="col-md-8 col-sm-6"><span id="spanUploadedFileNameValue" ></span></div>
                            <div class="col-md-4 col-sm-6"><span id="spanTotalRowCount">Total Row Count : </span></div> <div class="col-md-8 col-sm-6"><span id="spanTotalRowCountValue" ></span></div>
                            <div class="col-md-4 col-sm-6"><span id="spanValidRowCount" >Valid Row Count : </span></div> <div class="col-md-8 col-sm-6"><span id="spanValidRowCountValue"></span></div>
                            <div class="col-md-4 col-sm-6"><span id="spanInvalidRowCount" >Invalid Row Count : </span></div> <div class="col-md-8 col-sm-6"><span id="spanInvalidRowCountValue"></span> </div>
                             </div> 
                                <br/>
                                
                                 <a id="btnDownloadSummaryFilelink"  style=" margin: 0 auto;"> <button style=" margin: 0 auto;" class="btn DefaultButton btn-info SearchButton-2  mr-1" type="button"><i class="fa fa-download" ></i><span id="btnDownloadSummaryFile"> Download Summary File</span></button> </a>
                                   
                            </div>
                            <div class="modal-footer pt-2 pb-2">
                                <button class="btn btn-info SearchButton-2   ml-0 mr-0" id="batchDeleteClose" type="button" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
          
                </div>
      <!-- ============ Search UI End ============= -->

    <script src="./dist-assets/js/language_script.js"></script>

    <script>
        const lan = getLanguage();
        console.log(lan);
        if (lan == "English") {
            ToggleLanguageEnglish();

        }
        if (lan == "Japanese") {
            ToggleLanguageJapanese();
        }
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
       const serverHTTP = "<%=serverHTTP%>";
       //const serverHTTP = "http://sola.ml/SOLA-API/";
       const  GUID = localStorage.getItem("GUID");
       
    var path = "http://5.189.137.133//sola/content/files/144f4f63-3064-4463-b324-9670fe957aaf_customer-batch-file_2021-11-01T05:25:23.461.xlsx";
    var newFile = path.split("/");
    fileLength = newFile.length
    console.log(newFile[fileLength-1])
    
    $(document).ready(function () {

                });
           
        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;

        function myFunction()
         {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }

    function setLanguageWithTables(selectedLanguage){
        setLanguage(selectedLanguage);
    }

	function uploadCustomerFile()
	{

           var filePath = "";
           
			if($('#cuscomerFile')[0].files[0]){
				var fileNode = $('#cuscomerFile')[0].files[0]	
				//console.log(fileNode);
				//console.log(fileNode.size);
				//console.log(fileNode.name);
				//console.log(fileNode.type);
				
				let oldFile = fileNode.name; 
				let oldFileArr = oldFile.split(".");
				let oldFileName = oldFileArr[0];

				saveUuid = localStorage.getItem("uuid") ;
				
				var formDataObj = new FormData();
				//formDataObj.append('image', fileNode );
				formDataObj.append('file', fileNode);
				formDataObj.append('uuid', saveUuid);
				formDataObj.append('serviceId', "customer-batch-file");
				
				$.ajax({
					beforeSend : function(request) {
					 document.getElementById("loaderNotify").style.display = "";
					 request.setRequestHeader("GUID", GUID);
					},
					url : serverHTTP + 'Content/save-content',
			        enctype: 'multipart/form-data',
					data : formDataObj,
					cache: false,
					contentType: false,
					processData: false,
					method: 'POST',
					async: false,
					success : function(result, status, request) {
						filePath = result.data.filePath;
					    var newFile = filePath.split("/");
					    fileLength = newFile.length;
					    newFileName = newFile[fileLength-1];
						
						var dataNode = {};
						dataNode['GUID'] =  GUID; 
				     	dataNode['filePath']=newFileName;
				     	dataNode['oldFileName']=oldFileName;
				    	passData = JSON.stringify(dataNode);
				    	
				      	   $.ajax({
		                       beforeSend: function(request) {
		                    	document.getElementById("loaderNotify").style.display = "";
		                        request.setRequestHeader("GUID", GUID);
		                       },
		                       url: serverHTTP +'/Customer/CustomerBulkUpload',
		                       method: 'POST',
		                       contentType: 'application/json',
		                       dataType: 'json',
		                       data : passData ,
		                        success: function(result, status, request){
		                        if(result.status==200)
		                       	 {
		                        	document.getElementById("spanUploadedFileNameValue").innerHTML=result.data.updatedFileName;
		                        	document.getElementById("spanTotalRowCountValue").innerHTML=result.data.rowCount;
		                        	document.getElementById("spanValidRowCountValue").innerHTML=result.data.validRowCount;
		                        	document.getElementById("spanInvalidRowCountValue").innerHTML=result.data.invalidRowCount;
		                        	var btnDownloadSummaryFilelinkNode = document.getElementById('btnDownloadSummaryFilelink');
		                        	btnDownloadSummaryFilelinkNode.href ="";
		                        	btnDownloadSummaryFilelinkNode.href = result.data.filePath;
		                        	
		                        	$('#confirmDeleteModal').modal('show');
		                       	 }
		                        else
		                         {
		                       		console.log("Sorry uploading Error");
		                       	 }
		                        },
		                        complete:function(data){
		 		            	 document.getElementById("loaderNotify").style.display = "none";
				            	},
		                        error: function(error) {
		                        console.log(JSON.stringify(error));
		                     }
		                   });
					},
					     complete:function(data){
		            	   document.getElementById("loaderNotify").style.display = "none";
		            	   },
					error : function(error) {
						console.log(error);
					}
				});
				return filePath;
			}
			
	}
 </script>
</body>

</html>