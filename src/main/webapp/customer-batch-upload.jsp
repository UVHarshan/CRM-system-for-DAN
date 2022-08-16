<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.apache.poi.ss.usermodel.DataFormatter"%>
<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Iterator"%>  
<%@page import="java.util.regex.*"%> 
<%@page import="org.apache.poi.ss.usermodel.Cell"%>  
<%@page import="org.apache.poi.ss.usermodel.Row"%> 
<%@page import="org.apache.poi.xssf.usermodel.XSSFSheet"%> 
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%> 

<%!
public boolean companyNameValidate(String value)
{
	if (value.trim() == "")
	{
	   System.out.println(value+" Flase 1"); 
	   return false;
	}else{
		if(! Pattern.matches("^([^0-9]*)$", value) || Pattern.matches("[$&+,:;=\\\\?@#|/'<>{}\\[\\].^*()%!-]", value) )
		{
		// if (!/^([^0-9]*)$/.test(value) || /[~`!@#$%^&()_={}[\]:;,.<>+\/?-]/.test(value)) 
		System.out.println(value+" Flase 2"); 
		return false;	
		}
		 System.out.println(value+" True 1"); 
		 return true;	
	}   
}

public boolean organizationNameValidate(String value)
{
	if (value.trim() == "")
	{
	   System.out.println(value+" Flase 1"); 
	   return false;
	}else{
	   System.out.println(value+" True 1"); 
	   return true;
	}		
}


public boolean organizationEmailValidate(String value)
{
	if (value.trim() == "")
	{
	   System.out.println(value+" Flase 1"); 
	   return false;
	}else{
		if(! Pattern.matches("^[a-zA-Z0-9._%+-]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,}$", value) )
		{
		System.out.println(value+" Flase 2"); 
		return false;	
		}
		 System.out.println(value+" True 1"); 
		 return true;
	}		
}


public boolean organizationMobileValidate(String value)
{
	if (value.trim() == "")
	{
	   System.out.println(value+" Flase 1"); 
	   return false;
	}else{
		if(! Pattern.matches("^[0-9]{10,11}$", value) )
		{
		System.out.println(value+" Flase 2"); 
		return false;	
		}
		 System.out.println(value+" True 1"); 
		 return true;
	}		
}


public boolean organizationAddressValidate(String value)
{
	if (value.trim() == "")
	{
	   System.out.println(value+" Flase 1"); 
	   return false;
	}else{
	   System.out.println(value+" True 1"); 
	   return true;
	}		
}

public boolean organizationURLValidate(String value)
	{
		if (value.trim() == "")
		{
		   System.out.println(value+" Flase 1"); 
		   return false;
		}else{
			if(! Pattern.matches("^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$", value) )
			{
			System.out.println(value+" Flase 2"); 
			return false;	
			}
			 System.out.println(value+" True 1"); 
			 return true;
		}		
	}

public void readExcel(String guid,String filePath,HttpServletRequest request,HttpServletResponse response){
try  
{  
//File file = new File("D:\\customer.xlsx");   //creating a new file instance  
File file = new File("D:\\customer - Copy.xlsx");
//String fileLocation = "/opt/apache-tomcat-8.5.47/webapps/sola/content/files/"+filePath;
//File file = new File(fileLocation);

FileInputStream fis = new FileInputStream(file);   //obtaining bytes from the file  
//creating Workbook instance that refers to .xlsx file  
XSSFWorkbook wb = new XSSFWorkbook(fis);   
XSSFSheet sheet = wb.getSheetAt(0);     //creating a Sheet object to retrieve object  
Iterator<Row> itr = sheet.iterator();    //iterating over excel file 
Iterator<Row> itr2 = sheet.iterator();
int i =0;
int i2 =0;
while (itr.hasNext())                 
{ 
Row row = itr.next(); 
if(i!=0){
Iterator<Cell> cellIterator = row.cellIterator();   //iterating over each column  
while (cellIterator.hasNext())   
{  
 Cell cell = cellIterator.next(); 
 //companyNameValidate(cell.getStringCellValue().trim());
 //System.out.print(cell.getStringCellValue().trim() + "\t\t\t"); 
}  
}
i++;
//System.out.println("");  
}
PrintWriter out = response.getWriter();
DataFormatter formatter = new DataFormatter();
JSONObject obj=new JSONObject();
while (itr2.hasNext())                 
{
	
	Row row = itr2.next();
	if(i2!=0){
	out.println("Row "+i2+ " Reading....<br/>");
    Cell cell0 = row.getCell(0);
    Cell cell1 = row.getCell(1);
    Cell cell2 = row.getCell(2);
    Cell cell3 = row.getCell(3);
    Cell cell4 = row.getCell(4);
    Cell cell5 = row.getCell(5);
    
    
    // from here
    String validationStatus="";
    boolean validStatus=true;
    boolean xyz=true;
    validStatus = companyNameValidate(cell0.getStringCellValue().trim());
    validationStatus="Company Name:"+validStatus;
    if(!validStatus)xyz=false;
    
    validStatus=companyNameValidate(cell0.getStringCellValue().trim());
    validationStatus=validationStatus+","+validStatus;
    if(!validStatus)xyz=false;
    
    if(!xyz)
    {
    	 out.println("<span style='color:red'>Sorry Row "+i2+ " data Invalid</span><br/>");
    	 return ;
    }
    
    // to here
  
 
   // if (companyNameValidate(cell0.getStringCellValue().trim()) && organizationNameValidate(cell1.getStringCellValue().trim()) && organizationEmailValidate(cell2.getStringCellValue().trim()) && organizationMobileValidate(cell3.getStringCellValue().trim()) && organizationAddressValidate(cell4.getStringCellValue().trim()) && organizationURLValidate(cell5.getStringCellValue().trim()))
   // {
      //companyNameValidate(cell0.getStringCellValue().trim());
      out.println("<span style='color:green'>Row "+i2+ " data Valid</span><br/>");
       
      obj.put("name","sonoo");    
      obj.put("age",new Integer(27));    
      obj.put("salary",new Double(600000));   
      
      obj.put("companyName",cell0.getStringCellValue().trim());
      obj.put("companyNameKatakana",null);
      obj.put("representativePosition",null);
      obj.put("representativeName",null);
      obj.put("telCompany",cell3.getStringCellValue().trim());
      obj.put("fax",null);
      obj.put("email",cell2.getStringCellValue().trim());
      obj.put("dispatchClassification1",null);
      obj.put("dispatchClassification2",null);
      obj.put("dispatchClassification3",null);
      obj.put("dispatchClassification4",null);
      obj.put("dispatchClassification5",null);
      obj.put("postalCode",null);
      obj.put("prefecture",null);
      obj.put("address",cell4.getStringCellValue().trim());
      obj.put("organizationName",cell1.getStringCellValue().trim());
      obj.put("billingDeadLine",null);
      obj.put("customerRepresentativeName",null);
      obj.put("customerRepresentativeNameKatakana",null);
      obj.put("customerContact",null);
      obj.put("accountManager",null);
      obj.put("url",cell5.getStringCellValue().trim());
      obj.put("rank",null);
      obj.put("remarks",null);
      // System.out.print(obj);  
      // out.println(obj);
      // add to correct data object
      
      out.println("<script src=\"./dist-assets/js/plugins/jquery-3.3.1.min.js\"></script>");
      out.println("<script>");
      out.println("$.ajax({	beforeSend : function(request) {request.setRequestHeader('GUID', '"+guid+"');},");
      out.println("url :'http://5.189.137.133/SOLA-API-TEST/Customer/PostInfo',method : 'POST',contentType : 'application/json',data :JSON.stringify("+obj+"),dataType : 'json'});");
      out.println("</script>");
      

      
      
	/* 	URL url = new URL("http://5.189.137.133/SOLA-API-TEST/Customer/PostInfo");
		// Open a connection(?) on the URL(??) and cast the response(???)
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("POST");
		
		// Now it's "open", we can set the request method, headers etc.
		connection.setRequestProperty("Content-Type", "application/json; utf-8");
		connection.setRequestProperty("accept", "application/json");
		connection.setDoOutput(true);
      
		
		 String jsonInputString = obj.toString();
		 
		 
		 request.setCharacterEncoding("utf8");
	     response.setCharacterEncoding("utf8");
	     
	     
		try(OutputStream os = connection.getOutputStream()) {
		    byte[] input = jsonInputString.getBytes("utf-8");
		    //byte[] input = obj.getBytes("utf-8");
		    os.write(input, 0, input.length);			
		}
		 StringBuilder response1 = new StringBuilder();
		 //System.out.print("response1 : "+response1);
		 String responseLine = null; */
	/* 	try(BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"))) {
				    while ((responseLine = br.readLine()) != null) {
				        response1.append(responseLine.trim());
				        System.out.println(response1.toString());    
				    }
		      }  */    
   // }else{
   //   out.println("<span style='color:red'>Sorry Row "+i2+ " data Invalid</span><br/>");
     // create error log object
   // }
   }
  i2++;
}
// API call here
//file.close();
}  
catch(Exception e)  
{  
e.printStackTrace();  
} 
}

%>

<% 
String filePath = request.getParameter("file");  
String guid = request.getParameter("GUID"); 
readExcel(guid,filePath,request,response); %>