<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*,java.io.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@page import="cn.mldn.lxh.util.*"%>
<html>
<head>
	<title>File Upload Demo 01</title>
</head>
<body>
<%
	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setRepository(new File(this.getServletContext().getRealPath("/") + "uploadtemp"));	//保存到临时文件
	ServletFileUpload upload = new ServletFileUpload(factory);
	upload.setFileSizeMax(3 * 1024 * 1024);		//只能上传3M
	List<FileItem> items = upload.parseRequest(request);	//接受全部内容
	Iterator<FileItem> iter = items.iterator();
	IPTimeStamp its = new IPTimeStamp(request.getRemoteAddr());
	while(iter.hasNext()){
		FileItem item = iter.next();
		String fieldName = item.getFieldName();	//取得表单控件的名称
%>
		<h3><%=fieldName%> --> <%=item.isFormField()%></h3>
<%
		if(!item.isFormField()){
			File saveFile = null;
			InputStream input = null;
			OutputStream output = null;
			input = item.getInputStream();
			output = new FileOutputStream(new File(this.getServletContext().getRealPath("/") + "upload" + File.separator + its.getIPTimeRand() + "." + item.getName().split("\\.")[1]));
			int temp = 0;
			byte data[] = new byte[512];
			while((temp = input.read(data,0,512))!=-1){
				output.write(data);		//分块保存
			}
			input.close();
			output.close();
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