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
	SmartUpload smart = new SmartUpload();	//����ʵ����
	smart.initialize(pageContext);	//��ʼ���ϴ�����
	smart.upload();		//�ϴ�׼��
	String filename = smart.getRequest().getParameter("fnameimage");
	IPTimeStamp its = new IPTimeStamp(request.getRemoteAddr());	//ȡ�ÿͻ��˵�IP��ַ��
	String ext = smart.getFiles().getFile(0).getFileExt();
	String fileName = its.getIPTimeRand() + "." + ext;
	smart.getFiles().getFile(0).saveAs(this.getServletContext().getRealPath("/")+"upload" + java.io.File.separator + fileName);	//�ļ�����
%>
<%=smart.getFiles().getFile(0).getFileName().matches("^\\w+.(jpg|gif)$")%>
<h2>�ϴ����ļ����ƣ�<%=filename%></h2>
<img src="../upload/<%=fileName%>"/>
</body>
</html>