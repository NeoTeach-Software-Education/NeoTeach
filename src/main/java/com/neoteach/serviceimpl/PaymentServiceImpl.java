package com.neoteach.serviceimpl;

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

}
