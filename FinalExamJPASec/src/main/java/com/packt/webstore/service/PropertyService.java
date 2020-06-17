package com.packt.webstore.service;


import java.util.List;

import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyType;

public interface PropertyService {
	
	public void save(Property property);
	public List<Property> findAll();
	public Property fingPropertyById(Long id);
	public void delete(Long id);

	public List<Property> findPropertyForSearch(int bathCount, int bedCount);
	public List<Property> findPropertyByCity(String city);
	public List<Property> searchProperty(String search, int bathCount, int bedCount, PropertyType propertyType);
}
