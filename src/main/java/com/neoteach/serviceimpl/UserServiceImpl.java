package com.neoteach.serviceimpl;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neoteach.model.User;
import com.neoteach.repositories.UserRepository;

@Service(value = "UserServiceImpl")
public class UserServiceImpl {

	@Autowired
	UserRepository userRepository;

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

}
