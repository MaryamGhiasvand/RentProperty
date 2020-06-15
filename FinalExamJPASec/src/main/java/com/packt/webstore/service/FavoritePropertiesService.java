package com.packt.webstore.service;

import java.util.List;
import com.packt.webstore.domain.FavoriteProperties;


public interface FavoritePropertiesService {
		
	public void addToFavorite(FavoriteProperties favorite);

	public void deleteFromFavorites(long favorite_id);
	
	public List<FavoriteProperties> findAllFavorites(long user_id);
	

}
