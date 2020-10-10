package com.neoteach.repositories;


import java.util.ArrayList;
import javax.validation.Valid;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.neoteach.model.PaymentDtls;
@Repository
public interface PaymentRepository extends JpaRepository<PaymentDtls, String>{

	@Valid
//	PaymentDtls findPaymentByEmail(String email);

	PaymentDtls findByOrderId(String order_id);

	// custom query return a paymentStatus
    @Query(value="select payment_status from Payment pay where pay.email = :email and pay.course_name =:javaCourse",nativeQuery = true)
	String userPaymentStatus(String email, String javaCourse);

 // custom query return a enrolled courses list
    @Query(value="select * from Payment pay where pay.email = :email and pay.payment_status ='YES' order by paid_on DESC",nativeQuery = true)
	ArrayList<PaymentDtls> retriveEnrolledCourses(String email);
}
