<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NeoTeach corejava videos</title>
</head>
<body>
         
<%--       </c:forTokens> --%>
<div><strong>Core Java Videos</strong></div>
<%-- <c:forEach  items="${videoUrl}" var="vid"> --%>
<video id="addVideo" width="500" height="300" controls>
    <source src="${video}" />
</video>
<%-- </c:forEach> --%>

</body>
</html>