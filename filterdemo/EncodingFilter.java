package org.lxh.filterdemo;
import java.io.*;
import javax.servlet.*;
public class EncodingFilter implements Filter{
	private String charSet;
	public void init(FilterConfig config) throws ServletException{
		//接受初始化参数
		this.charSet = config.getInitParameter("charset");
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
		request.setCharacterEncoding(this.charSet);
		chain.doFilter(request,response);
	}
	public void destroy(){
		
	}
}