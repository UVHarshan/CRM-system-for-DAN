<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>

    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleStaffDashboard">Staff Dashboard</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link href="../dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="../dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/fontawesome-5.css" />
    <link href="../dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist-assets/css/plugins/datatables.min.css" />
   
    <link href="../dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../dist-assets/css/mobios-site.css" />

    <style>
    </style>
</head>

<body class="text-left" >
 <%@ include file="./common/CacheControl.jsp"%>
       <div id="sideBarDiv" class="app-admin-wrap layout-sidebar-vertical sidebar-full "  >
       
        <!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
       
            <!--  user -->

            <!-- ============ leftMenu start ============= -->
             <%@ include file="./common/staffleftMenu.jsp"%>
            <!-- ============ leftMenu end ============= -->  
            <!--  side-nav-close -->
        
        <div class="switch-overlay"></div>
        <div class="main-content-wrap mobile-menu-content bg-off-white m-0" style="z-index: 1;">
        
            <!-- ============ topMenu start ============= -->
             <%@ include file="./common/topMenu.jsp"%>
            <!-- ============ topMenu end ============= -->  
             
            <!-- ============ Body content start ============= -->
           
            <div class="main-content pt-2"  style="z-index: 1;">
          
                <!-- <div class="separator-breadcrumb border-top"></div>  -->

                <div class="row">
                    <div class="col-md-12">
                        <div id="bodyMainCard" class="card mb-4">
                            <div class="card-body p-0"  >
                         

                              <div class="row pt-4 pb-2 mt-2 ml-2">
                                    <div class="col-md-4 " >
                                        <h1 > <i class="fa fa-home text-30" role="generic"></i><span id="pageSpanHeadingHome"> Home</span> </h1>
                                    </div>
                                    <div class="col-md-8  pt-0 pr-4 TopButDiv">
                                       
                                    </div>
                              </div>

                              <div class="row  ml-2 mr-2" >
                                 <div class="col-lg-4 col-md-4 mb-4">
                                   <div class="card">
			                                <div class="card-body">
			                                    <div class="user-profile mb-4">
			                                        <div class="ul-widget-card__user-info border-bottom-gray-200 pb-3"><img class="profile-picture avatar-xl mb-2" src="../dist-assets/images/faces/user.png" alt="alt" />
			                                            <p class="m-0 text-24" ><span id="pSpanHelloText"> Hello, </span> <span id="pSpanLogedUser"></span></p>
			<!--                                             <p class="text-muted m-0"><a href="href">timothysara@gmail.com</a></p> -->
			                                            <div class="mt-3 ul-widget-app__skill-margin">
			                                              <span class="text-20" id="spanTodayDeal">Today's Deal</span>
			                                             </div>
			                                        </div>
			                                        <div class="ul-widget-app__profile-footer mt-4">
			                                            <div id="divTodayDealContent"> </div>
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
                              
                                    <div class="col-md-8  pt-0 pr-4 TopButDiv">
                                       
                                    </div>
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
             <%@ include file="./common/staffFooter.jsp"%>
            <!-- ============ Footer end ============= -->  

        </div>
      </div>
      <!-- ============ Search UI Start ============= -->
  
      <!-- ============ Search UI End ============= -->

	<span id="spanScriptID"></span>
	<script src="./js/language_main_staff.js"></script>

	<script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"dashboard");
    </script>
    
    <script src="../dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
    <script src="../dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
    <script src="../dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../dist-assets/js/scripts/tooltip.script.min.js"></script>
    <script src="../dist-assets/js/scripts/script.min.js"></script>
    <script src="../dist-assets/js/scripts/script_2.min.js"></script>
    <script src="../dist-assets/js/scripts/sidebar.large.script.min.js"></script>
    <script src="../dist-assets/js/plugins/feather.min.js"></script>
    <script src="../dist-assets/js/plugins/metisMenu.min.js"></script>
    <script src="../dist-assets/js/scripts/layout-sidebar-vertical.min.js"></script>
    <script src="../dist-assets/js/plugins/echarts.min.js"></script>
    <script src="../dist-assets/js/scripts/echart.options.min.js"></script>
    <script src="../dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
    <script src="../dist-assets/js/plugins/datatables.min.js"></script>
    <script src="../dist-assets/js/scripts/datatables.script.min.js"></script>

    <script>
    const serverHTTP = "<%=serverHTTP%>";
    const GUID = localStorage.getItem('GUID') ;
    const UUID =  localStorage.getItem('uuid');
    const staffID = localStorage.getItem('staffID') ;
    document.getElementById("pSpanLogedUser").innerHTML=localStorage.getItem("name");
    
    const date = new Date();
    const currentYear  = date.getFullYear();
    let currentMonth = date.getMonth()+1;
    let currentDate = date.getDate();
    currentMonth = currentMonth < 10 ? "0"+currentMonth : currentMonth;
    currentDate = currentDate < 10 ? "0"+currentDate : currentDate;
    const today =  currentYear+"-"+currentMonth+"-"+currentDate;
           
       $(document).ready(function () {
    	   
    	dataPassNode ={};
    	dataPassNode['staffId'] = staffID;
   		dataPassNode['implementDate'] = today;
   		
   		passData = JSON.stringify(dataPassNode);
   		
   		$.ajax({
   			beforeSend : function(request) {
                document.getElementById("loaderNotify").style.display = "";
   				request.setRequestHeader("GUID", GUID);
   			},
   			url : serverHTTP + 'Assignment/DailyDealForStaff',
   			method : 'POST',
   			contentType : 'application/json',
   			data : passData,
   			dataType : 'json',
   			success : function(result, status, request) {
   				if (result.status == 200) {
   					dailyDealForStaff(result);
   					
   				} else {
   					//console.log("Sorry Credentials Info not working");
   					//showMessage('error',"E1107");
   				}
   			},
   			complete:function(data){
            	   document.getElementById("loaderNotify").style.display = "none";
            	   },
   			error : function(error) {
   				console.log(JSON.stringify(error));
   			}
   		});     
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
    
    function dailyDealForStaff(result)
        {
    	console.log(result);
    	if(result.data != "")
    	{
    		fullContent ="";
    		console.log(result.data.length);
    		for(i=0;i<result.data.length;i++)
    		{
    		 contentRow ='<div onclick="viewTodayCase('+result.data[i].implementId+','+result.data[i].assignmentId+')" class="card card-icon-bg card-icon-bg-primary o-hidden  Color-3 cardBodyDiv p-4 m-2"><p><span class="text-16 text-center" id="spanTodayCaseName" name="spanTodayCaseName[]">Case Name : </span>'+result.data[i].caseName+'</p>'+
                         '<p><span class="text-16 text-center" id="spanTodayWorkLocation" name="spanTodayWorkLocation[]">Work Location : </span>'+result.data[i].workLocation+'</p>'+
                         /* '<p><span class="text-16 text-center" id="spanTodayWorkScheduledDate" name="spanTodayWorkScheduledDate[]">Case Date : </span>'+result.data[i].implementDate+'</p>'+ */
                         '<p><span class="text-16 text-center" id="spanTodayWorkScheduledTime" name="spanTodayWorkScheduledTime[]">Scheduled Time : </span>'+result.data[i].scheduledStartTime+' - '+result.data[i].scheduledEndTime+'</p></div>';
 		 
            // fullContent.concat(contentRow) ;
    		 fullContent = fullContent + contentRow ;
    		}
    		document.getElementById("divTodayDealContent").innerHTML = fullContent ;
/*     		i=0;
    		contentRow  = '<div  onclick="viewTodayCase('+result.data[i].implementId+')"><p><span class="text-16 text-center" id="spanTodayCaseName">Case Name : '+result.data[i].caseName+'</span></p>'+
                '<p><span class="text-16 text-center" id="spanTodayWorkLocation">Work Location : '+result.data[i].workLocation+'</span></p>'+
                '<p><span class="text-16 text-center" id="spanTodayWorkScheduledTime">Scheduled Time : '+result.data[i].scheduledStartTime+' - '+result.data[i].scheduledEndTime+'</span></p></a>';
    		 
    		document.getElementById("divTodayDealContent").innerHTML = contentRow ; */
    		
    	}else{
    		document.getElementById("divTodayDealContent").innerHTML= '<span class="text-16 text-center" id="spanNoCaseRegisterdToday"> There Are No Case Registerd Today.</span>'
    	}
          loadSelectedLanguage(getSiteLanguage(),"dashboard");	
        } 
    
    
    function viewTodayCase(implementId,assignmentId)
    {
/*     	localStorage.setItem("staffId", staffID);
    	localStorage.setItem("implementationId", implementId);
    	localStorage.setItem("implementDate", today);
		window.location.href = "case-view.jsp";	 */
		
		let url = "case-view.jsp";
		let form = $('<form action="' + url + '" method="post">' +
		  '<input type="hidden" name="staffId" value="'+staffID+'" />' +
		  '<input type="hidden" name="implementationId" value="'+implementId+'" />' +
		  '<input type="hidden" name="implementDate" value="'+today+'" />' +
		  '<input type="hidden" name="assignmentId" value="'+assignmentId+'" />' +
		  '</form>');
		$('body').append(form);
		form.submit();
    }
    
    function setLanguageWithTables(selectedLanguage){
        setLanguage(selectedLanguage);
        loadSelectedLanguage(selectedLanguage,"dashboard");
    }
 </script>
</body>

</html>