package com.neoteach.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "coursedetails")
public class Course {
	@Id
	@Column(name = "coursename", nullable = false, unique = true)
	private String coursename;
	@Column(name = "price")
	private String price;
	@Column(name = "discountprice")
	private String discountprice;
	@Column(name = "coursecode")
	private String coursecode;
	 @Column(nullable = true, length = 9216)
	    private String courseimag;
//	@Lob
//	private byte[] courseimag;
//
//	public byte[] getCourseimag() {
//		return courseimag;
//	}
//
//	public void setCourseimag(byte[] courseimag) {
//		this.courseimag = courseimag;
//	}
	 
	 

	public String getCoursename() {
		return coursename;
	}

	public String getCourseimag() {
		return courseimag;
	}

	public void setCourseimag(String courseimag) {
		this.courseimag = courseimag;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	
	public String getCoursecode() {
		return coursecode;
	}

	public void setCoursecode(String coursecode) {
		this.coursecode = coursecode;
	}

	public String getDiscountprice() {
		return discountprice;
	}

	public void setDiscountprice(String discountprice) {
		this.discountprice = discountprice;
	}
	
}
