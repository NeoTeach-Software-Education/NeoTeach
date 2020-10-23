<!DOCTYPE html>
<%@ include file="taglib_includes.jsp"%>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<title>Admin Dashboard | NeoTeach</title>

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
				<h4 class="mb-3">Yours Course Details</h4>
						<div>
							<h5>${successMessage}</h5>
						</div>
						<div>
							<h5>${errorMessage}</h5>
						</div>
				
					<!--                 <div class="alert alert-danger"> -->
					<!--         <i class="la la-info-circle"></i> Restriction area, permission denied -->
					<!--     </div> -->

					<%--                     <input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
					<div class="profile-basic-info bg-white p-3">
											<table class="table table-striped">
							<thead>
								<tr>
									<th>SNo</th>
									<th>Course Name</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%--     <c:set var="count" value="0" scope="page" /> --%>
								<c:forEach items="${allcourses}" var="allcourses">
									<tr>
										<td><c:set var="count" value="${count + 1}" scope="page" />
											<c:out value="${count}" /></td>
										<td>
										<c:if test="${allcourses=='1' }">	C</c:if>
										<c:if test="${allcourses=='2' }">	CPP</c:if>
										<c:if test="${allcourses=='3' }">	Core Java</c:if>
										<c:if test="${allcourses=='4' }">	Data Structure</c:if>
										<c:if test="${allcourses=='5' }">	Python</c:if>
										<c:if test="${allcourses=='6' }">	Adv Java</c:if>
										</td>
										<td><a	href="/retriveCourseDtls?coursetitle=${allcourses}"
											class="btn btn-primary a-btn-slide-text"> <span
												class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												<span><strong>View</strong></span>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
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
