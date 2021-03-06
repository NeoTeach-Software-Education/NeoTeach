package com.neoteach.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

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
import com.neoteach.model.Course;
import com.neoteach.model.VideoFile;
import com.neoteach.serviceimpl.AdminServiceImpl;

@Controller
public class AdminPageController {
	private static final Logger logger = LogManager.getLogger(AdminPageController.class);
	@Autowired
	AdminServiceImpl adminServiceImpl;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage() {
		logger.info("Entered into Admin login page");
		return "adminlogin";
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String adminLogin(@RequestParam("username") String email, @RequestParam("password") String password,
			Model model, HttpSession session) {
		logger.info("Entered into Admin home page");
		Admin admin = adminServiceImpl.findByEmail(email);
		if (admin == null) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
			return "adminlogin";
		} else if (admin.getPassword().equals(password)) {
			logger.info("Admin password matched");
			ArrayList<String> allcourses = adminServiceImpl.uploadedCourseList();
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
	public String uploadVideosPage(Model model) {
		logger.info("Entered uploadVideosPage");
		List<Course> courceDetails = adminServiceImpl.retriveAllCourseDetails();
		model.addAttribute("courceDetails", courceDetails);
		return "upload_videos";
	}

	@RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
	public String adminDashboard(Model model) {
		logger.info("Entered adminDashboard");
		ArrayList<String> allcourses = adminServiceImpl.uploadedCourseList();
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
		Admin admin = adminServiceImpl.findByEmail(session.getAttribute("adminEmailSession").toString());
		if (oldpwd.equals(admin.getPassword())) {
			admin.setPassword(newpwd);
			// Save user
			adminServiceImpl.saveAdmin(admin);
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
		List<VideoFile> allCorces = adminServiceImpl.findByCoursename(coursetitle);
		model.addAttribute("allCorces", allCorces);
		return "admincoursedtls";
	}

	@RequestMapping(value = "/deleteVideo", method = RequestMethod.GET)
	public String deleteVideo(@RequestParam("id") String id, @RequestParam("coursetitle") String coursetitle,
			Model model) {
		logger.info("Entered deleteVideo");
		adminServiceImpl.deleteVideo(id);
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
			@RequestParam(value = "coursetitle") String coursetitle, @RequestParam(value = "id") String id) {
		logger.info("Entered into updatevideoFile");
		adminServiceImpl.updatevideoFile(file, id, coursetitle);

		return "redirect:/retriveCourseDtls?coursetitle=" + coursetitle;
	}

	@RequestMapping(value = "/setCourseDetails", method = RequestMethod.GET)
	public String setCourseDetails(Model model) {
		logger.info("Entered into setCourseDetails");
		List<Course> courceDetails = adminServiceImpl.retriveAllCourseDetails();
		model.addAttribute("courceDetails", courceDetails);
		return "setCourseDetails";

	}

	@RequestMapping(value = "/updateCourse", method = RequestMethod.POST)
	public String updateCourseDetails(@RequestParam("coursecode") String coursecode,
			@RequestParam("coursename") String coursename, @RequestParam("price") String price,@RequestParam("discount") String discount,
			@RequestParam("discountprice") String discountprice) {
		logger.info("Entered into updateCourseDetails");
		adminServiceImpl.updateCourseDetails(coursecode, coursename, price,discount,discountprice);
		return "redirect:setCourseDetails";

	}

	@RequestMapping(value = "/addCourse", method = RequestMethod.GET)
	public String addCourse() {
		logger.info("Entered into addCourse");
		return "addCourse";
	}

	@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
	public String addCourseDetails(@Valid Course course, @RequestParam("courseimg") MultipartFile file,
			HttpServletRequest request, Model model) throws IOException {
		logger.info("Entered into addCourseDetails");
		Course courseExists = adminServiceImpl.addCourseDetails(course.getCoursename());
		if (courseExists != null) {
			model.addAttribute("errorMessage",
					"Oops!  There is already a course availabel with the course name provided.");
			return "addCourse";
		} else if (courseExists == null) {
			Course courseCodeExist = adminServiceImpl.findByCoursecode(course.getCoursecode());
			if (courseCodeExist != null) {
				model.addAttribute("errorMessage",
						"Oops!  There is already a course availabel with the course code provided.");
				return "addCourse";
			} else {

				if (!file.getOriginalFilename().isEmpty()) {
					String imagelocation = "C:\\Users\\India1\\git\\NeoTeach\\src\\main\\resources\\static\\courseimages";
					Path uploadPath = Paths.get(imagelocation);
					if (!Files.exists(uploadPath)) {
						Files.createDirectories(uploadPath);
					}
					BufferedOutputStream outputStream = new BufferedOutputStream(
							new FileOutputStream(new File(imagelocation, file.getOriginalFilename())));
					outputStream.write(file.getBytes());
					outputStream.flush();
					outputStream.close();
					String imgLoc = "courseimages" + "/" + file.getOriginalFilename();
					course.setCourseimag(imgLoc);
				}
				adminServiceImpl.saveCourse(course);
				model.addAttribute("successMessage", "Successfully added a new course.");
			}
		}
		return "redirect:setCourseDetails";
	}

}
