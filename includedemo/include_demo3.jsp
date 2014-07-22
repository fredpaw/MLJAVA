<%@ page contentType="text/html" pageEncoding="GBK" %>
<html>
<head>
	<title>Include Demo</title>
</head>
<body>
	<h1>¶¯Ì¬°üº¬²Ù×÷</h1>
	<%
		String username = "LIXING";
	%>
	<jsp:include page="receive_param.jsp">
		<jsp:param name="name" value="<%=username%>"/>
		<jsp:param name="info" value="www.mddnjava.cn"/>
	</jsp:include>
</body>
</html>