<%@	page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="org.lxh.eldemo.vo.Dept"%>
<html>
<head>
<title>Print VO Demo</title>
</head>
<body>
<%
	Dept dept = new Dept();
	dept.setDeptno(10);
	dept.setDname("MLDN");
	dept.setLoc("BeiJing");
	request.setAttribute("deptinfo",dept);
%>
<h3>���ű�ţ�${deptinfo.deptno}</h3>
<h3>�������ƣ�${deptinfo.dname}</h3>
<h3>���ŵ�ַ��${deptinfo.loc}</h3>
</body>
</html>