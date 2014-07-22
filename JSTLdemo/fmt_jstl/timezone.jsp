<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<%
	pageContext.setAttribute("dateref",new Date());
%>
<fmt:timeZone value="HST">
	<fmt:formatDate value="${dateref}" type="both" dateStyle="full" timeStyle="full" var="date" />
</fmt:timeZone>
<h3>${date}</h3>
</body>
</html>