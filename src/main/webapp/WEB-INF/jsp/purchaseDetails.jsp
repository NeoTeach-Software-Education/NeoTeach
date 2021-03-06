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

	<%@ include file="header.jsp"%>
	<div class="dashboard-wrap">
		<div class="container py-4">
			<div class="row">
				<%@ include file="left.jsp"%>

				<div class="col-9">
				<h4 class="mb-3">Course Purchase History</h4>
					<!--                 <div class="alert alert-danger"> -->
					<!--         <i class="la la-info-circle"></i> Restriction area, permission denied -->
					<!--     </div> -->

					<%--                     <input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
					<!-- 					<div> -->
					<%-- 						<h5>${successMessage}</h5> --%>
					<!-- 					</div> -->
					<!-- 					<div> -->
					<%-- 						<h5>${errorMessage}</h5> --%>
					<!-- 					</div> -->


					<table class="table table-striped">
						<tbody>
							<tr>
								<td>Course Name:</td>
								<td>${purchaseDetails.courseName}</td>
							</tr>
							<tr>
								<td>Course fee:</td>
								<td>Rs ${purchaseDetails.amount/100}0</td>
							</tr>
							<tr>
								<td>Paid on:</td>
								<td>${purchaseDetails.paid_on}</td>
							</tr>
							<tr>
								<td>Payment method:</td>
								<td>${purchaseDetails.method}</td>
							</tr>
							<tr>
								<td>Bank Name:</td>
								<td>${purchaseDetails.bank}</td>
							</tr>
							<%-- 								</c:forEach> --%>
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


	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	<script src="js/cart.js"></script>
</body>
</html>