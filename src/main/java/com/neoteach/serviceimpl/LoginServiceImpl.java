package com.neoteach.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neoteach.daoimpl.LoginDaoImpl;

@Service(value="LoginServiceImpl")
public class LoginServiceImpl {
	
	@Autowired
	LoginDaoImpl loginDaoImpl;
	public boolean creadentialAuthenticate(String email, String pwd) {
		final String METHOD_NAME="creadentialAuthenticate";
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
		boolean result=loginDaoImpl.creadentialAuthenticate(email,pwd);
//		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.EXIT);
		
		return result;
	}

}
