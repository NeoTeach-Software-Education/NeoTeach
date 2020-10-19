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

<title>Adv Java Course | NeoTeach</title>

<!-- all css here -->

<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/line-awesome.min.css">

<link rel="stylesheet"
	href="https://zenoxpro.com/public/assets/plugins/video-js/video-js.min.css">

<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- modernizr css -->
<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body class="">

	<c:if test="${sessionScope.userEmailSession == null}">
		<%@ include file="headerLogout.jsp"%>
	</c:if>
	<c:if test="${sessionScope.userEmailSession != null}">
		<%@ include file="header.jsp"%>
	</c:if>
	<div class="page-header-jumborton py-5">

		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="page-header-left">
						<h1>C-Language Course</h1>
						<p class="page-header-subtitle m-0">Adv Java discription here
							in three lines</p>

						<p class="mt-3 course-head-meta-wrap">
							<span><i class="la la-signal"></i> Beginner </span>
						</p>

						<p>
							<span class="created-by mr-3"> <i class="la la-user"></i>
								Created by NeoTeach
							</span> <span class="last-updated-at"> <i class="la la-clock"></i>
								Last Updated 26/06/2020 15:31
							</span>
						</p>

					</div>
				</div>
<c:if test="${paymentStatus!='YES'||paymentStatus==null}">
				<div class="col-md-4">

					<div
						class="page-header-right-enroll-box p-3 mt-sm-4 mt-md-0 bg-white shadow">
<form action="/order" class="course-free-enroll" method="post">
						<div class="course-landing-page-price-wrap">
						
							<div class='price-html-wrap  current-price-left '>
								<c:forEach items="${courceDetails}" var="courceDetails">
												<c:if test="${courceDetails.coursecode==3}">
											<span class="free-text mr-2">Rs<c:out value="${courceDetails.discountprice}"></c:out></span>
											<input type="hidden" name="amount" value="${courceDetails.discountprice}00">
											</c:if>
											</c:forEach>
							</div>
						</div>
							<!--                                     <input type="hidden" name="_token" value="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt">   -->
							
							<input type="hidden" name="currency" value="INR">
							<input type="hidden" name="courseName" value="Adv java">
							<input type="hidden" name="courseNumber" value="6">
							<button type="submit" class="btn btn-warning btn-lg btn-block">Enroll Now</button>
						</form>

					</div>

				</div>
</c:if>
			</div>
		</div>

	</div>


	<div class="container my-4">

		<div class="row">
			<div class="col-md-10 offset-md-1">


				<div class="course-details-wrap">


					<div class="course-intro-stats-wrapper mb-4">

						<div class="row">
							<div class="col-md-6">

								<div class="course-whats-included-box course-widget p-4">
									<h4 class="mb-4">What&#039;s Included</h4>


									<ul>
										<li><i class="la la-video"></i> 8:59:00 on-demand video</li>
										<li><i class="la la-book"></i> 3 Lectures</li>
										<li><i class="la la-mobile"></i> Access on tablet and
											phone</li>
										<li><i class="la la-certificate"></i> Certificate of
											completion</li>
									</ul>
								</div>

							</div>

							<div class="col-md-6">

								<div class="lecture-video-wrapper video-player-wrapper">

									<video id="lecture_video"
										class="video-js vjs-fluid vjs-default-skin" controls
										data-setup='{ "techOrder": ["youtube"], "sources": [{ "type": "video/youtube", "src": "https://www.youtube.com/watch?v=ihk_Xglr164"}] }'>
									</video>

									<p class="videoPlayerCaption m-0">
										<span class="captionText">Preview Demo</span>
									</p>
								</div>


							</div>
						</div>

					</div>



					<div class="course-widget mb-4 p-4">
						<h4 class="mb-4">What you&#039;ll learn</h4>

						<div class="content-expand-wrap">
							<div class="content-expand-inner">
								<ul class="benefits-items row">
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Training From Experts</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Affordable Fees</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Job Oriented Course</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Learn from Basic To
											Advanced Job Oriented Topics</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Hands on Training -
											Approx 25% Theory &amp; 75% Practicals</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Professional Notes &amp;
											Guidance</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Placements</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Interview Prepare
											Sessions</span></li>
									<li class="col-6 benefit-item d-flex mb-2"><i
										class="la la-check-square"></i> <span
										class="benefit-item-text ml-2">Live Projects etc.</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="course-curriculum-header d-flex mt-5">
						<h4 class="mb-4 course-curriculum-title flex-grow-1">Course
							Curriculum</h4>
						<p id="expand-collapse-all-sections">
							<a href="javascript:;" data-action="expand">Expand all</a> <a
								href="javascript:;" data-action="collapse"
								style="display: none;">Collapse all</a>
						</p>
						<p class="ml-3 course-total-lectures-info">3 Lectures</p>
						<p class="ml-3 mr-3 course-runtime-info">8:59:00</p>
					</div>
					<div class="course-curriculum-wrap mb-4">
						<div id="course-section-23"
							class="course-section bg-white border mb-2">

							<div
								class="course-section-header bg-light p-3 border-bottom d-flex">
								<span class="course-section-name flex-grow-1 ml-2"> <strong>
										<i class="la la-minus"></i> Core Java Basics
								</strong>
								</span> <span class="course-section-lecture-count"> 2 Lectures </span>
							</div>

							<div class="course-section-body" style="display: block;">

								<div class="course-curriculum-item border-bottom pl-4 d-flex">
									<p class="curriculum-item-title m-0 flex-grow-1">
									<c:forEach  items="${videoFile}" var="vid">
										${vid.fileName} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<c:if test="${paymentStatus=='YES'}">
										<a href="/retriveVideos?courceid=${vid.id}">
											<span class="curriculum-item-icon mr-2"> <i
												class='la la-youtube'></i>
										</span> <span class="curriculum-item-title"> ${vid.fileName}</span>
										</a>
										</c:if>
										</c:forEach>
									</p>

									<p class="course-section-item-details d-flex m-0">
										<span class="section-item-preview flex-grow-1"> </span> <span
											class="section-item-duration ml-auto"> 6:30:00 </span>
									</p>

								</div>
<!-- 								<div class="course-curriculum-item border-bottom pl-4 d-flex"> -->
<!-- 									<p class="curriculum-item-title m-0 flex-grow-1"> -->

<!-- 										<a -->
<!-- 											href="https://zenoxpro.com/public/index.php/courses/python-course/quiz/150"> -->
<!-- 											<span class="curriculum-item-icon mr-2"> <i -->
<!-- 												class='la la-tasks'></i> -->
<!-- 										</span> <span class="curriculum-item-title"> Java Basics -->
<!-- 												Quizz </span> -->
<!-- 										</a> -->
<!-- 									</p> -->

<!-- 									<p class="course-section-item-details d-flex m-0"> -->
<!-- 										<span class="section-item-preview flex-grow-1"> </span> <span -->
<!-- 											class="section-item-duration ml-auto"> </span> -->
<!-- 									</p> -->

<!-- 								</div> -->

							</div>

						</div>

<!-- 						<div id="course-section-24" -->
<!-- 							class="course-section bg-white border mb-2"> -->

<!-- 							<div -->
<!-- 								class="course-section-header bg-light p-3 border-bottom d-flex"> -->
<!-- 								<span class="course-section-name flex-grow-1 ml-2"> <strong> -->
<!-- 										<i class="la la-plus"></i> Java OOPs -->
<!-- 								</strong> -->
<!-- 								</span> <span class="course-section-lecture-count"> 2 Lectures </span> -->
<!-- 							</div> -->

<!-- 							<div class="course-section-body" style="display: none;"> -->

<!-- 								<div class="course-curriculum-item border-bottom pl-4 d-flex"> -->
<!-- 									<p class="curriculum-item-title m-0 flex-grow-1"> -->

<!-- 										<a -->
<!-- 											href="https://zenoxpro.com/public/index.php/courses/python-course/lecture/57"> -->
<!-- 											<span class="curriculum-item-icon mr-2"> <i -->
<!-- 												class='la la-youtube'></i> -->
<!-- 										</span> <span class="curriculum-item-title"> Exception Handling  </span> -->
<!-- 										</a> -->
<!-- 									</p> -->

<!-- 									<p class="course-section-item-details d-flex m-0"> -->
<!-- 										<span class="section-item-preview flex-grow-1"> </span> <span -->
<!-- 											class="section-item-duration ml-auto"> 8:59:00 </span> -->
<!-- 									</p> -->

<!-- 								</div> -->
<!-- 								<div class="course-curriculum-item border-bottom pl-4 d-flex"> -->
<!-- 									<p class="curriculum-item-title m-0 flex-grow-1"> -->

<!-- 										<a -->
<!-- 											href="https://zenoxpro.com/public/index.php/courses/python-course/quiz/151"> -->
<!-- 											<span class="curriculum-item-icon mr-2"> <i -->
<!-- 												class='la la-tasks'></i> -->
<!-- 										</span> <span class="curriculum-item-title"> Exception Handling  Quizz </span> -->
<!-- 										</a> -->
<!-- 									</p> -->

<!-- 									<p class="course-section-item-details d-flex m-0"> -->
<!-- 										<span class="section-item-preview flex-grow-1"> </span> <span -->
<!-- 											class="section-item-duration ml-auto"> </span> -->
<!-- 									</p> -->

<!-- 								</div> -->

<!-- 							</div> -->

<!-- 						</div> -->

<!-- 						<div id="course-section-25" -->
<!-- 							class="course-section bg-white border mb-2"> -->

<!-- 							<div -->
<!-- 								class="course-section-header bg-light p-3 border-bottom d-flex"> -->
<!-- 								<span class="course-section-name flex-grow-1 ml-2"> <strong> -->
<!-- 										<i class="la la-plus"></i> Packages &amp; Interfaces -->
<!-- 								</strong> -->
<!-- 								</span> <span class="course-section-lecture-count"> 2 Lectures </span> -->
<!-- 							</div> -->

<!-- 							<div class="course-section-body" style="display: none;"> -->

<!-- 								<div class="course-curriculum-item border-bottom pl-4 d-flex"> -->
<!-- 									<p class="curriculum-item-title m-0 flex-grow-1"> -->

<!-- 										<a -->
<!-- 											href="https://zenoxpro.com/public/index.php/courses/python-course/lecture/58"> -->
<!-- 											<span class="curriculum-item-icon mr-2"> <i -->
<!-- 												class='la la-youtube'></i> -->
<!-- 										</span> <span class="curriculum-item-title"> Abstract class  -->
<!-- 												 </span> -->
<!-- 										</a> -->
<!-- 									</p> -->

<!-- 									<p class="course-section-item-details d-flex m-0"> -->
<!-- 										<span class="section-item-preview flex-grow-1"> </span> <span -->
<!-- 											class="section-item-duration ml-auto"> 1:20:00 </span> -->
<!-- 									</p> -->

<!-- 								</div> -->
<!-- 								<div class="course-curriculum-item border-bottom pl-4 d-flex"> -->
<!-- 									<p class="curriculum-item-title m-0 flex-grow-1"> -->

<!-- 										<a -->
<!-- 											href="https://zenoxpro.com/public/index.php/courses/python-course/quiz/152"> -->
<!-- 											<span class="curriculum-item-icon mr-2"> <i -->
<!-- 												class='la la-tasks'></i> -->
<!-- 										</span> <span class="curriculum-item-title"> Threads -->
<!-- 												&amp; Collections </span> -->
<!-- 										</a> -->
<!-- 									</p> -->

<!-- 									<p class="course-section-item-details d-flex m-0"> -->
<!-- 										<span class="section-item-preview flex-grow-1"> </span> <span -->
<!-- 											class="section-item-duration ml-auto"> </span> -->
<!-- 									</p> -->

<!-- 								</div> -->

<!-- 							</div> -->

<!-- 						</div> -->

					</div>

					<h4 class="mb-4">Requirements</h4>

					<div class="course-widget mb-4 p-4">
						<ul class="benefits-items row">
							<li class="col-6 benefit-item d-flex mb-2"><i
								class="la la-info-circle"></i> <span
								class="benefit-item-text ml-2">Laptop, Browsers</span></li>
						</ul>
					</div>

					<div class="course-description mt-4 mb-5">
						<h4 class="mb-4 course-description-title">Description</h4>

						<div class="content-expand-wrap">
							<div class="content-expand-inner">
								<p>Python Which is an Open Source, non-compiled &amp;
									Scripting Language Plays a Vital Role in Data Science since it
									is Fast, Easy to Use and Good Compatibility with Machine Code
									&amp; Supported by its vast resource of Libraries and Functions
									hence have become 1 of Top Programming Language for Machine
									Learning or Machine Level Programming.</p>

								<p>Python is being Used by top companies like Google, Intel,
									Twitter etc to Power their Applications, hence rapidly being
									adopted in Industry after its recent success. Hence Very High
									job Opening with Less Competition !</p>
							</div>
						</div>
					</div>


					<div id="course-instructors-wrap" class="my-5">

						<h4 class="mb-4">Instructors</h4>


						<div class="course-single-instructor-wrap mb-4 d-flex">

							<div class="instructor-stats">
								<div class="profile-image mb-4">
									<a href="https://zenoxpro.com/public/index.php/profile/11">
										<span class='profile-text-photo'
										style='background-color: #597d92; color: #fff8e5'>ZE</span>
									</a>
								</div>

								<div class="profile-rating-wrap d-flex">
									<div class="generated-star-rating-wrap">
										<i class="la la-star" data-rating-value="1"></i><i
											class="la la-star" data-rating-value="2"></i><i
											class="la la-star" data-rating-value="3"></i><i
											class="la la-star" data-rating-value="4"></i><i
											class="la la-star" data-rating-value="5"></i>
									</div>
									<p class="m-0 ml-2">(5.00)</p>
								</div>

								<p class="instructor-stat-value mb-1">
									<i class="la la-play-circle"></i> <strong>26</strong> Courses
								</p>
								<p class="instructor-stat-value mb-1">
									<i class="la la-user-circle"></i> <strong>43</strong> Students
								</p>
								<p class="instructor-stat-value mb-1">
									<i class="la la-comments"></i> <strong>1 </strong> Reviews
								</p>
							</div>

							<div class="instructor-details">
								<a href="https://zenoxpro.com/public/index.php/profile/11">
									<h4 class="instructor-name">zenoxit</h4>
								</a>


							</div>


						</div>

					</div>



				</div>

			</div>

		</div>

	</div>



	<%@ include file="footer.jsp"%>

	<!-- <form id="logout-form" action="#" method="POST" class="d-none"> -->
	<%--     <input type="hidden" name="${encodedEmail}"> --%>
	<!-- </form> -->


	<!-- jquery latest version -->
	<!-- <script src="https://zenoxpro.com/public/assets/js/vendor/jquery-1.12.0.min.js"></script> -->
	<script src="js/jquery.min.js"></script>
	<!-- bootstrap js -->
	<!-- <script src="https://zenoxpro.com/public/assets/js/bootstrap.bundle.min.js"></script> -->
	<script src="js/bootstrap.bundle.min.js"></script>

	<script
		src="https://zenoxpro.com/public/assets/plugins/video-js/video.min.js"></script>

	<script
		src="https://zenoxpro.com/public/assets/plugins/video-js/Youtube.min.js"></script>

	<!-- main js -->
	<!-- <script src="https://zenoxpro.com/public/themes/edugator/assets/js/main.js"></script> -->

	<!-- Main -->
	<script src="js/main.js"></script>


</body>
</html>
