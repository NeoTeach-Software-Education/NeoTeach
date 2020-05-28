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

<table>
  <tr>
    <td width="710" bgcolor="#CCCC33" align="center" ><span class="style4">Video Player Version 1.0</span>      <strong>
      <embed src="${img }" type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" name="mediaplayer1" ShowStatusBar="true" EnableContextMenu="false" width="700" height="500" autostart="false" loop="false" align="middle" volume="60" ></embed>
    </strong></td>
  </tr></table>
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