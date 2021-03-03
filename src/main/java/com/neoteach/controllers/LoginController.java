package com.neoteach.controllers;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.tomcat.util.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.PaymentDtls;
import com.neoteach.model.User;
import com.neoteach.serviceimpl.PaymentServiceImpl;
import com.neoteach.serviceimpl.UserServiceImpl;
import com.neoteach.util.CommonUtil;

@Controller
public class LoginController {
	
	private static final Logger logger = LogManager.getLogger(LoginController.class);
	
	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	PaymentServiceImpl paymentServiceImpl;
	@Autowired
	CommonUtil commonUtil;
	/*
	 * loginPage() for landing user login page
	 * 
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		logger.info("User Entered into login page");
		return "login";
	}
	
	/*
	 * userLogin for validate a user to login
	 * @Param email--user mail id
	 * @Param pwd-- user password
	 * Model model-- to display status of action
	 * @Param session -- to maintain user details in session
	 * return-- login if user login validation failed 
	 * return--useraccount if user login validation success 
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String userLogin(@RequestParam("username") String email,
			                @RequestParam("password") String pwd,
			                Model model,
			                HttpSession session) throws Exception, SQLException
	{
		logger.info("User Entered into user login validation page");
		User user = userServiceImpl.findByEmail(email);
		if (user == null) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
			return "login";
		}
		else if(user.getPassword().equals(pwd))
		{
			/*
			 * byte v_byte[] = commonUtil.decompressBytes(user.getPhoto()); StringBuilder sb
			 * = new StringBuilder(); sb.append("data:image/jpg;base64,");
			 * sb.append(StringUtils.newStringUtf8(Base64.encodeBase64(v_byte, false)));
			 * user.setPhoto(v_byte);
			 */
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
			session.setAttribute("userEmailSession", user.getEmail());
			ArrayList<PaymentDtls> paymentDtls = paymentServiceImpl.retriveEnrolledCourses(session.getAttribute("userEmailSession").toString());
			model.addAttribute("paymentDtls", paymentDtls);
			return "useraccount";
		}
		else 
		{
			model.addAttribute("errorMessage", "invalid password recheck and try again...!");
			return "login";
		}
		
	}
	
}
