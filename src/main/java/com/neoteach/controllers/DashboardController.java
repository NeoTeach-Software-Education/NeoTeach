package com.neoteach.controllers;

import java.util.Base64;
import java.util.Map;

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
	public String dashboardPage() {
		return "useraccount";
    }
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout() {
		return "login";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
	public String userProfile() {
		return "profileUpdate";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String updateUserProfile() {
		
		
		
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
		
		System.out.println("decodedEmail===="+decodedEmail);
		System.out.println("oldpwd===="+oldpwd);
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
//			String encodedemail = Base64.getEncoder().encodeToString(email.getBytes());
//			System.out.println("Encodddd:"+encodedemail);
			model.addAttribute("encodedEmail",encodedEmail);
//			model.addAttribute("user",user);
			
			model.addAttribute("errorMessage", "Oops!  The old password is invalid.");
			return "changePwd";
		}
		
    }
}
