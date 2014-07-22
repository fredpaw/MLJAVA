<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	String info = "www.mldn.cn";
	pageContext.setAttribute("ref",info);
%>
<h3>拆分结果：
	<c:forTokens items="${ref}" delims="." var="con">
		${con}&nbsp;
	</c:forTokens>
</h3>
<h3>拆分结果：
	<c:forTokens items="Z:J:H" delims=":" var="con">
		${con}&nbsp;
	</c:forTokens>
</h3>
</body>
</html>