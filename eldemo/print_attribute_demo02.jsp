<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>EL Attribute Demo</title>
</head>
<body>
<%	//����һ�µ��������Բ�������Servlet�����
	request.setAttribute("info","MLDN");
%>
<h3>${info}</h3>
</body>
</html>