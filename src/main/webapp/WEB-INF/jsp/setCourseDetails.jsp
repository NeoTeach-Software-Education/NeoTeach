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
					<h4 class="mb-3">Set Course Details</h4>
					<div>
						<h5>${successMessage}</h5>
					</div>
					<div>
						<h5>${errorMessage}</h5>
					</div>

					<table class="table table-striped">
						<thead>
							<tr>
								<th>Course Number</th>
								<th>Course Name</th>
								<th>Price</th>
								<th>Discount(%)</th>
								<th>Discount Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="count" value="0" scope="page" />
							<c:forEach items="${courceDetails}" var="courceDetails">
								<form action="/updateCourse" method="POST">
									<tr>
										<td><input type="text"
											value="${courceDetails.coursecode}" name="coursecode" required pattern="[0-9]{3}" title="Enter only 3 digit numbers"></td>
										<td><input type="text"
											value="${courceDetails.coursename}" disabled="disabled">
											<input type="hidden" value="${courceDetails.coursename}"
											name="coursename"></td>
										<td><input type="number" id="cBalance${count+1}"
											value="${courceDetails.price}" name="price" min="0" required pattern='[0-9]+(\\.[0-9][0-9]?)?' onkeyup="finddiscount(${count+1})"></td>
										<td><input type="number" min="0" max="30" id="chDiscount${count+1}" onkeyup="finddiscount(${count+1})"
											value="${courceDetails.discount}" name="discount" required pattern="[0-9]{2}" title="Only 2 digits"></td>
										<td><input type='number' id="result${count+1}"
											value="${courceDetails.discountprice}" name="discountprice" min="0" required pattern='[0-9]+(\\.[0-9][0-9]?)?' readonly="readonly"></td>
										<td>
											<button type="submit" class="btn btn-purple btn-lg">
												Update</button>
										</td>
									</tr>
								</form>
								<c:set var="count" value="${count + 1}" scope="page" />
							</c:forEach>
							<td><a href="/addCourse"
								class="btn btn-primary a-btn-slide-text"> <span
									class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									<span><strong>Add a new Course</strong></span>
							</a></td>
						</tbody>
					</table>

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
	function finddiscount(count)
	{
		 var main = $('#cBalance'+count).val();
            var disc = $('#chDiscount'+count).val();
            var dec = (disc / 100).toFixed(2); //its convert 10 into 0.10
            var mult = main * dec; // gives the value for subtract from main value
            var discont = main - mult;
            $('#result'+count).val(discont);
	}
        
    </script>


</body>
</html>