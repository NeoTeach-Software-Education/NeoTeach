<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./taglib_includes.jsp
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="courselist" items="${courselist}">
<td width='182' align='left'>${courselist}</td>
</c:forEach>


</body>
</html>