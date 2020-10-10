package com.neoteach.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.VideoFile;

@Repository
public interface DBFileRepository extends JpaRepository<VideoFile, String> {
	List<VideoFile> findByCoursename(String coursetitle);

	Optional<VideoFile> findByfileName(String fileName);

//	Object delete(String id);
}
