package org.lxh.listenerdemo;
import javax.servlet.*;
public class ServletRequestAttributeListenerDemo implements ServletRequestAttributeListener{
	public void attributeAdded(ServletRequestAttributeEvent srae){
		System.out.println("Add Attribute: " + srae.getName() + "-->" + srae.getValue());
	}
	public void attributeRemoved(ServletRequestAttributeEvent srae){
		System.out.println("Remove Attribute: " + srae.getName() + "-->" + srae.getValue());
	}
	public void attributeReplaced(ServletRequestAttributeEvent srae){
		System.out.println("Replace Attribute: " + srae.getName() + "-->" + srae.getValue());
	}
}
/**
	<listener>
		<listener-class>
			org.lxh.listenerdemo.ServletRequestAttributeListenerDemo
		</listener-class>
	</listener>
*/