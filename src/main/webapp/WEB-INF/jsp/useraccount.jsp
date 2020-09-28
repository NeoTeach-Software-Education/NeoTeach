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
           <%@ include file="left.jsp"%>

            <div class="col-9">
<!--                 <div class="alert alert-danger"> -->
<!--         <i class="la la-info-circle"></i> Restriction area, permission denied -->
<!--     </div> -->

<%--                     <input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
 <div>
					<h5>${successMessage}</h5>
				</div>
				<div>
					<h5>${errorMessage}</h5>
				</div>
				<c:if test="${enrolledCourse.size()<=0}">
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
    </c:if>
    <c:if test="${enrolledCourse.size()>0}">
    
    <c:forEach items="${enrolledCourse}" var="coursedtls">
    
   

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block btn-lg">
                               <a href="/course?coursetitle=3">${coursedtls.value}</a> 
                            </button>
                        </div>
    </c:forEach>
    
    
    </c:if>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
<!-- jquery latest version -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
	
	
  <script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script src="js/cart.js"></script>
</body>
</html>
