package com.packt.webstore.service;

import com.packt.webstore.domain.Credentials;

public interface CredentialService {
	public void addCredential(Credentials credentials);
	public Credentials findByUsername(String username);
}
