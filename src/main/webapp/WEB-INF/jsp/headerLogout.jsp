<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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

						<li class="nav-item dropdown mini-cart-item">
						<a class="nav-link" href="javascript:;" id="miniCartDropDown">
								<div class="text-center">
									<i class="la la-shopping-cart"></i>
								</div>
						</a></li>

						<li class="nav-item mr-2 ml-2"><a
							class="nav-link btn btn-login-outline" href="/login"> <i
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
</body>
</html>