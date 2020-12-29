<!DOCTYPE html>
<%@ include file="taglib_includes.jsp"%>
<html lang="en" dir="auto">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.png" />

<!-- CSRF Token -->
<!--     <meta name="csrf-token" content="OohSvh4J8CMe4oZAOPuTyWDFyyPqboLnCnYO5rDt"> -->

<title>Profile Settings | NeoTeach</title>

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

					<!--     <div class="dashboard-inline-submenu-wrap mb-4 border-bottom"> -->
					<!--         <a href="https://zenoxpro.com/public/index.php/dashboard/settings" class="active">Profile Settings</a> -->
					<!--         <a href="https://zenoxpro.com/public/index.php/dashboard/settings/reset-password" class="">Password Reset</a> -->
					<!--     </div> -->


					<div class="profile-settings-wrap">

						<h4 class="mb-3">Profile Information</h4>
						<div>
							<h5>${successMessage}</h5>
						</div>
						<form action="/userUpdate" method="post">
							<%--             <input type="hidden" name="userEmail" value="${encodedEmail}"> --%>

							<div class="profile-basic-info bg-white p-3">

								<div class="form-row">
									<div class="form-group col-md-6 ">
										<label>Name</label> <input type="text" class="form-control"
											name="fullName" value="${userSession.fullName}">
									</div>

									<div class="form-group col-md-6 ">
										<label>Qualification/Job Title</label> <input type="text"
											class="form-control" name="qualification"
											value="${userSession.qualification}">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Phone</label> <input type="text" class="form-control"
											name="phone" value="${userSession.phone}">
									</div>
									<div class="form-group col-md-4">
										<label>Email</label> <input type="disable"
											class="form-control" name="email"
											value="${userSession.email}" disabled="disabled">
									</div>
									<div class="form-group col-md-4">
										<label>Address</label> <input type="text" class="form-control"
											name="address" value="${userSession.address}">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<label>City</label> <input type="text" class="form-control"
											name="city" value="${userSession.city}">
									</div>

									<div class="form-group col-md-2">
										<label>Zip/Pin</label> <input type="text" class="form-control"
											name="pin" value="${userSession.pin}">
									</div>

									<div class="form-group col-md-4">
										<label for="inputState">Country</label> <select
											class="form-control" name="countryId">
											<option value="">Choose...</option>
											<option value="1">Afghanistan</option>
											<option value="74">Åland Islands</option>
											<option value="2">Albania</option>
											<option value="4">Algeria</option>
											<option value="5">American Samoa</option>
											<option value="6">Andorra</option>
											<option value="7">Angola</option>
											<option value="190">Anguilla</option>
											<option value="3">Antarctica</option>
											<option value="8">Antigua and Barbuda</option>
											<option value="10">Argentina</option>
											<option value="16">Armenia</option>
											<option value="153">Aruba</option>
											<option value="11">Australia</option>
											<option value="12">Austria</option>
											<option value="9">Azerbaijan</option>
											<option value="13">Bahamas</option>
											<option value="14">Bahrain</option>
											<option value="15">Bangladesh</option>
											<option value="17">Barbados</option>
											<option value="34">Belarus</option>
											<option value="18">Belgium</option>
											<option value="26">Belize</option>
											<option value="59">Benin</option>
											<option value="19">Bermuda</option>
											<option value="20">Bhutan</option>
											<option value="21">Bolivia, Plurinational State of</option>
											<option value="155">Bonaire, Sint Eustatius and
												Saba</option>
											<option value="22">Bosnia and Herzegovina</option>
											<option value="23">Botswana</option>
											<option value="24">Bouvet Island</option>
											<option value="25">Brazil</option>
											<option value="27">British Indian Ocean Territory</option>
											<option value="30">Brunei Darussalam</option>
											<option value="31">Bulgaria</option>
											<option value="242">Burkina Faso</option>
											<option value="33">Burundi</option>
											<option value="35">Cambodia</option>
											<option value="36">Cameroon</option>
											<option value="37">Canada</option>
											<option value="38">Cape Verde</option>
											<option value="39">Cayman Islands</option>
											<option value="40">Central African Republic</option>
											<option value="42">Chad</option>
											<option value="43">Chile</option>
											<option value="44">China</option>
											<option value="46">Christmas Island</option>
											<option value="47">Cocos (Keeling) Islands</option>
											<option value="48">Colombia</option>
											<option value="49">Comoros</option>
											<option value="51">Congo</option>
											<option value="52">Congo, the Democratic Republic
												of the</option>
											<option value="53">Cook Islands</option>
											<option value="54">Costa Rica</option>
											<option value="110">Côte d'Ivoire</option>
											<option value="55">Croatia</option>
											<option value="56">Cuba</option>
											<option value="152">Curaçao</option>
											<option value="57">Cyprus</option>
											<option value="58">Czech Republic</option>
											<option value="60">Denmark</option>
											<option value="79">Djibouti</option>
											<option value="61">Dominica</option>
											<option value="62">Dominican Republic</option>
											<option value="63">Ecuador</option>
											<option value="234">Egypt</option>
											<option value="64">El Salvador</option>
											<option value="65">Equatorial Guinea</option>
											<option value="67">Eritrea</option>
											<option value="68">Estonia</option>
											<option value="66">Ethiopia</option>
											<option value="70">Falkland Islands (Malvinas)</option>
											<option value="69">Faroe Islands</option>
											<option value="72">Fiji</option>
											<option value="73">Finland</option>
											<option value="75">France</option>
											<option value="76">French Guiana</option>
											<option value="77">French Polynesia</option>
											<option value="78">French Southern Territories</option>
											<option value="80">Gabon</option>
											<option value="82">Gambia</option>
											<option value="81">Georgia</option>
											<option value="84">Germany</option>
											<option value="85">Ghana</option>
											<option value="86">Gibraltar</option>
											<option value="88">Greece</option>
											<option value="89">Greenland</option>
											<option value="90">Grenada</option>
											<option value="91">Guadeloupe</option>
											<option value="92">Guam</option>
											<option value="93">Guatemala</option>
											<option value="236">Guernsey</option>
											<option value="94">Guinea</option>
											<option value="179">Guinea-Bissau</option>
											<option value="95">Guyana</option>
											<option value="96">Haiti</option>
											<option value="97">Heard Island and McDonald
												Islands</option>
											<option value="98">Holy See (Vatican City State)</option>
											<option value="99">Honduras</option>
											<option value="100">Hong Kong</option>
											<option value="101">Hungary</option>
											<option value="102">Iceland</option>
											<option value="103">India</option>
											<option value="104">Indonesia</option>
											<option value="105">Iran, Islamic Republic of</option>
											<option value="106">Iraq</option>
											<option value="107">Ireland</option>
											<option value="238">Isle of Man</option>
											<option value="108">Israel</option>
											<option value="109">Italy</option>
											<option value="111">Jamaica</option>
											<option value="112">Japan</option>
											<option value="237">Jersey</option>
											<option value="114">Jordan</option>
											<option value="113">Kazakhstan</option>
											<option value="115">Kenya</option>
											<option value="87">Kiribati</option>
											<option value="116">Korea, Democratic People's
												Republic of</option>
											<option value="117">Korea, Republic of</option>
											<option value="118">Kuwait</option>
											<option value="119">Kyrgyzstan</option>
											<option value="120">Lao People's Democratic
												Republic</option>
											<option value="123">Latvia</option>
											<option value="121">Lebanon</option>
											<option value="122">Lesotho</option>
											<option value="124">Liberia</option>
											<option value="125">Libya</option>
											<option value="126">Liechtenstein</option>
											<option value="127">Lithuania</option>
											<option value="128">Luxembourg</option>
											<option value="129">Macao</option>
											<option value="233">Macedonia, the former Yugoslav
												Republic of</option>
											<option value="130">Madagascar</option>
											<option value="131">Malawi</option>
											<option value="132">Malaysia</option>
											<option value="133">Maldives</option>
											<option value="134">Mali</option>
											<option value="135">Malta</option>
											<option value="168">Marshall Islands</option>
											<option value="136">Martinique</option>
											<option value="137">Mauritania</option>
											<option value="138">Mauritius</option>
											<option value="50">Mayotte</option>
											<option value="139">Mexico</option>
											<option value="167">Micronesia, Federated States
												of</option>
											<option value="142">Moldova, Republic of</option>
											<option value="140">Monaco</option>
											<option value="141">Mongolia</option>
											<option value="143">Montenegro</option>
											<option value="144">Montserrat</option>
											<option value="145">Morocco</option>
											<option value="146">Mozambique</option>
											<option value="32">Myanmar</option>
											<option value="148">Namibia</option>
											<option value="149">Nauru</option>
											<option value="150">Nepal</option>
											<option value="151">Netherlands</option>
											<option value="156">New Caledonia</option>
											<option value="158">New Zealand</option>
											<option value="159">Nicaragua</option>
											<option value="160">Niger</option>
											<option value="161">Nigeria</option>
											<option value="162">Niue</option>
											<option value="163">Norfolk Island</option>
											<option value="165">Northern Mariana Islands</option>
											<option value="164">Norway</option>
											<option value="147">Oman</option>
											<option value="170">Pakistan</option>
											<option value="169">Palau</option>
											<option value="83">Palestinian Territory, Occupied</option>
											<option value="171">Panama</option>
											<option value="172">Papua New Guinea</option>
											<option value="173">Paraguay</option>
											<option value="174">Peru</option>
											<option value="175">Philippines</option>
											<option value="176">Pitcairn</option>
											<option value="177">Poland</option>
											<option value="178">Portugal</option>
											<option value="181">Puerto Rico</option>
											<option value="182">Qatar</option>
											<option value="183">Réunion</option>
											<option value="184">Romania</option>
											<option value="185">Russian Federation</option>
											<option value="186">Rwanda</option>
											<option value="187">Saint Barthélemy</option>
											<option value="188">Saint Helena, Ascension and
												Tristan da Cunha</option>
											<option value="189">Saint Kitts and Nevis</option>
											<option value="191">Saint Lucia</option>
											<option value="192">Saint Martin (French part)</option>
											<option value="193">Saint Pierre and Miquelon</option>
											<option value="194">Saint Vincent and the
												Grenadines</option>
											<option value="247">Samoa</option>
											<option value="195">San Marino</option>
											<option value="196">Sao Tome and Principe</option>
											<option value="197">Saudi Arabia</option>
											<option value="198">Senegal</option>
											<option value="199">Serbia</option>
											<option value="200">Seychelles</option>
											<option value="201">Sierra Leone</option>
											<option value="202">Singapore</option>
											<option value="154">Sint Maarten (Dutch part)</option>
											<option value="203">Slovakia</option>
											<option value="205">Slovenia</option>
											<option value="28">Solomon Islands</option>
											<option value="206">Somalia</option>
											<option value="207">South Africa</option>
											<option value="71">South Georgia and the South
												Sandwich Islands</option>
											<option value="210">South Sudan</option>
											<option value="209">Spain</option>
											<option value="41">Sri Lanka</option>
											<option value="211">Sudan</option>
											<option value="213">Suriname</option>
											<option value="214">Svalbard and Jan Mayen</option>
											<option value="215">Swaziland</option>
											<option value="216">Sweden</option>
											<option value="217">Switzerland</option>
											<option value="218">Syrian Arab Republic</option>
											<option value="45">Taiwan, Province of China</option>
											<option value="219">Tajikistan</option>
											<option value="239">Tanzania, United Republic of</option>
											<option value="220">Thailand</option>
											<option value="180">Timor-Leste</option>
											<option value="221">Togo</option>
											<option value="222">Tokelau</option>
											<option value="223">Tonga</option>
											<option value="224">Trinidad and Tobago</option>
											<option value="226">Tunisia</option>
											<option value="227">Turkey</option>
											<option value="228">Turkmenistan</option>
											<option value="229">Turks and Caicos Islands</option>
											<option value="230">Tuvalu</option>
											<option value="231">Uganda</option>
											<option value="232">Ukraine</option>
											<option value="225">United Arab Emirates</option>
											<option value="235">United Kingdom</option>
											<option value="240">United States</option>
											<option value="166">United States Minor Outlying
												Islands</option>
											<option value="243">Uruguay</option>
											<option value="244">Uzbekistan</option>
											<option value="157">Vanuatu</option>
											<option value="245">Venezuela, Bolivarian Republic
												of</option>
											<option value="204">Viet Nam</option>
											<option value="29">Virgin Islands, British</option>
											<option value="241">Virgin Islands, U.S.</option>
											<option value="246">Wallis and Futuna</option>
											<option value="212">Western Sahara</option>
											<option value="248">Yemen</option>
											<option value="249">Zambia</option>
											<option value="208">Zimbabwe</option>
										</select>
									</div>

									<div class="form-group col-md-8">
										<label>About Me</label>
										<textarea class="form-control" name="aboutMe" rows="3"></textarea>
									</div>
									<div class="form-group col-md-3">
										<label>Profile Photo</label>
										<div class="image-wrap">
											<a href="javascript:;" data-toggle="filemanager"> <img
												src="https://zenoxpro.com/public/uploads/placeholder-image.png"
												alt="" class="img-thumbnail" />
											</a> <input type="hidden" name="photo" class="image-input"
												value="">


										</div>

									</div>

								</div>

							</div>


							<button type="submit" class="btn btn-purple btn-lg">
								Update Profile</button>

						</form>
					</div>
				</div>

			</div>
		</div>

	</div>
	<%@ include file="footer.jsp"%>

	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>


	<!-- Main -->
<!-- 	<script src="js/main.js"></script> -->

<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script src="js/cart.js"></script>
</body>
</html>
