<!DOCTYPE html>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<!-- CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

<title>Admin Login | NeoTeach</title>

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

	<%@ include file="header_admin_logout.jsp"%>
	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div>
					<h5>${successMessage}</h5>
				</div>
				<div class="card">
					<div class="card-header">
						<h2 class="mb-5 text-center">Admin Login</h2>
					</div>

					<div class="card-body">

						<div class="row">
							<div class="col-md-8">

								<div>
									<h5>${errorMessage}</h5>
								</div>

								<form name="adminloginform" action="/adminlogin" method="post">
									<!--                                 <input type="hidden" name="_token" value="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->
									<div class="form-group row">
										<label for="email"
											class="col-sm-4 col-form-label text-md-right">E-Mail
											Address</label>

										<div class="col-md-8">
											<input id="email" type="email" class="form-control"
												name="username" value="" required autofocus>

										</div>
									</div>

									<div class="form-group row">
										<label for="password"
											class="col-md-4 col-form-label text-md-right">Password</label>

										<div class="col-md-8">
											<input id="password" type="password" class="form-control"
												name="password" required>

										</div>
									</div>

									<div class="form-group row">
										<div class="col-md-8 offset-md-4">
											<div class="checkbox">
												<label> <input type="checkbox" name="remember">
													Remember Me
												</label>
											</div>
										</div>
									</div>

									<div class="form-group row mb-0">
										<div class="col-md-8 offset-md-4">
											<button type="submit" class="btn btn-primary">Login
											</button>

											<a class="btn btn-link" href="#"> Forgot Your Password? </a>
										</div>
									</div>
								</form>

							</div>

							<div class="col-md-4">

								<div class="social-login-wrap mb-4 text-center"></div>

							</div>

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
<!-- 	<script	src="https://zenoxpro.com/public/assets/js/vendor/jquery.min.js"></script> -->
<script src="js/jquery.min.js"></script>
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
