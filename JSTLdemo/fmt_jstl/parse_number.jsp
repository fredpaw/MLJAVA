<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<fmt:parseNumber value="3,531,989.3567" var="num" />
<h3>����ʽ�����֣�${num}</h3>
<fmt:parseNumber value="3.532E6" pattern="##.###E0" var="num" />
<h3>����ѧ��������${num}</h3>
<fmt:parseNumber value="3.5%" pattern="00%" var="num" />
<h3>���ٷֱȣ�${num}</h3>
</body>
</html>