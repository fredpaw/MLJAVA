<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	if(session.isNew()){
		out.print("Welcome New User");
	} else {
		out.print("Welcome Old User");
	}
%>
</body>
</html>