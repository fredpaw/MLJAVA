<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="JSTL_fmt"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<fmt:formatNumber value="351989.356789" maxIntegerDigits="7" maxFractionDigits="3" groupingUsed="true" var="num" />
<h3>��ʽ�����֣�${num}</h3>
<fmt:formatNumber value="351989.356789" pattern="##.###E0" var="num"/>
<h3>��ѧ��������${num}</h3>
</body>
</html>