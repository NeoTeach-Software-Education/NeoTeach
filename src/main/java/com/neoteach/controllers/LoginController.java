package com.neoteach.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.serviceimpl.LoginServiceImpl;


@Controller
public class LoginController {
	@Autowired
	LoginServiceImpl loginServiceImpl;
	@RequestMapping(value="/loginpage",method=RequestMethod.GET)
	public String loginPage()
	{
		return "login";
	}
	@RequestMapping(value="/userlogin",method=RequestMethod.POST)
	public String userLogin(@RequestParam("username") String email,@RequestParam("password") String pwd,Model model)
	{
		boolean result=loginServiceImpl.creadentialAuthenticate(email,pwd);
		if(result)
		{
			return "myhome";	
		}
		else
		{
			model.addAttribute("adminloginfail", "Invalid credentials..."+email);
			return "login";	
		}
		
	}
}
