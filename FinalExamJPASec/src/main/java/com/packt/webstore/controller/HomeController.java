package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.webstore.domain.Property;
import com.packt.webstore.service.EmployeeService;
  
@Controller
public class HomeController {

	
  	@Autowired
 	private EmployeeService customerService;

	@RequestMapping({"/","/welcome"})
	public String welcome(@ModelAttribute("property") Property property) {
		return "welcome";
	}
	
	@RequestMapping("/welcome/greeting")
	public String greeting() {
		return "welcome";
	}
}
