<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Client Redirect Demo</title>
</head>
<body>
<%
	request.setCharacterEncoding("GBK");
%>
<h3>session ���ԣ�<%=session.getAttribute("name")%></h3>
<h3>session ���ԣ�<%=request.getAttribute("info")%></h3>
</body>
</html>