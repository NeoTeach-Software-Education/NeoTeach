<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/success" method="POST">
<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="rzp_test_l3EiPrTpPDjSWx" 
    data-amount=${orderDtls.amount}
    data-currency=${orderDtls.currency}
    data-order_id=${orderDtls.orderId}
    data-buttontext="Pay Now"
    data-name="NeoTeach"
    data-description="This Transaction is for enroling a course"
    data-image="images/neo_logo.png"
    data-prefill.email=${orderDtls.email}
    data-theme.color="#528FF0">
 </script>
<!-- <input type="hidden" custom="Hidden Element" name="hidden"> -->
<!-- <input type="hidden"  name="razorpay_payment_id"> -->
<!-- <input type="hidden"  name="razorpay_order_id"> -->
<!-- <input type="hidden"  name="razorpay_signature"> -->
</form>
</body>
</html>