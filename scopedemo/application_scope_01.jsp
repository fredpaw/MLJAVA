<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	application.setAttribute("name","Andy");
	application.setAttribute("birthday",new Date());
%>
<a href="application_scope_02.jsp">Link</a>
</body>
</html>