package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.service.CredentialService;

@Controller
@RequestMapping("/credential")
public class CredentialController {
	
	@Autowired
	CredentialService credentialService;
	
	
	
	
	@RequestMapping(value= {"/add"}, method= RequestMethod.GET)
	public String addUser(@ModelAttribute("credential") Credentials credential) {
		return "addCredential";
	}
	
	@RequestMapping(value= {"/add"}, method= RequestMethod.POST)
	public String saveUser(@ModelAttribute("credential") Credentials credential, RedirectAttributes redirectAttributes) {
		BCryptPasswordEncoder passEncoder = new BCryptPasswordEncoder();
		credential.setPassword(passEncoder.encode(credential.getPassword()));
		credentialService.addCredential(credential);
		redirectAttributes.addFlashAttribute(credential);
		return "redirect:/credential/success";
	}

	@RequestMapping(value= {"/success"}, method= RequestMethod.GET)
	public String saveSuccess() {
		return "success";
	}
}
