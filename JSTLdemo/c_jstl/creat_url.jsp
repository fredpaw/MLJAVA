<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<c:url value="http://2014.sina.com.cn" var="urlinfo">
	<c:param name="name" value="lxde"/>
</c:url>
<a href="${urlinfo}">new Address</a>
</h3>
</body>
</html>