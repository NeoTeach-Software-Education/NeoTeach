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


						<table class="table table-striped">
							<thead>
								<tr>
									<th>SNo</th>
									<th>Course Name</th>
									<th>Enrolled On</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%--     <c:set var="count" value="0" scope="page" /> --%>
								<c:forEach items="${purchaseHistory}" var="paymentDtls" begin="0" end="1">
									<tr>
										<td><c:set var="count" value="${count + 1}" scope="page" />
											<c:out value="${count}" /></td>
										<td>${paymentDtls.courseName}</td>
										<td>${paymentDtls.paid_on}</td>
										<td><a
											href="/purchaseDtls?orderId=${paymentDtls.orderId}"
											class="btn btn-primary a-btn-slide-text"> <span
												class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												<span><strong>History</strong></span>
										</a></td>
									</tr>
								</c:forEach>
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