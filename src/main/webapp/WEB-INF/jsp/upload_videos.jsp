<!DOCTYPE html>
<%@ include file="taglib_includes.jsp"%>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<title>Upload Videos | NeoTeach</title>

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

				<div class="col-md-7">

					<form id="singleUploadForm" name="singleUploadForm">
						<div class="form-group row">
							<label for="videos" class="col-sm-4 col-form-label text-md-right">Single
								Video</label>

							<div class="col-md-7">
								<input id="singleFileUploadInput" type="file"
									class="form-control" name="file" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="courselist"
								class="col-md-4 col-form-label text-md-right">Course</label>

							<div class="col-md-7">
								<select class="form-control" name="coursename" id="coursename">
									<option value="0" selected="selected">Choose a course:</option>
									<option value="1">C</option>
									<option value="2">Cpp</option>
									<option value="3">Core Java</option>
									<option value="4">DS</option>
									<option value="5">Python</option>
								</select>

							</div>
						</div>

						<div class="form-group row mb-0">
							<div class="col-md-7 offset-md-4">
								<button type="submit" class="btn btn-primary">Upload</button>

							</div>
						</div>
					</form>
					<div class="upload-response">
						<div id="singleFileUploadError"></div>
						<div id="singleFileUploadSuccess"></div>
					</div>

					<form id="multipleUploadForm" name="multipleUploadForm">
						<div class="form-group row">
							<label for="videos" class="col-sm-4 col-form-label text-md-right">Multiple
								Videos</label>

							<div class="col-md-7">
								<input id="multipleFileUploadInput" type="file"
									class="form-control" name="files" multiple required>
							</div>
						</div>

						<div class="form-group row">
							<label for="courselist"
								class="col-md-4 col-form-label text-md-right">Course</label>

							<div class="col-md-7">
								<select class="form-control" name="multicoursename"
									id="mcoursename">
									<option value="0" selected="selected">Choose a course:</option>
									<option value="1">C</option>
									<option value="2">Cpp</option>
									<option value="3">Core Java</option>
									<option value="4">DS</option>
									<option value="5">Python</option>
								</select>

							</div>
						</div>

						<div class="form-group row mb-0">
							<div class="col-md-7 offset-md-4">
								<button type="submit" class="btn btn-primary">Upload</button>

							</div>
						</div>
					</form>
					<div class="upload-response">
						<div id="multipleFileUploadError"></div>
						<div id="multipleFileUploadSuccess"></div>
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
	<script src="js/mainvideos.js"></script>
	<!-- bootstrap js -->
	<!-- <script src="https://zenoxpro.com/public/assets/js/bootstrap.bundle.min.js"></script> -->
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- main js -->
	<!-- <script src="https://zenoxpro.com/public/themes/edugator/assets/js/main.js"></script> -->
</body>
</html>
