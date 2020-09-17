<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout1</title>

</head>
<body>
	<button id="rzp-button1">Pay Now</button>
	<script src="https://checkout.razorpay.com/v1/checkout.js">
</script>
	<script>var options = {    
			"key": "rzp_test_l3EiPrTpPDjSWx", // Enter the Key ID generated from the Dashboard    
			"amount": ${paymentDtls.amount}, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise    
			"currency": "INR",    
			"name": "NeoTeach",    
			"description": "Test Transaction",    
			"order_id": "${paymentDtls.order_id}", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1    
// 			"callback_url": "https://eneqd3r9zrjok.x.pipedream.net/",    
			"handler": function (response){
		        alert(response.razorpay_payment_id);
		        alert(response.razorpay_order_id);
		        alert(response.razorpay_signature)
		    },
			"prefill": {        
				"name": "Srinivas",        
				"email": "${paymentDtls.email}",        
				"contact": "9999999999"    },    
				"notes": {        
					"address": "NeoTeach Office"    },    
					"theme": {        "color": "#528FF0"    }
					};
	var rzp1 = new Razorpay(options);
	document.getElementById('rzp-button1').onclick = function(e){    
		rzp1.open();    
		e.preventDefault();}
	</script>
</body>
</html>