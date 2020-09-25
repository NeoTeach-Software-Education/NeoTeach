package com.neoteach.repositories;


import javax.validation.Valid;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.PaymentDtls;
@Repository
public interface PaymentRepository extends JpaRepository<PaymentDtls, String>{

	@Valid
	PaymentDtls findPaymentByEmail(String email);

}
