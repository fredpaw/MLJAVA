<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	String method = request.getMethod();
	String IP = request.getRemoteAddr();
	String path = request.getServletPath();
	String contextPath = request.getContextPath();
%>
<h3>����ʽ��<%=method%></h3>
<h3>IP��ַ��<%=IP%></h3>
<h3>����·����<%=path%></h3>
<h3>���������ƣ�<%=contextPath%></h3>
</body>
</html>