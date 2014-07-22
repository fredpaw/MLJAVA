<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>EL Attribute Demo</title>
</head>
<body>
<h3>IP地址：${pageContext.request.remoteAddr}</h3>
<h3>Session ID：${pageContext.session.id}</h3>
<h3>是否是新session：${pageContext.session.new}</h3>
</body>
</html>