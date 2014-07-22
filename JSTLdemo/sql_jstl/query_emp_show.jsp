<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<%@ taglib prefix="sql" uri="JSTL_sql"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<sql:setDataSource dataSource="jdbc/testweb" var="testwebds" />
<sql:query var="result" dataSource="${testwebds}" maxRows="2" startRow="2">
	SELECT empno,ename,job,hiredate,sal FROM emp;
</sql:query>
<h3>һ����${result.rowCount}����¼</h3>
<table border="1" width="100%">
<tr>
	<td>��Ա���</td>
	<td>��Ա����</td>
	<td>��Ա����</td>
	<td>��Ա����</td>
	<td>��Ӷ����</td>
</tr>
<c:forEach items="${result.rows}" var="row">
	<tr>
		<td>${row.empno}</td>
		<td>${row.ename}</td>
		<td>${row.job}</td>
		<td>${row.sal}</td>
		<td>${row.hiredate}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>