package com.packt.webstore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.PropertyReview;
import com.packt.webstore.service.CredentialService;
import com.packt.webstore.service.PropertyService;
import com.packt.webstore.service.ReviewService;

@Controller
@RequestMapping(value = "/propertyReview")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private PropertyService propertyService;
	@Autowired
	private CredentialService credentialService;
	
	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.GET)
	public String addReview(@RequestParam("id") Long propertyId,@ModelAttribute("PropertytReview") PropertyReview propertyReview,Model model) {
		System.out.println("propid"+propertyId);
		
		Property p = propertyService.fingPropertyById(propertyId);
		model.addAttribute("property",p);
		
		System.out.println(model.asMap().get("LoggedInUser"));
		if((boolean)model.asMap().get("LoggedInUser") == true) {
		System.out.println("AddReview");
		return "propertyReview";
		}
	   return "redirect:/login";
	}
	
	
	@RequestMapping(value = "/addPropertyReview", method = RequestMethod.POST)
	public String ProcessReview(@Valid @ModelAttribute("PropertytReview") PropertyReview propertyReview, BindingResult result,RedirectAttributes redirectAttr,Model model) {
		
		long propertyId =propertyReview.getProperty().getId();
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		Property p =propertyService.fingPropertyById(propertyId);
		Credentials credential = credentialService.findByUsername(username);
		propertyReview.setCredentials(credential);
		propertyReview.setProperty(p);
		reviewService.save(propertyReview);
		redirectAttr.addFlashAttribute("successFullyAdded","Your comment successfully added!");
		//redirectAttr.addFlashAttribute("property",p);
		return "redirect:/properties/detail?id="+p.getId();

	}
	
//	@RequestMapping(value = "/success", method = RequestMethod.GET)
//	public String success() {
//		return "Successfully added";
//		
//	}

	@ModelAttribute("LoggedInUser")
	public Boolean CheckLoggedIn() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		if(username =="anonymousUser" ||username==null) {
			return false;
		}
		
		return true;
	}
	
	
}
