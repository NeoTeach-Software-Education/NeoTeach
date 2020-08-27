<!DOCTYPE html>
<%@ include file="taglib_includes.jsp" %>
<html lang="en" dir="auto" >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/favicon.png"/>

    <title>   Dashboard | NeoTeach   </title>

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
<!--                 <div class="alert alert-danger"> -->
<!--         <i class="la la-info-circle"></i> Restriction area, permission denied -->
<!--     </div> -->

<%--                     <input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
    <div class="row">
        <div class="col-lg-4 col-md-6">
            <div class="dashboard-card mb-3 d-flex border p-3 bg-light">
                <div class="card-icon mr-2">
                    <span><i class="la la-user"></i> </span>
                </div>

                <div class="card-info">
                    <div class="text-value"><h4>0</h4></div>
                    <div>Courses Enrolled</div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6">
            <div class="dashboard-card mb-3 d-flex border p-3 bg-light">
                <div class="card-icon mr-2">
                    <span><i class="la la-heart"></i> </span>
                </div>
                <div class="card-info">
                    <div class="text-value"><h4>0</h4></div>
                    <div>In Wishlist</div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6">
            <div class="dashboard-card mb-3 d-flex border p-3 bg-light">
                <div class="card-icon mr-2">
                    <span><i class="la la-star-half-alt"></i> </span>
                </div>
                <div class="card-info">
                    <div class="text-value"><h4>0</h4></div>
                    <div>My Reviews</div>
                </div>
            </div>
        </div>
    </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
<!-- <form id="logout-form" action="#" method="POST" class="d-none"> -->
<!--     <input type="hidden" name="_token" value="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->
<!-- </form> -->
<!-- jquery latest version -->
<script src="js/jquery.min.js"></script>
<!-- bootstrap js -->
<!-- <script src="https://zenoxpro.com/public/assets/js/bootstrap.bundle.min.js"></script> -->
<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
<!-- main js -->
<!-- <script src="https://zenoxpro.com/public/themes/edugator/assets/js/main.js"></script> -->
</body>
</html>
