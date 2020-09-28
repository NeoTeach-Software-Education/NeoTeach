package com.neoteach.controllers;


import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.PaymentDtls;
import com.neoteach.serviceimpl.PaymentServiceImpl;
import com.neoteach.util.CommonConstant;
import com.neoteach.util.CommonUtil;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@Controller
public class PaymentController {

	@Autowired
	PaymentServiceImpl paymentServiceImpl;
	/*
	 * generating order_id
	 * 
	 * @Param paymentDtls-- to handle payment details
	 * @Param session-- to handle email session 
	 * 
	 * @return for success checkout,if error login
	 */
	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String saveOrderDtls(@Valid PaymentDtls paymentDtls, HttpSession session) throws RazorpayException {
		if (session.getAttribute("userEmailSession") != null) {
			try {
				RazorpayClient razorpayClient = new RazorpayClient(CommonConstant.key_id, CommonConstant.key_secret);
				JSONObject orderRequest = new JSONObject();
				orderRequest.put("amount", paymentDtls.getAmount());
				orderRequest.put("currency", paymentDtls.getCurrency());
				orderRequest.put("receipt", "java_" + CommonUtil.generateRandomNum());
				Order order = razorpayClient.Orders.create(orderRequest);
				paymentDtls.setCourse_id(paymentDtls.getCourseName()+"_" + CommonUtil.generateRandomNum());
				paymentDtls.setCourseName(paymentDtls.getCourseName());
				paymentDtls.setCourseNumber(paymentDtls.getCourseNumber());
				paymentDtls.setEmail(session.getAttribute("userEmailSession").toString());
				paymentDtls.setOrderId(order.get("id").toString());
				paymentDtls.setPaymentStatus(CommonConstant.NO_PAYMNET_STATUS);
				paymentServiceImpl.savePaymentDetails(paymentDtls);
				session.setAttribute("order_id",order.get("id").toString());
			} catch (RazorpayException e) {
				e.printStackTrace();
			}
			return "checkout";
		} else
			return "login";
	}
	/*
	 *paymentSuccess  ---to save the payment details in local
	 * 
	 * @Param razorpay_payment_id  -- to handle payment Id
	 * @Param razorpay_order_id -- to handle razorpay_order_id 
	 * @param razorpay_signature   -- to handle razorpay_signature 
	 * 
	 * @return dashboard with validate message
	 */
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String paymentSuccess(@RequestParam("razorpay_payment_id") String razorpay_payment_id,
			                     @RequestParam("razorpay_order_id") String razorpay_order_id,
			                     @RequestParam("razorpay_signature") String razorpay_signature,
			                     Model model, 
			                     HttpSession session) {
		PaymentDtls paymentDtls = paymentServiceImpl.findByOrderId(session.getAttribute("order_id").toString());
		paymentDtls.setRazorpay_order_id(razorpay_order_id);
		paymentDtls.setRazorpay_payment_id(razorpay_payment_id);
		paymentDtls.setRazorpay_signature(razorpay_signature);
		paymentDtls.setPaymentStatus(CommonConstant.PAYMNET_STATUS);
		paymentDtls.setPaid_on(LocalDateTime.now());
		paymentServiceImpl.savePaymentDetails(paymentDtls);
		String payload = paymentDtls.getOrderId() + "|" + razorpay_payment_id;
		String generated_signature = null;
		try {
			generated_signature = CommonUtil.generateSignature(payload, CommonConstant.key_secret);
		} catch (RazorpayException e) {
			e.printStackTrace();
		}
		if (generated_signature.equals(razorpay_signature)) {
			model.addAttribute("successMessage", "Your payment has successfully completed thank you!.");
			return "redirect:/dashboard";
		} else {
			model.addAttribute("errorMessage", "Oops! the payment has failed please try again.");
			return "redirect:/dashboard";
		}

	}
}
