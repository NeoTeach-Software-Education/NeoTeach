<!DOCTYPE html>
<%@ include file="taglib_includes.jsp" %>
<html lang="en" dir="auto" >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" href="images/favicon.png"/>

<!--     CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

    <title>   Sign Up | NeoTeach   </title>

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

<%@ include file="headerLogout.jsp" %>
<div class="container my-5">
    <div class="row">
        <div class="col-md-8 mx-auto">

            <h2 class="mb-5 text-center">Register</h2>

            <div class="auth-form-wrap">

                <div><h5>${confirmationMessage}</h5></div>
				<div><h5>${alreadyRegisteredMessage}</h5></div>
                <form class="form-horizontal" name="userform1" action="/userRegister" method="post">
                   

                    <div class="form-group row ">
                        <label for="name" class="col-md-4 control-label">Name</label>

                        <div class="col-md-6">
                            <input id="name" type="text" class="form-control" name="fullName" value="" required autofocus>

                        </div>
                    </div>
                    
                     <div class="form-group row ">
                        <label for="phone" class="col-md-4 control-label">Phone</label>

                        <div class="col-md-6">
                            <input id="phone" type="text" class="form-control" name="phone" value="" required>

                        </div>
                    </div>

                    <div class="form-group row ">
                        <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                        <div class="col-md-6">
                            <input id="email" type="email" class="form-control" name="email" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">

                       </div>
                    </div>

<!--                     <div class="form-group row "> -->
<!--                         <label for="password" class="col-md-4 control-label">Password</label> -->

<!--                         <div class="col-md-6"> -->
<!--                             <input id="password" type="password" class="form-control" name="password" required> -->

<!--                                                     </div> -->
<!--                     </div> -->

<!--                     <div class="form-group row "> -->
<!--                         <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label> -->

<!--                         <div class="col-md-6"> -->
<!--                             <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="form-group row "> -->
<!--                         <label for="password-confirm" class="col-md-4 control-label">I am</label> -->

<!--                         <div class="col-md-6"> -->
<!--                             <label class="mr-3"><input type="radio" name="user_as" value="student" checked> Student </label> -->
<!--                             <label><input type="radio" name="user_as" value="instructor"  > Instructor </label> -->
<!--                         </div> -->
<!--                     </div> -->

                    <div class="form-group row ">
                        <div class="col-md-6 offset-4">
                            <button type="submit" class="btn btn-primary"> Register </button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>

<!-- <form id="logout-form" action="#" method="POST" class="d-none"> -->
<!--     <input type="hidden" name="_token" value="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->
<!-- </form> -->


<!-- jquery latest version -->
<script src="https://zenoxpro.com/public/assets/js/vendor/jquery.min.js"></script>
<!-- bootstrap js -->
<!-- <script src="https://zenoxpro.com/public/assets/js/bootstrap.bundle.min.js"></script> -->

<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
	
<!-- main js -->
<!-- <script src="https://zenoxpro.com/public/themes/edugator/assets/js/main.js"></script> -->

	<script src="js/main.js"></script>

</body>
</html>
