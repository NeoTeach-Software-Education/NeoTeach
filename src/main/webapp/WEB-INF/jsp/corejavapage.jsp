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
<!-- <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> -->

<!-- <script> -->
<!-- $( document ).ready(function() { -->
<!--     $("#myVideo").bind("ended",function(){ -->
<%--     $("#myVideo source").attr("src","${name}"); --%>
<!--     $("#myVideo")[0].load(); -->
<!--     $("#myVideo")[0].play(); -->
<!--     }); -->
<!-- }); -->
<!-- </script> -->
</head>
<body>

<!-- <video id="addVideo" controls autoplay> -->
<%--    <embed src="${videos}" type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" name="mediaplayer1" ShowStatusBar="true" EnableContextMenu="false" width="700" height="500" autostart="false" loop="false" align="middle" volume=60 ></embed>; --%>
<!-- </video> -->
<%-- <video src="${courselist}" width='555px' height='256px'/> --%>


<%-- <c:forEach var="${courselist}" items="var">  --%>

<%-- <video src="${courselis.Data}" width='555px' height='256px'/> --%>

<%-- </c:forEach> --%>
<%--  <c:forTokens items = "${courselist}" delims = "," var = "name"> --%>
<%--          <c:out value = "${name}"/> --%>
         
  
  
<!--   <video width="400" controls> -->
<%--   <source src="${name}" type="video/mp4"> --%>
<%-- <%--   <source src="<c:out value = "${name}"/>" type="video/ogg"> --%>
<!--   Your browser does not support HTML video. -->
<!-- </video> -->
<!--   <table> -->
<!--   <tr> -->
<!--     <td width="710" bgcolor="#CCCC33" align="center" ><span class="style4">Video Player Version 1.0</span>      <strong> -->
<%--       <embed src="${videoUrl}" type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" name="mediaplayer1" ShowStatusBar="true" EnableContextMenu="false" width="700" height="500" autostart="false" loop="false" align="middle" volume="60" ></embed> --%>
<!--     </strong></td> -->
<!--   </tr></table> -->
  
<!--  <video id="myVideo" width="320" height="240" controls> -->
<%--   <source src="${video}" type="video/mp4"> --%>
<!--    Your browser does not support the video tag. -->
<!-- </video>         -->
         
<%--       </c:forTokens> --%>
<div><strong>Core Java Videos</strong></div>
<c:forEach  items="${videos}" var="vid">
<video id="addVideo" width="500" height="300" controls>
    <source src="${vid}" />
</video>
</c:forEach>



<!-- <div><strong>Core Java Videos</strong></div> -->
<!-- <video id="addVideo" width="500" height="300" controls> -->
<%--     <source src="${videoUrl}" /> --%>
<!-- </video> -->
</body>
</html>