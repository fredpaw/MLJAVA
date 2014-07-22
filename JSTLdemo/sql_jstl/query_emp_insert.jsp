<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<%@ taglib prefix="sql" uri="JSTL_sql"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<%
	pageContext.setAttribute("empno",6878);
	pageContext.setAttribute("ename","李军");
	pageContext.setAttribute("job","分析员");
	pageContext.setAttribute("date",new java.util.Date());
%>
<sql:setDataSource dataSource="jdbc/testweb" var="testwebds" />
<sql:update var="result" dataSource="${testwebds}">
	UPDATE emp SET ename=?,job=?,hiredate=? WHERE empno=?;
	<sql:param value="${ename}" />
	<sql:param value="${job}" />
	<sql:dateParam value="${date}" type="date"/>
	<sql:param value="${empno}" />
</sql:update>
</body>
</html>