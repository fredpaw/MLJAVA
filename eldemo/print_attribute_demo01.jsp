<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>EL Attribute Demo</title>
</head>
<body>
<%	//假设一下的设置属性操作是在Servlet中完成
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