package com.neoteach.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.neoteach.model.Admin;
import com.neoteach.model.VideoFile;
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
			Model model, HttpSession session) {
		logger.info("Entered into Admin home page");
		Admin admin = adminservice.findByEmail(email);
		if (admin == null) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
			return "adminlogin";
		} else if (admin.getPassword().equals(password)) {
			logger.info("Admin password matched");
			ArrayList<String> allcourses = adminservice.uploadedCourseList();
			session.setAttribute("adminSession", admin);
			session.setAttribute("adminEmailSession", admin.getEmail());
			model.addAttribute("allcourses", allcourses);
			return "admin_dashboard";
		} else {
			model.addAttribute("errorMessage", "invalid password recheck and try again...!");
			return "adminlogin";
		}

	}

	@RequestMapping(value = "/uploadVideos", method = RequestMethod.GET)
	public String uploadVideosPage() {
		logger.info("Entered uploadVideosPage");
		return "upload_videos";
	}

	@RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
	public String adminDashboard(Model model) {
		logger.info("Entered adminDashboard");
		ArrayList<String> allcourses = adminservice.uploadedCourseList();
		model.addAttribute("allcourses", allcourses);
		return "admin_dashboard";
	}

	@RequestMapping(value = "/adminLogout", method = RequestMethod.GET)
	public String adminLogout(HttpServletRequest request) {
		logger.info("Entered adminLogout");
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/admin";
//		return "login";
	}

	@RequestMapping(value = "/changeAdminPwd", method = RequestMethod.GET)
	public String pwdChange(Model model, HttpSession session) {
		return "change_admin_pwd";
	}

	@RequestMapping(value = "/changeAdminPwd", method = RequestMethod.POST)
	public String adminPwdChangeComplete(Model model, @RequestParam("old_password") String oldpwd,
			@RequestParam("new_password") String newpwd, HttpSession session) {
		Admin admin = adminservice.findByEmail(session.getAttribute("adminEmailSession").toString());
		if (oldpwd.equals(admin.getPassword())) {
			admin.setPassword(newpwd);
			// Save user
			adminservice.saveAdmin(admin);
			model.addAttribute("successMessage", "You have successfully reset your password.  You may now login.");
			return "adminlogin";
		} else {
			model.addAttribute("errorMessage", "Oops!  The old password is invalid.");
			return "change_admin_pwd";
		}
	}

	@RequestMapping(value = "/retriveCourseDtls", method = RequestMethod.GET)
	public String retriveCourseDtls(@RequestParam("coursetitle") String coursetitle, Model model) {
		logger.info("Entered retriveCourseDtls");
		List<VideoFile> allCorces = adminservice.findByCoursename(coursetitle);
		model.addAttribute("allCorces", allCorces);
		return "admincoursedtls";
	}

	@RequestMapping(value = "/deleteVideo", method = RequestMethod.GET)
	public String deleteVideo(@RequestParam("id") String id, @RequestParam("coursetitle") String coursetitle,
			Model model) {
		logger.info("Entered deleteVideo");
		adminservice.deleteVideo(id);
		return "redirect:/retriveCourseDtls?coursetitle=" + coursetitle;
	}
	
	@RequestMapping(value = "/editVideo", method = RequestMethod.GET)
	public String editVideo(@RequestParam("id") String id, @RequestParam("coursetitle") String coursetitle,
			Model model) {
		logger.info("Entered editVideo");
		model.addAttribute("id", id);
		model.addAttribute("coursetitle", coursetitle);
		return "admineditvideo";
	}
	
	@RequestMapping(value = "/updatevideoFile", method = RequestMethod.POST)
	public String updatevideoFile(@RequestParam("file") MultipartFile file,
			@RequestParam(value = "coursetitle") String coursetitle,
			@RequestParam(value = "id") String id) {
		logger.info("Entered into updatevideoFile");
		adminservice.updatevideoFile(file, id,coursetitle);

		return "redirect:/retriveCourseDtls?coursetitle=" + coursetitle;
	}

	
	
}
