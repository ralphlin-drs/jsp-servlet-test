<html>

<head><title>Confirmation</title></head>

<%

	//read from data
	String favL = request.getParameter("fl");

	//create the cookie
	Cookie theCookie= new Cookie("myApp.fl" , favL);
	
	theCookie.setMaxAge(60*60*24);
	
	response.addCookie(theCookie);
%>

<body>
	Set your favorite language to: ${param.fl}
	<br/><br/>
	<a href="cookie-homepage.jsp">Return to homepage</a>

</body>

</html>