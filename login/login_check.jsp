<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>Login Check</title>
</head>
<body>
<%!
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/javadata";
	public static final String DBUSER = "root";
	public static final String DBPASS = "";
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean flag = false;
	String name = null;
%>
<% 
	try {
%>
<%
		Class.forName(DBDRIVER);
		conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		String sql = "SELECT name FROM user WHERE userid=? AND password=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("id"));
		pstmt.setString(2,request.getParameter("password"));
		rs = pstmt.executeQuery();
		if(rs.next()){
			flag = true;
			name = rs.getString(1);
		}
%>
<%
	} catch (Exception e) {
	} finally {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
		}
	}
%>
<%
	if(flag) {
%>
		<jsp:forward page="login_success.jsp">
			<jsp:param name = "uname" value="<%=name%>" />
		</jsp:forward>
<%
	} else {
%>
		<jsp:forward page="login_failure.jsp" />
<%
	}
%>
</body>
</html>