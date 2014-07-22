<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	Enumeration enu = this.getServletContext().getAttributeNames();
	while (enu.hasMoreElements()){
		String name = (String) enu.nextElement();
		out.print(name + " --> " + this.getServletContext().getAttribute(name) + "<br>");
	}
%>
</body>
</html>