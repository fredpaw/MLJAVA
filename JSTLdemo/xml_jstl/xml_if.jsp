<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="JSTL_core"%>
<%@ taglib prefix="x" uri="JSTL_x"%>
<html>
<head>
<title>JSTL Demo</title>
</head>
<body>
	<c:import var="add" url="address.xml" charEncoding="GBK" />
	<x:parse var="addressXml" doc="${add}"/>
	<x:if select="$addressXml//name/@id='lxh'" var="res">
		<h3>存在编号是lxh的信息，姓名：<x:out select="$addressXml/addresslist/linkman/name"/></h3>
		${res}
	</x:if>
</body>
</html>