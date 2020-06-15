package com.packt.webstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CredentialRepository {
	
	@Query("INSERT INTO credentials values (1,'asdf','pass')")
	public String addCredentials();
}
