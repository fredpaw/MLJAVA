<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	String id = session.getId();
	out.print(id + "<br>");
	out.print(id.length());
%>
</body>
</html>