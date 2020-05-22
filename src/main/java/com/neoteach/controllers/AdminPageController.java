package com.neoteach.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.neoteach.serviceimpl.AdminServiceImpl;

@Controller
public class AdminPageController {
	@Autowired
	AdminServiceImpl adminservice;
	String UPLOADED_FOLDER="C://Users//srinivas//git//NeoTeach//src//main//resources//static//videos//";
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
	@PostMapping("/upload") 
    public String singleFileUpload(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes) {

        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return "redirect:uploadStatus";
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            
           
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
           /* if (!Files.exists(path)) {
                try {
                    Files.createDirectories(path);
                } catch (IOException e) {
                    //fail to create directory
                    e.printStackTrace();
                }
            }*/
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/adminhome";
    }
}
