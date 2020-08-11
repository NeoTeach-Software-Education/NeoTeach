<!DOCTYPE html>
<html lang="en" dir="auto" >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/favicon.png"/>

    <!-- CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

    <title>   Reset Password | NeoTeach   </title>

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

<div class="main-navbar-wrap">


    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <div class="container">
            <a class="navbar-brand site-main-logo" href="/">
                
                                    <img src="images/logo.png" alt="NeoTeach" />
                            </a>

            <div class="collapse navbar-collapse" id="mainNavbarContent">
               
              
                <ul class="navbar-nav main-nav-auth-profile-wrap justify-content-end mt-2 mt-lg-0 flex-grow-1">

                    <li class="nav-item dropdown mini-cart-item">
                        <a class="nav-link" href="javascript:;" id="miniCartDropDown">
    <div class="text-center">
        <i class="la la-shopping-cart"></i>
            </div>
</a>


                    </li>

                                            <li class="nav-item main-nav-right-menu nav-item-user-profile">
                            <a class="nav-link profile-dropdown-toogle" href="javascript:;">
                                <span class="top-nav-user-name">
                                    <span class='profile-text-photo' style='background-color: #8cb201; color: #fff8e5'>SR</span>
                                </span>
                            </a>
                            <div class="profile-dropdown-menu pt-0">

                                 <div class="profile-dropdown-userinfo bg-light p-3">
                                    <p class="m-0">${user.fullName}</p>
                                    <small>${user.email}</small>
                                </div>

                                <ul class="dashboard-menu">
    <li class="active"><a href="/useraccount"> <i class="la la-dashboard"></i> Dashboard </a></li>

    
                        <li class="">
                <a href="#"> <i class="la la-pencil-square-o"></i> Enrolled Courses </a>
            </li>
                    <li class="">
                <a href="#"> <i class="la la-heart-o"></i> Wishlist </a>
            </li>
                    <li class="">
                <a href="#"> <i class="la la-star-half-alt"></i> Reviews </a>
            </li>
                    <li class="">
                <a href="/changepwd"> <i class="la la-key"></i> Reset Password </a>
            </li>
                    <li class="">
                <a href="#"> <i class="la la-history"></i> Purchase History </a>
            </li>
                    <li class="">
                <a href="/userUpdate"> <i class="la la-tools"></i> Update Profile </a>
            </li>
<!--                     <li class=""> -->
<!--                 <a href="#"> <i class="la la-pie-chart"></i> Students Progress Report </a> -->
<!--             </li> -->
            
    <li>
        <a href="/logout">
            <i class="la la-sign-out"></i> Log Out
        </a>
    </li>
</ul>
                            </div>
                        </li>
                    
                </ul>

            </div>
        </div>

    </nav>

</div>

<div class="dashboard-wrap">

    <div class="container py-4">
        <div class="row">
            <div class="col-3 dashboard-menu-col">
                <ul class="dashboard-menu">
    <li class="active"><a href="/dashboard"> <i class="la la-dashboard"></i> Dashboard </a></li>

    
                        <li class="">
                <a href="#"> <i class="la la-pencil-square-o"></i> Enrolled Courses </a>
            </li>
                    <li class="">
                <a href="#"> <i class="la la-heart-o"></i> Wishlist </a>
            </li>
                    <li class="">
                <a href="#"> <i class="la la-star-half-alt"></i> Reviews </a>
            </li>
                    <li class="">
                <a href="/changepwd"> <i class="la la-key"></i> Reset Password </a>
            </li>
                    <li class="">
                <a href="#"> <i class="la la-history"></i> Purchase History </a>
            </li>
                    <li class="">
                <a href="/userUpdate"> <i class="la la-tools"></i> Update Profile </a>
            </li>
<!--                     <li class=""> -->
<!--                 <a href="#"> <i class="la la-pie-chart"></i> Students Progress Report </a> -->
<!--             </li> -->
            
    <li>
        <a href="/logout">
            <i class="la la-sign-out"></i> Log Out
        </a>
    </li>
</ul>
            </div>

            <div class="col-9">
                                
<!--     <div class="dashboard-inline-submenu-wrap mb-4 border-bottom"> -->
<!--         <a href="https://zenoxpro.com/public/index.php/dashboard/settings" class="active">Profile Settings</a> -->
<!--         <a href="https://zenoxpro.com/public/index.php/dashboard/settings/reset-password" class="">Password Reset</a> -->
<!--     </div> -->

		<div class="profile-settings-wrap">

<h4 class="mb-3">Reset Password</h4>
<div><h5>${successMessage}</h5></div>
			<div><h5>${errorMessage}</h5></div>
        <form action="/changepwd" method="post">
<!--             <input type="hidden" name="_token" value="knCfYaWkBZuk9etmKEmZ7B3jILMADSxhuT9yiTLi"> -->
				<input type="hidden" name="userEmail" value="${encodedEmail}">
            <div class="profile-basic-info bg-white p-3">

                <div class="form-row">
                    <div class="form-group col-md-6 ">
                        <label>Old Password</label>
                        <input type="tel" class="form-control" name="old_password" >
                        
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6 ">
                        <label>New Password</label>
                        <input type="tel" class="form-control" name="new_password" >
                     </div>      
                    </div>
					<div class="form-row">
                    <div class="form-group col-md-6 ">
                        <label>Confirm New Password</label>
                        <input type="tel" class="form-control" name="new_password_confirmation" >
                     
                    </div>

                </div>


                <button type="submit" class="btn btn-purple btn-lg"> Change Password</button>


            </div>



        </form>


    </div>

            </div>

        </div>
    </div>

</div>
<footer>
    <div class="footer-top py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="footer-widget-wrap">
                        <h4>About US</h4>
                        <p class="footer-about-us-desc">
                            NeoTeach is a Online Teaching platform that connect Teachers with Students globally. Teachers crate high quality course and present them in easy way to understand the concepts.
                        </p>
                        <p class="footer-social-icon-wrap">
                            <a href="#"><i class="la la-facebook"></i> </a>
                            <a href="#"><i class="la la-twitter"></i> </a>
                            <a href="#"><i class="la la-youtube"></i> </a>
                        </p>
                    </div>
                </div>


                <div class="col-md-3">
                    <div class="footer-widget-wrap contact-us-widget-wrap">
                        <h4>Contact</h4>
                        <p class="footer-address">
                            First floor,street no 12,Nallakunta,Hyderabad-500044.
                        </p>
                        <p class="mb-0"> Support.: +91 9700053393 </p>                      
                        <p class="mb-0"> support@neoteach.com </p>
                    </div>
                </div>



                <div class="col-md-6">
                    <div class="footer-widget-wrap link-widget-wrap">

                        <ul class="footer-links">
                            <li><a href="#">Home</a> </li>
<!--                             <li><a href="#">Dashboard</a> </li> -->
                            <li><a href="#">Courses</a> </li>
<!--                             <li><a href="#">Popular courses</a> </li> -->
<!--                             <li><a href="#">Featured courses</a> </li> -->
<!--                             <li><a href="#">Blog</a> </li> -->
                            <li><a href="#">About Us</a> </li>
                            <li><a href="#">Sign Up</a> </li>
                            <li><a href="#">Contact Us</a> </li>
                        </ul>

                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="footer-bottom py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-bottom-contents-wrap d-flex">
                        <div class="footer-bottom-left d-flex">
                            <h5 class="text-warning">NeoTeach</h5>
                            <span class="ml-4">Copyright � 2020 NeoTeach. All rights reserved.</span>
                        </div>
                        <div class="footer-bottom-right flex-grow-1 text-right">
                            <ul class="footer-bottom-right-links">
                                <li>
                                    <a href="#">
                                        Terms of use
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Privacy Policy &amp; Cookie Policy
                                    </a>
                                </li>

                            </ul>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</footer>


<form id="logout-form" action="#" method="POST" class="d-none">
<%--     <input type="hidden" name="${encodedEmail}"> --%>
</form>


<!-- jquery latest version -->
<!-- <script src="https://zenoxpro.com/public/assets/js/vendor/jquery-1.12.0.min.js"></script> -->
<script src="js/jquery-1.12.0.min.js"></script>
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
