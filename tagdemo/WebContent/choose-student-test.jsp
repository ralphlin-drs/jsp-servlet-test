<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ page import="java.util.*,jsp.tagdemo.Student" %>

<%

	List<Student> data= new ArrayList<>();

	data.add(new Student("Blake", "Sneal", false));
	data.add(new Student("Charlie", "Morton", false));
	data.add(new Student("Tyler", "Glanslow", true));

	pageContext.setAttribute("myStudents", data);

%>

<html>
<body>
	<table border="1">
	
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}" >
			<tr>	
			<td>${tempStudent.firstName}</td>
			<td> ${tempStudent.lastName} </td>
			<td>
			<c:choose>
			<c:when test="${tempStudent.goldCustomer}">
				Special Discount
			</c:when>
			
			<c:otherwise >
				Shame on you
			</c:otherwise>
			</c:choose>
			</td>
			</tr>
	</c:forEach>
	
</table>

</body>
</html>