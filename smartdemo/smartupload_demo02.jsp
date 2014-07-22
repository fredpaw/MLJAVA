<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="cn.mldn.lxh.util.IPTimeStamp"%>
<html>
<head><title>SmartUpload Demo</title></head>
<body>
<%
	request.setCharacterEncoding("GBK");
%>
<%
	SmartUpload smart = new SmartUpload();	//对象实例化
	smart.initialize(pageContext);	//初始化上传操作
	smart.upload();		//上传准备
	String filename = smart.getRequest().getParameter("fnameimage");
	IPTimeStamp its = new IPTimeStamp(request.getRemoteAddr());	//取得客户端的IP地址。
	String ext = smart.getFiles().getFile(0).getFileExt();
	String fileName = its.getIPTimeRand() + "." + ext;
	smart.getFiles().getFile(0).saveAs(this.getServletContext().getRealPath("/")+"upload" + java.io.File.separator + fileName);	//文件保存
%>
<%=smart.getFiles().getFile(0).getFileName().matches("^\\w+.(jpg|gif)$")%>
<h2>上传的文件名称：<%=filename%></h2>
<img src="../upload/<%=fileName%>"/>
</body>
</html>