<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<%@ taglib prefix="x" uri="JSTL_x"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
	<c:import var="add" url="alladdress.xml" charEncoding="GBK" />
	<x:parse var="addressXml" doc="${add}"/>
	<x:forEach select="$addressXml//linkman" var="linkman">
		<h3>ะีร๛ฃบ<x:out select="name"/>(ฑเบลฃบ<x:out select="name/@id"/>)</h3>
	</x:forEach>
</body>
</html>