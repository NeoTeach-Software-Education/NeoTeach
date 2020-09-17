package com.neoteach.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neoteach.model.PaymentDtls;
import com.neoteach.serviceimpl.PaymentServiceImpl;
import com.neoteach.util.CommonUtil;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;


@Controller
public class PaymentController {
	
	@Autowired
	PaymentServiceImpl paymentServiceImpl;
	
	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String saveOrderDtls(Model model, @Valid PaymentDtls paymentDtls, HttpSession session)
			throws RazorpayException {
		if(session.getAttribute("userEmailSession")!=null)
		{
		try {
			RazorpayClient razorpayClient = new RazorpayClient("rzp_test_l3EiPrTpPDjSWx", "JSXplkQajT7Jp5skVQcME7JW");
			JSONObject orderRequest = new JSONObject();
			orderRequest.put("amount", paymentDtls.getAmount());
			orderRequest.put("currency", "INR");
			orderRequest.put("receipt", "java_" + CommonUtil.generateRandomNum());
			Order order = razorpayClient.Orders.create(orderRequest);
			paymentDtls.setEmail(session.getAttribute("userEmailSession").toString());
			paymentDtls.setOrder_id(order.get("id").toString());
			paymentServiceImpl.savePaymentDetails(paymentDtls);
			System.out.println("======" + order.get("id"));
			model.addAttribute("paymentDtls", paymentDtls);
		} catch (RazorpayException e) {
			e.printStackTrace();
		}
		return "checkout1";
		}
		else
			return "login";
	}
@RequestMapping(value="/success",method = RequestMethod.POST)
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Produces(MediaType.APPLICATION_JSON)
public Response paymentSuccess(MultivaluedMap<String, String> formParams)
{
	System.out.println("From success");
	String paymentId = formParams.getFirst("razorpay_payment_id");
    String razorpaySignature = formParams.getFirst("razorpay_signature");
    String orderId = formParams.getFirst("razorpay_order_id");
    System.out.println("===="+paymentId+"orderId==="+orderId);
    JSONObject options = new JSONObject();
	
	return Response.status(Status.BAD_REQUEST).build();
}
}
