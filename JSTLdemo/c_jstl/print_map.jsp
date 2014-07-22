<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	Map map = new HashMap();
	map.put("mldn","MLDN");
	map.put("zjh","ZJH");
	map.put("lxh","LXH");
	pageContext.setAttribute("ref",map);
%>
<h3>Êä³öÈ«²¿</h3>
<c:forEach items="${ref}" var="mem">
	${mem.key} --> ${mem.value}<br>
</c:forEach>
</body>
</html>