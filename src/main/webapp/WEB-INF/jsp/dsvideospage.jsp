<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NeoTeach</title>
</head>
<body>


<div><strong>Data Structure Videos</strong></div>
<c:forEach  items="${videoFile}" var="vid">
 <a href="/retriveVideos?courceid=${vid.id}">${vid.fileName}</a><br>
</c:forEach>

</body>
</html>