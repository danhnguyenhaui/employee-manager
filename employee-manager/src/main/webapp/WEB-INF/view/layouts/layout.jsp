<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<tiles:importAttribute name="cssFileList"/>
<tiles:importAttribute name="jsFileList"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title><tiles:getAsString name="title" ></tiles:getAsString> </title>
<c:forEach items="${cssFileList }" var="css">
	<link rel="stylesheet" type="text/css" href='${css }'>
</c:forEach>
</head>
<body>
	<tiles:insertAttribute name="nav"></tiles:insertAttribute>
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	<c:forEach items="${jsFileList }" var="js">
		<script type="text/javascript" src="${js }"></script>
	</c:forEach>
</body>
</html>