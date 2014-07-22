<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="javax.naming.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="GBK">
<title>Data Source</title>
</head>
<body>
<%
	String DSNAME = "java:comp/env/jdbc/testweb";
	Context ctx = new InitialContext();
	DataSource ds = (DataSource) ctx.lookup(DSNAME);
	Connection conn = ds.getConnection();
%>
<%=conn%>
<%
	conn.close();
%>
</body>
</html>