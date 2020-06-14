package com.neoteach.serviceimpl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.neoteach.daoimpl.AdminDaoImpl;
import com.neoteach.daoimpl.RegisterDaoImpl;
import com.neoteach.exception.FileStorageException;
//import com.neoteach.pojo.ImageModel;
import com.neoteach.pojo.RegisterPojo;
import com.neoteach.pojo.VedioListPogo;
import com.neoteach.pojo.VideoFile;
import com.neoteach.repositories.DBFileRepository;

@Service(value="AdminServiceImpl")
public class AdminServiceImpl{
	 @Autowired
	    private DBFileRepository dbFileRepository;
//	@Autowired
//	private final String CLASS_NAME=this.getClass().getCanonicalName();
	@Autowired
	RegisterDaoImpl registerDaoImpl;
	@Autowired
	AdminDaoImpl adminDaoImpl;
//	@Override
	public int saveDtls(RegisterPojo registerPojo) throws Exception {
//		final String METHOD_NAME="saveDtls";
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
		int result=registerDaoImpl.saveDtls(registerPojo);
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.EXIT);
		return result;
	}
	public boolean creadentialAuthenticate(String email, String pwd) {
		// TODO Auto-generated method stub
		
		final String METHOD_NAME="creadentialAuthenticate";
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
		boolean result=adminDaoImpl.creadentialAuthenticate(email,pwd);
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.EXIT);
		
		return result;
	}
//	public int saveImageOrVideo(byte[] bytes, String orginalName,String ContentType) {
//		int result=adminDaoImpl.saveImageOrVideo(bytes,orginalName,ContentType);
//		return result;
//	}
//	public byte[] getTutorialVideos() {
//		byte[] result=adminDaoImpl.getTutorialVideos();
//		return result;
//	}
//	public VideoFile storeFile(MultipartFile file,String coursename) {
//		
//
//        // Normalize file name
//        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
//
//        try {
//            // Check if the file's name contains invalid characters
//            if(fileName.contains("..")) {
//                throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
//            }
//
//            VideoFile dbFile = new VideoFile(fileName, file.getContentType(), file.getBytes(),coursename);
//
//            return dbFileRepository.save(dbFile);
//        } catch (IOException ex) {
//            throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
//        }
//    
//		
//	}
//	public List<VedioListPogo> getCourseList(String coursetitle) {
//		List<VedioListPogo> courselist=adminDaoImpl.getCourseList(coursetitle);
//		return courselist;
//	}
//	

//	@Override
//	public String chkPhoneNo(String phone) throws Exception {
//		final String METHOD_NAME = "chkPhoneNo";
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
//		String response=regDao.chkPhoneNo(phone);
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
//	    return response;	
//	}
	
}
