package com.neoteach.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDaoImpl {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void setMaxPacketSize() {
		jdbcTemplate.execute("SET GLOBAL max_allowed_packet=30*1024*1024");

	}
}
