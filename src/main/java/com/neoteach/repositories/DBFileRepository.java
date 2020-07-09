package com.neoteach.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.neoteach.pojo.VideoFile;

@Repository
public interface DBFileRepository extends JpaRepository<VideoFile, String> {
//	@Query("select data from coursevideos where coursename=1")
	List<VideoFile> findByCoursename(String coursetitle);

}
