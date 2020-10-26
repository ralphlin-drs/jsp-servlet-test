<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<body>

	<c:forEach var="temps" items="${student_list}" >
		${temps}<br/>
		</c:forEach>
		
</body>
</html>