package com.neoteach.controllers;

import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.User;
import com.neoteach.serviceimpl.UserServiceImpl;


@Controller
public class LoginController {
	@Autowired
	UserServiceImpl userServiceImpl;
	@RequestMapping(value="/loginpage",method=RequestMethod.GET)
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping(value="/userlogin",method=RequestMethod.POST)
	public String userLogin(@RequestParam("username") String email,@RequestParam("password") String pwd,Model model)
	{
		User user = userServiceImpl.findByEmail(email);
		if (user == null) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
			return "login";
		}
		else if(user.getPassword().equals(pwd))
		{
			String encodedEmail = Base64.getEncoder().encodeToString(email.getBytes());
			System.out.println("Encodddd:"+encodedEmail);
			model.addAttribute("encodedEmail",encodedEmail);
			model.addAttribute("user",user);
			return "useraccount";
		}
		else 
		{
			model.addAttribute("errorMessage", "invalid password recheck and try again...!");
			return "login";
		}
		
	}
	
}
