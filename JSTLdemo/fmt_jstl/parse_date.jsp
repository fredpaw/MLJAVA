<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
2014��7��3�� ������ ����03ʱ58��39�� EST
<fmt:parseDate value="2014��7��3�� ������ ����03ʱ58��39�� EST" type="both" dateStyle="full" timeStyle="full" var="date" />
<h3>${date}</h3>
<fmt:parseDate value="2014-07-03 16:03:55.502" type="both" pattern="yyyy-MM-dd HH:mm:ss.SSS" var="date" />
<h3>${date}</h3>
</body>
</html>