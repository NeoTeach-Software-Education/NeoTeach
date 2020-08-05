package com.neoteach.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {
	
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboardPage() {
		return "useraccount";
    }
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout() {
		return "login";
    }
}
