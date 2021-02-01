package com.neoteach.serviceimpl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.neoteach.exception.FileStorageException;
import com.neoteach.model.Admin;
import com.neoteach.model.VideoFile;
import com.neoteach.model.Course;
import com.neoteach.repositories.AdminRepository;
import com.neoteach.repositories.AllCourseDetailsRepository;
import com.neoteach.repositories.DBFileRepository;

@Service(value = "AdminServiceImpl")
public class AdminServiceImpl {
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	DBFileRepository dBFileRepository;
	@Autowired
	AllCourseDetailsRepository allCourseDetailsRepository;

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

	public void updatevideoFile(MultipartFile file, String id, String coursetitle) {
		// Normalize file name
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());

		try {
			// Check if the file's name contains invalid characters
			if (fileName.contains("..")) {
				throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
			}
			dBFileRepository.updatevideoFile(fileName, file.getContentType(), file.getBytes(), coursetitle, id);
		} catch (IOException ex) {
			throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
		}
	}

	public List<Course> retriveAllCourseDetails() {
		return allCourseDetailsRepository.findAll();
	}

	public void updateCourseDetails(String coursecode, String coursename, String price,String discount, String discountprice) {
		allCourseDetailsRepository.updateCourseDetails(coursecode,coursename,price,discount,discountprice);
	}

	public Course addCourseDetails(String coursename) {
		return allCourseDetailsRepository.findByCoursename(coursename);
	}

	public Course saveCourse(@Valid Course course) {
		return allCourseDetailsRepository.save(course);
	}

	public Course findByCoursecode(String coursecode) {
		return allCourseDetailsRepository.findByCoursecode(coursecode);
	}

}
