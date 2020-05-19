$(document).ready(function()
{
alert("Hello I am from js");
$('#register').click(function(e)
		{
		alert("from js");
		document.userform1.action="register1.html";
		document.userform1.method="POST";
		document.userform1.submit();
		})
	});
	
//});
//	################################

	
//	$('#firstName').focus();
//	$('#pho').blur(function(e)
//			{
////		alert("blurrrrr"+$("#pho").val());
//				if($("#pho").val() == "" )
//				{
////					alert("emty yar");
//					 $('#erPho').show();
//						$('#erPho').html('Phone Number not empty').css('color', 'red');
//						$('#pho').focus();
//						return false;	
//				}
//				
//				 else {
//					 
//					 var queryString ="mobile="+$('#pho').val();
//					 $.ajax({  
//						 type: "GET", 
//						 url: "./chkPhoId.html", 
//						 data: queryString, 
//						 cache: false,
//						 success: function(response){ 
//							 if(response!="")
//							 {
//								 var result=response.split("#");
//								 if(result[0]==0)
//									 {
//									
//									 $('#erPho').show();
//									$('#erPho').html($('#pho').val()+result[1]).css('color','green');
//									}
//								 else
//									 {
//									 $('#erPho').show();
//									$('#erPho').html("");
//									 }
//							 }else {
//								 
////								 alert("No Data Found with The Given Details..");
//							 }
//						 },
//						 error: function(e){ 
//							
//						 },
//					     failure: function(e){ 
//							 alert('Error: ' + e); 
//						 }						 
//					 });  
//				}	
//			});
//
//	$(".number").keypress(function(e) {
//		if (e.which != 8 && e.which != 0
//		&& (e.which < 48 || e.which > 57)) 
//		{
//			$('#erPho').show();
//			$('#erPho').html('allow numbers').css('color', 'red');
//		return false;
//		}
//		});
//	$('#pho').blur(function(e) {
//		var mobileno=$("#pho").val();
//		if(mobileno!=""){
//		if (mobileno.length>10 || mobileno.length<10){
//			$('#erPho').show();
//			$('#erPho').html("Mobile No. Should Be 10 Digit").css('color', 'red');
//		$("#pho").val("");
//		$("#pho").focus();
//		return false;
//		}
//		if (!(mobileno.charAt(0)=="9" || mobileno.charAt(0)=="8" || mobileno.charAt(0)=="7")){
//			$('#erPho').show();
//			$('#erPho').html("Mobile No. Should Start With 9 or 8 or 7").css('color', 'red');
//		$("#pho").val("");
//		$("#pho").focus();
//
//		return false;
//		}
//		}
//		else{
////			$('#erPho').hide();
//		return true;
//		}
//		
//		});
//	
//	$('#register').click(function(e)
//	{
//		
////		alert("in reg");
//	if($('#firstName').val()=="")
//	{
//		$('#errorFirstname').show();
//		$('#errorFirstname').html("First Name Should not empty").css('color', 'red');
//		$('#firstName').focus();
//		return false;
//	}
//	else if($('#firstName').val().length<3)
//	{
//		$('#errorFirstname').show();
//		$('#errorFirstname').html("First Name Not Less Than 3 charcters").css('color', 'red');
//		$('#firstName').focus();
//		return false;
//	}
//	else if($('#lastName').val()=="")
//	{
//		$('#errorFirstname').show();
//		$('#errorFirstname').html("Last Name Should not empty").css('color', 'red');
//		$('#lastName').focus();
//		return false;
//	}
//	else if($('#lastName').val().length<3)
//	{
//		$('#errorFirstname').show();
//		$('#errorFirstname').html("Last Name Not Less Than 3 charcters").css('color', 'red');
//		$('#lastName').focus();
//		return false;
//	}
//	else if($('input[name=gender]:checked').length<=0)
//	{
////	 alert("No radio checked");
//	 $('#errorGender').show();
//		$('#errorGender').html('Please select a Tutor Gender').css('color', 'red');
////		$('#pho').focus();
//		return false;
//	}
//	else if($('#pho').val()=="")
//	{
//		 $('#erPho').show();
//		$('#erPho').html('Mobile Number not empty').css('color', 'red');
//		$('#pho').focus();
//		return false;
// }
//	else if($('#quali').val()=="")
//	{
//		 $('#errQuali').show();
//		$('#errQuali').html('Plz Enter Tutor Qualifications').css('color', 'red');
//		$('#quali').focus();
//		return false;
// }
//	else


	
	


