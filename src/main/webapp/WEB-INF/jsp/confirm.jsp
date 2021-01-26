<!DOCTYPE html>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />
<title>Set Password | NeoTeach</title>
<!-- all css here -->
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/line-awesome.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
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
	<div class="main-navbar-wrap">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand site-main-logo" href="/"> <img
					src="images/logo.png" alt="NeoTeach" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#mainNavbarContent" aria-controls="mainNavbarContent"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="mainNavbarContent">
					<ul
						class="navbar-nav main-nav-auth-profile-wrap justify-content-end mt-2 mt-lg-0 flex-grow-1">

						<li class="nav-item dropdown mini-cart-item"><a
							class="nav-link" href="javascript:;" id="miniCartDropDown">
								<div class="text-center">
									<i class="la la-shopping-cart"></i>
								</div>
						</a></li>
						<li class="nav-item mr-2 ml-2"><a
							class="nav-link btn btn-login-outline" href="/loginpage"> <i
								class="la la-sign-in"></i> Log In
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-theme-primary" href="/register"> <i
								class="la la-user-plus"></i> Sign Up
						</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</div>
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
						<h2 class="mb-5 text-center">Set Password</h2>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-8">
								<form name="passwordForm" action="/confirm" method="post">
									<input type="hidden" name="token" value=${confirmationToken}>
									<div class="form-group row">
										<label for="password"
											class="col-md-4 col-form-label text-md-right">Password</label>
										<div class="col-md-8">
											<input type="password" class="form-control" id="newPassword"
												name="password"
												title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
												required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">
										</div>
									</div>
									<div class="form-group row">
										<label for="password"
											class="col-md-4 col-form-label text-md-right">Confirm
											Password</label>
										<div class="col-md-8">
											<input type="password" id="newConfirmPassword"
												class="form-control" name="ConfirmPassword"
												required="required" />
										</div>
									</div>
									<div class="form-group row mb-0">
										<div class="col-md-8 offset-md-4">
											<button type="submit" class="btn btn-primary">Save</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<!-- jquery latest version -->
	<script
		src="https://zenoxpro.com/public/assets/js/vendor/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
</body>
</html>
