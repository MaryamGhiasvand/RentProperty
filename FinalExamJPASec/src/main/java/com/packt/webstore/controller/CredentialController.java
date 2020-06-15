package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.service.CredentialService;

@Controller
@RequestMapping("/credential")
public class CredentialController {
	
	@Autowired
	CredentialService credentialService;
	
	@RequestMapping(value= {"/add"}, method= RequestMethod.GET)
	public String addUser(@ModelAttribute("credential") Credentials credential) {
		System.out.println("-------------------------------- add credential --------------------------");
		return "addCredential";
	}
	
	@RequestMapping(value= {"/add"}, method=RequestMethod.POST)
	public String saveUser(@ModelAttribute("credential") Credentials credential) {
		System.out.println("----------------------------------- inside credential add post");
		credentialService.addCredential();
		return "redirect:/credentialAddSuccess";
	}
	
}
