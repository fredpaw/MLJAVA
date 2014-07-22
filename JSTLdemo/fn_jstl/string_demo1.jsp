<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="fn" uri="JSTL_fn"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<%
	pageContext.setAttribute("info","Hello MLDN ,Hello LiXingHua");
%>
<h3>查找MLDN：${fn:contains(info,"MLDN")}</h3>
<h3>查找MLDN：${fn:containsIgnoreCase(info,"mldn")}</h3>
<h3>判断开头：${fn:startsWith(info,"Hello")}</h3>
<h3>判断结尾：${fn:endsWith(info,"LiXingHua")}</h3>
<h3>查找位置：${fn:indexOf(info,",")}</h3>
</body>
</html>