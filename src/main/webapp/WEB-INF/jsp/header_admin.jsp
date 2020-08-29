<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

				<div class="collapse navbar-collapse" id="mainNavbarContent">


					<ul
						class="navbar-nav main-nav-auth-profile-wrap justify-content-end mt-2 mt-lg-0 flex-grow-1">

						<li class="nav-item dropdown mini-cart-item"><a
							class="nav-link" href="javascript:;" id="miniCartDropDown">
								<div class="text-center">
									<i class="la la-shopping-cart"></i>
								</div>
						</a></li>
						<li class="nav-item main-nav-right-menu nav-item-user-profile">
							<a class="nav-link profile-dropdown-toogle" href="javascript:;">
								<span class="top-nav-user-name"> <span
									class='profile-text-photo'
									style='background-color: #8cb201; color: #fff8e5'> <c:set
											var="nickname" value="${adminSession.fullName}" />${fn:substring(nickname, 0, 3)}
								</span>
							</span>
						</a>
							<div class="profile-dropdown-menu pt-0">

								<div class="profile-dropdown-userinfo bg-light p-3">
									<p class="m-0">${adminSession.fullName}</p>
									<small>${adminSession.email}</small>
								</div>

								<ul class="dashboard-menu">
									<li class="active"><a href="/adminDashboard"> <i
											class="la la-dashboard"></i> Admin Dashboard
									</a></li>


									<!-- 						<li class=""><a href="#"> <i class="la la-pencil-square-o"></i> Enrolled Courses	</a></li> -->
									<!-- 						<li class=""><a href="#"> <i class="la la-heart-o"></i>	Wishlist</a></li> -->
									<li class=""><a href="/uploadVideos"> <i
											class="la la-star-half-alt"></i>Upload Videos
									</a></li>
									<li class=""><a href="/changeAdminPwd"> <i
											class="la la-key"></i> Reset Password
									</a></li>
									<li class=""><a href="#"> <i class="la la-history"></i>
											Delete Course
									</a></li>
									<li class=""><a href="/userUpdate"> <i
											class="la la-tools"></i> Update Profile
									</a></li>
									<!--                     <li class=""> -->
									<!--                 <a href="#"> <i class="la la-pie-chart"></i> Students Progress Report </a> -->
									<!--             </li> -->

									<li><a href="/adminLogout"> <i class="la la-sign-out"></i>
											Log Out
									</a></li>
								</ul>
							</div>
						</li>

					</ul>

				</div>
			</div>

		</nav>

	</div>
</body>
</html>