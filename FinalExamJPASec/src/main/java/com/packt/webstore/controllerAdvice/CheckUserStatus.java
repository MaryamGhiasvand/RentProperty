package com.packt.webstore.controllerAdvice;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@ControllerAdvice
public class CheckUserStatus {

	@ModelAttribute("LoggedInUser")
	public Boolean CheckLoggedIn() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		if(username =="anonymousUser" ||username==null) {
			return false;
		}
		
		return true;
	}
}
