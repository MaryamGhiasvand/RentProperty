package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.service.CredentialService;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	
	@Autowired
	CredentialService credentialService;
	
	@RequestMapping(value= {""}, method=RequestMethod.GET)
	public String dashboard(Model model) {
		String username =  SecurityContextHolder.getContext().getAuthentication().getName().toString();
		Credentials credential = credentialService.findByUsername(username);
		return "dashboard";
	}
}
