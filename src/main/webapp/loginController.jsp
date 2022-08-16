<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%

  	String email = request.getParameter("email");
  	String password = request.getParameter("password");
  	
  	URL url = new URL("http://5.189.137.133/SOLA-API/users/login");
	// Open a connection(?) on the URL(??) and cast the response(???)
	HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	connection.setRequestMethod("POST");
	
	// Now it's "open", we can set the request method, headers etc.
	connection.setRequestProperty("Content-Type", "application/json; utf-8");
	connection.setRequestProperty("accept", "application/json");
	connection.setDoOutput(true);
    
	String jsonInputString = "{\"email\": \""+email+"\", \"password\":  \""+password+ "\"}";
		 
	request.setCharacterEncoding("utf8");
    response.setCharacterEncoding("utf8");
     
	try(OutputStream os = connection.getOutputStream()) {
	    byte[] input = jsonInputString.getBytes("utf-8");
	    os.write(input, 0, input.length);			
	}
	
	StringBuilder response1 = new StringBuilder();
	String responseLine = null;
	try(BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"))) {
			    while ((responseLine = br.readLine()) != null) {
			        response1.append(responseLine.trim());   
			    }
	      } 
	
	 Map<String, List<String>> map = connection.getHeaderFields();
	    for (Map.Entry<String, List<String>> entry : map.entrySet()) {
	    }
	String GUID = connection.getHeaderField("GUID");

	//SystemUser systemUser = new SystemUser();
    JSONObject json  = (JSONObject)new JSONParser().parse(response1.toString());
    //PrintWriter out1 = response.getWriter(); 

    String redirectPath = "signin.jsp";
	if (json.get("data1") != null && json.get("data2") != null){
		
		JSONObject jsonData = (JSONObject)json.get("data1");
		JSONArray jsonData2 = (JSONArray)json.get("data2");
		ArrayList<String> pageList = new ArrayList<String>();   
		if (jsonData2 != null) { 
			   int len = jsonData2.size();
			   for (int i=0;i<len;i++){ 
				   pageList.add(jsonData2.get(i).toString());
			   } 
			}
		String[] pageArray = pageList.toArray(new String[pageList.size()]);

    //    final String referer = getReferer(request);
    //  // final String fullURL = getFullURL(request);
   //     final String clientIpAddr = getClientIpAddr(request);
   //     final String clientOS = getClientOS(request);
   //     final String clientBrowser = getClientBrowser(request);
   //     final String userAgent = getUserAgent(request);
        
	    //HttpSession session = request.getSession();
	    session.setAttribute("GUID", (String)GUID);
	    session.setAttribute("uuid", (String)jsonData.get("uuid"));
	    session.setAttribute("userRoleId", (Long)jsonData.get("userRoleId"));
	    session.setAttribute("staffID", (Long)jsonData.get("id"));
	    session.setAttribute("status", (Long)jsonData.get("status"));
	    session.setAttribute("name", (String)jsonData.get("name"));
	    session.setAttribute("nameKatakana", (String)jsonData.get("nameKatakana"));
	    session.setAttribute("profilePicturePath", (String)jsonData.get("profilePicturePath"));
	    session.setAttribute("APNumbers", pageArray);
	    
	    
	/*     session.setAttribute("referer", (String)referer);
	 // session.setAttribute("fullURL", (String)fullURL);
	    session.setAttribute("clientIpAddr", (String)clientIpAddr);
	    session.setAttribute("clientOS", (String)clientOS);
	    session.setAttribute("clientBrowser", (String)clientBrowser);
	    session.setAttribute("userAgent", (String)userAgent);
 */
	    
	    if((Long)jsonData.get("userRoleId")<6) 
	    { 
	    	if((Long)jsonData.get("userRoleId")<5)
	    	{
	    		redirectPath = "dashboard.jsp";	
	    	}else 
	    	{
	    		redirectPath = "staff-management.jsp";	
	    	}    	
	    }else 
	    {
	    	redirectPath = "./staff/dashboard.jsp";
	    }
	    
	  //  session.setAttribute("userSession", systemUser);
		int userID = 0;
		String userFName = "" ;
		
		session.setAttribute("message", "Welcome To the system " + userFName);
		session.setAttribute("type", "success");


		
  //	request.setCharacterEncoding("utf8");
  //    response.setCharacterEncoding("utf8");
		response.setHeader("GUID", GUID);
		response.setHeader("redirectPath", redirectPath);
        response.setContentType("application/json"); 
        JsonObject obj = new JsonObject();
        out.print(response1);
		
		//response.sendRedirect("dashboard.jsp");
	} else {
	//	HttpSession session = request.getSession();
		session.setAttribute("message", "Sorry invalid username or password");
		session.setAttribute("type", "danger");
		
		request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        response.setContentType("application/json");
        JSONObject obj = new JSONObject();
        out.print(response1);

	}
  
  	/* URL url = new URL("http://5.189.137.133/SOLA-API/users/login");
  	HttpURLConnection connection = (HttpURLConnection) url.openConnection();
  	connection.setRequestMethod("POST");
	connection.setRequestProperty("Content-Type", "application/json; utf-8");
	connection.setRequestProperty("accept", "application/json");
	connection.setDoOutput(true);
  
	
	 String jsonInputString = "{\"email\": \""+email+"\", \"password\":  \""+password+ "\"}";
	 
	 request.setCharacterEncoding("utf8");
     response.setCharacterEncoding("utf8"); 
  
		try(OutputStream os = connection.getOutputStream()) {
		    byte[] input = jsonInputString.getBytes("utf-8");
		    os.write(input, 0, input.length);			
		}
		 StringBuilder response1 = new StringBuilder();
		 //System.out.print("response1 : "+response1);
		 String responseLine = null;
		try(BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"))) {
				    while ((responseLine = br.readLine()) != null) {
				        response1.append(responseLine.trim());
				        //  System.out.println(response1.toString());    
				    }
		      } 
		
		 Map<String, List<String>> map = connection.getHeaderFields();
		    for (Map.Entry<String, List<String>> entry : map.entrySet()) {
		        System.out.println("Key : " + entry.getKey() + 
		                 " ,Value : " + entry.getValue());
		    }
		 String GUID = connection.getHeaderField("GUID");
  
  
   */
  
  
  // System.out.println("GUID : "+ GUID);
   System.out.println("email : "+ email);
   System.out.println("password : "+ password);
%>