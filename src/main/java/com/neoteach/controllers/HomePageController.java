package com.neoteach.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.neoteach.daoimpl.AdminDaoImpl;
import com.neoteach.serviceimpl.AdminServiceImpl;
@Controller
public class HomePageController{
	@Autowired
	AdminDaoImpl adminDaoImpl;
//	@RequestMapping(value="/",method=RequestMethod.GET)
	@GetMapping(value="/")
	public String homePage()
	{
		adminDaoImpl.setMaxPacketSize();
		return "home";
	}
}
