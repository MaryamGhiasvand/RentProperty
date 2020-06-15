package com.packt.webstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.repository.FavoritePropertiesRepository;
import com.packt.webstore.service.FavoritePropertiesService;

@Service
@Transactional 
public class FavoritePropertiesServiceImpl implements FavoritePropertiesService{
	
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
		return favoriteItems;
	}

}
