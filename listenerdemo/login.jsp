<%@page contentType="text/html" pageEncoding="GBK" %>
<html>
<head>
<title>Login User List</title>
</head>
<body>
<form action="login.jsp" method="post">
	ÓÃ»§Ãû£º<input type="text" name="userid">
	<input type="submit" name="Log in">
</form>
<%
	String userid = request.getParameter("userid");
	if (!(userid == null || "".equals(userid))) {
		session.setAttribute("userid",userid);
		response.sendRedirect("list.jsp");
	}
%>
</body>
</html>