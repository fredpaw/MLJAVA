<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<fmt:bundle basename="message">
	<fmt:message key="name" var="nameref" />
</fmt:bundle>
<h3>Name: ${nameref}</h3>
<fmt:bundle basename="message">
	<fmt:message key="info" var="inforef" >
		<fmt:param value="MLDN" />
	</fmt:message>
</fmt:bundle>
<h3>Info: ${inforef}</h3>
</body>
</html>