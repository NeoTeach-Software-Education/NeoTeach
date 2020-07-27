package com.neoteach.serviceimpl;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.daoimpl.RegisterDaoImpl;
import com.neoteach.model.User;
import com.neoteach.pojo.RegisterPojo;
import com.neoteach.repositories.UserRepository;

@Service(value="RegisterServiceImpl")
public class RegisterServiceImpl{
	
//	@Autowired
//	private final String CLASS_NAME=this.getClass().getCanonicalName();
	@Autowired
	RegisterDaoImpl registerDaoImpl;
//	@Override
	@Autowired
	UserRepository userRepository;
//	public int saveDtls(RegisterPojo registerPojo) throws Exception {
//		final String METHOD_NAME="saveDtls";
////		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.ENTRY);
//		int result=registerDaoImpl.saveDtls(registerPojo);
////		nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME, NhtConstants.EXIT);
//		return result;
//	}
	public User findByEmail(String email) {
		
		
		return userRepository.findByEmail(email);
	}
	public void saveUser(@Valid User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);
	}
	public User findByConfirmationToken(String confirmationToken) {
		// TODO Auto-generated method stub
		return userRepository.findByConfirmationToken(confirmationToken);
	}
	public Optional<User> findUserByEmail(String email) {
		// TODO Auto-generated method stub
		return Optional.of(userRepository.findByEmail(email));
	}
	public Optional<User> findUserByResetToken(String resetToken) {
		// TODO Auto-generated method stub
		return userRepository.findByResetToken(resetToken);
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
