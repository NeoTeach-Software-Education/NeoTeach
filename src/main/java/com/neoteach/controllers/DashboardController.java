package com.neoteach.controllers;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.neoteach.model.PaymentDtls;
import com.neoteach.model.User;
import com.neoteach.serviceimpl.PaymentServiceImpl;
import com.neoteach.serviceimpl.UserServiceImpl;
import com.neoteach.util.CommonUtil;

@Controller
public class DashboardController {
	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	PaymentServiceImpl paymentServiceImpl;
	@Autowired
	CommonUtil commonUtil;
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboardPage(Model model,HttpSession session) {
//		String email=session.getAttribute("userEmailSession").toString();
		ArrayList<PaymentDtls> paymentDtls = paymentServiceImpl.retriveEnrolledCourses(session.getAttribute("userEmailSession").toString());
		model.addAttribute("paymentDtls", paymentDtls);
		return "useraccount";
    }
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpServletRequest request) {
		HttpSession session=request.getSession();  
	    session.invalidate();  
	    return "redirect:/login";
//		return "login";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
	public String userProfile(Model model,HttpSession session) {
		return "profileUpdate";
    }
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String updateUserProfile(Model model,HttpSession session,HttpServletRequest request,@RequestParam("photo") MultipartFile file) throws Exception {
		
		User user = userServiceImpl.findByEmail(session.getAttribute("userEmailSession").toString());
			user.setQualification(request.getParameter("qualification"));
			user.setAddress(request.getParameter("address"));
			user.setCity(request.getParameter("city"));
			user.setPin(request.getParameter("pin"));
			user.setCountryId(request.getParameter("countryId"));
			user.setAbout_me(request.getParameter("aboutMe"));
			user.setPhone(request.getParameter("phone"));
			user.setCreated_on(LocalDateTime.now());
			
			user.setPhoto(commonUtil.compressBytes(file.getBytes()));
		userServiceImpl.saveUser(user);
		user = userServiceImpl.findByEmail(session.getAttribute("userEmailSession").toString());
		if(user.getPhoto()!=null)
		{
			byte v_byte[] = commonUtil.decompressBytes(user.getPhoto());
			Blob blob = new SerialBlob(v_byte);
			
            
            InputStream inputStream = blob.getBinaryStream();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
             
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);                  
            }
             
            byte[] imageBytes = outputStream.toByteArray();
            String base64Image = Base64.encodeBase64String(imageBytes);
             
             
            inputStream.close();
            outputStream.close();
			

			user.setBase64Image(base64Image);
		}
		
		session.setAttribute("userSession", user);
		model.addAttribute("successMessage", "You have successfully updated your profile.");
		return "profileUpdate";
    }
	
	@RequestMapping(value = "/changepwd", method = RequestMethod.GET)
	public String pwdChange(Model model,HttpSession session) {
		return "changePwd";
    }
	@RequestMapping(value = "/changepwd", method = RequestMethod.POST)
	public String pwdChangeComplete(Model model,@RequestParam("old_password") String oldpwd,@RequestParam("new_password") String newpwd,HttpSession session) {
		User user = userServiceImpl.findByEmail(session.getAttribute("userEmailSession").toString());
		if (oldpwd.equals(user.getPassword())) {
			user.setPassword(newpwd);
			// Save user
			userServiceImpl.saveUser(user);
			model.addAttribute("successMessage", "You have successfully reset your password.  You may now login.");
			return "login";
		}
		else 
		{
			model.addAttribute("errorMessage", "Oops!  The old password is invalid.");
			return "changePwd";
		}
		
    }
	@RequestMapping(value = "/enrolledCourses", method = RequestMethod.GET)
	public String retriveEnrolledCourses(HttpSession session,Model model) {
		ArrayList<PaymentDtls> paymentDtls = paymentServiceImpl.retriveEnrolledCourses(session.getAttribute("userEmailSession").toString());
		model.addAttribute("paymentDtls", paymentDtls);
		return "enrolledcourses";
    }
	@RequestMapping(value = "/purchaseHistory", method = RequestMethod.GET)
	public String retrivepurchaseHistory(HttpSession session,Model model) {
		ArrayList<PaymentDtls> paymentDtls = paymentServiceImpl.retriveEnrolledCourses(session.getAttribute("userEmailSession").toString());
		session.setAttribute("purchaseHistory", paymentDtls);
//		model.addAttribute("purchaseHistory", paymentDtls);
		return "purchaseHistory";
    }
	@RequestMapping(value = "/purchaseDtls", method = RequestMethod.GET)
	public String purchaseHistoryPage(Model model,@RequestParam("orderId") String orderId) {
		PaymentDtls paymentDtls=paymentServiceImpl.findByOrderId(orderId);
		model.addAttribute("purchaseDetails", paymentDtls);
		return "purchaseDetails";
    }
}
