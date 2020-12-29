<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<!-- CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

<title>Reset Admin Password | NeoTeach</title>

<!-- all css here -->
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/line-awesome.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- modernizr css -->
<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body class="">

	<%@ include file="header_admin.jsp"%>

	<div class="dashboard-wrap">

		<div class="container py-4">
			<div class="row">
				<%@ include file="admin_left.jsp"%>

				<div class="col-9">

					<div class="profile-settings-wrap">

						<h4 class="mb-3">Reset Password</h4>
						<div>
							<h5>${successMessage}</h5>
						</div>
						<div>
							<h5>${errorMessage}</h5>
						</div>
						<form action="/changeAdminPwd" method="post">
							<%-- 				<input type="hidden" name="userEmail" value="${encodedEmail}"> --%>
							<div class="profile-basic-info bg-white p-3">

								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>Old Password</label> <input type="tel"
											class="form-control" name="old_password" required="required">

									</div>

								</div>

								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>New Password</label> <input type="tel"
											class="form-control" name="new_password" required="required">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>Confirm New Password</label> <input type="tel"
											class="form-control" name="new_password_confirmation" required="required">

									</div>

								</div>

								<button type="submit" class="btn btn-purple btn-lg">
									Change Password</button>
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

	<!-- Main -->
	<script src="js/main.js"></script>


</body>
</html>
