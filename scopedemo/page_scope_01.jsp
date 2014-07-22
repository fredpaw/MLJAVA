<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	pageContext.setAttribute("name","Andy");
	pageContext.setAttribute("birthday",new Date());
%>
<%
	String username = (String) pageContext.getAttribute("name");
	Date userbirthday = (Date) pageContext.getAttribute("birthday");
%>
<h2>Name:<%=username%></h2>
<h2>Birthday:<%=userbirthday%></h2>
</body>
</html>