package com.neoteach.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//import org.hibernate.validator.constraints.Email;
//import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.data.annotation.Transient;

@Entity
@Table(name = "user")
public class UserRegistration {
	@Id
	@Column(name = "email", nullable = false, unique = true)
//	@Email(message = "Please provide a valid e-mail")
//	@NotEmpty(message = "Please provide an e-mail")
	private String email;
	@Column(name = "password")
	@Transient
	private String password;
	@Column(name = "fullName")
//	@NotEmpty(message = "Please provide your full name")
	private String fullName;
	@Column(name="phone")
//	@NotEmpty(message = "Please provide your Mobile number")
	private String phone;
	@Column(name = "enabled")
	private boolean enabled;
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getConfirmationToken() {
		return confirmationToken;
	}
	public void setConfirmationToken(String confirmationToken) {
		this.confirmationToken = confirmationToken;
	}
	@Column(name = "confirmation_token")
	private String confirmationToken;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	

}
