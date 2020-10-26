<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix ="fn" %>

<html>
<body>
<c:set var="sp" value="KershawzBuelarzWoodzMay" />

<c:set var="starter" value="${fn:split(sp,'z') }" />

<c:forEach var="tempsp" items="${starter}" >
	${tempsp} <br/>
	</c:forEach>

<h2>Join Demo</h2>

<c:set var="rotation" value="${fn:join(starter,',') }" />

Result of join: ${rotation}

</body>
</html>