<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<html>
<head>
<title>JSTL OUT DEMO</title>
</head>
<body>
<%
	pageContext.setAttribute("info","<www.MLDN.cn>");
%>
<h3>���Դ��ڣ�<c:out value="${info}" /></h3>
<h3>���Բ����ڣ�<c:out value="${ref}" default="û�д����ݣ�"/></h3>
<h3>���Դ��ڣ�<c:out value="${info}">û�д�����</c:out></h3>
</body>
</html>