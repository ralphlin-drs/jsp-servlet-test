<html>

<head><title>Student Confirmation</title></head>

<body>

The student is confirmed: ${param.Firstname} ${param.Lastname} 
<br/><br/>
The student's favorite artist is:
<ul>
<%
	String [] artist=request.getParameterValues("favoriteArtist");
		for(String temp : artist){
			out.println("<li>"+temp+"</li>");
		}
%>
</ul>

</body>

</html>