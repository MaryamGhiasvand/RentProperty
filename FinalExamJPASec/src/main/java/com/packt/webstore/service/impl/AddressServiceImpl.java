package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.Address;
import com.packt.webstore.repository.AddressRepository;
import com.packt.webstore.service.AddressService;

@Service
@Transactional 
public class AddressServiceImpl implements AddressService{
	
	@Autowired
	AddressRepository addressRepository;

	@Override
	public void save(Address address) {
		addressRepository.save(address);		
	}
}
