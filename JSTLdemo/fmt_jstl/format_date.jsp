<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<%
	pageContext.setAttribute("dateref",new Date());
%>
<fmt:formatDate value="${dateref}" type="both" dateStyle="default" timeStyle="default" var="date" />
<h3>default显示日期时间：${date}</h3>
<fmt:formatDate value="${dateref}" type="both" dateStyle="short" timeStyle="short" var="date" />
<h3>short显示日期时间：${date}</h3>
<fmt:formatDate value="${dateref}" type="both" dateStyle="medium" timeStyle="medium" var="date" />
<h3>medium显示日期时间：${date}</h3>
<fmt:formatDate value="${dateref}" type="both" dateStyle="long" timeStyle="long" var="date" />
<h3>long显示日期时间：${date}</h3>
<fmt:formatDate value="${dateref}" type="both" dateStyle="full" timeStyle="full" var="date" />
<h3>full显示日期时间：${date}</h3>
<fmt:formatDate value="${dateref}" pattern="yyyy-MM-dd HH:mm:ss.SSS" var="date" />
<h3>pattern显示日期时间：${date}</h3>
</body>
</html>