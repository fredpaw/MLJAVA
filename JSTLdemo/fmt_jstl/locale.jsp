<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<%
	pageContext.setAttribute("date",new Date());
%>
<h3>����������ʾ</h3>
<fmt:setLocale value="zh_CN" />
<fmt:formatDate value="${date}"/>
<h3>Ӣ��������ʾ</h3>
<fmt:setLocale value="en_US" />
<fmt:formatDate value="${date}"/>
<%
	request.setCharacterEncoding("GBK");
%>
<fmt:requestEncoding value="GBK"/>
</body>
</html>