package com.neoteach.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Payment")
public class PaymentDtls {
	@Id
	@Column(name = "email", nullable = false, unique = true)
	private String email;
	@Column(name = "order_id")
	private String order_id;
	@Column(name = "amount")
	private String amount;
	@Column(name = "razorpay_payment_id")
	private String razorpay_payment_id;
	@Column(name = "razorpay_order_id")
	private String razorpay_order_id;
	@Column(name = "razorpay_signature")
	private String razorpay_signature;
	@Column(name = "currency")
	private String currency;
	@Column(name = "paymentStatus")
	private String paymentStatus;
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getRazorpay_payment_id() {
		return razorpay_payment_id;
	}
	public void setRazorpay_payment_id(String razorpay_payment_id) {
		this.razorpay_payment_id = razorpay_payment_id;
	}
	public String getRazorpay_order_id() {
		return razorpay_order_id;
	}
	public void setRazorpay_order_id(String razorpay_order_id) {
		this.razorpay_order_id = razorpay_order_id;
	}
	public String getRazorpay_signature() {
		return razorpay_signature;
	}
	public void setRazorpay_signature(String razorpay_signature) {
		this.razorpay_signature = razorpay_signature;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}

}
