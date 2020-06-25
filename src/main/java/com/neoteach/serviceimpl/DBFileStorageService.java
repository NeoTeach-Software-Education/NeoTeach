package com.neoteach.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.neoteach.exception.FileStorageException;
import com.neoteach.exception.MyFileNotFoundException;
import com.neoteach.pojo.VideoFile;
import com.neoteach.repositories.DBFileRepository;

import java.io.IOException;

@Service
public class DBFileStorageService {

    @Autowired
    private DBFileRepository dbFileRepository;
 
    

    public VideoFile storeFile(MultipartFile file, String coursename) {
        // Normalize file name
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());

        try {
            // Check if the file's name contains invalid characters
            if(fileName.contains("..")) {
                throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
            }

            VideoFile videoFile = new VideoFile(fileName, file.getContentType(), file.getBytes(),coursename);
            

            return dbFileRepository.save(videoFile);
        } catch (IOException ex) {
            throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
        }
    }

    public VideoFile getFile(String fileId) {
        return dbFileRepository.findById(fileId)
                .orElseThrow(() -> new MyFileNotFoundException("File not found with id " + fileId));
    }

	public VideoFile getCourseList(String coursetitle) {
		 return dbFileRepository.findByCoursename(coursetitle)
	                .orElseThrow(() -> new MyFileNotFoundException("File not found with id " + coursetitle));
	}
}
