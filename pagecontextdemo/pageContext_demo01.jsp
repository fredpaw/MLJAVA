<%@ page contentType="text/html" pageEncoding="GBK" %>
<html>
<head>
<title>PageContext Demo</title>
</head>
<body>
<%
	pageContext.forward("pageContext_demo02.jsp?info=MLDN");
%>
</body>
</html>