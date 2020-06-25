package com.neoteach.controllers;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.neoteach.payload.UploadFileResponse;
import com.neoteach.pojo.VedioListPogo;
import com.neoteach.pojo.VideoFile;
import com.neoteach.serviceimpl.DBFileStorageService;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class VedioFileController {

    private static final Logger logger = LoggerFactory.getLogger(VedioFileController.class);

    @Autowired
    private DBFileStorageService dbFileStorageService;

    @PostMapping("/uploadFile")
    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file,@RequestParam(value = "coursename",required = false) String coursename) {
    	VideoFile videoFile = dbFileStorageService.storeFile(file,coursename);

        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/downloadFile/")
                .path(videoFile.getId())
                .toUriString();

        return new UploadFileResponse(videoFile.getFileName(), fileDownloadUri,
                file.getContentType(), file.getSize());
    }

    @PostMapping("/uploadMultipleFiles")
    public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files,@RequestParam(value="coursename",required = false) String coursename) {
        return Arrays.asList(files)
                .stream()
                .map(file -> uploadFile(file,coursename))
                .collect(Collectors.toList());
    }

//    @GetMapping("/downloadFile/{fileId}")
//    public ResponseEntity<Resource> downloadFile(@PathVariable String fileId) {
//        // Load file from database
//    	VideoFile videoFile = dbFileStorageService.getFile(fileId);
//
//        return ResponseEntity.ok()
//                .contentType(MediaType.parseMediaType(videoFile.getFileType()))
//                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + videoFile.getFileName() + "\"")
//                .body(new ByteArrayResource(videoFile.getData()));
//    }
    @GetMapping("/coursepage")
	  public String coursePage(@RequestParam("coursetitle") String fileId,Model coursemodel)
	  {
    	VideoFile videoFile = dbFileStorageService.getFile(fileId);
    	VedioListPogo vedioListPogo=new VedioListPogo();
    	vedioListPogo.setData(videoFile.getData());
    	
    	coursemodel.addAttribute("fileType",videoFile.getFileType());
    	coursemodel.addAttribute("fileName",videoFile.getFileName());
    	coursemodel.addAttribute("video",vedioListPogo.getData());
		  return "coursevideos";
	  }
}
