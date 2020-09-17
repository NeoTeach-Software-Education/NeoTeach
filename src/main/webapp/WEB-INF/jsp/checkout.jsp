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
    data-amount=${paymentDtls.amount}
    data-currency="INR"
    data-order_id=${paymentDtls.order_id}
    data-buttontext="Pay with Razorpay"
    data-name="NeoTeach"
    data-description="This Transaction is for enroling a course"
    data-image="https://example.com/your_logo.jpg"
    data-prefill.email=${paymentDtls.email}
    data-theme.color="#F37254">
 </script>
<input type="hidden" custom="Hidden Element" name="hidden">
</form>
</body>
</html>