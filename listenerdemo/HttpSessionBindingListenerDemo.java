package org.lxh.listenerdemo;
import javax.servlet.http.*;
public class HttpSessionBindingListenerDemo implements HttpSessionBindingListener{
	private String name;
	public HttpSessionBindingListenerDemo(String name){
		this.setName(name);
	}
	public void valueBound (HttpSessionBindingEvent event){
		System.out.println("Save LoginUser Object in Session : " + this.getName());
	}
	public void valueUnbound (HttpSessionBindingEvent event){
		System.out.println("Delete LoginUser Object in Session : " + this.getName());
	}
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name = name;
	}
}