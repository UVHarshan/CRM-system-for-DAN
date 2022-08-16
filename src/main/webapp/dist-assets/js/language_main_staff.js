
function getSiteLanguage() {
    if (localStorage.getItem("language") === null){
         localStorage.setItem('language', "Japanese");
    }
     return localStorage.getItem('language');
}


function loadSelectedLanguage(language,moduleName)
 {
    // var languageFileName     = "./dist-assets/js/lan/"+ language +"/"+ moduleName +".js";
	// var notificationFileName = "./dist-assets/js/lan/"+ language +"/"+"notification.js";

	var script = document.createElement('script');
	var script2 = document.createElement('script');
	
	script.src  =  "../dist-assets/js/lan/"+ language +"/"+ moduleName +".js";
	script2.src =  "../dist-assets/js/lan/"+ language +"/"+"notification.js";
	
   // script.defer;
   // script2.defer;
    
    script;
    script2;
      
    script.onload = function() {
       setLanguage(language);      
    };
       
     document.getElementById('spanScriptID').innerHTML="";
     document.getElementById('spanScriptID').appendChild(script);
     document.getElementById('spanScriptID').appendChild(script2);
 }


 function setLanguage(selectedLanguage)
  {
     localStorage.setItem('language', selectedLanguage);
     switchLanguage(selectedLanguage); 
  }


 function ToggleLanguage(selectedLanguage)
  {
    setLanguage(selectedLanguage);
   // switchLanguage(selectedLanguage);
  }


 function convertContentToLanguage(contentArray) {
    var languageIndex = 1;

    for (var i = 0; i < contentArray.length; i++) {
        if (document.getElementById(contentArray[i][0]) == null) {
        } else {
            document.getElementById(contentArray[i][0]).innerHTML = contentArray[i][languageIndex];
            document.getElementById(contentArray[i][0]).placeholder = contentArray[i][languageIndex];
            document.getElementById(contentArray[i][0]).title  = contentArray[i][languageIndex];
           // document.getElementsByName(contentArray[i][0])[0].innerHTML = contentArray[i][languageIndex];
        }
    }
  }
 
 function convertContentToLanguageByName(contentArray) {
    var languageIndex = 1;
    
    for (var i = 0; i < contentArray.length; i++) {
        if (document.getElementsByName(contentArray[i][0]) == null) {
      
        } else {
           nameElement =  document.getElementsByName(contentArray[i][0]);
             for(var w = 0; w < nameElement.length; w++)
          {
            nameElement[w].innerHTML = contentArray[i][languageIndex];
          }
        }
    }
 }
 