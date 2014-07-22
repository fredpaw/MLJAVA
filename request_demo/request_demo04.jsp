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
<h3>请求方式：<%=method%></h3>
<h3>IP地址：<%=IP%></h3>
<h3>访问路径：<%=path%></h3>
<h3>上下文名称：<%=contextPath%></h3>
</body>
</html>