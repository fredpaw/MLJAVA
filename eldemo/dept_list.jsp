<%@	page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Print VO Demo</title>
</head>
<body>
<%
	List all = (List) request.getAttribute("deptinfo");
	if(all != null){
%>
		<table border="1" width="90%">
			<tr>
				<td>���ű��</td>
				<td>��������</td>
				<td>����λ��</td>
			</tr>
<%
		Iterator iter = all.iterator();
		while(iter.hasNext()){
			pageContext.setAttribute("dept",iter.next());
%>
			<tr>
				<td>${dept.deptno}</td>
				<td>${dept.dname}</td>
				<td>${dept.loc}</td>
			</tr>
<%
		}
%>
		</table>
<%
	}
%>
</body>
</html>