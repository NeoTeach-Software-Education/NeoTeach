package com.neoteach.daoimpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mysql.cj.jdbc.Blob;
import com.neoteach.exception.MyFileNotFoundException;
import com.neoteach.pojo.RegisterPojo;
import com.neoteach.pojo.VedioListPogo;
import com.neoteach.pojo.VideoFile;
import com.neoteach.repositories.DBFileRepository;
import com.neoteach.util.NeoTeachUtill;

	
@Repository
public class AdminDaoImpl {
	@Autowired  
	JdbcTemplate jdbcTemplate;  
	 @Autowired
	    private DBFileRepository dbFileRepository;
	@Autowired
	NeoTeachUtill neoTeachUtill;
	
	public int saveDtls(RegisterPojo registerPojo) {
		int result=0;
//		final String METHOD_NAME="saveDtls2";
		jdbcTemplate.execute("insert into user(firstname,lastname)"+"values('"+registerPojo.getFullname()+"','"+registerPojo.getPassword()+"')");
  System.out.println("from regdaoimpl");
		return result;
	}
	
	
	public boolean creadentialAuthenticate(String email, String password) {
		boolean flag=false;
			String pwd="";
		List<Map<String, Object>> resultList=jdbcTemplate.queryForList("select pwd from admin where email='"+email+"'");
			if (!resultList.isEmpty()) {
	            for (Map<String, Object> resultMap : resultList) 
	            {
	           	pwd =resultMap.get("pwd")+"";
	           	 if(password.equalsIgnoreCase(pwd))
	           	 {
	           		flag=true; 
	           	 }
	           }
	   	 }
			return flag;
		}


//	public List<VedioListPogo> getCourseList(String coursetitle) {
//		VedioListPogo vedioListPogo=null;
//		List<VedioListPogo> vedios=new ArrayList<VedioListPogo>();
//		List<Map<String, Object>> resultList=jdbcTemplate.queryForList("select data from coursevideos where coursename='"+coursetitle+"'");
//		if (!resultList.isEmpty()) {
//            for (Map<String, Object> resultMap : resultList) 
//            {
//            	vedioListPogo=new VedioListPogo();
//            	vedioListPogo.setData((byte[]) resultMap.get("data"));
//            	vedios.add(vedioListPogo);
//            	System.out.println(vedios);
//           }
//   	 }
//		return vedios;
//    }

	}
