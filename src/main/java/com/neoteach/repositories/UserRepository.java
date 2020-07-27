package com.neoteach.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, String>{

	User findByEmail(String email);

	User findByConfirmationToken(String confirmationToken);

	Optional<User> findByResetToken(String resetToken);

}
