<%@ page contentType="text/html" pageEncoding="GBK" %>
<html>
<head>
	<title>Include Demo</title>
</head>
<body>
	<%
		int x = 100;
	%>
	<h1>include_demo04.jsp --> <%=x%></h1>
	<jsp:include page="include.jsp"/>
</body>
</html>