<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Print Collection Demo</title>
</head>
<body>
<%
	List all = new ArrayList();
	all.add("LXH");
	all.add("MLDN");
	all.add("mldnqa@163.com");
	request.setAttribute("allinfo",all);	//���ϱ�����request��Χ
%>
<h3>��һ��Ԫ�أ�${allinfo[0]}</h3>
<h3>�ڶ���Ԫ�أ�${allinfo[1]}</h3>
<h3>������Ԫ�أ�${allinfo[2]}</h3>
</body>
</html>