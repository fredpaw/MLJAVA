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
	<h3>–’√˚£∫<x:out select="$addressXml/addresslist/linkman/name"/>£®±‡∫≈£∫<x:out select="$addressXml/addresslist/linkman/name/@id"/>£©</h3>
	<h3>” œ‰£∫<x:out select="$addressXml/addresslist/linkman/email"/></h3>
</body>
</html>