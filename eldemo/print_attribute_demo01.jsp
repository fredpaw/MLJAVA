<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>EL Attribute Demo</title>
</head>
<body>
<%	//����һ�µ��������Բ�������Servlet�����
	request.setAttribute("info","MLDN");
%>
<%
	if(request.getAttribute("info") != null){
%>
		<h3><%=request.getAttribute("info")%></h3>
<%
	}
%>
</body>
</html>