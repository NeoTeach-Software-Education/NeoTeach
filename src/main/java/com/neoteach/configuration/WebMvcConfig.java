//package com.neoteach.configuration;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//@Configuration
//@Order(1)
//public class WebMvcConfig extends WebSecurityConfigurerAdapter{
//	 @Bean
//	    public BCryptPasswordEncoder passwordEncoder() {
//	        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//	        return bCryptPasswordEncoder;
//	    }
//	 @Autowired
//	 public void configureGlobal(AuthenticationManagerBuilder auth)
//	         throws Exception {
//	     auth.inMemoryAuthentication()
//	             .withUser("user")
//	             .password("{bcrypt}$2a$10$6CW1agMzVzBhxDzK0PcxrO/cQcmN9h8ZriVEPy.6DJbVeyATG5mWe")
//	             .roles("USER");
//	 }
//}
