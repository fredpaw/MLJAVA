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
<h3>一共有${result.rowCount}条记录</h3>
<table border="1" width="100%">
<tr>
	<td>雇员编号</td>
	<td>雇员姓名</td>
	<td>雇员工作</td>
	<td>雇员工资</td>
	<td>雇佣日期</td>
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