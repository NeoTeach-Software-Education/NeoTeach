package com.neoteach.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orderdetails")
public class OrderDtls {
	@Id
	@Column(name = "orderId", nullable = false, unique = true)
	private String orderId;
	@Column(name = "course_id")
	private String course_id;
	@Column(name = "email",nullable = false)
	private String email;
	@Column(name = "amount")
	private String amount;
	@Column(name = "currency")
	private String currency;
	@Column(name = "status")
	private String status;
	@Column(name = "created_at")
	private String created_at;
	@Column(name = "attempts")
	private String attempts;
	@Column(name = "courseName")
	private String courseName;
	@Column(name = "courseNumber")
	private String courseNumber;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getCourse_id() {
		return course_id;
	}
	public String getCourseNumber() {
		return courseNumber;
	}
	public void setCourseNumber(String courseNumber) {
		this.courseNumber = courseNumber;
	}
	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getAttempts() {
		return attempts;
	}
	public void setAttempts(String attempts) {
		this.attempts = attempts;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
}
