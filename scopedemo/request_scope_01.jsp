<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	request.setAttribute("name","Andy");
	request.setAttribute("birthday",new Date());
%>
<jsp:forward page="request_scope_02.jsp"/>
</body>
</html>