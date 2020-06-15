package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.repository.CredentialRepository;
import com.packt.webstore.service.CredentialService;

@Service
@Transactional 
public class CredentialServiceImpl implements CredentialService {

	@Autowired
	private CredentialRepository credentialRepository;
	

	@Override
	public void addCredential(Credentials credentials) {
		credentialRepository.save(credentials);
	}


	@Override
	public Credentials findByUsername(String username) {
		// TODO Auto-generated method stub
		return credentialRepository.findByUsername(username);
		//return null;
	}
	
}
