package com.neoteach.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class HomePageController{
//	@RequestMapping(value="/",method=RequestMethod.GET)
	@GetMapping(value="/")
	public String homePage()
	{
		return "home";
	}
}
