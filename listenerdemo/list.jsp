<%@page contentType="text/html" pageEncoding="GBK" %>
<%@page import="java.util.*" %>
<html>
<head>
<title>Login User List</title>
</head>
<body>
<%
	Set all = (Set) this.getServletContext().getAttribute("online");
	Iterator iter = all.iterator();
	while(iter.hasNext()){
%>
		<h3><%=iter.next()%></h3>
<%
	}
%>
</body>
</html>