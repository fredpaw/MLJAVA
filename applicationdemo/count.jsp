<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.math.*" %>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%!
	BigInteger countAll= null;
%>
<%!
	public void saveCount(File file,BigInteger count) {
		try{
			PrintStream ps = null;
			ps = new PrintStream(new FileOutputStream(file));
			ps.println(count);
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public BigInteger loadCount(File file){
		BigInteger count = null;
		try {
			if(file.exists()) {
				Scanner scan = new Scanner(new FileInputStream(file));
				if(scan.hasNext()){
					count = new BigInteger(scan.next());
				}
				scan.close();
			} else {
				count = new BigInteger("0");
				saveCount(file,count);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
%>
<%
	String fileName = this.getServletContext().getRealPath("/") + "count.txt";
	File file = new File(fileName);
	if(session.isNew()){
		synchronized(this){
			countAll = loadCount(file);
			countAll = countAll.add(new BigInteger("1"));
			saveCount(file,countAll);
		}
	}
	out.print("You are No." + countAll==null?0:countAll + " Visitor.");
%>
</body>
</html>