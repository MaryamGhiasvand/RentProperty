package com.packt.webstore.controller;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyType;

@Controller
public class HomeController {

	@RequestMapping({"/","/welcome"})
	public String welcome(@ModelAttribute("property") Property property) {
		return "welcome";
	}
	
	@RequestMapping("/welcome/greeting")
	public String greeting() {
		return "welcome";
	}
	
	@RequestMapping({"/home"})
	public String home() {
		return "home";
	}
}
