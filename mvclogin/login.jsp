<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*" %>
<html>
<head>
	<title>MVC Demo</title>
	<script language="javascript">
		function validate(f){
			if(!/^\w{5,15}$/.test(f.userid.value)){
				alert("用户ID必须是5～15位！");
				f.userid.focus();
				return false;
			}
			if(!/^\w{5,15}$/.test(f.userpass.value)){
				alert("密码不能为空！");
				f.userpass.focus();
				return false;
			}
		}
	</script>
</head>
<body>
<%
	request.setCharacterEncoding("GBK");
%>
<%
	List<String> info = (List<String>) request.getAttribute("info");
	if(info != null){
		Iterator<String> iter = info.iterator();
		while(iter.hasNext()){
%>
			<h4><%=iter.next()%></h4>
<%
		}
	}
%>
<form action="LoginServlet" method="post" onSubmit="return validate(this)">
	用户ID：<input type="text" name="userid"><br>
	密&nbsp;&nbsp;码：<input type="password" name="userpass"><br>
	<input type="submit" value="登录">
	<input type="reset" value="重置">
</form>
</body>
</html>