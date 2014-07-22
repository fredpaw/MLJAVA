<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="org.lxh.jstldemo.vo.SimpleInfo"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
	<%
		SimpleInfo sim = new SimpleInfo();
		request.setAttribute("simple",sim);
	%>
	<c:set value="Hello MLDN!" target="${simple}" property="content"/>
	<h3>ÊôÐÔÄÚÈÝ£º<c:out value="${simple.content}" /></h3>
</body>
</html>