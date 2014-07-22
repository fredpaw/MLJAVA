package org.lxh.filterdemo;
import java.io.*;
import javax.servlet.*;
public class SimpleFilter implements Filter{
	public void init(FilterConfig config) throws ServletException{
		//接受初始化参数
		String initParam = config.getInitParameter("ref");
		System.out.println("Filter init(), init param = " + initParam);
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
		System.out.println("Before DoFilter()");
		chain.doFilter(request,response);
		System.out.println("After DoFilter()");
	}
	public void destroy(){
		System.out.println("Filter destroy()");
	}
}