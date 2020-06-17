package com.packt.webstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyType;

@Repository
public interface PropertyRepository extends CrudRepository<Property, Long> {

	@Query("SELECT ug FROM Property ug INNER JOIN ug.address u WHERE u.city = :city and ug.bathCount = :bathCount and ug.bedCount = :bedCount and ug.propertyType = :propertyType")
	public List<Property> findCity(@Param("city") String city, @Param("bathCount") int bathCount, @Param("bedCount") int bedCount,@Param("propertyType") PropertyType propertyType );
	
	@Query("select e from Property e where e.id= :id")
	public Property findPropertyById(@Param("id") Long id);

	@Query("select e from Property e where e.bathCount = :bathCount and e.bedCount = :bedCount")
	public List<Property> findPropertyForSearch(@Param("bathCount") int bathCount, @Param("bedCount") int bedCount);
	
	@Query("SELECT ug FROM Property ug where ug.credential = :owner")
	public List<Property> findPropertyByOwner(@Param("owner") Credentials owner);
}
