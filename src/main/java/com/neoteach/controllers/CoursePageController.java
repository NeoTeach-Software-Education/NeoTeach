package com.neoteach.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.tomcat.util.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.model.VideoFile;
import com.neoteach.serviceimpl.DBFileStorageService;
import com.neoteach.serviceimpl.PaymentServiceImpl;
import com.neoteach.util.CommonConstant;

@Controller
public class CoursePageController {
	private static final Logger logger = LogManager.getLogger(CoursePageController.class);

	@Autowired
	private DBFileStorageService dbFileStorageService;
	@Autowired
	private PaymentServiceImpl paymentServiceImpl;

	@GetMapping("/course")
	public String coursePage(@RequestParam("coursetitle") String cousetitle, Model model, HttpSession session) {
		logger.info("Entered into course page");
		String paymentStatus = "NO";
		if (cousetitle.equalsIgnoreCase("1")) {
			logger.info("Entered into  c language course page");
			if (session.getAttribute("userEmailSession") != null) {
				paymentStatus = paymentServiceImpl.userPaymentStatus(
						session.getAttribute("userEmailSession").toString(), CommonConstant.C_COURSE);
			}
			model.addAttribute("paymentStatus", paymentStatus);
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile", videoFile);
			return "cvideospage";
		}
		if (cousetitle.equalsIgnoreCase("2")) {
			logger.info("Entered into cpp course page");
			if (session.getAttribute("userEmailSession") != null) {
				paymentStatus = paymentServiceImpl.userPaymentStatus(
						session.getAttribute("userEmailSession").toString(), CommonConstant.CPP_COURSE);
			}
			model.addAttribute("paymentStatus", paymentStatus);
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile", videoFile);
			return "cppvideospage";
		}
		if (cousetitle.equalsIgnoreCase("3")) {
			logger.info("Entered into core java course page");
			if (session.getAttribute("userEmailSession") != null) {
				paymentStatus = paymentServiceImpl.userPaymentStatus(
						session.getAttribute("userEmailSession").toString(), CommonConstant.JAVA_COURSE);
			}
			model.addAttribute("paymentStatus", paymentStatus);
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile", videoFile);
			return "corejavapage";
		}

		if (cousetitle.equalsIgnoreCase("4")) {
			logger.info("Entered into DS course page");
			if (session.getAttribute("userEmailSession") != null) {
				paymentStatus = paymentServiceImpl.userPaymentStatus(
						session.getAttribute("userEmailSession").toString(), CommonConstant.DS_COURSE);
			}
			model.addAttribute("paymentStatus", paymentStatus);
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile", videoFile);
			return "dsvideospage";
		}
		if (cousetitle.equalsIgnoreCase("5")) {
			logger.info("Entered into python course page");
			if (session.getAttribute("userEmailSession") != null) {
				paymentStatus = paymentServiceImpl.userPaymentStatus(
						session.getAttribute("userEmailSession").toString(), CommonConstant.PYTHON_COURSE);
			}
			model.addAttribute("paymentStatus", paymentStatus);
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile", videoFile);
			return "pythonvideospage";
		}
		if (cousetitle.equalsIgnoreCase("6")) {
			logger.info("Entered into adv java course page");
			if (session.getAttribute("userEmailSession") != null) {
				paymentStatus = paymentServiceImpl.userPaymentStatus(
						session.getAttribute("userEmailSession").toString(), CommonConstant.ADV_JAVA_COURSE);
			}
			model.addAttribute("paymentStatus", paymentStatus);
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile", videoFile);
			return "advjavavideospage";
		}
		return "";
	}

	/*
	 * retriveVideos for retrieve the corresponding course videos
	 * 
	 * @Param courceId--course id Model model-- to display status of action
	 * return--coursevideos page
	 */
	@GetMapping("/retriveVideos")
	public String retriveVideos(@RequestParam("courceid") String courceId, Model model) {
		logger.info("Entered into retriveVideos");
		VideoFile videoFile = dbFileStorageService.getFile(courceId);
		byte[] v_byte = videoFile.getData();
		StringBuilder sb = new StringBuilder();
		sb.append("data:video/mp4;base64,");
		sb.append(StringUtils.newStringUtf8(Base64.encodeBase64(v_byte, false)));
		model.addAttribute("video", sb.toString());
		return "coursevideos";
	}

}
