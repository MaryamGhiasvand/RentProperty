package com.packt.webstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.packt.webstore.domain.Property;
import com.packt.webstore.service.PropertyService;

@Controller
@RequestMapping({"/properties"})
public class PropertyController {

	@Autowired
	private PropertyService propertyService;

	@RequestMapping("/list")
	public String listProperties(Model model) {
		
		System.out.println("size - " + propertyService.findAll().size());
		
		model.addAttribute("properties", propertyService.findAll());
		return "properties";
	}
	
  	@RequestMapping("/property")
	public String getPropertyById(Model model, @RequestParam("id") Long propertyId) {
		
		return "editProperty";
	}
	
	@RequestMapping(value = "/add")
	public String getAddProperty(@ModelAttribute("newProperty") Property newProperty) {
		System.out.println("----test add");
	   return "addProperty";
	}
	   
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddProperty(@ModelAttribute("newProperty") @Valid Property newProperty, BindingResult result, HttpServletRequest request) {
		if(result.hasErrors()) {
			return "addProperty";
		}

   		try {
			propertyService.save(newProperty);
		} catch (Exception up) {
	      System.out.println("Transaction Failed!!!");
 
		}
		
	   	return "redirect:/properties/list";
	}
}
