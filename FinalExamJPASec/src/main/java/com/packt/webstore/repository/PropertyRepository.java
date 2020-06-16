package com.packt.webstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Property;

@Repository
public interface PropertyRepository extends CrudRepository<Property, Long> {
	public Property findByState(String title);

	@Query("select e from Property e where e.id= :id")
	public Property findPropertyById(@Param("id") Long id);

	@Query("select e from Property e where e.bathCount = :bathCount and e.bedCount = :bedCount")
	public List<Property> findPropertyForSearch(@Param("bathCount") int bathCount, @Param("bedCount") int bedCount);
}
