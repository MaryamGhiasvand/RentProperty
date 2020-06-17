package com.packt.webstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.PropertyReview;

@Repository
public interface ReviewRepository extends CrudRepository<PropertyReview, Long>{

	@Query("select r from PropertyReview r where r.property.id = :property_Id")
	List<PropertyReview> findByPropertyId(@Param("property_Id")Long propertyId);

}
