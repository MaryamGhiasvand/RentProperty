package com.packt.webstore.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.PropertyReview;

@Repository
public interface FavoritePropertiesRepository extends CrudRepository<FavoriteProperties, Long>{

	List<FavoriteProperties> findAllFavorites(long user_id);
	

}
