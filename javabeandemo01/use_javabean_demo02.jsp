<%@page contentType="text/html" pageEncoding="GBK"%>
<jsp:useBean id="simple" scope="page" class="cn.mldn.lxh.demo.SimpleBean" />
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	SimpleBean simple = new SimpleBean();
	simple.setName("李兴华");
	simple.setAge(30);
%>
<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>