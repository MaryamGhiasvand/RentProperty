package com.packt.webstore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyReview;
import com.packt.webstore.service.PropertyService;
import com.packt.webstore.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private PropertyService propertyservice;
	
	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.GET)
	public String addReview(@ModelAttribute("PropertytReview") PropertyReview propertyReview) {
		return "propertyReview";
	}
	
	
	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.POST)
	public String ProcessReview(@Valid @ModelAttribute("PropertytReview") PropertyReview propertyReview, BindingResult result) {
		Property p = new Property("Property1","Desc Prop 1",1100,100,2);
		propertyservice.save(p);
		
		
		propertyReview.setProperty(p);
		reviewService.save(propertyReview);
		return "redirect:/success";
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String success() {
		return "ReviewSuccess";
		
	}

}
