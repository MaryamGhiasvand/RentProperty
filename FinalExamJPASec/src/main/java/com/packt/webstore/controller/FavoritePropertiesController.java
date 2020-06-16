package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;
import com.packt.webstore.service.CredentialService;
import com.packt.webstore.service.FavoritePropertiesService;
import com.packt.webstore.service.PropertyService;

@RestController
//@RequestMapping("/FavoriteProperties")
public class FavoritePropertiesController {
	@Autowired
	private FavoritePropertiesService favoritePropertiesService;
	@Autowired
	private PropertyService propertyService;
	@Autowired
	private CredentialService credentialService;

	
	@RequestMapping(value = "/addtoFavorite", method = RequestMethod.GET)
	@ResponseBody 
		public String addtoFavorite( @RequestParam("propertyId") long propertyId) {
		System.out.println("**********propertyId*********"+propertyId);
		 String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();	 
		 System.out.print("username"+username);
		 if(username !="anonymousUser") {
	       Property p =propertyService.fingPropertyById(propertyId);
	       Credentials user = credentialService.findByUsername(username);
           FavoriteProperties favorite = new FavoriteProperties(p,user);
	       favoritePropertiesService.addToFavorite(favorite);
	       return "success";
		 }
	       return "notLoggedIn";
	}

}
