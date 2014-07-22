<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	pageContext.setAttribute("name","Andy",PageContext.REQUEST_SCOPE);
	pageContext.setAttribute("birthday",new Date(),PageContext.REQUEST_SCOPE);
%>
<jsp:forward page="request_scope_02.jsp"/>
</body>
</html>