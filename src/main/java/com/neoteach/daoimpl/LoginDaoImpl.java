package com.neoteach.daoimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImpl {

	@Autowired  
	JdbcTemplate jdbcTemplate;  
	@Autowired  
	private NamedParameterJdbcTemplate namedJdbcTemplate;  
	public boolean creadentialAuthenticate(String email, String pwd) {
		boolean flag=false;
		String password="";
	List<Map<String, Object>> resultList=jdbcTemplate.queryForList("select password from user where email='"+email+"'");
		if (!resultList.isEmpty()) {
			System.out.println("from admin dao impl");
            for (Map<String, Object> resultMap : resultList) 
            {
            password =resultMap.get("password")+"";
           	 if(password.equalsIgnoreCase(pwd))
           	 {
           		flag=true; 
           	 }
           }
   	 }
		return flag;
	}

}
