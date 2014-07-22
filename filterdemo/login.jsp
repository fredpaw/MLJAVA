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
	if(!(name==null || "".equals(name) || password==null || "".equals(password))){
		if("admin".equals(name) && "admin".equals(password)){
			session.setAttribute("userid",name);
			response.setHeader("refresh","2;URL=welcome.jsp");
%>
			<h3>用户登录成功，两秒后跳转到欢迎页</h3>
			<h3>如果没有跳转，请按<a href="welcome.jsp">这里</a>！</h3>
<%
		} else{
%>
			<h3>错误的用户名或密码！</h3>
<%
		}
	}
%>
</body>
</html>