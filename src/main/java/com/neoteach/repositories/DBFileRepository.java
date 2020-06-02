package com.neoteach.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.pojo.VideoFile;

@Repository
public interface DBFileRepository extends JpaRepository<VideoFile, String>  {

}
