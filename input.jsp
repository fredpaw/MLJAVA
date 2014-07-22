<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
	<title>J Input</title>
</head>
<body>
	<%
		String str = request.getParameter("info");
		out.println("<h1>" + str + "</h1>");
	%>
</body>
</html>