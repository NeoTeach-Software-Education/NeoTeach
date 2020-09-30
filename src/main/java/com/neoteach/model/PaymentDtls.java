package com.neoteach.model;

import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Payment")
public class PaymentDtls {
	@Id
	@Column(name = "orderId", nullable = false, unique = true)
	private String orderId;
	@Column(name = "course_id")
	private String course_id;
	@Column(name = "email", nullable = false)
	private String email;
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
	@Column(name = "paid_on")
	private LocalDateTime paid_on;
	@Column(name = "courseName")
	private String courseName;
	@Column(name = "status")
	private String status;
	@Column(name = "bank")
	private String bank;
	@Column(name = "bank_transaction_id")
	private String bank_transaction_id;
	@Column(name = "card_id")
	private String card_id;
	
	
	public String getBank_transaction_id() {
		return bank_transaction_id;
	}

	public void setBank_transaction_id(String bank_transaction_id) {
		this.bank_transaction_id = bank_transaction_id;
	}

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}
	
	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	@Column(name = "courseNumber")
	private String courseNumber;
	@Column(name = "method")
	private String method;
	
	public String getCourseNumber() {
		return courseNumber;
	}

	public void setCourseNumber(String courseNumber) {
		this.courseNumber = courseNumber;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public LocalDateTime getPaid_on() {
		return paid_on;
	}

	public void setPaid_on(LocalDateTime paid_on) {
		this.paid_on = paid_on;
	}

	public String getCourse_id() {
		return course_id;
	}

	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}
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

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
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
