package com.packt.webstore.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.packt.webstore.domain.Authority;
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
	public String saveUser(@Valid @ModelAttribute("credential") Credentials credential, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		if(bindingResult.hasErrors()) {
			System.out.println("------------------------------------------------ has erros ------------------------------------");
			return "addCredential";
		}

		BCryptPasswordEncoder passEncoder = new BCryptPasswordEncoder();
		Authority authority = new Authority();
		authority.setAuthority("ROLE_USER");
		List<Authority> authorities = new ArrayList<Authority>();
		authorities.add(authority);
		authority.setUsername(credential.getUsername());
		credential.setPassword(passEncoder.encode(credential.getPassword()));
		credential.setEnabled(true);
		credential.setAuthority(authorities);
		credentialService.addCredential(credential);
		redirectAttributes.addFlashAttribute(credential);
		return "redirect:/credential/success";
	}

	@RequestMapping(value= {"/success"}, method= RequestMethod.GET)
	public String saveSuccess() {
		return "success";
	}
	
	@RequestMapping(value= {"/edit"}, method=RequestMethod.GET)
	public String editUser() {
		return "userEdit";
	}
	
	@RequestMapping(value= {"/home"}, method=RequestMethod.GET)
	public String home() {
		return "home";
	}
}
