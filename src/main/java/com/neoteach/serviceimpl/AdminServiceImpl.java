package com.neoteach.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.daoimpl.AdminDaoImpl;
import com.neoteach.daoimpl.RegisterDaoImpl;
import com.neoteach.pojo.RegisterPojo;

@Service(value="AdminServiceImpl")
public class AdminServiceImpl{
	
//	@Autowired
//	private final String CLASS_NAME=this.getClass().getCanonicalName();
	@Autowired
	RegisterDaoImpl registerDaoImpl;
	@Autowired
	AdminDaoImpl adminDaoImpl;
//	@Override
	public int saveDtls(RegisterPojo registerPojo) throws Exception {
		final String METHOD_NAME="saveDtls";
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
	

//	@Override
//	public String chkPhoneNo(String phone) throws Exception {
//		final String METHOD_NAME = "chkPhoneNo";
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
//		String response=regDao.chkPhoneNo(phone);
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
//	    return response;	
//	}
	
}
