package com.packt.webstore.repository;

import java.util.List;
import java.util.Properties;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyReview;

@Repository
public interface FavoritePropertiesRepository extends CrudRepository<FavoriteProperties, Long>{

//	//@Query("select p from Property p")
	
	//@Query(value="SELECT u FROM FavoriteProperties ug INNER JOIN ug.property u WHERE ug.credentials.username = :username")
	@Query(value="SELECT f FROM FavoriteProperties f WHERE f.credentials.username = :username")
	List<FavoriteProperties> findAllFavorites(@Param("username") String username);

	
	@Query(value="SELECT f FROM FavoriteProperties f WHERE f.property.id =:propertyId and f.credentials.username =:username")
	List<FavoriteProperties> findByPropertyAndUsename(@Param("propertyId")long propertyId,@Param("username") String username);


	 // public List<Property> findAllFavorites(String username);
	
//	@Query(value="delete from FavoriteProperties f where f.property.id =:propertyId", nativeQuery = true)
//	void removefavoriteProperty(@Param("propertyId")long propertyId);
//	
//	@Query(value="SELECT f FROM FavoriteProperties f WHERE p.property.id =:propertyId")//, nativeQuery = true
//	void findfavoriteByProperty(@Param("propertyId")long propertyId);
}
