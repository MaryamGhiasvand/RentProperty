package com.packt.webstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.PropertyReview;

@Repository
public interface ReviewRepository extends CrudRepository<PropertyReview, Long>{

//	@Query("select r from PropertyReview where r.property.id = :property_Id")
//	void findAllReviews(@Param("property_Id") long property_Id);


}
