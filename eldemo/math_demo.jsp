<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
	<title></title>
</head>
<body>
<%
	pageContext.setAttribute("num1",20);
	pageContext.setAttribute("num2",6);
%>
<h3>�ӷ�������${num1 + num2}</h3>
<h3>����������${num1 - num2}</h3>
<h3>�˷�������${num1 * num2}</h3>
<h3>����������${num1 / num2}</h3>
<h3>ȡģ������${num1 % num2}</h3>
</body>
</html>