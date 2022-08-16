    <div id="loaderNotify" class="" style="display: none;"> 
        <img src="./dist-assets/images/spinner.gif">
    </div> 
            <div class="app-footer pt-1 pb-1 FooterSty"  id="siteFooter">
                <div class="footer-bottom d-flex flex-column flex-sm-row align-items-center mt-1 mb-1" >
                    <p class="pt-4"><strong>Staff Management CRM Portal</strong></p>
                    <span class="flex-grow-1"></span>
                    <div class="d-flex align-items-center">
                        <img class="logo" src="./dist-assets/images/logo.png" alt="">
                        <div>
                            <p class="m-0">&copy; <script>document.write(new Date().getFullYear())</script> MobiOs</p>
                            <p class="m-0">All rights reserved</p>
                        </div>
                    </div>
                </div>
            </div>
          
           
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

 <script>
 
 function getToday()
 {
	  let today = new Date();
	  let dd = String(today.getDate()).padStart(2, '0');
	  let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	  let yyyy = today.getFullYear();

	 today = mm + '/' + dd + '/' + yyyy;
	 return today;
 }
  
 
 
 
 let sendMe = false;
     if( localStorage.getItem("GUID") == null && localStorage.getItem("uuid") == null)
      {
    	 
    	 Swal.fire({
    		  icon: 'error',
    		  title: 'Sorry Invalid Session!',
    		  confirmButtonText: 'Redirect Me',
    		  confirmButtonColor: '#003473',
    		  text: 'Please login to the system',
    		 // footer: '<a href="">Why do I have this issue?</a>'
    		}).then((result) => {
    			sendMe=true;
    			redirectMe();
    			})
    	 
    	 if(sendMe==true){
    		 redirectMe();
    	 }
		
      }
  function redirectMe(){
		 localStorage.removeItem("GUID");
		 localStorage.removeItem("uuid");
		 localStorage.removeItem("userRole");
		 localStorage.removeItem("staffID");
         localStorage.removeItem("status");
	     localStorage.removeItem("name");
	     localStorage.removeItem("nameKatakana");
	     localStorage.removeItem("profilePicturePath");
	     localStorage.removeItem("saveUuid");
	   window.location.href = "signin.jsp";
	}
     
 function confirmLogout()
 {
	 cancelText = notificationArray["N0004"];
	 titleText = notificationArray["N0006"];
	 confirmText = notificationArray["N0007"];
	 
	 Swal.fire({
		  width: '25rem',
		  title: titleText,
		  //text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  cancelButtonText: cancelText,
		  confirmButtonColor: '#003473',
		  cancelButtonColor: '#f44336',
		  confirmButtonText: confirmText
		}).then((result) => {
		  if (result.isConfirmed) {
			   localStorage.removeItem("GUID");
		       localStorage.removeItem("uuid");
		       localStorage.removeItem("userRole");
			   localStorage.removeItem("staffID");
               localStorage.removeItem("status");
		       localStorage.removeItem("name");
		       localStorage.removeItem("nameKatakana");
		       localStorage.removeItem("profilePicturePath");
		       localStorage.removeItem("saveUuid");
		       
		    window.location.href = "signin.jsp";
		   // Swal.fire(
		   //   'Deleted!',
		   //   'Your file has been deleted.',
		   //   'success'
		   // )
		  }
		});
 }
 
 function showMessage(messageType,code)
 {
	 messageContent = notificationArray[code];
		 Swal.fire({
			  width: '25rem', 
			 // position: 'top-end',
			  icon: messageType,
			  title: messageContent,
			  showConfirmButton: false,
			  timer: 3000
			}); 
 }
 
 
 function showSystemMessage(messageType,code)
 {
	 messageContent = notificationArray[code];
	 cancelText = notificationArray["N0004"];
		 Swal.fire({
			  width: '25rem', 
			  // position: 'top-end',
			  showCancelButton: true,
			  cancelButtonText: cancelText,
			  icon: messageType,
			  title: messageContent,
			  showConfirmButton: false,
			  
			}); 
 }
 
 function checkMessage(messageType,code1,code2,val1,val2)
 {
	 messageContent = notificationArray[code1]+val1+notificationArray[code2]+val2;
	 okText = notificationArray["N0005"];
		 Swal.fire({
			  width: '25rem', 
			  // position: 'top-end',
			  showCancelButton: false,
			  icon: messageType,
			  title: messageContent,
			  showConfirmButton: true,
			  confirmButtonText: okText,
			  confirmButtonColor: '#003473',
			}); 
 }
 
 </script>  