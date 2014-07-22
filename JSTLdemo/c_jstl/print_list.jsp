<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	List all = new ArrayList();
	all.add("lxh");
	all.add("MLDN");
	all.add("ZJH");
	pageContext.setAttribute("ref",all);
%>
<h3>Êä³öÈ«²¿</h3>
<c:forEach items="${ref}" var="mem">
	${mem}&nbsp;
</c:forEach>
</body>
</html>