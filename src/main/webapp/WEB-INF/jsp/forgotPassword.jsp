<!DOCTYPE html>
<html lang="en" dir="auto" >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/favicon.png"/>

    <!-- CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

    <title>   Forgot Password. | NeoTeach   </title>

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
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbarContent" aria-controls="mainNavbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="mainNavbarContent">

                <ul class="navbar-nav main-nav-auth-profile-wrap justify-content-end mt-2 mt-lg-0 flex-grow-1">

                    <li class="nav-item dropdown mini-cart-item">
                        <a class="nav-link" href="javascript:;" id="miniCartDropDown">
    <div class="text-center">
        <i class="la la-shopping-cart"></i>
            </div>
</a>


                    </li>

                                            <li class="nav-item mr-2 ml-2">
                            <a class="nav-link btn btn-login-outline" href="/loginpage"> <i class="la la-sign-in"></i> Log In</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-theme-primary" href="/register"> <i class="la la-user-plus"></i> Sign Up</a>
                        </li>
                    
                </ul>

            </div>
        </div>

    </nav>

</div>

<div class="container my-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
        
         <div><h5>${successMessage}</h5></div>

      				<div><h5>${errorMessage}</h5></div>
        
     				 <div><h5>${invalidToken}</h5></div>
            <div class="card">

                <div class="card-body p-5">

                    <h3 class="mb-4">Reset your password.</h3>

                    <form class="form-horizontal" name="passwordForm" action="/forgot" method="post">
                        <div class="form-group">
                            <label for="email" class=" control-label">E-Mail Address</label>

                            <input id="youremail" type="email" class="form-control" name="email" required>

                                                    </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block btn-lg">
                                Send Password Reset Link
                            </button>
                        </div>
                    </form>


                    <p class="text-muted">Not registered? <a href="/register">Sign Up</a></p>

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
                            <span class="ml-4">Copyright © 2020 NeoTeach. All rights reserved.</span>
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


<form id="logout-form" action="https://zenoxpro.com/public/index.php/logout" method="POST" class="d-none">
    <input type="hidden" name="_token" value="ZdIpuvtr4S1tggKoZV1gBZ2A24K4jaalTS19bzxM">
</form>

    <!-- Modal -->
<div class="modal fade" id="loginFormModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><i class="la la-sign-in"></i> Log In </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                
                <form method="POST" action="https://zenoxpro.com/public/index.php/login">
                    <input type="hidden" name="_token" value="ZdIpuvtr4S1tggKoZV1gBZ2A24K4jaalTS19bzxM">
                    <input type="hidden" name="_redirect_back_to" value="https://zenoxpro.com/public/index.php/forgot-password">
                    <input type="hidden" name="_request_from" value="login_modal">

                    <div class="form-group">
                        <label>E-Mail Address</label>

                        <input id="email" type="email" class="form-control" name="email" value="" required autofocus>

                                            </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input id="password" type="password" class="form-control" name="password" required>

                                            </div>

                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="remember" > Remember Me
                            </label>
                        </div>
                    </div>

                    <div class="form-group mb-0">
                        <button type="submit" class="btn btn-primary">
                            Login
                        </button>

                        <a class="btn btn-link" href="https://zenoxpro.com/public/index.php/forgot-password">
                            Forgot Your Password?
                        </a>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- jquery latest version -->
<script src="https://zenoxpro.com/public/assets/js/vendor/jquery-1.12.0.min.js"></script>
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
