package com.neoteach.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.model.Admin;
import com.neoteach.model.VideoFile;
import com.neoteach.repositories.AdminRepository;
import com.neoteach.repositories.DBFileRepository;

@Service(value = "AdminServiceImpl")
public class AdminServiceImpl {
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	DBFileRepository dBFileRepository;


	public Admin findByEmail(String email) {
		return adminRepository.findByEmail(email);
	}

	public void saveAdmin(Admin admin) {
		adminRepository.save(admin);
		
	}

	public ArrayList<String> uploadedCourseList() {
		return adminRepository.uploadedCourseList();
	
	}

	public List<VideoFile> findByCoursename(String coursetitle) {
		return dBFileRepository.findByCoursename(coursetitle);
	}

	public void deleteVideo(String id) {
		dBFileRepository.deleteById(id);
	}

}
