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
	<x:choose>
		<x:when select="$addressXml//name/@id='lxh'">
			<h3>存在编号是lxh的信息，姓名：<x:out select="$addressXml/addresslist/linkman/name"/></h3>
		</x:when>
		<x:otherwise>
			<h3>没有任何内容</h3>
		</x:otherwise>
	</x:choose>
</body>
</html>