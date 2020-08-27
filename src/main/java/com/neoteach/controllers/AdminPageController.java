package com.neoteach.controllers;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.Admin;
import com.neoteach.serviceimpl.AdminServiceImpl;

@Controller
public class AdminPageController {
	private static final Logger logger = LogManager.getLogger(AdminPageController.class);
	@Autowired
	AdminServiceImpl adminservice;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage() {
		logger.info("Entered into Admin login page");
		return "adminlogin";
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String adminLogin(@RequestParam("username") String email, @RequestParam("password") String password,
			Model model,HttpSession session) {
		logger.info("Entered into Admin home page");
		Admin admin = adminservice.findByEmail(email);
		if (admin == null) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
			return "adminlogin";
		}
		else if(admin.getPassword().equals(password))
		{
			logger.info("Admin password matched");
//			session.setAttribute("adminSession", admin);
//			session.setAttribute("adminEmailSession", admin.getEmail());
			return "adminhome";
		}
		else 
		{
			model.addAttribute("errorMessage", "invalid password recheck and try again...!");
			return "adminlogin";
		}

	}

}
