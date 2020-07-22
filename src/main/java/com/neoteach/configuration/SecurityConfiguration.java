//package com.neoteach.configuration;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfiguration extends WebSecurityConfigurerAdapter
//{
//	@Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests()
//            .antMatchers("/register").permitAll()
//            .antMatchers("/confirm").permitAll();
//    }
////	 @Override  
////	    public void configure(HttpSecurity http) throws Exception {  
////	        http  
////	            .authorizeRequests()  
////	            .anyRequest().authenticated()  
////	            .and()  
////	            .httpBasic();  
////	    }  
//	    @Override  
//	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {  
//	        auth.inMemoryAuthentication()  
//	            .withUser("user")  
//	            .password("{noop}pass") // Spring Security 5 requires specifying the password storage format  
//	            .roles("USER");  
//	    }  
//}
