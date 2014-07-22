package org.lxh.eldemo.servlet;
import java.util.*;
import org.lxh.eldemo.vo.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ElServlet2 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Dept> all = new ArrayList<Dept>();
		Dept dept = null;
		dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("MLDN");
		dept.setLoc("BeiJing");
		all.add(dept);
		dept = new Dept();
		dept.setDeptno(18);
		dept.setDname("DEPT");
		dept.setLoc("NanJing");
		all.add(dept);
		request.setAttribute("deptinfo",all);
		request.getRequestDispatcher("dept_list.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}
}