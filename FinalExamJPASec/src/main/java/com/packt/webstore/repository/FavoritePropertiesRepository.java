package com.packt.webstore.repository;

import java.util.List;
import java.util.Properties;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyReview;

@Repository
public interface FavoritePropertiesRepository extends CrudRepository<FavoriteProperties, Long>{

	@Query("select p from Property p")
//	@Query("select p from Property p inner join p.FavoriteProperties f where f.username = :username")
	List<Property> findAllFavorites(String username);
	

}
