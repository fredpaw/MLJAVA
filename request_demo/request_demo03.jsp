<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	request.setCharacterEncoding("GBK");
	Enumeration enu = request.getParameterNames();
%>
<table border="1">
<label>��������</label>
<hr>
<tr>
	<td>��������</td>
	<td>��������</td>
</tr>
<%
	while(enu.hasMoreElements()){
		String paramName = (String) enu.nextElement();
%>
	<tr>
		<td><%=paramName%></td>
		<td>
		<%
			if(paramName.startsWith("**")){
				String paramValue[] = request.getParameterValues(paramName);
				for(String param : paramValue){
					out.print(param+" ");
				}
			} else {
				out.print(request.getParameter(paramName));
			}
		%>
		</td>
	</tr>
<%
	}
%>
</table>
</body>
</html>