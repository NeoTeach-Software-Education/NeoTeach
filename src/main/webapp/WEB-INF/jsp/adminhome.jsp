<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<script src="js/jquery-1.8.3min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/adminhome.js"></script>
</head>
<body>
under construction
<form  enctype="multipart/form-data"  name="uploadform">
			<table>
				<tr><td>File to upload:</td><td><input type="file" name="file" /></td></tr>
				<tr><td></td><td><input type="submit" value="Upload" id="uploadvideo"/></td></tr>
			</table>
		</form> 
${adminloginfail}
${message}
</body>
</html>