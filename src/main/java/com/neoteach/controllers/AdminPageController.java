package com.neoteach.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.serviceimpl.AdminServiceImpl;

@Controller
public class AdminPageController {
	@Autowired
	AdminServiceImpl adminservice;
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String adminPage()
	{
		return "adminlogin";
	}
	@RequestMapping(value="/adminsignup",method=RequestMethod.POST)
	public String adminLogin(@RequestParam("username") String email,@RequestParam("password") String pwd)
	{
		System.out.println("email:"+email);
		boolean result=adminservice.creadentialAuthenticate(email,pwd);
		if(result)
		{
			return "adminhome";	
		}
		else
		{
			return "adminlogin";	
		}
		
	}
}
