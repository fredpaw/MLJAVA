<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>EL Attribute Demo</title>
</head>
<body>
<%	//假设一下的设置属性操作是在Servlet中完成
	pageContext.setAttribute("info","Page Scope");
	request.setAttribute("info","Request Scope");
	session.setAttribute("info","Session Scope");
	application.setAttribute("info","Application Scope");
%>
<h3>Page属性内容：${pageScope.info}</h3>
<h3>Request属性内容：${requestScope.info}</h3>
<h3>Session属性内容：${sessionScope.info}</h3>
<h3>Application属性内容：${applicationScope.info}</h3>
</body>
</html>