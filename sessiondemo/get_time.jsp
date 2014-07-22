<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	long start = session.getCreationTime();
	long end = session.getLastAccessedTime();
	long time = (end - start) /1000;
	out.print("You Stay " + time + "s");
%>
</body>
</html>