<%@page contentType="text/html" pageEncoding="GBK"%>
<jsp:useBean id="simple" scope="page" class="cn.mldn.lxh.demo.SimpleBean" />
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	SimpleBean simple = new SimpleBean();
	simple.setName("���˻�");
	simple.setAge(30);
%>
<h3>������<%=simple.getName()%></h3>
<h3>���䣺<%=simple.getAge()%></h3>
</body>
</html>