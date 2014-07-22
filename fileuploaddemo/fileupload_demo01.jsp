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
	upload.setFileSizeMax(3 * 1024 * 1024);		//只能上传3M
	List<FileItem> items = upload.parseRequest(request);	//接受全部内容
	Iterator<FileItem> iter = items.iterator();
	while(iter.hasNext()){
		FileItem item = iter.next();
		String fieldName = item.getFieldName();	//取得表单控件的名称
%>
		<h3><%=fieldName%> --> <%=item.isFormField()%></h3>
<%
		if(!item.isFormField()){
			String fileName = item.getName();	//取得文件的名称
			String contentType = item.getContentType();	//文件的类型
			long sizeInByte = item.getSize();	//文件的大小
%>
		<h4>上传文件名称：<%=fileName%></h4>
		<h4>上传文件类型：<%=contentType%></h4>
		<h4>上传文件大小：<%=sizeInByte%></h4>
<%
		} else {
			String value = item.getString();
%>
		<p>普通参数：<%=value%></p>
<%
		}
	}
%>
</body>
</html>