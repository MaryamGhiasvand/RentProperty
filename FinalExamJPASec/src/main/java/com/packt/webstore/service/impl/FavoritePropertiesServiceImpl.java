package com.packt.webstore.service.impl;

import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;
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
	
	public List<FavoriteProperties> findAllFavorites(String username) {
		try {
		List<FavoriteProperties> favoriteItems =favoritePropertiesRepository.findAllFavorites(username);
		return favoriteItems;
		}
		catch(Exception ex) {
			System.out.print("a");
			return null;
		}
		
	}

	@Override
	public void removefavoriteProperty(long favoriteId) {
		try {
		favoritePropertiesRepository.delete(favoriteId);
		}catch(Exception ex) {
			System.out.print("a");
		}
		
	}

	@Override
	public List<FavoriteProperties> findByPropertyAndUsename(long propertyId,String username) {
		//return favoritePropertiesRepository.findByPropertyAndUsename(propertyId,username);
		try {
		List<FavoriteProperties> favoriteItems =favoritePropertiesRepository.findByPropertyAndUsename(propertyId,username);
		return favoriteItems;
		}
		catch(Exception ex) {
			System.out.print("a");
			return null;
		}
	}




}
