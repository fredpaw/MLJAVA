<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	pageContext.setAttribute("num",10);
%>
	<c:choose>
		<c:when test="${num==10}">
			<h3>num = 10</h3>
		</c:when>
		<c:when test="${num==20}">
			<h3>num = 10</h3>
		</c:when>
		<c:otherwise>
			<h3>num没有满足条件</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>