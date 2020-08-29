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
		userRepository.save(user);
	}

	public User findByConfirmationToken(String confirmationToken) {
		return userRepository.findByConfirmationToken(confirmationToken);
	}

	public Optional<User> findUserByEmail(String email) {
		return Optional.of(userRepository.findByEmail(email));
	}

	public Optional<User> findUserByResetToken(String resetToken) {
		return userRepository.findByResetToken(resetToken);
	}

}
