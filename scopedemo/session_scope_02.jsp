<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	String username = (String) session.getAttribute("name");
	Date userbirthday = (Date) session.getAttribute("birthday");
%>
<h2>Name:<%=username%></h2>
<h2>Birthday:<%=userbirthday%></h2>
</body>
</html>