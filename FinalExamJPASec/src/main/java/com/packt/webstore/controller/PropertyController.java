package com.packt.webstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.FavoriteProperties;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyReview;
import com.packt.webstore.domain.PropertyType;
import com.packt.webstore.domain.RentHistory;
import com.packt.webstore.repository.RentHistoryRepository;
import com.packt.webstore.service.CredentialService;
import com.packt.webstore.service.FavoritePropertiesService;
import com.packt.webstore.service.PropertyService;
import com.packt.webstore.service.RentHistoryService;
import com.packt.webstore.service.ReviewService;

@Controller
@RequestMapping({"/properties"})
public class PropertyController {

	@Autowired
	private PropertyService propertyService;
	
	@Autowired
	CredentialService credentialService;
	
	//Added by Maryam 
	@Autowired
	private ReviewService reviewService;
	

	@Autowired
	private FavoritePropertiesService favoritePropertiesService;

	
	@RequestMapping("/list")
	public String listProperties(Model model) {
		
		String username =  SecurityContextHolder.getContext().getAuthentication().getName().toString();
		Credentials credential = credentialService.findByUsername(username);
//		
		List<Property> properties = propertyService.findPropertyByOwener(credential);
		model.addAttribute("properties", properties);
		
//		System.out.println("properties size - " + propertyService.findAll().size());		
//		model.addAttribute("properties", propertyService.findAll());
		return "properties";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String getPropertyDetail(@ModelAttribute("PropertytReview") PropertyReview propertyReview,@RequestParam("id") Long propertyId,Model model) {
  		System.out.println("-*-*- edit " + propertyId);
  		System.out.println("-*-*- LoggedInUser " + model.asMap().get("LoggedInUser"));
  		Property property = propertyService.fingPropertyById(propertyId);
  		
  		//Added by Maryam for get property Review
  		List<PropertyReview> propertyReviews= reviewService.findByPropertyId(propertyId);
  		model.addAttribute("propertyReviews", propertyReviews);
  		
		// is already in favorite list
		boolean inFavoriteList = false;
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		List<FavoriteProperties> fpList = favoritePropertiesService.findByPropertyAndUsename(propertyId, username);
		if (fpList.size()>=1) {
			inFavoriteList = true;
		}
		model.addAttribute("inFavoriteList", inFavoriteList);
  		//Added by Maryam
  		model.addAttribute("property", property);
		return "detailProperty";
	}
	
	
	//Review property--> Added by Maryam 
//	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.GET)
//	public String addReview(@RequestParam("id") Long propertyId,@ModelAttribute("PropertytReview") PropertyReview propertyReview,Model model) {
//		System.out.println("propid"+propertyId);
//		
//		Property p = propertyService.fingPropertyById(propertyId);
//		model.addAttribute("property",p);
//		
//		System.out.println(model.asMap().get("LoggedInUser"));
//		if((boolean)model.asMap().get("LoggedInUser") == true) {
//		System.out.println("AddReview");
//		return "propertyReview";
//		}
//	   return "redirect:/login";
//	}
	
	
	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.POST)
	public String ProcessReview(@Valid @ModelAttribute("PropertytReview") PropertyReview propertyReview, BindingResult result,Model model) {
		
		if(result.hasErrors())
  		{
  			return "detailProperty";
  		}
		long propertyId =propertyReview.getProperty().getId();
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		Property p =propertyService.fingPropertyById(propertyId);
		Credentials credential = credentialService.findByUsername(username);
		propertyReview.setCredentials(credential);
		propertyReview.setProperty(p);
		reviewService.save(propertyReview);
		return "redirect:/properties/detail?id="+propertyId;

	}
	//Added By Maryam
	
  	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddProperty(@ModelAttribute("newProperty") Property newProperty, Model model) {
  		PropertyType[] arr = PropertyType.values(); 
 		
        model.addAttribute("propertyTypes", arr);
        return "addProperty";
	}
	   
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddProperty(@Valid @ModelAttribute("newProperty") Property newProperty,  BindingResult result) {
		if(result.hasErrors()) {
			return "addProperty";
		}

   		try {
   			
   			String username =  SecurityContextHolder.getContext().getAuthentication().getName().toString();
   			Credentials credential = credentialService.findByUsername(username);
   			newProperty.setCredential(credential);
			propertyService.save(newProperty);
		} catch (Exception up) {
			System.out.println("------------------------------");
	      System.out.println(up.getMessage());
 
		}
		
	   	return "redirect:/properties/list";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getPropertyById(Model model, @RequestParam("id") Long propertyId) {
  		System.out.println("-*-*- edit " + propertyId);
  		Property property = propertyService.fingPropertyById(propertyId);
  		model.addAttribute("property", property);
		return "editProperty";
	}
  	
  	@RequestMapping(value="/edit", method = RequestMethod.POST)
	public String processEditProperty(@Valid @RequestParam("id") Long propertyId, BindingResult result, HttpServletRequest request, Model model) {
  		
  		Property property = propertyService.fingPropertyById(propertyId);
  		model.addAttribute("property", property);
  		if(result.hasErrors()) {
			return "editProperty";
		}

   		try {
			propertyService.save(property);
		} catch (Exception up) {
			System.out.println("Transaction Failed!!!"); 
		}
		
	   	return "redirect:/properties/list";
	}
	
	@RequestMapping("/delete")
	public String deleteProperty(@RequestParam long id) {
		propertyService.delete(id);
		return "redirect:/properties/list";		
	}
	
	@ModelAttribute("LoggedInUser")
	public Boolean CheckLoggedIn() {
		System.out.print("@@@@@@@@@@@@@@ControllerAdvic@@@@@@@@@@@@@@@@@");
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		if(username =="anonymousUser" ||username==null) {
			return false;
		}
		
		return true;
	}
	
	@RequestMapping(value= {"/home"}, method=RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value= {"/dashboard"}, method=RequestMethod.GET)
	public String dashboard() {
		return "redirect:/dashboard";
	}
}
