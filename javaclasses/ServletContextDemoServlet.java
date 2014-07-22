package org.lxh.servletdemo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ServletContextDemoServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext app = super.getServletContext();
		System.out.println("Real Path: " + app.getRealPath("/"));
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req,resp);
	}
}