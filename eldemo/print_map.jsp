<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Print Collection Demo</title>
</head>
<body>
<%
	Map all = new HashMap();
	all.put("LXH","���˻�");
	all.put("MLDN","www.mldnjava.cn");
	all.put("email","mldnqa@163.com");
	request.setAttribute("allinfo",all);	//���ϱ�����request��Χ
%>
<h3>��һ��Ԫ�أ�${allinfo["LXH"]}</h3>
<h3>�ڶ���Ԫ�أ�${allinfo["MLDN"]}</h3>
<h3>������Ԫ�أ�${allinfo["email"]}</h3>
</body>
</html>