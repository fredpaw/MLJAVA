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
	if(!(name==null || "".equals(name) || password==null || "".equals(password))){
		if("admin".equals(name) && "admin".equals(password)){
			session.setAttribute("userid",name);
			response.setHeader("refresh","2;URL=welcome.jsp");
%>
			<h3>�û���¼�ɹ����������ת����ӭҳ</h3>
			<h3>���û����ת���밴<a href="welcome.jsp">����</a>��</h3>
<%
		} else{
%>
			<h3>������û��������룡</h3>
<%
		}
	}
%>
</body>
</html>