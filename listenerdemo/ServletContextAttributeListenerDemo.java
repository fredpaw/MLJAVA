package org.lxh.listenerdemo;
import javax.servlet.*;
public class ServletContextAttributeListenerDemo implements ServletContextAttributeListener{
	public void attributeAdded(ServletContextAttributeEvent scab){
		System.out.println("Add Attribute: " + scab.getName() + "-->" +scab.getValue());
	}
	public void attributeRemoved(ServletContextAttributeEvent scab){
		System.out.println("Remove Attribute: " + scab.getName() + "-->" +scab.getValue());
	}
	public void attributeReplaced(ServletContextAttributeEvent scab){
		System.out.println("Replace Attribute: " + scab.getName() + "-->" +scab.getValue());
	}
}
/**
	<listener>
		<listener-class>
			org.lxh.listenerdemo.ServletContextAttributeListenerDemo
		</listener-class>
	</listener>
*/