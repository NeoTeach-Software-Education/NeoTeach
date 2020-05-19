package com.neoteach.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neoteach.pojo.RegisterPojo;
import com.neoteach.serviceimpl.RegisterServiceImpl;

@Controller
public class RegisterPageController {
	@Autowired
	RegisterServiceImpl registerServiceImpl;
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerUser()
	{
		return "register";
	}
	@RequestMapping(value="/register1",method=RequestMethod.POST)
//	@PostMapping(path="/register1")
	public String saveDtls(RegisterPojo registerPojo) throws Exception
	{
		registerServiceImpl.saveDtls(registerPojo);
		return "myhome";
	}
}
