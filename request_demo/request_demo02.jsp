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
<h3>ID： <%=id%></h3>
<h3>姓名： <%=name%></h3>
<h3>兴趣：
<%
	if( inst != null) {
		for(String in:inst){
			out.print(in+" ");
		}
	} else {
		out.print("无兴趣爱好");
	}
%>
</h3>
</body>
</html>