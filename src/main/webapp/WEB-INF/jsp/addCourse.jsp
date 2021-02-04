<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<title>Dashboard | NeoTeach</title>

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

	<%@ include file="header_admin.jsp"%>
	<div class="dashboard-wrap">
		<div class="container py-4">
			<div class="row">
				<%@ include file="admin_left.jsp"%>

				<div class="col-9">
					<!--                 <div class="alert alert-danger"> -->
					<!--         <i class="la la-info-circle"></i> Restriction area, permission denied -->
					<!--     </div> -->

					<%--                     <input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
					<h4 class="mb-3">Add a new Course</h4>
						<div>
							<h5>${successMessage}</h5>
						</div>
						<div>
							<h5>${errorMessage}</h5>
						</div>
<div class="profile-basic-info bg-white p-3">
					<form class="form-horizontal" name="courseform" action="/addCourse"
						method="post" enctype="multipart/form-data">


						<div class="form-group row ">
							<label for="coursecode" class="col-md-3 control-label">Course
								Code</label>

							<div class="col-md-4">
								<input id="coursecode" type="text" class="form-control"
									name="coursecode" value="" required pattern="[0-9]{3}" title="Enter only 3 digit numbers" autofocus>

							</div>
						</div>

						<div class="form-group row ">
							<label for="coursename" class="col-md-3 control-label">Course
								Name</label>

							<div class="col-md-4">
								<input id="coursename" type="text" class="form-control"
									name="coursename" value="" required pattern="[a-zA-Z]{3,15}"
        title="course name should only contain at least 3 letters. e.g. Java">

							</div>
						</div>
						<div class="form-group row ">
							<label for="price" class="col-md-3 control-label">Price</label>

							<div class="col-md-4">
								<input id="price" type="text" class="form-control" name="price" onkeyup="finddiscount()"
									value="" required pattern='[0-9]+(\\.[0-9][0-9]?)?' title="Price value numeric only">

							</div>
						</div>
						<div class="form-group row ">
							<label for="price" class="col-md-3 control-label">Discount</label>

							<div class="col-md-4">
								<input type="text" class="form-control" name="discount" id="discount" onkeyup="finddiscount()"
									value=""  min="0" required pattern='[0-9]+(\\.[0-9][0-9]?)?'>

							</div>
						</div>
						
						<div class="form-group row ">
							<label for="email" class="col-md-3 control-label">Discount
								Price</label>

							<div class="col-md-4">
								<input id="discountprice" type="text" class="form-control"
									name="discountprice" required>

							</div>
						</div>
						<div class="form-group row">
							<label for="courseimg" class="col-md-3 control-label">Upload
								Image</label>

							<div class="col-md-4">
								<input id="courseimg" type="file"
									class="form-control" name="courseimg" accept="image/png, image/jpeg" required>
							</div>
						</div>


						<div class="form-group row ">
							<div class="col-md-6 offset-4">
								<button type="submit" class="btn btn-primary">Add
									Course</button>
							</div>
						</div>
					</form>


</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<!-- jquery latest version -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>


<!-- 	<script type='text/javascript' src="js/jquery.mycart.js"></script> -->
<!-- 	<script src="js/cart.js"></script> -->
<script>
        
        function finddiscount()
    	{
    		 var main = $('#price').val();
                var disc = $('#discount').val();
                var dec = (disc / 100).toFixed(2); //its convert 10 into 0.10
                var mult = main * dec; // gives the value for subtract from main value
                var discont = main - mult;
                $('#discountprice').val(discont);
    	}
    </script>

</body>
</html>