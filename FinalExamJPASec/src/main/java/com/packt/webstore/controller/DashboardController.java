package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.webstore.domain.Credentials;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	
	@RequestMapping(value= {""}, method=RequestMethod.GET)
	public String dashboard() {
		return "dashboard";
	}
}
