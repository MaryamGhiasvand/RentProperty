package com.packt.webstore.service;

import com.packt.webstore.domain.Credentials;

public interface CredentialService {
	public String addCredential();
	public Credentials findByUsername(String username);
}
