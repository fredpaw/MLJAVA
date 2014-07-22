<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="sql" uri="JSTL_sql"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
<sql:setDataSource dataSource="jdbc/testweb" var="testwebds" />
<sql:transaction isolation="serializable" dataSource="${testwebds}" />
	<sql:update var="result">
		INSERT INTO emp(empno,ename,job,hiredate,sal) VALUES (6879,'周军','经理','2003-03-14',9000);
	</sql:uddate>
</sql:transaction>
</body>
</html>