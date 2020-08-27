<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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

<%@ include file="header.jsp" %>

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
<%-- 				<input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
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
<%@ include file="footer.jsp" %>
<!-- <form id="logout-form" action="#" method="POST" class="d-none"> -->
<%--     <input type="hidden" name="${encodedEmail}"> --%>
<!-- </form> -->


<!-- jquery latest version -->
<!-- <script src="https://zenoxpro.com/public/assets/js/vendor/jquery-1.12.0.min.js"></script> -->
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
