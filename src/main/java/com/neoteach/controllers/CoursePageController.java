package com.neoteach.controllers;

import java.util.List;

import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.tomcat.util.codec.binary.StringUtils;
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
	public String coursePage(@RequestParam("coursetitle") String cousetitle,Model model)
	{
		if(cousetitle.equalsIgnoreCase("3"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			return "corejavapage";	
		}
		if(cousetitle.equalsIgnoreCase("2"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			return "cppvideospage";	
		}
		if(cousetitle.equalsIgnoreCase("1"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			return "cvideospage";	
		}
		if(cousetitle.equalsIgnoreCase("4"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			return "dsvideospage";	
		}
		if(cousetitle.equalsIgnoreCase("5"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			return "pythonvideospage";	
		}
		if(cousetitle.equalsIgnoreCase("6"))
		{
			List<VideoFile> videoFile = dbFileStorageService.getCourseList(cousetitle);
			model.addAttribute("videoFile",videoFile);
			return "advjavavideospage";	
		}
		return "";
	}
@GetMapping("/retriveVideos")
public String retriveVideos(@RequestParam("courceid") String courceId,Model model)
{  
	
	VideoFile videoFile=dbFileStorageService.getFile(courceId);
	byte[]   v_byte = videoFile.getData();
	StringBuilder sb = new StringBuilder();
 	sb.append("data:video/mp4;base64,");
 	sb.append(StringUtils.newStringUtf8(Base64.encodeBase64(v_byte, false)));
 	 
 	model.addAttribute("video", sb.toString());
	return "coursevideos";	
}

}
