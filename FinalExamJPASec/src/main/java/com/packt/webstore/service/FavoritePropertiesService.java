package com.packt.webstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.PropertyReview;
import com.packt.webstore.repository.FavoritePropertiesRepository;

@Service
public class FavoritePropertiesService {
	@Autowired
	private FavoritePropertiesRepository favoritePropertiesRepository;
	
	
	public void addToFavorite(FavoriteProperties favorite) {
		favoritePropertiesRepository.save(favorite);
	}

	public void deleteFromFavorites(long favorite_id) {
		favoritePropertiesRepository.delete(favorite_id);
	}
	
	public List<FavoriteProperties> findAllFavorites(long user_id) {
		List<FavoriteProperties> favoriteItems =favoritePropertiesRepository.findAllFavorites(user_id);
		return null;
	}
	

}
