package com.neoteach.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.neoteach.daoimpl.RegisterDaoImpl;
@Controller
public class HomePageController{
	
	@Autowired
	private RegisterDaoImpl registerDaoImpl;
//	@RequestMapping(value="/",method=RequestMethod.GET)
	@GetMapping(value="/")
	public String homePage()
	{
		registerDaoImpl.setMaxPacketSize();
		return "home";
	}
}
