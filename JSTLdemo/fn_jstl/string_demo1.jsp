<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="fn" uri="JSTL_fn"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<%
	pageContext.setAttribute("info","Hello MLDN ,Hello LiXingHua");
%>
<h3>����MLDN��${fn:contains(info,"MLDN")}</h3>
<h3>����MLDN��${fn:containsIgnoreCase(info,"mldn")}</h3>
<h3>�жϿ�ͷ��${fn:startsWith(info,"Hello")}</h3>
<h3>�жϽ�β��${fn:endsWith(info,"LiXingHua")}</h3>
<h3>����λ�ã�${fn:indexOf(info,",")}</h3>
</body>
</html>