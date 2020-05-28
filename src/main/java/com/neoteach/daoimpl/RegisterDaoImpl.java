package com.neoteach.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.neoteach.pojo.ImageModel;
import com.neoteach.pojo.RegisterPojo;

@Repository
public class RegisterDaoImpl {
	// @Autowired
	// private NhtLogMgr nhtLogMgr;
	// private final String CLASS_NAME=this.getClass().getCanonicalName();

	// private JdbcTemplate jdbcTemplate;
	//
	// public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	// this.jdbcTemplate = jdbcTemplate;
	// }
	@Autowired
	JdbcTemplate jdbcTemplate;

	public int saveDtls(RegisterPojo registerPojo) {
		int result = 0;
		// final String METHOD_NAME="saveDtls2";
		jdbcTemplate.execute("insert into user(fullname,email,password)" + "values('" + registerPojo.getFullname()
				+ "','" + registerPojo.getEmail() + "','" + registerPojo.getPassword() + "')");
		return result;
	}

		// nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME,
	// NhtConstants.ENTRY);
	// Transaction transaction = session.beginTransaction();
	// int result=0;
	//
	//
	// try
	// {
	//// java.sql.Date regDate = new java.sql.Date(new
	// java.util.Date().getTime());
	// java.sql.Timestamp regDate = new java.sql.Timestamp(new
	// java.util.Date().getTime());
	//// if(regform.getGender().equalsIgnoreCase("F"))
	//// {
	// Query query=session.createSQLQuery("insert into
	// tutors(firstname,lastname,gender,mobile,qualification,subject,leveltoteach,location,description,regDate)"
	// +
	// "values('"+regform.getFirstname()+"','"+regform.getLastname()+"','"+regform.getGender()+"','"+regform.getMobile()+"','"+regform.getQualification()+"','"+regform.getSubject()+"','"+regform.getLeveltoteach()+"','"+regform.getLocation()+"','"+regform.getDescription()+"','"+regDate+"')");
	// query.executeUpdate();
	// result=1;
	//// if(result!=0)
	//// {
	//// mailsendUtil.sendMail(regform.getUsername(),
	// "<h2>Dear\t"+regform.getFirstName()+",\tThanks For Registration with
	// NeoHomeTuitions as a Learner.</h2>", "Student Registration");
	////
	//// }
	//// }
	//// else{
	//// Query query=session.createSQLQuery("insert into
	// mtutors(firstname,lastname,gender,mobile,qualification,subject,leveltoteach,location,description,regDate)"
	// +
	//// "values('"+regform.getFirstname()+"','"+regform.getLastname()+"','"+regform.getGender()+"','"+regform.getMobile()+"','"+regform.getQualification()+"','"+regform.getSubject()+"','"+regform.getLeveltoteach()+"','"+regform.getLocation()+"','"+regform.getDescription()+"','"+regDate+"')");
	//// query.executeUpdate();
	//// transaction.commit();
	//// result=1;
	//// if(result!=0)
	//// {
	//// mailsendUtil.sendMail(regform.getUsername(),
	// "<h2>Dear\t"+regform.getFirstName()+",\tThanks For Registration with
	// NeoHomeTuitions as a Learner.</h2>", "Student Registration");
	////
	//// }
	//// }
	// }
	// catch (Exception e) {
	// e.printStackTrace();
	// }
	// nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME,
	// NhtConstants.EXIT);
	// return result;
	// }
	//
	// @Override
	// public String chkPhoneNo(String phone) throws Exception {
	// final String METHOD_NAME="chkPhoneNo";
	//// nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME,
	// NhtConstants.ENTRY);
	// Session session=sessionFactory.openSession();
	// StringBuffer result=new StringBuffer();
	//
	// try
	// {
	// Query query=session.createSQLQuery("select
	// IFNULL(firstname,'-'),IFNULL(lastname,'-'),IFNULL(mobile,'-') from tutors
	// where mobile='"+phone+"'");
	//// List list=query.list();
	// List list= new ArrayList();
	// list=query.list();
	// if(list.size()!=0)
	// {
	// result.append("0"+"#"+"This Email Id Already Existed");
	// }
	//// if(regform.getGender().equalsIgnoreCase("F"))
	//// {
	//// Query query=session.createSQLQuery("select
	// IFNULL(firstname,'-'),IFNULL(lastname,'-'),IFNULL(mobile,'-') from
	// ftutors where mobile='"+phone+"'");
	////// List list=query.list();
	//// List list= new ArrayList();
	//// list=query.list();
	//// if(list.size()!=0)
	//// {
	//// result.append("0"+"#"+"This Email Id Already Existed");
	//// }
	//// }
	//// else
	//// {
	////
	//// Query query=session.createSQLQuery("select
	// IFNULL(firstname,'-'),IFNULL(lastname,'-'),IFNULL(mobile,'-') from
	// mtutors where mobile='"+phone+"'");
	////// List list=query.list();
	//// List list= new ArrayList();
	//// list=query.list();
	//// if(list.size()!=0)
	//// {
	//// result.append("0"+"#"+"This Email Id Already Existed");
	//// }
	////
	//// }
	// }
	// catch(Exception e)
	// {
	// e.printStackTrace();
	// }
	// finally
	// {
	// session.close();
	// }
	// nhtLogMgr.writeToError(NhtConstants.LOG_INFO, CLASS_NAME, METHOD_NAME,
	// NhtConstants.EXIT);
	// return result.toString();
	// }

}
