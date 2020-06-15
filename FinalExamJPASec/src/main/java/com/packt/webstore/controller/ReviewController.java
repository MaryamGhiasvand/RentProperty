package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.webstore.domain.PropertyReview;

@Controller
public class ReviewController {
	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.GET)
	public String addReview(@ModelAttribute("PropertytReview") PropertyReview propertyReview) {
		return "propertyReview";
	}

}
