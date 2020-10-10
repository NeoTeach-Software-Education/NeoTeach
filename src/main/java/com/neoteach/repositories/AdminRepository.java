package com.neoteach.repositories;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.neoteach.model.Admin;
@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{

	Admin findByEmail(String email);
	 @Query(value="select DISTINCT coursename from coursevideos",nativeQuery = true)
	ArrayList<String> uploadedCourseList();
	 
}
