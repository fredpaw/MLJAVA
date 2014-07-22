package org.lxh.servletdemo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ServerRedirectDemo extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().setAttribute("name","LXH");
		req.setAttribute("info","MLDN");
		RequestDispatcher rd = req.getRequestDispatcher("get_info.jsp");
		rd.forward(req,resp);	//Íê³ÉÌø×ª
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req,resp);
	}
}