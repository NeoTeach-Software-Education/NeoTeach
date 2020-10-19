<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
		<c:if test="${sessionScope.userEmailSession != null}">
			<%@ include file="header.jsp"%>
		</c:if>
		<nav class="colorlib-nav" role="navigation">
			<c:if test="${sessionScope.userEmailSession == null}">
				<div class="upper-menu">
					<div class="container">
						<div class="row">
							<div class="col-xs-4">
								<p>NeoTeach is for online learning...9700053393</p>
							</div>
							<div class="col-xl-9 col-md-push-2 text-right">
							
								<p class="btn-apply">
								
									<a href="/login">Login</a> <a href="/register">Sign Up</a>
								</p>
								<p class="btn-apply">
							<a href="#" id="miniCartDropDown" class="main_cart">
									<i class="la la-shopping-cart"></i>
									<i class="badge badge-notify my-cart-badge my-cart-icon cart-num"></i>
								</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</c:if>


			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<c:if test="${sessionScope.userEmailSession == null}">
								<div id="colorlib-logo">
									<a href="/">NeoTeach</a>
								</div>
							</c:if>
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
								<!-- 								<li class="active"><a href="/">Home</a></li> -->
								<li class="active"><a href="/about">About</a></li>
								<li class="has-dropdown"><a href="#colorlib-services">Courses</a>
									<ul class="dropdown">
										<li><a href="courses-single.html">C-Language</a></li>
										<li><a href="#">DS</a></li>
										<li><a href="#">Cpp</a></li>
										<li><a href="#">Core Java</a></li>
										<li><a href="#">Adv Java</a></li>
									</ul></li>
								<li><a href="/teachers">Teachers</a></li>
								<!-- 								<li><a href="event.html">Events</a></li> -->
								<!-- 								<li><a href="news.html">News</a></li> -->
								<li><a href="/contact">Contact</a></li>
								<li class="btn-cta"><a href="/classenqire"><span>Class Room Training</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
</body>
</html>