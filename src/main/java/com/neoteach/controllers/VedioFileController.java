package com.neoteach.controllers;

import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.tomcat.util.codec.binary.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.neoteach.model.VideoFile;
import com.neoteach.payload.UploadFileResponse;
import com.neoteach.serviceimpl.DBFileStorageService;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class VedioFileController {

	private static final Logger logger = LoggerFactory.getLogger(VedioFileController.class);

	@Autowired
	private DBFileStorageService dbFileStorageService;

	/*
	 * upload single video
	 * 
	 * @Param file-- to handle video file
	 * 
	 * @Param coursename--to handle coursename name
	 */
	@PostMapping(path="/uploadFile")
//	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file,
			@RequestParam(value = "coursename", required = false) String coursename) {
		logger.info("Entered into uploadFile");
		VideoFile videoFile = dbFileStorageService.storeFile(file, coursename);

		String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/downloadFile/")
				.path(videoFile.getId()).toUriString();

		return new UploadFileResponse(videoFile.getFileName(), fileDownloadUri, file.getContentType(), file.getSize());
	}

	/*
	 * upload multiple videos
	 * 
	 * @Param file-- to handle video file
	 * 
	 * @Param coursename--to handle coursename name
	 */
	@PostMapping(path="/uploadMultipleFiles")
	public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files,
			@RequestParam(value = "coursename", required = false) String coursename) {
		logger.info("Entered into uploadMultipleFiles");
		return Arrays.asList(files).stream().map(file -> uploadFile(file, coursename)).collect(Collectors.toList());
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
	/*
	 * retrieve course videos
	 * 
	 * @Param coursetitle-- to handle course title
	 * 
	 * Model coursemodel-- to display status of action
	 */
	@GetMapping("/coursepage")
	public String coursePage(@Param("coursetitle") String coursetitle, Model coursemodel) {
		logger.info("Entered into coursePage");
		List<VideoFile> videoFile = dbFileStorageService.getCourseList(coursetitle);
		byte[] v_byte = null;
		List<String> videos = new ArrayList<String>();
		StringBuilder sb = null;
		String videoUrl = null;
		System.out.println("sss" + videoFile.size());
		for (VideoFile videolist : videoFile) {
			System.out.println(videolist);
			v_byte = videolist.getData();
			sb = new StringBuilder();
			sb.append("data:video/mp4;base64,");
			sb.append(StringUtils.newStringUtf8(Base64.encodeBase64(v_byte, false)));
			videoUrl = sb.toString();
			videos.add(videoUrl);

		}

		coursemodel.addAttribute("videos", videos);
		System.out.println("vdd" + videos.size());

		return "corejavapage";
	}
}
