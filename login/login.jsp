<%@page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>Login Demo</title>
</head>
<body>
<center>
<form action="login_check.jsp" method="post">
<label style="font-weight:bold;font-size:24px">登录操作<label>
<hr>
<table border="1">
<th>
<td colspan="2">用户登录</td>
</th>
<tr>
<td>登录名：</td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>密码：</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="提交"></td>
</tr>
</form>
</center>
</body>
</html>