package com.neoteach.controllers;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neoteach.model.UserRegistration;
import com.neoteach.pojo.RegisterPojo;
import com.neoteach.serviceimpl.EmailServiceImpl;
import com.neoteach.serviceimpl.RegisterServiceImpl;

@Controller
public class RegisterPageController {
	@Autowired
	RegisterServiceImpl registerServiceImpl;
	@Autowired
	EmailServiceImpl emailServiceImpl;
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerUser()
	{
		return "register";
	}
//	@RequestMapping(value="/register1",method=RequestMethod.POST)
////	@PostMapping(path="/register1")
//	public String saveDtls(RegisterPojo registerPojo) throws Exception
//	{
//		registerServiceImpl.saveDtls(registerPojo);
//		return "myhome";
//	}
	
	// Process form input data
		@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
		public String processRegistrationForm(Model model, @Valid UserRegistration user, BindingResult bindingResult,HttpServletRequest request) {
					
			// Lookup user in database by e-mail
			UserRegistration userExists = registerServiceImpl.findByEmail(user.getEmail());
			
			System.out.println(userExists);
			
			if (userExists != null) {
				model.addAttribute("alreadyRegisteredMessage", "Oops!  There is already a user registered with the email provided.");
				bindingResult.reject("email");
				return "register";
			}
				
			if (bindingResult.hasErrors()) { 
				return "register"; 
			} else { // new user so we create user and send confirmation e-mail
						
				// Disable user until they click on confirmation link in email
			    user.setEnabled(false);
			      
			    // Generate random 36-character string token for confirmation link
			    user.setConfirmationToken(UUID.randomUUID().toString());     
				registerServiceImpl.saveUser(user);
					
				String appUrl = request.getScheme() + "://" + request.getServerName();
				
				SimpleMailMessage registrationEmail = new SimpleMailMessage();
				registrationEmail.setTo(user.getEmail());
				registrationEmail.setSubject("Registration Confirmation");
				registrationEmail.setText("To confirm your e-mail address, please click the link below:\n"
						+ appUrl+ "/confirm?token=" + user.getConfirmationToken());
				registrationEmail.setFrom("neoteach.education@gmail.com");
				
				emailServiceImpl.sendEmail(registrationEmail);
				
				model.addAttribute("confirmationMessage", "A confirmation e-mail has been sent to " + user.getEmail());
				return "register"; 
			}
				
		}
}
