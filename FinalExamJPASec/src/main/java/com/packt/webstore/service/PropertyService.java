package com.packt.webstore.service;


import java.util.List;

import com.packt.webstore.domain.Property;

public interface PropertyService {
	
	public void save(Property property);
	public List<Property> findAll();
}
