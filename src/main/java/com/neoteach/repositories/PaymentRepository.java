package com.neoteach.repositories;


import javax.validation.Valid;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.PaymentDtls;
import com.neoteach.model.User;
@Repository
public interface PaymentRepository extends JpaRepository<User, String>{

	Object save(@Valid PaymentDtls paymentDtls);


}
