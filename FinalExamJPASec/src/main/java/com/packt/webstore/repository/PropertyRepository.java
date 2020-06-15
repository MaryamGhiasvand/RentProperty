package com.packt.webstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.packt.webstore.domain.Property;

public interface PropertyRepository extends  CrudRepository<Property, Long>{

	@Query("select p from Property p where p.id= :id")
	Property findByPropertyId(@Param("id") long propertyId);

}
