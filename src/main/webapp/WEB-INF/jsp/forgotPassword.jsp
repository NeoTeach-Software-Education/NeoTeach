<!DOCTYPE html>
<%@ include file="taglib_includes.jsp"%>
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

<%@ include file="headerLogout.jsp"%>

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
<%@ include file="footer.jsp" %>


<!-- <form id="logout-form" action="https://zenoxpro.com/public/index.php/logout" method="POST" class="d-none"> -->
<!--     <input type="hidden" name="_token" value="ZdIpuvtr4S1tggKoZV1gBZ2A24K4jaalTS19bzxM"> -->
<!-- </form> -->

    <!-- Modal -->
<!-- <div class="modal fade" id="loginFormModal" tabindex="-1" role="dialog" aria-hidden="true"> -->
<!--     <div class="modal-dialog" role="document"> -->
<!--         <div class="modal-content"> -->
<!--             <div class="modal-header"> -->
<!--                 <h5 class="modal-title" id="exampleModalLabel"><i class="la la-sign-in"></i> Log In </h5> -->
<!--                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
<!--                     <span aria-hidden="true">&times;</span> -->
<!--                 </button> -->
<!--             </div> -->
<!--             <div class="modal-body"> -->

                
<!--                 <form method="POST" action="https://zenoxpro.com/public/index.php/login"> -->
<!--                     <input type="hidden" name="_token" value="ZdIpuvtr4S1tggKoZV1gBZ2A24K4jaalTS19bzxM"> -->
<!--                     <input type="hidden" name="_redirect_back_to" value="https://zenoxpro.com/public/index.php/forgot-password"> -->
<!--                     <input type="hidden" name="_request_from" value="login_modal"> -->

<!--                     <div class="form-group"> -->
<!--                         <label>E-Mail Address</label> -->

<!--                         <input id="email" type="email" class="form-control" name="email" value="" required autofocus> -->

<!--                                             </div> -->

<!--                     <div class="form-group"> -->
<!--                         <label>Password</label> -->
<!--                         <input id="password" type="password" class="form-control" name="password" required> -->

<!--                                             </div> -->

<!--                     <div class="form-group"> -->
<!--                         <div class="checkbox"> -->
<!--                             <label> -->
<!--                                 <input type="checkbox" name="remember" > Remember Me -->
<!--                             </label> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="form-group mb-0"> -->
<!--                         <button type="submit" class="btn btn-primary"> -->
<!--                             Login -->
<!--                         </button> -->

<!--                         <a class="btn btn-link" href="https://zenoxpro.com/public/index.php/forgot-password"> -->
<!--                             Forgot Your Password? -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </form> -->

<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
<!-- </div> -->

<!-- jquery latest version -->
<script src="https://zenoxpro.com/public/assets/js/vendor/jquery.min.js"></script>
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
