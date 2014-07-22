package org.lxh.servletdemo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ClientRedirectDemo extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().setAttribute("name","LXH");
		req.setAttribute("info","MLDN");
		resp.sendRedirect("get_info.jsp");
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req,resp);
	}
}