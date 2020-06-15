package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;
import com.packt.webstore.service.FavoritePropertiesService;
import com.packt.webstore.service.impl.PropertyServiceImpl;

@Controller
//@RequestMapping("/FavoriteProperties")
public class FavoritePropertiesController {
	@Autowired
	private FavoritePropertiesService favoritePropertiesService;
	@Autowired 
	private PropertyServiceImpl propertyService;
	
	@RequestMapping(value = "/addtoFavorite", method = RequestMethod.GET)
		public  void addtoFavorite(@RequestParam("propertyId") long propertyId) {
		System.out.println("**********propertyId*********"+propertyId);
		 String auth = SecurityContextHolder.getContext().getAuthentication().getName().toString();
	       System.out.println("**********auth*********"+auth);
	       
//	       Property p =propertyService.findProperty(propertyId);
//	       Credentials user = 
//	       FavoriteProperties favorite = new FavoriteProperties(p,);
//	       favoritePropertiesService.addToFavorite(favorite);
		//return "propertyReview";
	}

}
