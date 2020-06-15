package com.packt.webstore.repository;

import org.springframework.data.repository.CrudRepository;

import com.packt.webstore.domain.Property;

public interface PropertyRepository extends  CrudRepository<Property, Long>{

}
