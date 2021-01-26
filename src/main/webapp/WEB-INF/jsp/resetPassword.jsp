<!DOCTYPE html>
<%@ include file="taglib_includes.jsp"%>
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
<!-- modernizr css --0>
<!--     <script src="https://zenoxpro.com/public/assets/js/vendor/modernizr-2.8.3.min.js"></script> -->
<script src="js/modernizr-2.6.2.min.js"></script>
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

</head>
<body class="">

	<%@ include file="headerLogout.jsp"%>
	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div>
					<h5>${successMessage}</h5>
				</div>

				<div>
					<h5>${errorMessage}</h5>
				</div>

				<div>
					<h5>${invalidToken}</h5>
				</div>
				<div class="card">
					<div class="card-header">
						<h2 class="mb-5 text-center">Reset your Password</h2>
					</div>

					<div class="card-body">

						<div class="row">
							<div class="col-md-8">
								<form name="passwordForm" action="/reset" method="post">
									<input type="hidden" name="token" value=${resetToken}>

									<div class="form-group row">
										<label for="password"
											class="col-md-4 col-form-label text-md-right">New
											Password</label>

										<div class="col-md-8">
											<input id="newPassword" type="password" class="form-control"
												name="password" title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
												required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">

										</div>
									</div>

									<div class="form-group row">
										<label for="password"
											class="col-md-4 col-form-label text-md-right">Confirm
											Password</label>

										<div class="col-md-8">
											<input type="password" class="form-control"
												id="newConfirmPassword" name="ConfirmPassword" required="required"/>
										</div>

									</div>
									<div class="form-group row mb-0">
										<div class="col-md-8 offset-md-4">
											<button type="submit" class="btn btn-primary">Save</button>
										</div>
									</div>
								</form>

							</div>

							<!--                         <div class="col-md-4"> -->

							<!--                             <div class="social-login-wrap mb-4 text-center"> -->




							<!--                             </div> -->

							<!--                         </div> -->

						</div>

					</div>
				</div>
			</div>
		</div>



	</div>
	<%@ include file="footer.jsp"%>


	<!-- <form id="logout-form" action="#" method="POST" class="d-none"> -->
	<!--     <input type="hidden" name="_token" value="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->
	<!-- </form> -->


	<!-- jquery latest version -->
	<script
		src="https://zenoxpro.com/public/assets/js/vendor/jquery.min.js"></script>
	<!-- bootstrap js -->
	<!-- <script src="https://zenoxpro.com/public/assets/js/bootstrap.bundle.min.js"></script> -->
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>

	<!-- main js -->
	<!-- <script src="https://zenoxpro.com/public/themes/edugator/assets/js/main.js"></script> -->

	<!-- Main -->
	<script src="js/main.js"></script>


</body>
</html>
