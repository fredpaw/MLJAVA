<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	String info[] = {"lxh","mldn","zjh"};
	pageContext.setAttribute("ref",info);
%>
<h3>���ȫ��</h3>
<c:forEach items="${ref}" var="mem">
	${mem}&nbsp;
</c:forEach>
<h3>����Ϊ2</h3>
<c:forEach items="${ref}" var="mem" step="2">
	${mem}&nbsp;
</c:forEach>
<h3>���ǰ����</h3>
<c:forEach items="${ref}" var="mem" begin="0" end="1">
	${mem}&nbsp;
</c:forEach>
</body>
</html>