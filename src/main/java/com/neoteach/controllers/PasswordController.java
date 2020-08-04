package com.neoteach.controllers;

import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.neoteach.model.User;
import com.neoteach.serviceimpl.EmailServiceImpl;
import com.neoteach.serviceimpl.UserServiceImpl;


@Controller
public class PasswordController {

//	@Autowired
//	private registerServiceImpl registerServiceImpl;
	@Autowired
	UserServiceImpl registerServiceImpl;
	@Autowired
	private EmailServiceImpl emailServiceImpl;

//	@Autowired
//	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	// Display forgotPassword page
	@RequestMapping(value = "/forgot", method = RequestMethod.GET)
	public String displayForgotPasswordPage() {
		return "forgotPassword";
    }
    
    // Process form submission from forgotPassword page
	@RequestMapping(value = "/forgot", method = RequestMethod.POST)
	public String processForgotPasswordForm(Model model, @RequestParam("email") String userEmail, HttpServletRequest request) {

		// Lookup user in database by e-mail
		Optional<User> optional = registerServiceImpl.findUserByEmail(userEmail);

		if (!optional.isPresent()) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
		} else {
			
			// Generate random 36-character string token for reset password 
			User user = optional.get();
			user.setResetToken(UUID.randomUUID().toString());

			// Save token to database
			registerServiceImpl.saveUser(user);

			String appUrl = request.getScheme() + "://" + request.getServerName();
			
			// Email message
			SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
			passwordResetEmail.setFrom("support@demo.com");
			passwordResetEmail.setTo(user.getEmail());
			passwordResetEmail.setSubject("Password Reset Request");
			passwordResetEmail.setText("To reset your password, click the link below:\n" + appUrl
					+ ":8080/reset?token=" + user.getResetToken());
			
			emailServiceImpl.sendEmail(passwordResetEmail);

			// Add success message to view
			model.addAttribute("successMessage", "A password reset link has been sent to " + userEmail);
		}

		return "forgotPassword";

	}

	// Display form to reset password
	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	public String displayResetPasswordPage(Model model, @RequestParam("token") String token) {
		
		Optional<User> user = registerServiceImpl.findUserByResetToken(token);

		if (user.isPresent()) { // Token found in DB
			model.addAttribute("resetToken", token);
		} else { // Token not found in DB
			model.addAttribute("errorMessage", "Oops!  This is an invalid password reset link.");
		}

		return "resetPassword";
	}

	// Process reset password form
	@RequestMapping(value = "/reset", method = RequestMethod.POST)
	public String setNewPassword(Model model, @RequestParam Map<String, String> requestParams, RedirectAttributes redir) {

		// Find the user associated with the reset token
		Optional<User> user = registerServiceImpl.findUserByResetToken(requestParams.get("token"));

		// This should always be non-null but we check just in case
		if (user.isPresent()) {
			
			User resetUser = user.get(); 
            
			// Set new password    
//            resetUser.setPassword(bCryptPasswordEncoder.encode(requestParams.get("password")));
			resetUser.setPassword(requestParams.get("password"));
			// Set the reset token to null so it cannot be used again
			resetUser.setResetToken(null);

			// Save user
			registerServiceImpl.saveUser(resetUser);

			// In order to set a model attribute on a redirect, we must use
			// RedirectAttributes
			redir.addFlashAttribute("successMessage", "You have successfully reset your password.  You may now login.");

//			model.setViewName("redirect:login");
			return "redirect:loginpage";
			
		} else {
			model.addAttribute("errorMessage", "Oops!  This is an invalid password reset link.");
//			model.setViewName("resetPassword");	
			return "resetPassword";
		}
		
//		return "redirect:loginpage";
   }
   
    // Going to reset page without a token redirects to login page
	@ExceptionHandler(MissingServletRequestParameterException.class)
	public String handleMissingParams(MissingServletRequestParameterException ex) {
		return "redirect:loginpage";
	}
}