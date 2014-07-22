package org.lxh.servletdemo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HttpSessionDemoServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ses = req.getSession();
		System.out.println("SESSION ID --> " + ses.getId());
		ses.setAttribute("username","Andy");
		System.out.println("username content: " +  ses.getAttribute("username"));
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req,resp);
	}
}