package com.telecom.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.telecom.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	
	@Query(value = "SELECT pword FROM Customer WHERE cuid = :cuid", nativeQuery = true)
    String  getp(@Param("cuid") int cuid);

}
