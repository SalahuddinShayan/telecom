package com.telecom.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.telecom.entity.Manager;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer> {
	
	@Query(value = "SELECT pword FROM Manager WHERE mid = :mid", nativeQuery = true)
    String  getp(@Param("mid") int mid);
	
	@Query(value = "SELECT region FROM Manager WHERE mid = :mid", nativeQuery = true)
    long  getpin(@Param("mid") int mid);
	
	

}
