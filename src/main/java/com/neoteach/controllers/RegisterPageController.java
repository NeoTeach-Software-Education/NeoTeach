package com.neoteach.controllers;

import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.User;
import com.neoteach.serviceimpl.EmailServiceImpl;
import com.neoteach.serviceimpl.UserServiceImpl;

@Controller
public class RegisterPageController {
	private static final Logger logger = LogManager.getLogger(RegisterPageController.class);
	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	EmailServiceImpl emailServiceImpl;

//	@Autowired
//	BCryptPasswordEncoder bCryptPasswordEncoder;
	/*
	 * display registration form
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerUser() {
		logger.info("Entered into registerUser");
		return "register";
	}

	/*
	 * Registration process Model model-- to display status of action
	 * 
	 * @Param user-- for user data handling
	 * 
	 * @Param bindingResult -- to handle bindingResult
	 * 
	 * @Param request-- for handling request params
	 */
	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String processRegistrationForm(Model model, @Valid User user, BindingResult bindingResult,
			HttpServletRequest request) {
		logger.info("Entered into processRegistrationForm");
		// Lookup user in database by e-mail
		User userExists = userServiceImpl.findByEmail(user.getEmail());

		if (userExists != null) {
			model.addAttribute("alreadyRegisteredMessage",
					"Oops!  There is already a user registered with the email provided.");
			bindingResult.reject("email");
			return "register";
		}

		if (bindingResult.hasErrors()) {
			return "register";
		} else {
			// new user so we create user and send confirmation e-mail

			// Disable user until they click on confirmation link in email
			user.setEnabled(false);

			// Generate random 36-character string token for confirmation link
			user.setConfirmationToken(UUID.randomUUID().toString());
			userServiceImpl.saveUser(user);

			String appUrl = request.getScheme() + "://" + request.getServerName();

			SimpleMailMessage registrationEmail = new SimpleMailMessage();
			registrationEmail.setTo(user.getEmail());
			registrationEmail.setSubject("Registration Confirmation");
			registrationEmail.setText("To confirm your e-mail address, please click the link below:\n" + appUrl
					+ ":8080/confirm?token=" + user.getConfirmationToken());
			registrationEmail.setFrom("neoteach.education@gmail.com");

			emailServiceImpl.sendEmail(registrationEmail);

			model.addAttribute("confirmationMessage", "A confirmation e-mail has been sent to " + user.getEmail());
			return "register";
		}

	}

	/*
	 * Process confirmation link
	 * 
	 * @Param token-- user token
	 * 
	 * Model model-- to display status of action
	 */
	@RequestMapping(value = "/confirm", method = RequestMethod.GET)
	public String showConfirmationPage(Model model, @RequestParam("token") String token) {
		logger.info("Entered into showConfirmationPage");
		User user = userServiceImpl.findByConfirmationToken(token);
		if (user == null) { // No token found in DB
			model.addAttribute("invalidToken", "Oops!  This is an invalid confirmation link.");
		} else { // Token found
			model.addAttribute("confirmationToken", user.getConfirmationToken());
		}

		return "confirm";
	}

	/*
	 * Process confirmation link
	 * 
	 * @Param requestParams-- to handle new password
	 * 
	 * Model model-- to display status of action
	 */
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public String processConfirmationForm(Model model, @RequestParam Map requestParams) {
		logger.info("Entered into processConfirmationForm");
		// Find the user associated with the reset token
		User user = userServiceImpl.findByConfirmationToken((String) requestParams.get("token"));
		// Set new password
		// user.setPassword(bCryptPasswordEncoder.encode((CharSequence)
		// requestParams.get("password")));
		user.setPassword((String) requestParams.get("password"));
		// Set user to enabled
		user.setEnabled(true);
		// Save user
		userServiceImpl.saveUser(user);
		model.addAttribute("successMessage", "Your password has been set!");
		return "login";
	}
}
