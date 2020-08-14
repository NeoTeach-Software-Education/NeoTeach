package com.neoteach.controllers;

import java.util.Base64;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.User;
import com.neoteach.serviceimpl.UserServiceImpl;

@Controller
public class DashboardController {
	@Autowired
	UserServiceImpl userServiceImpl;
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboardPage(Model model, @RequestParam("id") String encodedEmail) {
		model.addAttribute("encodedEmail",encodedEmail);
		return "useraccount";
    }
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout() {
		return "login";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
	public String userProfile(Model model, @RequestParam("id") String encodedEmail) {
		model.addAttribute("encodedEmail",encodedEmail);
//		decode into String from encoded format 
	      byte[] emailByte = Base64.getDecoder().decode(encodedEmail); 
	      String decodedEmail = new String(emailByte);
		  User user = userServiceImpl.findByEmail(decodedEmail);
		  model.addAttribute("user",user);
		return "profileUpdate";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String updateUserProfile(Model model,@RequestParam("userEmail") String encodedEmail,HttpServletRequest request) {
		
//		decode into String from encoded format 
	      byte[] emailByte = Base64.getDecoder().decode(encodedEmail); 
	      String decodedEmail = new String(emailByte);
			User user = userServiceImpl.findByEmail(decodedEmail);
			user.setQualification(request.getParameter("qualification"));
			user.setAddress(request.getParameter("address"));
			user.setCity(request.getParameter("city"));
			user.setPin(request.getParameter("pin"));
			user.setCountryId(request.getParameter("countryId"));
			user.setAboutMe(request.getParameter("aboutMe"));
		userServiceImpl.saveUser(user);
		model.addAttribute("user",user);
		model.addAttribute("successMessage", "You have successfully updated your profile.");
		return "profileUpdate";
    }
	
	@RequestMapping(value = "/changepwd", method = RequestMethod.GET)
	public String pwdChange(Model model, @RequestParam("id") String encodedEmail) {
		model.addAttribute("encodedEmail",encodedEmail);
		return "changePwd";
    }
	@RequestMapping(value = "/changepwd", method = RequestMethod.POST)
	public String pwdChangeComplete(Model model, @RequestParam("userEmail") String encodedEmail,@RequestParam("old_password") String oldpwd,@RequestParam("new_password") String newpwd) {
//	decode into String from encoded format 
      byte[] emailByte = Base64.getDecoder().decode(encodedEmail); 
      String decodedEmail = new String(emailByte);
		User user = userServiceImpl.findByEmail(decodedEmail);
		if (oldpwd.equals(user.getPassword())) {
			user.setPassword(newpwd);
			// Save user
			userServiceImpl.saveUser(user);
			model.addAttribute("successMessage", "You have successfully reset your password.  You may now login.");
			return "login";
		}
		else 
		{
			model.addAttribute("encodedEmail",encodedEmail);
			model.addAttribute("errorMessage", "Oops!  The old password is invalid.");
			return "changePwd";
		}
		
    }
}
