<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
	<c:catch var="errmsg">
		<%
			int result = 10 / 0;
		%>
	</c:catch>
	<h3>${errmsg}</h3>
</body>
</html>