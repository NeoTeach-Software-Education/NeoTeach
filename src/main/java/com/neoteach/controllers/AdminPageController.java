package com.neoteach.controllers;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.neoteach.pojo.VedioListPogo;
import com.neoteach.pojo.VideoFile;
//import com.neoteach.pojo.ImageModel;
import com.neoteach.serviceimpl.AdminServiceImpl;
import com.neoteach.util.NeoTeachUtill;

@Controller
public class AdminPageController {
	@Autowired
	AdminServiceImpl adminservice;
	
	@Autowired
	NeoTeachUtill neoTeachUtill;
	
//	String UPLOADED_FOLDER="C://Users//Sri//git//NeoTeach//src//main//resources//static//videos//";
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String adminPage()
	{
		return "adminlogin";
	}
	@RequestMapping(value="/adminsignup",method=RequestMethod.POST)
	public String adminLogin(@RequestParam("username") String email,@RequestParam("password") String pwd,Model model)
	{
		boolean result=adminservice.creadentialAuthenticate(email,pwd);
		
		if(result)
		{
			return "adminhome";	
		} 
		else
		{
			model.addAttribute("adminloginfail", "Invalid credentials..."+email);
			return "adminlogin";	
		}
		
	}
//	 @PostMapping("/uploadVideos")
//	    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file,@RequestParam("coursename") String coursename) {
//	        VideoFile vFile = adminservice.storeFile(file,coursename);
//
//	        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
//	                .path("/downloadCourseVideos/")
//	                .path(vFile.getId())
//	                .toUriString();
//
//	        return new UploadFileResponse(vFile.getFileName(), fileDownloadUri,
//	                file.getContentType(), file.getSize());
//	    }
//	
//	 @PostMapping("/uploadMultipleFiles")
//	    public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("videos") MultipartFile[] files,@RequestParam("coursename") String coursename) {
//	        return Arrays.asList(files)
//	                .stream()
//	                .map(file -> uploadFile(file,coursename))
//	                .collect(Collectors.toList());
//	    }
//
//	  @GetMapping("/coursepage")
//	  public String coursePage(@RequestParam("coursetitle") String coursetitle,Model cousemodel)
//	  {
//		  List<VedioListPogo> courselist=adminservice.getCourseList(coursetitle);
//		  for (VedioListPogo vedioListPogo : courselist) 
//		  {
//			 cousemodel.addAttribute("courselist",vedioListPogo.getData());
//		  }
//		 
//		  System.out.println(courselist);
//		  return "coursevideos";
//	  }
	  
	  
}
