package org.lxh.listenerdemo;
import javax.servlet.http.*;
public class HttpSessionAttributeListenerDemo implements HttpSessionAttributeListener{
	public void attributeAdded(HttpSessionBindingEvent se){
		System.out.println("Add Attribute: " + se.getName() + "-->" +se.getValue());
	}
	public void attributeRemoved(HttpSessionBindingEvent se){
		System.out.println("Remove Attribute: " + se.getName() + "-->" +se.getValue());
	}
	public void attributeReplaced(HttpSessionBindingEvent se){
		System.out.println("Replace Attribute: " + se.getName() + "-->" +se.getValue());
	}
}
/**
	<listener>
		<listener-class>
			org.lxh.listenerdemo.HttpSessionAttributeListenerDemo
		</listener-class>
	</listener>
*/