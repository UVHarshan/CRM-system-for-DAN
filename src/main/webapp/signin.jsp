<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title id="pageTittleSignin">Signin</title>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900"
	rel="stylesheet">
<link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet">
<link href="./dist-assets/css/mobios-site.css" rel="stylesheet">
<link href="./dist-assets/css/mobios-login.css" rel="stylesheet">
<link href="./dist-assets/css/plugins/fontawesome-5.css"
	rel="stylesheet" />
<link href="./dist-assets/css/plugins/fontawesome/css/all.min.css"
	rel="stylesheet">
<style>
</style>
</head>
<body>
	<%@ include file="common/CacheControl.jsp"%>
	<div class="auth-layout-wrap"
		style="background-image: url(./dist-assets/images/photo-wide-4.jpg)">
		<div class="auth-content">
			<div class="card">
				<div class="row">
					<div class="col-md-12">
						<div class="p-4">
							<div class="auth-logo text-center mb-4">
								<img src="./dist-assets/images/logo.png" alt="">
							</div>
							<h1 class=" text-center text-18" id="pageHeadingSignin">Sign
								In</h1>
							<div id="messsageDiv" style="min-height: 45px"></div>
							<form id="loginForm" class="mt-0 pt-0">
								<div class="form-group">
									<label for="email" id="pageLableEmailAddress">Email
										address</label> <input name="email" id="email" type="email"
										placeholder="Enter Your Username"
										class="form-control form-control-rounded">
									<div id="emailMes" class="RequiredStar"></div>
								</div>
								<div class="form-group">
									<label for="password" id="pageLablePassword">Password</label> <input
										name="password" id="password" type="password"
										placeholder="Enter Your Password"
										class="form-control form-control-rounded">
									<div id="passwordMes" class="RequiredStar"></div>
								</div>
						<!-- 		<div class="row">
									<div class="col-md-12 text-center">
										<input type="checkbox"> <span
											id="pageSpanRememberLogin">Remember Your Login
											Information</span>
									</div>
								</div> -->
								<button class="btn btn-rounded btn-info btn-block mt-2"
									id="pageButtonSignIn">Sign In</button>
							</form>
							<div class="mt-3 text-center row">
								<div class="col-5">
									<div class="dropdown">
										<div class=" dropdown" id="divLanguageDropdown"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
											<i class="fa fa-language pt-1 mr-1 text-20 cursor-pointer"
												role="generic" data-toggle="tooltip" data-placement="top"
												data-original-title="Language"></i>
										</div>
										<div class="dropdown-menu dropdown-menu-right"
											x-placement="bottom-end"
											style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(130px, 38px, 0px);">
											<button class="dropdown-item" type="button"
												onclick="setLanguageWithTables('English');">English</button>
											<button class="dropdown-item" type="button"
												onclick="setLanguageWithTables('Japanese');">Japanese</button>
										</div>
									</div>
								</div>
								<div class="col-7">
									<a class="mr-5" href="forgot.jsp"><u><span
											id="pageSpanForgetPassword">Forgot Password?</span></u></a>
								</div>
							</div>
<!-- 							<div class="row">
								<div class="col-md-3 text-center pt-2">
									<a href="terms.jsp" target="_blank"><u><span
											id="pageSpanTermsAndConditon">Terms & Condition</span></u></a>
									<div id="myModal" class="modal">
										<div class="modal-content modal-lg">
										    <h2>Terms & Condition</h2>
										    <p>Content of Terms & Condition</p>
										    <span class="close3"><button class="btn btn-rounded btn-danger pl-4 pr-4 mt-2" id="pageButtonClose">Close</button></span>
										</div>
									</div>
								</div>
								<div class="col-md-3 text-center pt-2">
									<a href="privacy-policy.jsp" target="_blank"><u> <span
											id="pageSpanPrivacyPolicy">Privacy Policy</span></u></a>
									<div id="myModal1" class="modal">
										<div class="modal-content modal-lg">
										    <h2> Privacy Policy</h2>
										    <p>Content of Terms & Condition</p>
										    <span class="close1"><button class="btn btn-rounded btn-danger pl-4 pr-4 mt-2">Close</button></span>
										</div>									
									</div>

								</div>

								<div class="col-md-6  pt-2">
									<a href="transactions-law.jsp" target="_blank"><u> <span
											id="pageSpanBaseOnact">Display Based on the act on
												specific commercial transactions</span>
									</u></a>
									<div id="myModal2" class="modal">

										<div class="modal-content text-center modal-lg">
										    <h2> Display Based on the act on specific commercial transactions</h2>
										    <p>Content of Display Based on the act on specific commercial transactions</p>
										    <span class="close2"><button class="btn btn-rounded btn-danger pl-4 pr-4 mt-2">Close</button></span>
										</div>

									</div>
								</div>
							</div> -->
						</div>
					</div>
					<!-- <div class="col-md-6 text-center" style="background-size: cover;background-image: url(../../dist-assets/images/photo-long-3.jpg)">
                        <div class="pr-3 auth-right"><a class="btn btn-rounded btn-outline-primary btn-outline-email btn-block btn-icon-text" href="signup.html"><i class="i-Mail-with-At-Sign"></i> Sign up with Email</a><a class="btn btn-rounded btn-outline-google btn-block btn-icon-text"><i class="i-Google-Plus"></i> Sign up with Google</a><a class="btn btn-rounded btn-block btn-icon-text btn-outline-facebook"><i class="i-Facebook-2"></i> Sign up with Facebook</a></div>
                    </div> -->
				</div>
			</div>
		</div>
	</div>
	<span id="spanScriptID"></span>

	<script src="./dist-assets/js/language_main.js"></script>


	<script>
const lan = getSiteLanguage();
var pageLanguage = lan;
loadSelectedLanguage(pageLanguage,"signin");

function setLanguageWithTables(selectedLanguage) {
loadSelectedLanguage(selectedLanguage,"signin");
setLanguage(selectedLanguage);

}
</script>
	<script src="./dist-assets/js/plugins/jquery-3.3.1.min.js"></script>

	<script type="text/javascript">

	    var modal = document.getElementById("myModal");
	
	    var btn = document.getElementById("myBtn");
	
	    var span = document.getElementsByClassName("close3")[0];
	
	    btn.onclick = function() {
	      modal.style.display = "block";
	    }
	
	    span.onclick = function() {
	      modal.style.display = "none";
	    }
	
	    window.onclick = function(event) {
	      if (event.target == modal) {
	        modal.style.display = "none";
	      }
	    }
	    
	    var modal1 = document.getElementById("myModal1");
		
	    var btn1 = document.getElementById("myBtn1");
	
	    var span1 = document.getElementsByClassName("close1")[0];
	
	    btn1.onclick = function() {
	      modal1.style.display = "block";
	    }
	
	    span1.onclick = function() {
	      modal1.style.display = "none";
	    }
	
	    window.onclick = function(event) {
	      if (event.target == modal1) {
	        modal1.style.display = "none";
	      }
	    }
	    
		var modal2 = document.getElementById("myModal2");
		
	    var btn2 = document.getElementById("myBtn2");
	
	    var span2 = document.getElementsByClassName("close2")[0];
	
	    btn2.onclick = function() {
	      modal2.style.display = "block";
	    }
	
	    span2.onclick = function() {
	      modal2.style.display = "none";
	    }
	
	    window.onclick = function(event) {
	      if (event.target == modal2) {
	        modal2.style.display = "none";
	      }
	    }
	    
    </script>

	<script>

    const form = document.getElementById('loginForm');
    const email = document.getElementById('email');
    const password = document.getElementById('password');
    //const serverHTTP = "https://api.dan-system.jp/";
    const serverHTTP = "http://5.189.137.133/SOLA-API/";
    //const serverHTTP = "http://185.202.236.94/SOLA-API/";
    form.addEventListener('submit', e => {
	e.preventDefault();
    
    let validateResult = checkInputs();

    if(validateResult==2)
    { 
        let dataSet = '{"email" : "'+email.value.trim()+'","password":"'+ password.value+'"}';
        $.ajax({
            //url: serverHTTP +'users/login',
           // url:"login?email="+email.value.trim()+"&password="+password.value,
            url:"loginController.jsp?email="+email.value.trim()+"&password="+password.value,
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	 if(result.message=="Success")
            	 { 
            		createUserSessions(result,request);
           	        //window.location.href = "dashboard.jsp";
           	     }else{
           	    	 showLoginMessage("Sorry please check your login credentials");
            		 //showLoginMessage(result.message);
            	 }  
            	 }else{
            		 showLoginMessage("Sorry please check your login credentials");
            	 }
             },
             error: function(error) {
             console.log(JSON.stringify(error));
          }
        });
      }

    });
    
    
    function showLoginMessage(message)
    {
    	document.getElementById("messsageDiv").innerHTML='<div class="alert alert-danger role="alert pt-0 pb-0 mt-0 mb-0"> <strong>'+message+'</strong><button onclick="hideLoginMessage()" type="button" class="close" aria-label="Close">&times;</button></div>';
    	setTimeout(function(){ hideLoginMessage(); }, 4000);
    	console.log("print")
    }
    
    
    function hideLoginMessage()
    {
    	document.getElementById("messsageDiv").innerHTML="";
    }
    
    function createUserSessions(resultArr,request)
    {
          localStorage.setItem("GUID",request.getResponseHeader('GUID'));
	  	  localStorage.setItem("uuid", resultArr.data1.uuid);
	  	  localStorage.setItem("userRole", resultArr.data1.userRoleId);
	  	  localStorage.setItem("staffID", resultArr.data1.id);
	  	  localStorage.setItem("status", resultArr.data1.status);
	  	  localStorage.setItem("name", resultArr.data1.name);
     	  localStorage.setItem("nameKatakana", resultArr.data1.nameKatakana);
          localStorage.setItem("profilePicturePath", resultArr.data1.profilePicturePath);
        
          if(request.getResponseHeader('redirectPath')!= null)
          {
        	  window.location.href = request.getResponseHeader('redirectPath');
          }
         
    }
  

    function checkInputs() 
    {
	// trim to remove the whitespaces
	const emailValue = email.value.trim();
	const passwordValue = password.value;
	let returnVal = 0;
	$("#emailMes").html("");
	$("#passwordMes").html("");
	if(emailValue === '') {
		setErrorFor(email, "emailMes", 'Email can not be blank');
        returnVal = returnVal+0;
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid email');
        returnVal = returnVal+0;
	} else {
		setSuccessFor(email);
        returnVal = returnVal+1;
	}
	
	if(passwordValue === '') {
		setErrorFor(password, "passwordMes", 'Password can not be blank');
        returnVal = returnVal+0;
	} else {
		setSuccessFor(password);
        returnVal = returnVal+1;
	}
    return returnVal ;
   }


   function setErrorFor(input,idName, message)
   {
	//const formControl = input.parentElement;
	//const formControl = input;

	// const small = formControl.querySelector('small');
	input.className = 'form-control form-control-rounded errorVal';
	$("#"+idName).html(message);
	// small.innerText = message;
   }

   
    function setSuccessFor(input) 
    {
	// const formControl = input.parentElement;
	//const formControl = input;
	input.className = 'form-control form-control-rounded successVal';
    }
    
    
    function isEmail(email) 
    {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
   }
    

</script>


	<script src="./dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
	<script src="./dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
	<script src="./dist-assets/js/scripts/script.min.js"></script>
	<script src="./dist-assets/js/scripts/script_2.min.js"></script>
	<script src="./dist-assets/js/scripts/sidebar.large.script.min.js"></script>
	<script src="./dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
</body>