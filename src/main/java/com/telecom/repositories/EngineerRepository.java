package com.telecom.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.telecom.entity.Engineer;

@Repository
public interface EngineerRepository extends JpaRepository<Engineer, Integer> {
	
	@Query(value = "SELECT pword FROM Engineer WHERE eid = :eid", nativeQuery = true)
    String  getp(@Param("eid") String eid);

}
