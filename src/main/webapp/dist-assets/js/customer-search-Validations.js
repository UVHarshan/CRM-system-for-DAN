// Validation using Jquery

   // Return Values
    var mobilePhoneReturn = true;
	var mailAddressReturn = true;
	var custCodeReturn = true;
	var postalCodeReturn = true;

$(function () {
	
    // Input Elements
    var mobilePhone = $("#mobilePhone");
    var mailAddress = $("#mailAddress");
	var customerCode = $("#customerCode");
	var postalCode = $("#postalCode");

    // Buttons
    var searchBtn = $("#searchBtn");

    // Divs displaying error messages
    var errorMobile = $("#errorMobile");
    var errorMail = $("#errorMail");
	var errorCustCode = $("#errorCustomerCode");
	var errorPostalCode = $("#errorPostalCode");


    mobilePhone.focusout(function () {
		

        mobileVal = mobilePhone.val();
        // Using try, catch and throw statements.......
        try {        
    
            //if (mobileVal.trim() == "") throw "cannot be empty!";

            if (/^[0-9]{11}$/g.test(mobileVal) || mobileVal == "") {
                setSuccessFor(mobilePhone, errorMobile);
                mobilePhoneReturn = true;
            } else {

				mobilePhoneReturn = false;
				throw "E1002";  
               // throw "Invalid Mobile Number";               
            }
        } catch (error) {
            setErrorFor(mobilePhone, errorMobile, error);
        }
    });

   mailAddress.focusout(function () {
		
        mailVal = mailAddress.val();

        // Using try, catch and throw statements.......
        try {      
	
			 if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mailVal)  || mailVal =="") {
		        setSuccessFor(mailAddress, errorMail);       
				mailAddressReturn = true; 
		   	 }else{		
				mailAddressReturn = false;	
				throw "E1003";	
				//throw "Invalid Email";	        
		    }       
            
        } catch (error) {
            setErrorFor(mailAddress, errorMail, error);
        }
    }); 


	
	  customerCode.focusout(function () {
		

        custCodeVal = customerCode.val();
        // Using try, catch and throw statements.......
        try {        
    
            //if (custCodeVal.trim() == "") throw "cannot be empty!";

            if (/^[0-9]{6}$/g.test(custCodeVal) || custCodeVal == "") {
                setSuccessFor(customerCode, errorCustCode);
                custCodeReturn = true;
            } else {
				custCodeReturn = false;
                throw "E1001";   
                //throw "Invalid Customer Code";             
            }
        } catch (error) {
            setErrorFor(customerCode, errorCustCode, error);
        }
    });
	
	  postalCode.focusout(function () {
		

        postCodeVal = postalCode.val();
        // Using try, catch and throw statements.......
        try {        
    
            //if (custCodeVal.trim() == "") throw "cannot be empty!";

            if (/^[0-9]{7}$/g.test(postCodeVal) || postCodeVal == "") {
                setSuccessFor(postalCode, errorPostalCode);
                postalCodeReturn = true;
            } else {
				postalCodeReturn = false;
				throw "E1004";  
                //throw "Invalid Postal Code";               
            }
        } catch (error) {
            setErrorFor(postalCode, errorPostalCode, error);
        }
    });
    
    
    
	$("#searchForm").submit(function( event ) {
	event.preventDefault();
	if (mobilePhoneReturn == true && mailAddressReturn == true && custCodeReturn == true && postalCodeReturn == true) {
	runSearch();
	} else {
	showMessage('info',"N1093");
	}
	});
	});


  function setErrorFor(divInput, divError, errorCode) {
    divInput.addClass("errorVal").removeClass("successVal");
    message = customerErrorArray[errorCode];
    divError.html(message);
  }

function setSuccessFor(divInput, divError) {
    //divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
    divError.html("");
}

function resetValidationReturnValues() {

    mobilePhoneReturn = true;
    mailAddressReturn = true;
    custCodeReturn = true;
    postalCodeReturn = true;
}


