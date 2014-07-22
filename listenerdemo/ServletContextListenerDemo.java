package org.lxh.listenerdemo;
import javax.servlet.*;
public class ServletContextListenerDemo implements ServletContextListener{
	public void contextInitialized(ServletContextEvent sce){
		System.out.println("Listener Init()" + sce.getServletContext().getContextPath() );
	}
	public void contextDestroyed(ServletContextEvent sce){
		System.out.println("Listener destroy()");
	}
}
/**
*	<listener>
*		<listener-class>org.lxh.listenerdemo.ServletContextListenerDemo
*		</listener-class>
*	</listener>
*/