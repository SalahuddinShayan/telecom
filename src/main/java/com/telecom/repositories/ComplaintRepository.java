package com.telecom.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.telecom.entity.Complaint;

@Repository
public interface ComplaintRepository extends JpaRepository<Complaint, Integer>{
	
	@Query(value = "SELECT * FROM Complaint WHERE cuid=:cuid", nativeQuery = true)
    List<Complaint>  bycuid(@Param("cuid") int cuid);
	
	@Query(value = "SELECT * FROM Complaint WHERE pin = :pin", nativeQuery = true)
	List<Complaint>  getbypin(@Param("pin") long pin);
	
	@Query(value = "SELECT * FROM Complaint WHERE eid=:eid", nativeQuery = true)
    List<Complaint>  byeid(@Param("eid") int eid);
	
	@Query(value = "SELECT * FROM Complaint WHERE eid=:eid and cuid=:cuid ", nativeQuery = true)
    List<Complaint>  byeidcuid(@Param("eid") int eid, @Param("cuid") int cuid);
	
	

}
