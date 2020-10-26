<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Student Tracker App</title>

<link type ="text/css" rel="stylesheet" href="css/style.css" >
</head>


<body>

<div id="wrapper">
<div id="header">
	<h2>Foodie University</h2>
</div>
</div>
<div id="container">
<div id="content">

<input type="button" value="Add Student"
	onclick="window.location.href='add-student-form.jsp';return false"
	class="add-student-button"
/>



<table>

<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Action</th>
</tr>

	<c:forEach var="tempS" items="${STUDENT_LIST}">
	
		<!-- set up a link for each student-->
		<c:url var="tempL" value="StudentControllerServlet">
			<c:param name="command" value="LOAD" />
			<c:param name="studentId" value="${tempS.id}" />
			</c:url>
			<c:url var="deleteL" value="StudentControllerServlet">
			<c:param name="command" value="DELETE" />
			<c:param name="studentId" value="${tempS.id}" />
			</c:url>
	
		<tr>
			<td>${tempS.firstName} </td>
			<td>${tempS.lastName} </td>
			<td>${tempS.email} </td>
			<td><a href ="${tempL}">Update</a>
			|
			<a href ="${deleteL}" onclick="if (!(confirm('All lives matters \nU sure u wanna kill this student?\n施主 放下屠刀吧 '))) return false">Delete</a>
			</td>
			
		</tr>	
	
	</c:forEach>





</table>

</div>

</div>




</body>
</html>