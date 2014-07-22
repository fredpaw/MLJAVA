<%@page contentType="text/html" pageEncoding="GBK" %>
<%@page import="org.lxh.listenerdemo.*"%>
<html>
<head>
<title>Application Attribute Add</title>
</head>
<body>
<%
	HttpSessionBindingListenerDemo user = new HttpSessionBindingListenerDemo("MLDN");
	session.setAttribute("info",user);
%>
</body>
</html>