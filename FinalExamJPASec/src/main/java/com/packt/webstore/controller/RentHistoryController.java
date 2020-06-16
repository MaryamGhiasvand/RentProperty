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

//import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.RentHistory;
import com.packt.webstore.repository.PropertyRepository;
import com.packt.webstore.repository.RentHistoryRepository;

@Controller
public class RentHistoryController {
	
	@Autowired
	RentHistoryRepository rentHistoryRepository;
	
	@Autowired
	PropertyRepository propertyRepository;
	
	@RequestMapping(value = "/addRentHistory", method = RequestMethod.GET)
	public String getRentHistory(@ModelAttribute("rentHistory") RentHistory rentHistory, Model model, 
			HttpServletRequest request, @RequestParam("id") long propertyId) {
		System.out.println("--getRentHistory " + propertyId);
		
		return "addRentHistory";
	}
	   
	@RequestMapping(value = "/addRentHistory", method = RequestMethod.POST)
	public String processRentHistory(@ModelAttribute("rentHistory") @Valid RentHistory rentHistory, BindingResult result, 
										HttpServletRequest request, @RequestParam("id") long propertyId) {
		
		System.out.println("--processAddProperty " + propertyId);
//		if(result.hasErrors()) {
//			return "addRentHistory";
//		}
//
//   		try {
//   			Property property = propertyRepository.findPropertyById(propertyId);
//   			if (property != null) {
//   				rentHistory.setProperty(property);
//   				rentHistoryRepository.save(rentHistory);
//   			}
//   			
//		} catch (Exception up) {
//	      	System.out.println("Transaction Failed!!!");
// 
//		}
   		return "redirect:/properties/list";
	}
}
