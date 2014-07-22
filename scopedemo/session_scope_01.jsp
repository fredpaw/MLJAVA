<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	session.setAttribute("name","Andy");
	session.setAttribute("birthday",new Date());
%>
<a href="session_scope_02.jsp">Link</a>
</body>
</html>