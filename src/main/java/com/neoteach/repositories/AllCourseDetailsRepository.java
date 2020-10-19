package com.neoteach.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.Course;
@Repository
public interface AllCourseDetailsRepository extends JpaRepository<Course, String>{
	 
}
