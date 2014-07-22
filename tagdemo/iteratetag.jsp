<%@page contentType="text/html" pageEncoding="GBK"%>
<%@page import="java.util.*"%>
<%@taglib prefix="mytag" uri="mldn"%>
<html>
<head>
<title>Java Test</title>
</head>
<body>
<%
	List<String> all = new ArrayList<String>();
	all.add("MLDN");
	all.add("LXH");
	all.add("mldncn");
	request.setAttribute("all",all);
%>
	<mytag:present name="all" scope="request">
		<mytag:iterate id="url" name="all" scope="request">
			<h3>Website: ${url}</h3>
		</mytag:iterate>
	</mytag:present>
</body>
</html>