<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
	<c:set var="info" value="Hello MLDN!" scope="request"/>
	<h3>�������ݣ�<c:out value="${info}" /></h3>
	<c:remove var="info" scope="request" />
	<h3>�������ݣ�<c:out value="${info}" /></h3>
</body>
</html>