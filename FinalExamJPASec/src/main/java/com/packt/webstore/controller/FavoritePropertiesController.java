package com.packt.webstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

@Controller
@RequestMapping("/favoriteProperties")
public class FavoritePropertiesController {
	@Autowired
	private FavoritePropertiesService favoritePropertiesService;
	@Autowired
	private PropertyService propertyService;
	@Autowired
	private CredentialService credentialService;

//	@RequestMapping(value = "/addtoFavorite", method = RequestMethod.GET)
//	
//	public String addtoFavorite(@RequestParam("propertyId") long propertyId, Model model) {
//		if ((boolean) model.asMap().get("LoggedInUser") == true) {
//			Property p = propertyService.fingPropertyById(propertyId);
//			String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
//			Credentials user = credentialService.findByUsername(username);
//			FavoriteProperties favorite = new FavoriteProperties(p, user);
//			favoritePropertiesService.addToFavorite(favorite);
//			model.addAttribute("AddedToFavorite",true);
//			//return @ResponseBody"success";
//		}
//		return "redirect:/login";
//}

	@RequestMapping(value = "/addtoFavorite", method = RequestMethod.GET)
	@ResponseBody
	public String addtoFavorite(@RequestParam("propertyId") long propertyId, Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		if (username != "anonymousUser") {

			// is already in favorite list
			boolean inFavoriteList = false;
			List<FavoriteProperties> fpList = favoritePropertiesService.findByPropertyAndUsename(propertyId, username);
			if (fpList.size()>=1) {
//				inFavoriteList = true;
//				model.addAttribute("inFavoriteList", inFavoriteList);
				return "Has alredy added";
			}
			//
			else {
				Property p = propertyService.fingPropertyById(propertyId);
				Credentials user = credentialService.findByUsername(username);
				FavoriteProperties favorite = new FavoriteProperties(p, user);
				favoritePropertiesService.addToFavorite(favorite);
				inFavoriteList = true;
				model.addAttribute("inFavoriteList", inFavoriteList);
				return "success";
			}
			
			
		}
		return "notLoggedIn";
	}

	@RequestMapping("/viewMyFvoriteList")
	public String viewFvoriteList(Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		List<FavoriteProperties> favoriteProperties = favoritePropertiesService.findAllFavorites(username);
		model.addAttribute("favoriteProperties", favoriteProperties);

		return "myFavoriteList";
	}

	@RequestMapping("/removeFavorite")
	public String removeFavorite(@RequestParam("id") long favoriteId) {
		//String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		// List<FavoriteProperties> fp =favoritePropertiesService.findByPropertyAndUsename(propertyId, username);
		// long favoriteId = fp.get(0).get
		favoritePropertiesService.removefavoriteProperty(favoriteId);
		// favoritePropertiesService.removeProperty(p);
		return "myFavoriteList";
	}

	@ModelAttribute("LoggedInUser")
	public Boolean CheckLoggedIn() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		if (username == "anonymousUser" || username == null) {
			return false;
		}

		return true;
	}
}
