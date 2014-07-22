<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<fmt:setBundle basename="message" var="msg" />
<fmt:message key="name" var="nameref" bundle="${msg}" />
<h3>Name: ${nameref}</h3>
<fmt:message key="info" var="inforef" bundle="${msg}" >
	<fmt:param value="MLDN" />
</fmt:message>
<h3>Info: ${inforef}</h3>
</body>
</html>