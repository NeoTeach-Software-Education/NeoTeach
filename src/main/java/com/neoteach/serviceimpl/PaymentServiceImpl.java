package com.neoteach.serviceimpl;


import java.util.ArrayList;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.model.PaymentDtls;
import com.neoteach.repositories.PaymentRepository;

@Service(value = "PaymentServiceImpl")
public class PaymentServiceImpl {
	
	@Autowired
	PaymentRepository paymentRepository;

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

	public Map<String, String> retriveEnrolledCourses(String email) {
		return paymentRepository.retriveEnrolledCourses(email);
	}

}
