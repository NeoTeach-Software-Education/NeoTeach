package com.neoteach.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.UserRegistration;
@Repository
public interface UserRepository extends JpaRepository<UserRegistration, String>{

	UserRegistration findByEmail(String email);

	UserRegistration findByConfirmationToken(String confirmationToken);

}
