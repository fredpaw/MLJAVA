package org.lxh.tagdemo;
import java.text.*;
import java.util.*;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
public class DateTag extends TagSupport {
	private String format;
	public int doStartTag() throws JspException{
		SimpleDateFormat sdf = new SimpleDateFormat(this.format);
		//表示进行格式化的日期显示操作。
		try{
			super.pageContext.getOut().write(sdf.format(new Date()));
		}catch(Exception e){
			e.printStackTrace();
		}
		return TagSupport.SKIP_BODY;
	}
	public void setFormat(String format){
		this.format = format;
	}
	public String getFormat(){
		return this.format;
	}
}