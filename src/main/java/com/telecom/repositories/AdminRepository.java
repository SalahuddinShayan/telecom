package com.telecom.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.telecom.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> {
	
	@Query(value = "SELECT password FROM Admin WHERE login = :login", nativeQuery = true)
    String  getp(@Param("login") String login);
	
	

}