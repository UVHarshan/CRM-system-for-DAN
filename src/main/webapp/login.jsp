<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.DataOutputStream"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<head>
</head>


<body>

 <% 
 String converted_response = "";
 String email = request.getParameter("email");
 String password = request.getParameter("password");
 
 String URL = "http://testapi.sola.ml/SOLA-API-TEST/users/login";
// String urls = "http://message.textware.lk:5000/sms/send_sms.php?username=" + APIUsername + "&password=" + password + "&src=" + src + "&dst=" + mobile + "&msg=" + encode + "&dr=1";
 StringBuffer response1 = null;
 URL obj = new URL(URL);
 HttpURLConnection con = (HttpURLConnection) obj.openConnection();
 // optional default is GET
 con.setRequestMethod("POST");
 con.setRequestProperty("email", email);
 con.setRequestProperty("password", password);
 int responseCode = con.getResponseCode();
 System.out.println("Response Code : " + responseCode);
 BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
 String inputLine;
 response = new StringBuffer();
 while ((inputLine = in.readLine()) != null) {
     response1.append(inputLine);
 }
 in.close();
 converted_response = response1.toString();
 System.out.println("====== ");
 %>
 
</body>
