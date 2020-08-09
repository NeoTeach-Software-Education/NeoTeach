package com.neoteach.controllers;

import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.daoimpl.AdminDaoImpl;
import com.neoteach.serviceimpl.EmailServiceImpl;
@Controller
public class HomePageController{
	@Autowired
	AdminDaoImpl adminDaoImpl;
	@Autowired
	private EmailServiceImpl emailServiceImpl;
//	@RequestMapping(value="/",method=RequestMethod.GET)
	@GetMapping(value="/")
	public String homePage()
	{
		adminDaoImpl.setMaxPacketSize();
		return "home";
	}
	@RequestMapping(value = "/classenqire", method = RequestMethod.GET)
	public String enqireClass() {
		return "classRoomEnquire";
    }
	@RequestMapping(value = "/classenqire", method = RequestMethod.POST)
	public String enqireClassTraining(Model model,HttpServletRequest request) {
		
//			String nnn=request.getParameter("fullName");
			// Email message
			SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
			passwordResetEmail.setFrom(request.getParameter("email"));
			passwordResetEmail.setTo("sri.javatrainer@gmail.com");
			passwordResetEmail.setSubject("New Enqiry");
			passwordResetEmail.setText("New enquiry came from:\nName:\t" + request.getParameter("fullName")+"\nPhone:\t"+request.getParameter("phone")+"\nSubject:\t"+request.getParameter("course")+"\nQualification:\t"+request.getParameter("qualification")+"\nEmail:\t:"+request.getParameter("email"));
			
			emailServiceImpl.sendEmail(passwordResetEmail);

			// Add success message to view
			model.addAttribute("successMessage", "Your details submited successfull,you will get a call from Institute very soon");
		
		return "classRoomEnquire";
    }
	
}
