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

<title>Log In | NeoTeach</title>

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

	<%@ include file="headerLogout.jsp"%>
<%-- <%@ include file="header_main.jsp"%> --%>
	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div>
					<h5>${successMessage}</h5>
				</div>
				<div>
					<h5>${errorMessage}</h5>
				</div>
				<div class="card">
					<div class="card-header">Login Using your E-Mail and password</div>

					<div class="card-body">

						<div class="row">
							<div class="col-md-8">


								<form name="userloginform" action="/login" method="post">
<!-- 									<input type="hidden" name="_token" -->
<!-- 										value="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->
									<div class="form-group row">
										<label for="email"
											class="col-sm-4 col-form-label text-md-right">E-Mail
											Address</label>

										<div class="col-md-8">
											<input id="email" type="email" class="form-control"
												name="username" required autofocus>

										</div>
									</div>

									<div class="form-group row">
										<label for="password"
											class="col-md-4 col-form-label text-md-right">Password</label>

										<div class="col-md-8">
											<input id="password" type="password" class="form-control"
												name="password" title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">

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

											<a class="btn btn-link" href="/forgot"> Forgot Your
												Password? </a>
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
  <!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
  <script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script src="js/cart.js"></script>
</body>
</html>
