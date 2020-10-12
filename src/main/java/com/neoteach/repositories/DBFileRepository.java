package com.neoteach.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.neoteach.model.VideoFile;

@Repository
public interface DBFileRepository extends JpaRepository<VideoFile, String> {
	List<VideoFile> findByCoursename(String coursetitle);

	Optional<VideoFile> findByfileName(String fileName);
	@Transactional
	@Modifying
	@Query(value = "update coursevideos set file_name = :fileName,file_type = :contentType,data= :vid,coursename= :coursetitle where id = :id", nativeQuery = true)
	void updatevideoFile(String fileName, String contentType, byte[] vid, String coursetitle, String id);
}
