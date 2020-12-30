<!DOCTYPE html>
<%@ include file="taglib_includes.jsp"%>
<html lang="en" dir="auto">
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
					<h4 class="mb-3">Enrolled courses</h4>
					<div>
						<h5>${successMessage}</h5>
					</div>
					<div>
						<h5>${errorMessage}</h5>
					</div>
					<c:if test="${paymentDtls.size()>0}">
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
								<c:forEach items="${paymentDtls}" var="paymentDtls">
									<tr>
										<td><c:set var="count" value="${count + 1}" scope="page" />
											<c:out value="${count}" /></td>
										<td>${paymentDtls.courseName}</td>
										<td>${paymentDtls.paid_on}</td>
										<td><a
											href="/course?coursetitle=${paymentDtls.courseNumber}"
											class="btn btn-primary a-btn-slide-text"> <span
												class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												<span><strong>View</strong></span>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>



						<!--                         <div class="col-md-4"> -->

						<!-- 					<div -->
						<!-- 						class="page-header-right-enroll-box p-3 mt-sm-4 mt-md-0 bg-white shadow"> -->

						<!-- 						<div class="course-landing-page-price-wrap"> -->

						<!-- 							<div class='price-html-wrap  current-price-left '> -->
						<!-- 								<span class="free-text mr-2">Rs150</span> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<form action="/order" class="course-free-enroll" method="post"> -->
						<!-- 							<input type="hidden" name="amount" value="15000"> -->
						<!-- 							<input type="hidden" name="currency" value="INR"> -->
						<!-- 							<input type="hidden" name="courseName" value="Core java"> -->
						<!-- 							<input type="hidden" name="courseNumber" value="3"> -->
						<%-- 							<button type="submit" class="btn btn-warning btn-lg btn-block"><a href="/course?coursetitle=3">${paymentDtls.courseName}</a></button> --%>
						<!-- 						</form> -->

						<!-- 					</div> -->

						<!-- 				</div> -->

					</c:if>
					<c:if test="${paymentDtls.size()==0}">
					<div>Not yet enrolled any course...</div>
					</c:if>

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
