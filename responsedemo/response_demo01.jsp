<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%!
	int count = 0;
%>
<%
	response.setHeader("refresh","2");
%>
<h3>�Ѿ�������<%=count++%>��</h3>
</body>
</html>