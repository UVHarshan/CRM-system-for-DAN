// Validation using Jquery
 // Return Values
    var quotationNumberReturn = true;
	var customerRepNameReturn = true;
	var customerCompanyNameReturn = true;
	
$(function () {
	
    // Input Elements
    var quotationNumber = $("#quotationNumber");
    var customerRepName = $("#customerRepresentativeName");
    var companyName = $("#customerCompanyName");
   

    // Buttons
    //var searchBtn = $("#searchBtn");

    // Divs displaying error messages
    var errorQuotationNumber = $("#errorQuotationNumber");
    var errorCustomerRepName = $("#errorCustomerRepresentativeName");
    var errorCustomerCompanyName = $("#errorCustomerCode");


    quotationNumber.focusout(function () {
        quotationNumberVal = quotationNumber.val();
        try {   

            if (/^[0-9-]+$/.test(quotationNumberVal) || quotationNumberVal == "") {
                setSuccessFor(quotationNumber, errorQuotationNumber);
                quotationNumberReturn = true;
            } else {
				quotationNumberReturn = false;
                throw "E1202";               
            }
        } catch (error) {
            setErrorFor(quotationNumber, errorQuotationNumber, error);
        }
    });

	customerRepName.focusout(function() {
		customerRepNameVal = customerRepName.val();
		try {
			if (!/^([^0-9]*)$/.test(customerRepNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(customerRepNameVal)) {
				throw "E1203";
			} else {
				customerRepNameReturn = true;
				setSuccessFor(customerRepName, errorCustomerRepName);
			}
		} catch (error) {
			setErrorFor(customerRepName, errorCustomerRepName, error);
			customerRepNameReturn = false;
		}
	});
	
	companyName.focusout(function() {
		companyNameVal = companyName.val();
		try {
			if (!/^([^0-9]*)$/.test(companyNameVal) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(companyNameVal)) {
				throw "E1204";
			} else {
				customerCompanyNameReturn = true;
				setSuccessFor(companyName, errorCustomerCompanyName);
			}
		} catch (error) {
			setErrorFor(companyName, errorCustomerCompanyName, error);
			customerCompanyNameReturn = false;
		}
	});
    
    
    
     $("#searchForm").submit(function( event ) {
       event.preventDefault();
     if (quotationNumberReturn == true && customerRepNameReturn == true && customerCompanyNameReturn == true) {
           runSearch();
			
       } else {
           showMessage('info',"N1211");
        }
      });
      
    });


function resetValidationReturnValues() {

    quotationNumberReturn = true;
	customerRepNameReturn = true;
	customerCompanyNameReturn = true;
}

  function setErrorFor(divInput, divError, errorCode) {
    divInput.addClass("errorVal").removeClass("successVal");
    message = quotationErrayArray[errorCode];
    divError.html(message);
  }

function setSuccessFor(divInput, divError) {
    //divInput.addClass("successVal").removeClass("errorVal");
	divInput.removeClass("errorVal");
    divError.html("");
}

