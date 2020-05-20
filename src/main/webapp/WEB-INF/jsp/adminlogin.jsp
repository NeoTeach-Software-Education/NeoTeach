<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:fb="http://www.facebook.com/2008/fbml">
    <head>
            <title>Login- NeoHomeTuitions.com</title>
            <meta name="robots" content="noindex,follow"/>
<link type="image/x-icon" href="images/favicon1.png" rel="shortcut icon">
		<link href="css/main.css" type="text/css" rel="stylesheet" media="screen, projection" />
<!--         <link href="css/jquery-ui-1.10.4.min.css" type="text/css" rel="stylesheet" media="screen, projection" /> -->
        
<meta name="layout" content="standAlone"/>
	  
	  
	  <style type="text/css">
	  .no-underline	{text-decoration:none;}
	  	  .no-underline:hover	{text-decoration:underline;}
	  	body, .g23, .siteHeader	{background-color:#F6F6F6 !important;}	
	  	.mainBodyMargin	{margin:0px;}
	  	.text-box	{border: 1px solid #5dd2ff;
width: 321px;
height: 27px;
padding-left: 6px;
margin-top: 5px; margin-bottom:6px;
border-radius: 2px;
box-shadow: 0px 0px 3px rgba(0,0,0,0.3);font-family:'open sans' !important;}

.loginBtn	{margin: 5px 0 0 0px;font-family:'open sans' !important; 
background-color: #FF9934;
border: 1px solid rgb(236, 162, 27);
color: white;
border-radius: 2px;
height:31px;
padding-bottom: 5px;
font-size: 14px;
width:100%;}
.forgetLink	{color:#6C6C6C !important;}
	  </style>
	  
   
<script src="js/jquery-1.8.3min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/adminlogin.js"></script>  
    </head>

	<body>

<div style="width:100%;height:51px;z-index: 999;float:left;margin-bottom:15px; " class="gradient-ribbon">
	<div class="d-cont">
	
			<a href="http://www.neoonlinetraining.com">
	 <img src="images/nht9.png" class="d-logo"/>
	 </a>
				
	</div>
</div>
				  
		<div class="container clearfix" style="margin-top:20px;">
		
			<div class="shadowLeft">
				<div class="shadowRight">
					<div class="siteHeader framework clearfix">
						<div class="cont">
					        <div id="spinner" class="spinner" style="display:none;">
					            <img src="images/spinner.gif" alt="Spinner" />
					        </div>					        
				       						     
		
					  	<!-- body: BEGIN -->	
					  	<div class="g24 last clearfix mainBodyMargin">

	<div class="g23 minHeight500"
		style="width: 930px;">
		
		<div style="padding: 10px;">
		
			</div>
					
			<div style="width: 330px; padding: 15px 20px 20px 20px; margin: 0 auto; border:1px solid #DDDDDD; background-color:#fff;">
				<form name="loginform3">
<%-- 				<input type="hidden" name="type" value="${type}"> --%>
				<h2>${Error}</h2>
					<h1 class="commonTitle" style="font-weight: normal; text-align:center; font-weight:300; color:#000080; width:100%; display: block; font-size:22px;">Login to your Account</h1>
					<hr style="height:1px; border:0px; border-bottom:#FFC2C2 solid 1px !important; margin-bottom:10px; margin-bottom:27px;"/>

					
					<table border="0" cellpadding="0" cellspacing="0" class="formTable">
<!-- <tr> -->
<!-- <td class="" id="typeInfo" style="width: 190px">I am a</td></tr> -->
<!-- <tr><td style="width: 190px"><input type="radio" name="type" value="LEARNER" checked="checked" style="vertical-align: middle; width: 13px; height: 13px"> -->
<!-- Learner/Student -->
<!-- <input type="radio" name="type" value="TRAINER" style="vertical-align: middle; width: 13px; height: 13px"> -->
<!-- Trainer/Tutor</td></tr> -->
						<tr>
							
							<td style="width: 190px">
									<input type='text' placeholder="Enter your email*" name='username' id='username' class="text-box"
										value='' size="45" maxlength="65"
										tabindex="1"  />
								</td>
						</tr>
						<tr>
							
							<td style="width: 190px"><input type='password'
								name='password' id='j_password' size="45" placeholder="Enter password*" maxlength="30" class="text-box" tabindex="2"/></td>

						</tr>
						

						<tr>
							<td><input type="submit" class="loginBtn" value="Log In" 
								alt="Log In"  tabindex="3" id="adminlogin"/></td>
						</tr>

						<tr>
							<td style="padding-top: 3px;"><input style="vertical-align: -3px;margin-right:4px;" type='checkbox'
								name='_spring_security_remember_me' id='remember_me'
								checked='checked' tabindex="4"/> Remember Me <span
								style="margin-Left: 106px;">
								<a href="/register/forgotPassword" style="text-align:right;" class="forgetLink no-underline" rel="external" tabindex="5">Forgot Password?</a></span>
							</td>
						</tr>

						
							
								<tr>
									<td class="textAlignCen" colspan="2">
									
										
				
									</td>
								</tr>
							
						
					</table>
						
					<div style="float: left; margin: 0px 0px 20px 0px; width: 105%; display:none;">
						  <div style="float: left;">
							
	                        </div>
	                       <div class="g2" style=" float: left; border-bottom: solid 1px #777; width: 10px; margin: 13px 3px 13px 3px;"> &nbsp; </div> 
	                       <div style="float: left; color: #777; font-size: 14px; margin:21px 0px 20px 0px;">OR</div>
	                         <div class="g2" style="border-bottom: solid 1px #777;width: 10px; margin: 13px 3px 13px 3px;"> &nbsp; </div>
	                         
						</div>
						
<!-- 						<div style="margin-left:0px; margin-top:10px;"> -->
<!-- 											New User ? -->
<!-- 											<a href="register.html" class="loud no-underline orangeLink" tabindex="6">Sign Up Now !</a> -->
<!-- 											 It's FREE! -->
<!-- 										</div> -->
										
				</form>
				
			</div>
		</div>
	</div>
	
					    </div>
						<!-- body: END -->													
					</div>					
					<br class="clear" />					
				</div>				
			</div>
		</div>
	
		<div class="footernew" >
	     <div class="d-cont-foot">

			<ul class="footerSocial marginTop15">
				<li class="no-border social-icons"><a href="https://twitter.com/neohometuitions"><img src="images/tw.png" /></a></li>
	        	<li class="no-border social-icons"><a href="https://plus.google.com/u/1/106054801941976563719/posts" target="_blank"><img src="images/gp.png" /></a></li>
	        	<li class="no-border social-icons"><a href="https://www.facebook.com/neo.hometuitions"><img src="images/fb.png" /></a></li>
			</ul>
	     <div class="copyright hide-for-small-only">NeoHomeTuitions.com &copy; 2015-2016 All Rights Reserved
	          
	     </div>
		
			<ul class="footermenu">
	        	<li class="hide-for-small-only"><a href="aboutus.html">About NeoHomeTuitions.com</a></li>       	
	        	<li><a href="terms.html">Terms of Use</a></li>
	        	<li><a href="privaciPolicy.html">Privacy Policy</a></li>
	        	<li class="rmv-border"><a href="contactus.html" class="rmv-border">Contact Us</a></li>
	        </ul>
	        
		</div>
		</div>
			
 <div class="d-cont-foot" style="text-decoration:none !important;" >
	 
	</div>
     
	</body>
</html>
