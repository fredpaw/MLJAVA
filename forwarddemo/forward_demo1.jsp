<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Forward Demo</title>
</head>
<body>
<%
	String username = "LIXING";
%>
<jsp:forward page="forward_demo2.jsp">
	<jsp:param name="name" value="<%=username%>" />
	<jsp:param name="info" value="MLDN.cn" />
</jsp:forward>
</body>
</html>