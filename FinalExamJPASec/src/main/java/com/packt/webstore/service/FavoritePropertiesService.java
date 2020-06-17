package com.packt.webstore.service;

import java.util.List;
import java.util.Properties;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;


public interface FavoritePropertiesService {
		
	public void addToFavorite(FavoriteProperties favorite);

	public void deleteFromFavorites(long favorite_id);
	
	public List<FavoriteProperties> findAllFavorites(String username);


	public void removefavoriteProperty(long favoriteId);

	public List<FavoriteProperties> findByPropertyAndUsename(long propertyId,String username);

	

}
