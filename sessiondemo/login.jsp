<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<form action="login.jsp" method="post">
	�û�����<input type="text" name="uname"><br>
	��&nbsp;&nbsp;�룺<input type="password" name="password"><br>
	<input type="submit" value="�ύ">
</form>
<%
	String name = request.getParameter("uname");
	String password = request.getParameter("password");
	if("admin".equals(name) && "admin".equals(password)){
		session.setAttribute("userid",name);
		out.print("<h3>��¼�ɹ�</h3>");
	} else {
		out.print("<h3>��¼ʧ��</h3>");
	}
%>
</body>
</html>