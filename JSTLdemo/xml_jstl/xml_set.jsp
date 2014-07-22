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
	<x:set var="nameXml" scope="page" select="$addressXml/addresslist/linkman" />
	<h3>–’√˚£∫<x:out select="$nameXml/name"/>£®±‡∫≈£∫<x:out select="$nameXml/name/@id"/>£©</h3>
	<h3>” œ‰£∫<x:out select="$nameXml/email"/></h3>
</body>
</html>