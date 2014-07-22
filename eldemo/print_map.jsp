<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Print Collection Demo</title>
</head>
<body>
<%
	Map all = new HashMap();
	all.put("LXH","李兴华");
	all.put("MLDN","www.mldnjava.cn");
	all.put("email","mldnqa@163.com");
	request.setAttribute("allinfo",all);	//集合保存在request范围
%>
<h3>第一个元素：${allinfo["LXH"]}</h3>
<h3>第二个元素：${allinfo["MLDN"]}</h3>
<h3>第三个元素：${allinfo["email"]}</h3>
</body>
</html>