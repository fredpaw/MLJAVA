package org.lxh.servletdemo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class InitParamServlet extends HttpServlet {
	private String initParam = null;
	public  void init(ServletConfig config) throws ServletException{
		this.initParam = config.getInitParameter("ref");	//接受的初始化参数名称
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Servlet initParam: " + this.initParam);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req,resp);
	}
}