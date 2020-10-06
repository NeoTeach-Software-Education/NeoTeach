package com.neoteach.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.neoteach.model.OrderDtls;
@Transactional
@Repository
public interface OrderRepository extends JpaRepository<OrderDtls, String>{
	@Modifying
	@Query(value="update orderdetails set status = :paymentStatus where order_id = :orderId" ,nativeQuery = true)
	void updateOrderDtls(String paymentStatus, String orderId);
	@Modifying
	@Query(value="delete from orderdetails where status !='captured'" ,nativeQuery = true)
	void deleteNotPaidOrders();

}
