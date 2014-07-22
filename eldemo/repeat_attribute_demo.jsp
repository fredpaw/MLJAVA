<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>EL Attribute Demo</title>
</head>
<body>
<%	//����һ�µ��������Բ�������Servlet�����
	pageContext.setAttribute("info","Page Scope");
	request.setAttribute("info","Request Scope");
	session.setAttribute("info","Session Scope");
	application.setAttribute("info","Application Scope");
%>
<h3>Page�������ݣ�${pageScope.info}</h3>
<h3>Request�������ݣ�${requestScope.info}</h3>
<h3>Session�������ݣ�${sessionScope.info}</h3>
<h3>Application�������ݣ�${applicationScope.info}</h3>
</body>
</html>