<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	Cookie c[] = request.getCookies();
	for (Cookie co : c) {
		out.print(co.getName() + " --> " + co.getValue() + "<br>");
	}
%>
</body>
</html>