package com.neoteach.controllers;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neoteach.daoimpl.AdminDaoImpl;
import com.neoteach.serviceimpl.EmailServiceImpl;
import com.neoteach.serviceimpl.PaymentServiceImpl;

@Controller
public class HomePageController {
	private static final Logger logger = LogManager.getLogger(HomePageController.class);
	@Autowired
	AdminDaoImpl adminDaoImpl;
	@Autowired
	private EmailServiceImpl emailServiceImpl;
	@Autowired
	PaymentServiceImpl paymentServiceImpl;

	@GetMapping(value = "/")
	public String homePage() {
		logger.info("Entered into NeoTeach Home page");
		adminDaoImpl.setMaxPacketSize();
		paymentServiceImpl.deleteNotPaidOrders();
		return "home";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String aboutPage() {
		logger.info("Entered into about page");
		return "about";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage() {
		logger.info("Entered into contact page");
		return "contact";
	}

	@RequestMapping(value = "/teachers", method = RequestMethod.GET)
	public String teachersPage() {
		logger.info("Entered into teacher page");
		return "teachers";
	}

	@RequestMapping(value = "/classenqire", method = RequestMethod.GET)
	public String enqireClass() {
		logger.info("Entered into enqire landing page");
		return "classRoomEnquire";
	}

	/*
	 * enqireClassTraining to get new course enquire mail Model model-- to display
	 * status of action return--classRoomEnquire page with success msg if sent mail
	 */
	@RequestMapping(value = "/classenqire", method = RequestMethod.POST)
	public String enqireClassTraining(Model model, HttpServletRequest request) {

		try {
			logger.info("Entered into enqireClassTraining");
			// Email message
			SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
			passwordResetEmail.setTo("sri.javatrainer@gmail.com");
			passwordResetEmail.setSubject("New Enqiry");
			passwordResetEmail.setText("New enquiry came from:\nName:\t" + request.getParameter("fullName")
					+ "\nPhone:\t" + request.getParameter("phone") + "\nSubject:\t" + request.getParameter("course")
					+ "\nQualification:\t" + request.getParameter("qualification") + "\nEmail:\t:"
					+ request.getParameter("email"));
			emailServiceImpl.sendEmail(passwordResetEmail);
			// Add success message to view
			model.addAttribute("successMessage",
					"Your details submited successfull,you will get a call from Institute very soon");
		} catch (Exception e) {
			logger.debug("Exception Occured while recieve enquiry class room training the " + "HomePage Action :: "
					+ e.getMessage());
		}
		return "classRoomEnquire";
	}

}
