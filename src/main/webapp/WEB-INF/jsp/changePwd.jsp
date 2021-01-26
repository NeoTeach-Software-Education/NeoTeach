<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<!-- CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

<title>Reset Password | NeoTeach</title>

<!-- all css here -->
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/line-awesome.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- modernizr css -->
<!--     <script src="https://zenoxpro.com/public/assets/js/vendor/modernizr-2.8.3.min.js"></script> -->
<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body class="">

	<%@ include file="header.jsp"%>

	<div class="dashboard-wrap">

		<div class="container py-4">
			<div class="row">
				<%@ include file="left.jsp"%>

				<div class="col-9">

					<!--     <div class="dashboard-inline-submenu-wrap mb-4 border-bottom"> -->
					<!--         <a href="https://zenoxpro.com/public/index.php/dashboard/settings" class="active">Profile Settings</a> -->
					<!--         <a href="https://zenoxpro.com/public/index.php/dashboard/settings/reset-password" class="">Password Reset</a> -->
					<!--     </div> -->

					<div class="profile-settings-wrap">

						<h4 class="mb-3">Reset Password</h4>
						<div>
							<h5>${successMessage}</h5>
						</div>
						<div>
							<h5>${errorMessage}</h5>
						</div>
						<form action="/changepwd" method="post">
							<div class="profile-basic-info bg-white p-3">

								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>Old Password</label> <input type="tel" id="oldPassword"
											class="form-control" name="old_password" title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">

									</div>

								</div>

								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>New Password</label> <input type="password" id="newPassword" title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"
											class="form-control" name="new_password">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>Confirm New Password</label> <input type="password" id="newConfirmPassword"
											class="form-control" name="new_password_confirmation">

									</div>

								</div>


								<button type="submit" class="btn btn-purple btn-lg">
									Change Password</button>


							</div>



						</form>


					</div>

				</div>

			</div>
		</div>

	</div>
	<%@ include file="footer.jsp"%>
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- Main -->
<!-- 	<script src="js/main.js"></script> -->
<script type="text/javascript">
    window.onload = function () {
        var txtPassword = document.getElementById("newPassword");
        var txtConfirmPassword = document.getElementById("newConfirmPassword");
        txtPassword.onchange = ConfirmPassword;
        txtConfirmPassword.onkeyup = ConfirmPassword;
        function ConfirmPassword() {
            txtConfirmPassword.setCustomValidity("");
            if (txtPassword.value != txtConfirmPassword.value) {
                txtConfirmPassword.setCustomValidity("Passwords do not match.");
            }
        }
    }
</script>
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script src="js/cart.js"></script>
</body>
</html>
