<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<c:redirect url="param.jsp">
	<c:param name="name" value="lxh"/>
	<c:param name="url" value="www.mldnjava.cn"/>
</c:redirect>
</body>
</html>