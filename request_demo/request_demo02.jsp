<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	request.setCharacterEncoding("GBK");
	String id = request.getParameter("id");
	String name = request.getParameter("uname");
	String inst [] = request.getParameterValues("inst");
%>
<h3>ID�� <%=id%></h3>
<h3>������ <%=name%></h3>
<h3>��Ȥ��
<%
	if( inst != null) {
		for(String in:inst){
			out.print(in+" ");
		}
	} else {
		out.print("����Ȥ����");
	}
%>
</h3>
</body>
</html>