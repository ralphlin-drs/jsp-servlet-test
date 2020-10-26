<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<body>
<h2>Students Table Demo</h2>
<hr>
<br/>

<table border="1">
		
	<tr>	
		<th>First Name</th>
		<th>last Name</th>
		<th>Email</th>
	
	</tr>
		
	<c:forEach var="temps" items="${student_list}" >
	<tr>
		
		<td>${temps.firstname}</td>
		<td>${temps.lastname}</td>
		<td>${temps.emil}</td>
		
		</c:forEach>
		
		
</table>		
		
</body>
</html>