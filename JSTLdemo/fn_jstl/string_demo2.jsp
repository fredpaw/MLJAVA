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
<h3>Ìæ»»£º${fn:replace(info,"MLDN","www.MLDNJAVA.cn")}</h3>
<h3>½ØÈ¡£º${fn:substring(info,0,10)}</h3>
<h3>²ð·Ö£º${fn:split(info," ")[0]}</h3>
</body>
</html>