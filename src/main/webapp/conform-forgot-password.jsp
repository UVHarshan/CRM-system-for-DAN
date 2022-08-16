<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title id="pageTitleSpanConformForgotPassword">Confirm Forgot Password</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet">
    <link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet">
    <link href="./dist-assets/css/plugins/fontawesome-5.css" rel="stylesheet"/>
	<link href="./dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />
</head>
<%@ include file="common/CacheControl.jsp"%>
<body>
<div class="auth-layout-wrap" style="background-image: url(./dist-assets/images/photo-wide-4.jpg)">
    <div class="auth-content">
        <div class="card o-hidden">
            <div class="row">
                <div class="col-md-12">
                    <div class="p-4">
                        <div class="auth-logo text-center mb-4"><img src="./dist-assets/images/logo.png" alt=""></div>
                        <h1 class="mb-3 text-center text-18" id="pageSpanConformForgotPassword">Conform Forgot Password</h1>
                        <div id="messsageDiv"></div>
                        <form id="resetPasswordForm" class="mt-0 pt-0">
                            <div class="form-group">
                                <label for="email" id="pageSpanEmailAddress">Email address</label>
                                <span class="RequiredStar"> *</span>
                                <input class="form-control form-control-rounded" id="email" type="email">
                                <div id="errorEmail" style="color: red;"></div>
                            </div>
                            <div class="form-group">
                                <label for="email" id="pageSpanLoginCode">Login Code</label>
                                <span class="RequiredStar"> *</span>
                                <input class="form-control form-control-rounded" id="otpCode" type="text">
                                <div id="errorLoginCode" style="color: red;"></div>
                            </div>
                            <div class="form-group">
                                <label for="email" id="pageSpanNewPassword">New Password</label>
                                <span class="RequiredStar"> *</span>
                                <input class="form-control form-control-rounded" id="newPassword" type="password">
                                <div id="errorNewPassword" style="color: red;"></div>
                            </div>
                            <div class="form-group">
                                <label for="email" id="pageSpanRetypeNewPassword">Retype New Password</label>
                                <span class="RequiredStar"> *</span>
                                <input class="form-control form-control-rounded" id="retypeNewPassword" type="password">
                                <div id="errorRetypeNewPassword" style="color: red;"></div>
                            </div>
                            <button class="btn btn-info btn-block btn-rounded mt-3" id="pageButtonResetPassword">Reset Password</button>
                        </form>
                        <div class="mt-3 text-center">
                            <div class="dropdown" style="z-index: 1999">
							<div class=" dropdown" id="divLanguageDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-language pt-1 mr-1 text-20 cursor-pointer" role="generic" data-toggle="tooltip" data-placement="top" data-original-title="Language"></i></div>
							<div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(130px, 38px, 0px); z-index: 999;overflow: visible;">
							 <button class="dropdown-item" type="button" onclick="setLanguageWithTables('English');">English</button>
							 <button class="dropdown-item" type="button" onclick="setLanguageWithTables('Japanese');">Japanese</button>
							</div>
							</div>
                        <div class="mt-3 text-center">
                        
                        <a class="" href="signin.jsp">
                                <u><span id="pageSpanSignin">Sign in</span></u></a></div>
                    </div>
                </div>
                <!-- <div class="col-md-6 text-center" style="background-size: cover;background-image: url(../../dist-assets/images/photo-long-3.jpg)">
                    <div class="pr-3 auth-right"><a class="btn btn-outline-primary btn-outline-email btn-block btn-icon-text btn-rounded" href="signup.html"><i class="i-Mail-with-At-Sign"></i> Sign up with Email</a><a class="btn btn-outline-primary btn-outline-google btn-block btn-icon-text btn-rounded"><i class="i-Google-Plus"></i> Sign in with Google</a><a class="btn btn-outline-primary btn-outline-facebook btn-block btn-icon-text btn-rounded"><i class="i-Facebook-2"></i> Sign in with Facebook</a></div>
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
<script src="./dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
<script src="./dist-assets/js/scripts/script.min.js"></script>
<script src="./dist-assets/js/scripts/script_2.min.js"></script>
<script src="./dist-assets/js/scripts/sidebar.large.script.min.js"></script>
<script src="./dist-assets/js/scripts/dashboard.v1.script.min.js"></script>

<script src="./dist-assets/js/confirm-forgot-password-validate.js"></script>

<script>
const form = document.getElementById('resetPasswordForm');
const email = document.getElementById('email');
const otpCode = document.getElementById('otpCode');
const newPassword = document.getElementById('newPassword');
const retypeNewPassword = document.getElementById('retypeNewPassword');
//const serverHTTP = "http://5.189.137.133/SOLA-API/";
const serverHTTP = "https://api.dan-system.jp/";


  form.addEventListener('submit', e => {
   e.preventDefault();
  });

function resetPassword()
{
	let dataSet = {};
	   dataSet['email'] = email.value.trim();
	   dataSet['otp'] = otpCode.value.trim();
	   dataSet['password'] = newPassword.value.trim();
	   
	    $.ajax({
	        url: serverHTTP +'users/ChangePassword',
	        method: 'POST',
	        contentType: 'application/json',
	        data:JSON.stringify(dataSet),
	        dataType: 'json',
	         success: function(result, status, request){
	         if(result.status==200)
	        	 {
	        	 if(result.message=="Success")
	        	 { 
	        		 showLoginMessage("alert alert-success","N1266");
	        		 setTimeout(function(){ window.location.href = "signin.jsp"; }, 4000);
	       	     }else{
	       	    	 showLoginMessage("alert alert-danger","N1265");
	        	 }  
	        	 }else{
	        		 showLoginMessage("alert alert-danger","N1265");
	        	 }
	         },
	         error: function(error) {
	         console.log(JSON.stringify(error));
	      }
	    });	
}

function showLoginMessage(type,messageCode)
{
	messageContent = notificationArray[messageCode];
	document.getElementById("messsageDiv").innerHTML='<div class="'+type+'" role="alert pt-0 pb-0 mt-0 mb-0"> <strong>'+messageContent+'</strong><button onclick="hideLoginMessage()" type="button" class="close" aria-label="Close">&times;</button></div>';
	setTimeout(function(){ hideLoginMessage(); }, 4000);
}

function hideLoginMessage()
{
	document.getElementById("messsageDiv").innerHTML="";
}
</script>
</body>
