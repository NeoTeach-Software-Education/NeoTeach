<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>NeoTeach</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/nunito-font.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css"/>
	
	<script src="js/jquery-1.8.3min.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="webjars/jquery/3.2.0/jquery.min.js"></script>  -->
<!--<script type="text/javascript" src="js/register.js"></script>  -->  
	
</head>
<body class="form-v6">
	<div class="page-content">
		<div class="form-v6-content">
			<div class="form-left">
				<img src="images/form-v6.jpg" alt="form">
			</div>
			<form class="form-detail" name="userform1" action="/userRegister" method="post">
				<h2>Register Form</h2>
				<div><h5>${confirmationMessage}</h5></div>
				<div><h5>${alreadyRegisteredMessage}</h5></div>
				<div class="form-row">
					<input type="text" name="fullName" id="full-name" class="input-text" placeholder="Full Name" required>
					<span style="float: left;" id="errorFirstname"></span>
				</div>
				<div class="form-row">
					<input type="text" name="phone" id="phone" class="input-text" placeholder="Phone" required>
				</div>
				<div class="form-row">
					<input type="text" name="email" id="your-email" class="input-text" placeholder="Email Address" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
				</div>
<!-- 				<div class="form-row"> -->
<!-- 					<input type="password" name="password" id="password" class="input-text" placeholder="Password" required> -->
<!-- 				</div> -->
<!-- 				<div class="form-row"> -->
<!-- 					<input type="password" name="comfirm-password" id="comfirm-password" class="input-text" placeholder="Comfirm Password" required> -->
<!-- 				</div> -->
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Register" id="register">
				</div>
			</form>
		</div>
	</div>
</body>
</html>