package com.neoteach.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
	public String userProfile() {
		return "profileUpdate";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String updateUserProfile() {
		
		
		
		return "profileUpdate";
    }
	
	@RequestMapping(value = "/changepwd", method = RequestMethod.GET)
	public String pwdChange() {
		return "changePwd";
    }
	@RequestMapping(value = "/changepwd", method = RequestMethod.POST)
	public String pwdChangeComplete(Model model, @RequestParam Map<String, String> requestParams) {
		
		
		
		
		
		
		return "changePwd";
    }
}
