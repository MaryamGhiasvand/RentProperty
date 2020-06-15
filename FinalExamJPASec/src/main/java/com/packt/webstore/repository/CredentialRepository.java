package com.packt.webstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Credentials;

@Repository
public interface CredentialRepository extends CrudRepository<Credentials, String>{
	
	
	@Query("select c from USERS c where c.username= :username")
	Credentials findByUsername(@Param("username") String username);
}
