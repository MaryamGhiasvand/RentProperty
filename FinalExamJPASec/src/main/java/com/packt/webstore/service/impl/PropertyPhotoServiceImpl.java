package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.PropertyPhoto;
import com.packt.webstore.repository.PropertyPhotoRepository;
import com.packt.webstore.service.PropertyPhotoService;


@Service
@Transactional
public class PropertyPhotoServiceImpl implements PropertyPhotoService{

	@Autowired
	PropertyPhotoRepository propertyPhotoRepository;
	
	@Override
	public void save(PropertyPhoto propertyPhoto) {
		propertyPhotoRepository.save(propertyPhoto);		
	}

}
