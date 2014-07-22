<%@page contentType="text/html" pageEncoding="GBK" %>
<%@page import="cn.mldn.lxh.factory.*,cn.mldn.lxh.vo.*"%>
<%@page import="java.text.*"%>
<html>
<head><title>DAO Insert</title></head>
<body>
<% request.setCharacterEncoding("GBK"); %>
<%
	Emp emp = new Emp();
	emp.setEmpno(Integer.parseInt(request.getParameter("empno")));
	emp.setEname(request.getParameter("ename"));
	emp.setJob(request.getParameter("job"));
	emp.setHiredate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("hiredate")));
	emp.setSal(Float.parseFloat(request.getParameter("sal")));
%>
<%	try {
		if(DAOFactory.getIEmpDAOInstance().doCreate(emp)){
%>
			<h3>��Ա��Ϣ��ӳɹ�</h3>
<%
		} else {
%>
			<h3>��Ա��Ϣ���ʧ��</h3>
<%		
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>