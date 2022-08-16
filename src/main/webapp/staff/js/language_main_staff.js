
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

	var script  = document.createElement('script');
	var script2 = document.createElement('script');
	console.log("loadSelectedLanguage start Runs 1");
	script.src  =  "./js/lan/"+ language +"/"+ moduleName+".js";
	script2.src =  "./js/lan/"+ language +"/"+"notification.js";
    console.log("loadSelectedLanguage start Runs 2");
   // script.defer;
   // script2.defer;
    
    script;
    script2;
      
    script.onload = function() {
    console.log("loadSelectedLanguage start Runs 3");
       console.log("script.onload = function()");
       setLanguage(language);  
       console.log("loadSelectedLanguage start Runs 4");    
    };
     console.log("loadSelectedLanguage start Runs 5");  
     document.getElementById('spanScriptID').innerHTML="";
     document.getElementById('spanScriptID').appendChild(script);
     document.getElementById('spanScriptID').appendChild(script2);
     console.log("loadSelectedLanguage start Runs 6");
 }


 function setLanguage(selectedLanguage)
  {
     localStorage.setItem('language', selectedLanguage);
     switchLanguage(selectedLanguage); 
  }


 function ToggleLanguage(selectedLanguage)
  {
    setLanguage(selectedLanguage);
    switchLanguage(selectedLanguage);
  }


 function convertContentToLanguage(contentArray) {
    var languageIndex = 1;
     
    for (var i = 0; i < contentArray.length; i++) {
        if (document.getElementById(contentArray[i][0]) == null) {
        } else {
            console.log("convertContentToLanguage : "+contentArray[i][0]+" - "+contentArray[i][languageIndex]);
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
 
 function convertTitleToLanguageByName(contentArray){
    var languageIndex = 1;
    for (var i = 0; i < contentArray.length; i++) {
        if (document.getElementsByName(contentArray[i][0]) == null) {
      
        } else {
           nameElement =  document.getElementsByName(contentArray[i][0]);
             for(var w = 0; w < nameElement.length; w++)
          {
            nameElement[w].title = contentArray[i][languageIndex];
          }
        }
    }
 }
 