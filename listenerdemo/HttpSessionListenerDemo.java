package org.lxh.listenerdemo;
import javax.servlet.http.*;
public class HttpSessionListenerDemo implements HttpSessionListener{
	public void sessionCreated(HttpSessionEvent se){
		System.out.println("Session Created. Session ID = " + se.getSession().getId());
	}
	public void sessionDestroyed(HttpSessionEvent se){
		System.out.println("Sessin destroy. Session ID = " + se.getSession().getId());
	}
}
/**
	<listener>
		<listener-class>org.lxh.listenerdemo.HttpSessionListenerDemo
		</listener-class>
	</listener>
*/