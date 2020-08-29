package com.neoteach.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.model.Admin;
import com.neoteach.repositories.AdminRepository;

@Service(value = "AdminServiceImpl")
public class AdminServiceImpl {
	@Autowired
	AdminRepository adminRepository;

	public Admin findByEmail(String email) {
		return adminRepository.findByEmail(email);
	}

	public void saveAdmin(Admin admin) {
		adminRepository.save(admin);
		
	}

}
