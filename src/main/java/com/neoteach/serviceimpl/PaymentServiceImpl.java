package com.neoteach.serviceimpl;


import java.util.ArrayList;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.model.OrderDtls;
import com.neoteach.model.PaymentDtls;
import com.neoteach.repositories.OrderRepository;
import com.neoteach.repositories.PaymentRepository;

@Service(value = "PaymentServiceImpl")
public class PaymentServiceImpl {
	
	@Autowired
	PaymentRepository paymentRepository;
	@Autowired
	OrderRepository orderRepository;
	public void savePaymentDetails(@Valid PaymentDtls paymentDtls) {
		paymentRepository.save(paymentDtls);
		
	}

//	public PaymentDtls findPaymentByEmail(String email) {
//		return paymentRepository.findPaymentByEmail(email);
//	}

	public PaymentDtls findByOrderId(String order_id) {
		return paymentRepository.findByOrderId(order_id);
	}

	public String userPaymentStatus(String email, String javaCourse) {
		return paymentRepository.userPaymentStatus(email,javaCourse);
	}

	public ArrayList<PaymentDtls> retriveEnrolledCourses(String email) {
		return paymentRepository.retriveEnrolledCourses(email);
	}

	public void saveOrderDetails(@Valid OrderDtls orderDtls) {
		orderRepository.save(orderDtls);		
	}

	public void updateOrderStatus(String paymentStatus, String orderId) {
		orderRepository.updateOrderDtls(paymentStatus,orderId);		
	}

	public void deleteNotPaidOrders() {
		orderRepository.deleteNotPaidOrders();
	}

}
