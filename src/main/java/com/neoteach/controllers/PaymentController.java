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

import com.neoteach.model.OrderDtls;
import com.neoteach.model.PaymentDtls;
import com.neoteach.serviceimpl.PaymentServiceImpl;
import com.neoteach.util.CommonConstant;
import com.neoteach.util.CommonUtil;
import com.razorpay.Order;
import com.razorpay.Payment;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@Controller
public class PaymentController {

	@Autowired
	PaymentServiceImpl paymentServiceImpl;
	RazorpayClient razorpayClient;
	/*
	 * generating order_id
	 * 
	 * @Param paymentDtls-- to handle payment details
	 * @Param session-- to handle email session
	 * @return for success checkout,if error login
	 */
	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String saveOrderDtls(@Valid OrderDtls orderDtls, HttpSession session){
		if (session.getAttribute("userEmailSession") != null) {
			try {
				razorpayClient = new RazorpayClient(CommonConstant.key_id, CommonConstant.key_secret);
				JSONObject orderRequest = new JSONObject();
				orderRequest.put("amount", orderDtls.getAmount());
				orderRequest.put("currency", orderDtls.getCurrency());
				orderRequest.put("receipt", orderDtls.getCourseName() + "_" + CommonUtil.generateRandomNum());
				Order order = razorpayClient.Orders.create(orderRequest);
				orderDtls.setCourse_id(orderDtls.getCourseName() + "_" + CommonUtil.generateRandomNum());
				orderDtls.setCourseName(orderDtls.getCourseName());
				orderDtls.setCourseNumber(orderDtls.getCourseNumber());
				orderDtls.setCreated_at(order.get("created_at").toString());
				orderDtls.setStatus(order.get("status").toString());
				orderDtls.setAttempts(order.get("attempts").toString());
				orderDtls.setEmail(session.getAttribute("userEmailSession").toString());
				orderDtls.setOrderId(order.get("id").toString());
				paymentServiceImpl.saveOrderDetails(orderDtls);
				session.setAttribute("order_id", order.get("id").toString());
				session.setAttribute("course_id", orderDtls.getCourse_id());
				session.setAttribute("course_name", orderDtls.getCourseName());
				session.setAttribute("course_number", orderDtls.getCourseNumber());
			} catch (RazorpayException e) {
				e.printStackTrace();
			}
			return "checkout";
		} else
			return "login";
	}

	/*
	 * paymentSuccess ---to save the payment details in local
	 * 
	 * @Param razorpay_payment_id -- to handle payment Id
	 * 
	 * @Param razorpay_order_id -- to handle razorpay_order_id
	 * 
	 * @param razorpay_signature -- to handle razorpay_signature
	 * 
	 * @return dashboard with validate message
	 */
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String paymentSuccess(@RequestParam("razorpay_payment_id") String razorpay_payment_id,
			@RequestParam("razorpay_order_id") String razorpay_order_id,
			@RequestParam("razorpay_signature") String razorpay_signature, Model model, HttpSession session,
			@Valid PaymentDtls paymentDtls) {
//		OrderDtls orderDtls = paymentServiceImpl.findByOrderId(session.getAttribute("order_id").toString());
		try {
			Payment payment = razorpayClient.Payments.fetch(razorpay_payment_id);
//			System.out.println("orderDtls"+session.getAttribute("orderDtls.courseName").toString());
			paymentDtls.setEmail(session.getAttribute("userEmailSession").toString());
			paymentDtls.setAmount(payment.get("amount").toString());
			paymentDtls.setCurrency(payment.get("currency").toString());
			paymentDtls.setMethod(payment.get("method").toString());
			paymentDtls.setBank(payment.get("bank").toString());
			paymentDtls.setCard_id(payment.get("card_id").toString());
			paymentDtls.setBank_transaction_id(payment.get("acquirer_data").toString());
			paymentDtls.setStatus(payment.get("status").toString());
			paymentDtls.setRazorpay_order_id(razorpay_order_id);
			paymentDtls.setRazorpay_payment_id(razorpay_payment_id);
			paymentDtls.setRazorpay_signature(razorpay_signature);
			paymentDtls.setOrderId(session.getAttribute("order_id").toString());
			paymentDtls.setPaymentStatus(CommonConstant.PAYMNET_STATUS);
			paymentDtls.setPaid_on(LocalDateTime.now());
			paymentDtls.setCourse_id(session.getAttribute("course_id").toString());
			paymentDtls.setCourseName(session.getAttribute("course_name").toString());
			paymentDtls.setCourseNumber(session.getAttribute("course_number").toString());
			paymentServiceImpl.savePaymentDetails(paymentDtls);
			paymentServiceImpl.updateOrderStatus(payment.get("status").toString(),session.getAttribute("order_id").toString());
		} catch (RazorpayException e) {
			System.out.println(e.getMessage());
		}
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
