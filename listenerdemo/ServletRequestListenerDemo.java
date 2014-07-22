package org.lxh.listenerdemo;
import javax.servlet.*;
public class ServletRequestListenerDemo implements ServletRequestListener{
	public void requestInitialized(ServletRequestEvent sre){
		System.out.println("Request Init(): http://" + sre.getServletRequest().getRemoteAddr() + sre.getServletContext().getContextPath());
	}
	public void requestDestroyed(ServletRequestEvent sre){
		System.out.println("Request destroy()");
	}
}
/**
	<listener>
		<listener-class>org.lxh.listenerdemo.ServletRequestListenerDemo
		</listener-class>
	</listener>
*/