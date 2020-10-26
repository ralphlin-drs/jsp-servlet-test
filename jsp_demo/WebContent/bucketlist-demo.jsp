
<%@ page import="java.util.*" %>
<html>

<body>

<form action="bucketlist-demo.jsp">
	Add new goal: <input type="text" name="goal">
	
	<input type="submit" name="submit">
</form>


<% 
	List<String> items =(List<String>) session.getAttribute("myBucketlist");
	
if (items== null){
	items = new ArrayList<String>();
	session.setAttribute("myBucketlist", items);
}

	String goal=request.getParameter("goal");
	if(goal != null){
		items.add(goal);
	}

%>

<hr>
<b>Bucket List:</b><br/>

<ol>
<%
	for(String temp : items){
		out.println("<li>"+temp+"</li>");
	}

%>

</ol>

</body>

</html>