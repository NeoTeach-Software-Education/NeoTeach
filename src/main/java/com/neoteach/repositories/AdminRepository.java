package com.neoteach.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoteach.model.Admin;
@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{

	Admin findByEmail(String email);

}
