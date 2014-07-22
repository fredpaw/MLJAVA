<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="com.jspsmart.upload.*"%>
<html>
<head><title>SmartUpload Demo</title></head>
<body>
<%
	SmartUpload smart = new SmartUpload();	//对象实例化
	smart.initialize(pageContext);	//初始化上传操作
	smart.upload();		//上传准备
	smart.save("upload");	//文件保存
%>
</body>
</html>