<%@page contentType="text/html" pageEncoding="GBK"%>
<%@taglib prefix="mytag" uri="mldn"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	String scope="session";
	session.setAttribute("username","LXH");
%>
	<mytag:present name="username" scope="<%=scope%>">
		<h2><%=scope%>范围存在属性，内容是：“${sessionScope.username}”</h2>
	</mytag:present>
	<mytag:present name="allusers" scope="request">
		<h2>request范围存在属性，内容是：“${requestScope.allusers}”</h2>
	</mytag:present>
</body>
</html>