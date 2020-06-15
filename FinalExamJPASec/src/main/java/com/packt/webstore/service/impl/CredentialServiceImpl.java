package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.repository.CredentialRepository;
import com.packt.webstore.service.CredentialService;

@Service
@Transactional 
public class CredentialServiceImpl implements CredentialService {
/*
	@Autowired
	CredentialRepository credentialRepository;
	*/
	@Override
	public String addCredential() {
		//credentialRepository.addCredentials();
		return null;
	}
	
}
