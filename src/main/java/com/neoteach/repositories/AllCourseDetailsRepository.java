package com.neoteach.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.neoteach.model.Course;
@Repository
public interface AllCourseDetailsRepository extends JpaRepository<Course, String>{
	@Transactional
	@Modifying
	@Query(value = "update coursedetails set coursecode = :coursecode,price = :price,discountprice= :discountprice,discount= :discount where coursename = :coursename", nativeQuery = true)
	void updateCourseDetails(String coursecode, String coursename, String price,String discount, String discountprice);

	Course findByCoursename(String coursename);

	Course findByCoursecode(String coursecode);
}
