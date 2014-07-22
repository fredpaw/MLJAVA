package org.lxh.tagdemo;
import java.io.*;
import java.util.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class SimpleIterateTag extends SimpleTagSupport{
	private String name;
	private String scope;
	private String id;			//用于保存集合中的每一个元素。
	public void doTag() throws JspException,IOException{
		Object value = null;
		if("page".equals(this.scope)){
			value = super.getJspContext().getAttribute(this.name,PageContext.PAGE_SCOPE);
		}
		if("request".equals(this.scope)){
			value = super.getJspContext().getAttribute(this.name,PageContext.REQUEST_SCOPE);
		}
		if("session".equals(this.scope)){
			value = super.getJspContext().getAttribute(this.name,PageContext.SESSION_SCOPE);
		}
		if("application".equals(this.scope)){
			value = super.getJspContext().getAttribute(this.name,PageContext.APPLICATION_SCOPE);
		}
		if(value != null && value instanceof List<?>){
			Iterator<?> iter = ((List<?>) value).iterator();
			while(iter.hasNext()){
				super.getJspContext().setAttribute(id,iter.next());
				super.getJspBody().invoke(null);
			}
		}
	}
	

	public void setName(String name){
		this.name = name;
	}
	public void setScope(String scope){
		this.scope = scope;
	}
	public void setId(String id){
		this.id = id;
	}
	public String getName(){
		return this.name;
	}
	public String getScope(){
		return this.scope;
	}
	public String getId(){
		return this.id;
	}
}