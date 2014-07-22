<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	pageContext.setAttribute("info","<www.MLDN.cn>");
%>
<h3>属性存在：<c:out value="${info}" /></h3>
<h3>属性不存在：<c:out value="${ref}" default="没有此内容！"/></h3>
<h3>属性存在：<c:out value="${info}">没有此内容</c:out></h3>
</body>
</html>