<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	request.setCharacterEncoding("GBK");
	String content = new String(request.getParameter("info").getBytes("ISO8859-1"));
%>
<h2><%=content%></h2>
</body>
</html>