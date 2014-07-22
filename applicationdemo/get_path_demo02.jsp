<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	String path = getServletContext().getRealPath("/");
	out.print(path);
%>
</body>
</html>