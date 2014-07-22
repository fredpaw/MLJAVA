package org.lxh.eldemo.servlet;
import org.lxh.eldemo.vo.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ElServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dept dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("MLDN");
		dept.setLoc("BeiJing");
		request.setAttribute("deptinfo",dept);
		request.getRequestDispatcher("dept_info.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}
}