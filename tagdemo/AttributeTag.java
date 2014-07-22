package org.lxh.tagdemo;
import java.io.*;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
public class AttributeTag extends TagSupport {
	private String name;
	private String scope;
	
	public int doStartTag() throws JspException{
		Object value = null;
		if("page".equals(this.scope)){
			value = super.pageContext.getAttribute(this.name,PageContext.PAGE_SCOPE);
		}
		if("request".equals(this.scope)){
			value = super.pageContext.getAttribute(this.name,PageContext.REQUEST_SCOPE);
		}
		if("session".equals(this.scope)){
			value = super.pageContext.getAttribute(this.name,PageContext.SESSION_SCOPE);
		}
		if("application".equals(this.scope)){
			value = super.pageContext.getAttribute(this.name,PageContext.APPLICATION_SCOPE);
		}
		if(value == null){
			return TagSupport.SKIP_BODY;
		} else {
			return TagSupport.EVAL_BODY_INCLUDE;
		}
	}
	public void setName(String name){
		this.name = name;
	}
	public void setScope(String scope){
		this.scope = scope;
	}
	public String getName(){
		return this.name;
	}
	public String getScope(){
		return this.scope;
	}
}