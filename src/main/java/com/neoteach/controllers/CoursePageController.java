package com.neoteach.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neoteach.pojo.VideoFile;
import com.neoteach.serviceimpl.DBFileStorageService;

@Controller
public class CoursePageController {
	
	 @Autowired
	    private DBFileStorageService dbFileStorageService;
	
	@GetMapping("/course")
	public String coursePage(@RequestParam("cousetitle") String cousetitle,Model model)
	{
		if(cousetitle.equalsIgnoreCase("3"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			for (VideoFile videoFile2 : videoFile) {
				System.out.println("===="+videoFile2.getFileName());
				
			}
			
			return "coursevideos";	
		}
		
		return "";
	}

}
