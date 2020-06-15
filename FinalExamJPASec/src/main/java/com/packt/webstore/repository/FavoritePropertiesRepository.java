package com.packt.webstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.PropertyReview;

@Repository
public interface FavoritePropertiesRepository extends CrudRepository<FavoriteProperties, Long>{

	@Query("select f from FavoriteProperties f")
	List<FavoriteProperties> findAllFavorites(long user_id);
	

}
