<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="com.jspsmart.upload.*"%>
<html>
<head><title>SmartUpload Demo</title></head>
<body>
<%
	SmartUpload smart = new SmartUpload();	//����ʵ����
	smart.initialize(pageContext);	//��ʼ���ϴ�����
	smart.upload();		//�ϴ�׼��
	smart.save("upload");	//�ļ�����
%>
</body>
</html>