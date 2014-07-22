<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<html>
<head>
	<title>File Upload Demo 01</title>
</head>
<body>
<%
	DiskFileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	upload.setFileSizeMax(3 * 1024 * 1024);		//ֻ���ϴ�3M
	List<FileItem> items = upload.parseRequest(request);	//����ȫ������
	Iterator<FileItem> iter = items.iterator();
	while(iter.hasNext()){
		FileItem item = iter.next();
		String fieldName = item.getFieldName();	//ȡ�ñ��ؼ�������
%>
		<h3><%=fieldName%> --> <%=item.isFormField()%></h3>
<%
		if(!item.isFormField()){
			String fileName = item.getName();	//ȡ���ļ�������
			String contentType = item.getContentType();	//�ļ�������
			long sizeInByte = item.getSize();	//�ļ��Ĵ�С
%>
		<h4>�ϴ��ļ����ƣ�<%=fileName%></h4>
		<h4>�ϴ��ļ����ͣ�<%=contentType%></h4>
		<h4>�ϴ��ļ���С��<%=sizeInByte%></h4>
<%
		} else {
			String value = item.getString();
%>
		<p>��ͨ������<%=value%></p>
<%
		}
	}
%>
</body>
</html>