<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Signin</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet">
    <link href="../dist-assets/css/themes/lite-purple.css" rel="stylesheet">
    <link href="../dist-assets/css/mobios-site.css" rel="stylesheet">
     <link href="../dist-assets/css/mobios-login.css" rel="stylesheet">
 <style>
 #loaderNotify {
		  position: fixed;
		  left: 37%;
		  top: 30%;
		  z-index: 1;
		}
</style>
</head>
<body>
   <%@ include file="../common/CacheControl.jsp"%>
    <div class="auth-layout-wrap" style="background-image: url(../dist-assets/images/photo-wide-4.jpg)">
        <div class="auth-content">
            <div class="card o-hidden">
                <div class="row">
                    <div class="col-md-12">
                        <div class="p-4">
                            <div class="auth-logo text-center mb-4"><img src="../dist-assets/images/logo.png" alt=""></div>
                            <h1 class=" text-center text-18">Staff Sign In</h1>
                            <div id="messsageDiv" style="min-height:45px"></div>
                            <form id="loginForm"   class="mt-0 pt-0">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input name="email" id="email" type="email"   placeholder="Enter Your Username"  class="form-control form-control-rounded" >
                                    <div id="emailMes" class="RequiredStar"></div>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="password" id="password" type="password"   placeholder="Enter Your Password" class="form-control form-control-rounded" >
                                    <div id="passwordMes" class="RequiredStar"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                       <input type="checkbox" >  Remember Your Login Information
                                    </div>
                                </div>
                                <button class="btn btn-rounded btn-info btn-block mt-2">Sign In</button>
                            </form>
                            <div class="mt-3 text-center">
                                <a class="" href="forgot.jsp"><u>Forgot Password?</u></a>
                            </div>
                            <div class="row">
                                <div class="col-md-3 text-center pt-2">
                                   <a class="" id="myBtn" data-toggle="modal" data-target="#modalTermsCondition"><u>Terms & Condition</u></a>
                                	<div id="myModal" class="modal">
										<div class="modal-content modal-lg">
										    <h2>Terms & Condition</h2>
										    <p>Content of Terms & Condition</p>
										    <span class="close3"><button class="btn btn-rounded btn-danger pl-4 pr-4 mt-2">Close</button></span>
										</div>
									</div>
                                </div>
                                <div class="col-md-3 text-center pt-2">
                                   <a class="" id="myBtn1" data-toggle="modal" data-target="#modalTermsCondition"><u> Privacy Policy</u></a>
                                   <div id="myModal1" class="modal">
										<div class="modal-content modal-lg">
										    <h2> Privacy Policy</h2>
										    <p>Content of Terms & Condition</p>
										    <span class="close1"><button class="btn btn-rounded btn-danger pl-4 pr-4 mt-2">Close</button></span>
										</div>									
									</div>
                                   
                                </div>
                                
                                <div class="col-md-6  pt-2">
                                   <a class="" id="myBtn2" data-toggle="modal" data-target="#modalTermsCondition"><u> Display Based on the act on specific commercial transactions </u></a>
                                		<div id="myModal2" class="modal">

										<div class="modal-content text-center modal-lg">
										    <h2> Display Based on the act on specific commercial transactions</h2>
										    <p>Content of Display Based on the act on specific commercial transactions</p>
										    <span class="close2"><button class="btn btn-rounded btn-danger pl-4 pr-4 mt-2">Close</button></span>
										</div>
									
									   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-md-6 text-center" style="background-size: cover;background-image: url(../../dist-assets/images/photo-long-3.jpg)">
                        <div class="pr-3 auth-right"><a class="btn btn-rounded btn-outline-primary btn-outline-email btn-block btn-icon-text" href="signup.html"><i class="i-Mail-with-At-Sign"></i> Sign up with Email</a><a class="btn btn-rounded btn-outline-google btn-block btn-icon-text"><i class="i-Google-Plus"></i> Sign up with Google</a><a class="btn btn-rounded btn-block btn-icon-text btn-outline-facebook"><i class="i-Facebook-2"></i> Sign up with Facebook</a></div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <div id="loaderNotify" style="display: none;"> 
        <img src="./dist-assets/images/spinner.gif">
    </div>
    
    <div id="loader2" style="display: none;"> 
        
    </div>
      <script src="../dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
    
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
    const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
    form.addEventListener('submit', e => {
	e.preventDefault();
    
    let validateResult = checkInputs();

    if(validateResult==2)
    { 
        let dataSet = '{"email" : "'+email.value.trim()+'","password":"'+ password.value+'"}';
        $.ajax({
            //url: serverHTTP +'users/login',
            url:"../login?email="+email.value.trim()+"&password="+password.value,
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            beforeSend: function(){
            	 document.getElementById("loaderNotify").style.display = "";
               },
             dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	 if(result.message=="Success")
            	 { 
            		createUserSessions(result,request);
            		console.log(result);
            		console.log(request);
           	       window.location.href = "dashboard.jsp";
           	     }else{
           	    	 showLoginMessage("Sorry please check your login credentials");
            		 //showLoginMessage(result.message);
            	 }  
            	 }else{
            		 showLoginMessage("Sorry please check your login credentials");
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
    	  localStorage.setItem("uuid", resultArr.data.uuid);
    	  localStorage.setItem("userRole", resultArr.data.userRoleId);
    	  // localStorage.setItem("userRole", 2);
    	  localStorage.setItem("status", resultArr.data.status);
    	  localStorage.setItem("name", resultArr.data.name);
       	  localStorage.setItem("nameKatakana", resultArr.data.nameKatakana);
          localStorage.setItem("profilePicturePath", resultArr.data.profilePicturePath);
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
</body>