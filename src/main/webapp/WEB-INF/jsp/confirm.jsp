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
	
<!-- 	<script src="js/jquery-1.8.3min.js" type="text/javascript"></script> -->
<!--<script type="text/javascript" src="webjars/jquery/3.2.0/jquery.min.js"></script>  -->
<!--<script type="text/javascript" src="js/register.js"></script>  -->  
	
</head>
<body class="form-v6">

<div class="page-content">
		<div class="form-v6-content">
			<div class="form-left">
				<img src="images/form-v6.jpg" alt="form">
			</div>
			<form class="form-detail" name="passwordForm" action="/forgot" method="post">
			 <input type="hidden" name="token" value=${confirmationToken}>
<!-- 				 <hr /> -->
      <h4>Set Your Password</h4>

      <div>${successMessage}</div>

      <div>${errorMessage}</div>
        
      <div>${invalidToken}</div>
				 <div class="form-group input-group">
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-lock"></span>
          </span>
          <input type="text" name="email" id="your-email" class="input-text" placeholder="Email Address" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
          <span class="glyphicon"
            aria-hidden="true"></span>
        </div>

		
        <button type="submit"  class="btn btn-primary block full-width m-b">Submit</button>
			</form>
		</div>
	</div>

</body>
</html>