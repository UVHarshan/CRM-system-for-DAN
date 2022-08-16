
<header id="topNewBar" class="main-header bg-white d-flex justify-content-between p-2 sticky-top" style="overflow: visible;" >
                <div class="header-toggle">
                    <div class="menu-toggle mobile-menu-icon">
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
                <div class="header-part-right" >
                    <div class="dropdown mr-3" >
                        <div class=" dropdown" id="divLanguageDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-language pt-1 mr-1 text-20 cursor-pointer" role="generic" data-toggle="tooltip" data-placement="top" data-original-title="Language"></i></div>
                        <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(130px, 38px, 0px);">
                            <button class="dropdown-item"  type="button" onclick="setLanguageWithTables('English');">English</button>
                            <button class="dropdown-item"  type="button" onclick="setLanguageWithTables('Japanese');">Japanese</button>
                        </div>
                    </div>
                    <i class="far fa-file-alt mr-3 mobile-hide text-20 cursor-pointer" role="generic" data-toggle="tooltip" data-placement="top" title="" ></i>
                    <i class="far fa-file mr-3 text-20 mobile-hide cursor-pointer" role="generic" data-toggle="tooltip" data-placement="top" title="" ></i>
                    <i  class="far fa-calendar mr-3 mobile-hide text-20 cursor-pointer" role="generic"  data-toggle="tooltip" data-placement="top" title="" ></i>
                   
                    <div class="dropdown">
                        <div class=" dropdown" id="dropdownMenuButton"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="far fa-user pt-1 mr-1 text-20 cursor-pointer" role="generic" data-toggle="tooltip" data-placement="top" ></i><span id="userNameSpan" style="font-size: large;"></span>
                        </div>
                        <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(130px, 38px, 0px);">
                            <button class="dropdown-item"  type="button" id="menuButtonProf">Profileeeeeeee</button>
                            <button class="dropdown-item"  type="button" id="menuButtonManual"  onclick="">Manual</button>
                            <button class="dropdown-item"  type="button" id="menuButtonLogout" onclick="confirmLogout();">Logout</button>
                        </div>
                    </div>
                </div>
            </header>
 <script>
 document.getElementById("userNameSpan").innerHTML=localStorage.getItem("name");
/*  $(".mobile-menu-icon").click(() => {
	 alert("Clicked!!");
 }); */
 
 
 let te ="<%=session.getAttribute("uuid")%>";
 console.log(te);
 let te1 ="<%=session.getAttribute("nameKatakana")%>";
 console.log(te1);
 let te2 ="<%=session.getAttribute("GUID")%>";
 console.log(te2);
 let te3 ="<%=session.getAttribute("clientBrowser")%>";
 console.log(te3);
 let te4 ="<%=session.getAttribute("clientOS")%>";
 console.log(te4);
 let te5 ="<%=session.getAttribute("clientIpAddr")%>";
 console.log(te5);
 let te6 ="<%=session.getAttribute("fullURL")%>";
 console.log(te6);
 let te7 ="<%=session.getAttribute("referer")%>";
 console.log(te7);
 
 
 </script>
 
<% 
	ServletContext context = getServletContext();
    String serverHTTP = context.getInitParameter("serverHTTP");
     serverHTTP = "http://5.189.137.133/SOLA-API/";
    /*  serverHTTP = "http://5.189.137.133/SOLA-API-TEST/"; */ 
    String staffTemplateFile = "http://5.189.137.133//sola/content/template/StaffFileFormat.xlsx";
    String customerTemplateFile = "http://5.189.137.133//sola/content/template/CustomerFileFormat.xlsx";
%>

 