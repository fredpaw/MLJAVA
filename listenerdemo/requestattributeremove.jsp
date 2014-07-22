<%@page contentType="text/html" pageEncoding="GBK" %>
<html>
<head>
<title>Application Attribute Add</title>
</head>
<body>
<%
	request.setAttribute("info","MLDN");
	request.removeAttribute("info");
%>
</body>
</html>