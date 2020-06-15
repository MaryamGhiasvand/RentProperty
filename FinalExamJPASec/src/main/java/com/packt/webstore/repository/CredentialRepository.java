package com.packt.webstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Credentials;

@Repository
public interface CredentialRepository {
	
	@Query("INSERT INTO credentials values (1,'asdf','pass')")
	public String addCredentials();
	
	
	@Query("select c from Credentials c where c.username= :username")
	Credentials findByUsername(@Param("username") String username);
}
