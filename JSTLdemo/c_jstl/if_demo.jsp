<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
	<c:if test="${param.ref=='mldn'}" var="res1" scope="page">
		<h3>ปถำญ${param.ref}นโมู</h3>
	</c:if>
	<c:if test="${10<30}" var="res2">
		<h3>10ะกำฺ30</h3>
	</c:if>
</body>
</html>