<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<form action="login.jsp" method="post">
	用户名：<input type="text" name="uname"><br>
	密&nbsp;&nbsp;码：<input type="password" name="password"><br>
	<input type="submit" value="提交">
</form>
<%
	String name = request.getParameter("uname");
	String password = request.getParameter("password");
	if("admin".equals(name) && "admin".equals(password)){
		session.setAttribute("userid",name);
		out.print("<h3>登录成功</h3>");
	} else {
		out.print("<h3>登录失败</h3>");
	}
%>
</body>
</html>