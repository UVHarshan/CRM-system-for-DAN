<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Staff List CSV Output</title>
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
                              <!-- <div class="row pt-4 mt-2 ml-2">
                                  <div class="col-sm-12 TopActionButDiv mr-4 pr-4 ">
                                      
                                  </div>
                                    <div class="col-md-4 " >
                                        <h1> <i class="fa fa-users text-30" role="generic" ></i><span id="pageSpanHeadingStaffDetails">  Staff Details</span></h1>
                                       
                                        <p class="pb-0 mb-0" id="pageSpanSubHeadingStaffDetails">You can modify the staff, check the shift schedule of this staff, and check the assignment status.</p>
                                    </div>
                                    <div class="col-md-8  ">
                                        <div class="row pt-0  pr-2">
                                            <div class="col-sm-12 pr-4 TopButDiv">
                                            <div class="btn-group">
                                                <button class="DefaultButton btn btn-danger TopButtonMinWidth  dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="buttonSpanStaffDetailsDelete">Delete</span></button>
                                                <div class="dropdown-menu" x-placement="bottom-start">
                                                <a class="dropdown-item" href="#"><span id="buttonValueSpanStaffDetailsDelete">Delete Staff</span></a>
                                                </div>
                                               </div>
                                            </div>
                                        </div>
                                        <div class="row pt-0 ">
                                            <div class="col-sm-12 pr-4  TopButDiv">
                                              <button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'><span id="buttonSpanScheduledShifts">Scheduled Shifts</span></button> 
                                              <button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'><span id="buttonSpanAssinmentList">Assinment List</span></button> 
                                              <button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button'><span id="buttonSpanReturn">Return</span></button>
                                            </div>
                                        </div>
                                    </div>
                              </div> -->

                      <div class="row pt-4 mt-2 ml-2">
                                    <div class="col-md-4 " >
                                        <h1 > <i class="fa fa-table  text-30" role="generic"></i><span id="pageSpanHeading_"> Staff List CSV Output</span> </h1>
                                    </div>
                                    <div class="col-md-8  pt-0 pr-4 TopButDiv">
                                       
                                    </div>
                              </div>

                              <div class="row" >
                                  <div class="col-lg-12 col-xl-12 ">
                                    
                                 </div>
                             
                              </div>

                            </div>
                            <br><br> <br><br>
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

    console.log("GUID : "+ localStorage.getItem('GUID'));
    console.log(localStorage.getItem("uuid"));
    console.log(localStorage.getItem("nameKatakana"));
 </script>
</body>

</html>