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
			<form class="form-detail" name="passwordForm" action="/confirm" method="post">
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
          <input name="password" type="password" id="password" placeholder="Password" class="form-control" required />
          <span class="glyphicon"
            aria-hidden="true"></span>
        </div>

        <div class="form-group input-group has-feedback">
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-lock"></span>
          </span>
         <input type="password" class="form-control" id="signup-password-confirm" placeholder="Confirm Password" name="ConfirmPassword" data-fv-notempty="true"
                                       data-fv-notempty-message="Please confirm password"
                                       data-fv-identical="true"
                                       data-fv-identical-field="password"
                                       data-fv-identical-message="Both passwords must be identical" />
                   
          <div class="help-block with-errors"></div>
        </div>


		
        <button type="submit"  class="btn btn-primary block full-width m-b">Save</button>
			</form>
		</div>
	</div>


  <!-- jQuery-->
<!--   <script -->
<!--     src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->

  <!-- Bootstrap -->
<!--   <script -->
<!--     src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" -->
<!--     integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" -->
<!--     crossorigin="anonymous"></script> -->

  <!-- Bootstrap Validator plugin -->
  <script
<!--     src="//cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script> -->

  <script src="//cdnjs.cloudflare.com/ajax/libs/zxcvbn/4.4.2/zxcvbn.js"></script>
  
<!--   <script th:src="@{js/fv.min.js}"></script> -->
  <script>
		$(document).ready(function() {
		    $('#passwordForm').formValidation({
		        framework: 'bootstrap',
		        icon: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
		        
		            password: {
		                validators: {
		                    notEmpty: {
		                        message: 'The password is required'
		                    },
		                    callback: {
		                        callback: function(value, validator, $field) {
		                            var password = $field.val();
		                            if (password == '') {
		                                return true;
		                            }

		                            var result  = zxcvbn(password),
		                                score   = result.score,
		                                message = result.feedback.warning || 'The password is weak';

		                            // Update the progress bar width and add alert class
		                            var $bar = $('#strengthBar');
		                            switch (score) {
		                                case 0:
		                                    $bar.attr('class', 'progress-bar progress-bar-danger')
		                                        .css('width', '1%');
		                                    break;
		                                case 1:
		                                    $bar.attr('class', 'progress-bar progress-bar-danger')
		                                        .css('width', '25%');
		                                    break;
		                                case 2:
		                                    $bar.attr('class', 'progress-bar progress-bar-danger')
		                                        .css('width', '50%');
		                                    break;
		                                case 3:
		                                    $bar.attr('class', 'progress-bar progress-bar-warning')
		                                        .css('width', '75%');
		                                    break;
		                                case 4:
		                                    $bar.attr('class', 'progress-bar progress-bar-success')
		                                        .css('width', '100%');
		                                    break;
		                            }

		                            // We will treat the password as an invalid one if the score is less than 3
		                            if (score < 3) {
		                                return {
		                                    valid: false,
		                                    message: message
		                                }
		                            }

		                            return true;
		                        }
		                    }
		                }
		            }
		        }
		    });
		});
		</script>
<!-- 	}); -->
<!--   </script> -->

</body>
</html>