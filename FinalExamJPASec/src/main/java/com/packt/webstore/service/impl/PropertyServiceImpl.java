package com.packt.webstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.Property;
import com.packt.webstore.repository.PropertyRepository;
import com.packt.webstore.service.PropertyService;

@Service
@Transactional 
public class PropertyServiceImpl implements PropertyService{

	@Autowired
	PropertyRepository propertyRepository;
	
	@Override
	public List<Property> findAll() {
		return (List<Property>) propertyRepository.findAll();
	}

	@Override
	public void save(Property property) {
		propertyRepository.save(property);		
	}

	@Override
	public Property fingPropertyById(Long id) {
		return (Property) propertyRepository.findPropertyById(id);
		
	}
	
	@Override
	public void delete(Long id) {
		propertyRepository.delete(id);		
	}

	@Override
	public Property searchProperty(String search) {
		return (Property) propertyRepository.findByState(search);
	}
}
