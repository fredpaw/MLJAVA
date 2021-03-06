package org.lxh.tagdemo;
import java.util.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class BodyIterateTag extends BodyTagSupport{
	private String name;
	private String scope;
	private String id;			//用于保存集合中的每一个元素。
	private Iterator<?> iter = null;
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
		if(value != null&& value instanceof List<?>){
			this.iter = ((List<?>)value).iterator();
			if(iter.hasNext()){
				//将属性保存在Page属性范围之中
				super.pageContext.setAttribute(this.id,iter.next());
				return BodyTagSupport.EVAL_BODY_BUFFERED;
			} else{
				return BodyTagSupport.SKIP_BODY;
			}
		}else{
				return BodyTagSupport.SKIP_BODY;
		}
	}
	
	public int doAfterBody() throws JspException{
		if(iter.hasNext()){
			//将属性保存在Page属性范围之中
			super.pageContext.setAttribute(this.id,iter.next());
			return TagSupport.EVAL_BODY_AGAIN;
		} else{
			return TagSupport.SKIP_BODY;
		}
	}
	
	public int doEndTag() throws JspException{	//此方法不编写，则没有输出
		if(super.bodyContent != null){
			try{
				super.bodyContent.writeOut(super.getPreviousOut());
			}catch(Exception e){			
			}
		}
		return BodyTagSupport.EVAL_PAGE;
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