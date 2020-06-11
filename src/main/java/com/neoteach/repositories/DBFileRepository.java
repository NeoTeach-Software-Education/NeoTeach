package com.neoteach.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.neoteach.pojo.VideoFile;

@Repository
public interface DBFileRepository extends JpaRepository<VideoFile, Long>  {
	@Query("SELECT file_name FROM coursevideos where coursename=?1")
	Object findByCusename(String coursetitle);

}
