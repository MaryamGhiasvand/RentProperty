package com.packt.webstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyType;
import com.packt.webstore.service.PropertyService;

@Controller
public class SearchController {
	
	@Autowired
	PropertyService propertyService;
	
	@RequestMapping(value = {"/search"}, method = RequestMethod.GET)
	public String search(Model model, @RequestParam("city") String city, @RequestParam("propertyType") PropertyType propertyType, @RequestParam("bedCount") String bedCount, @RequestParam("bathCount") String bathCount) {

		List<Property> properties = propertyService.searchProperty(city,Integer.parseInt(bathCount),Integer.parseInt(bedCount), propertyType);
		model.addAttribute("properties",properties);
		return "search";
	}
}
