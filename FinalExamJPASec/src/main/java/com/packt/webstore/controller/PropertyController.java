package com.packt.webstore.controller;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.packt.webstore.domain.Property;
import com.packt.webstore.service.PropertyService;

@Controller
@RequestMapping({"/properties"})
public class PropertyController {

	@Autowired
	private PropertyService propertyService;

	@RequestMapping("/list")
	public String listProperties(Model model) {
		
		System.out.println("size - " + propertyService.findAll().size());
		
		model.addAttribute("properties", propertyService.findAll());
		return "properties";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String getPropertyDetail(Model model, @RequestParam("id") Long propertyId) {
  		System.out.println("-*-*- edit " + propertyId);
  		System.out.println("-*-*- LoggedInUser " + model.asMap().get("LoggedInUser"));
  		Property property = propertyService.fingPropertyById(propertyId);
  		model.addAttribute("property", property);
		return "detailProperty";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getPropertyById(Model model, @RequestParam("id") Long propertyId) {
  		System.out.println("-*-*- edit " + propertyId);
  		Property property = propertyService.fingPropertyById(propertyId);
  		model.addAttribute("property", property);
		return "editProperty";
	}
  	
  	@RequestMapping(value="/edit", method = RequestMethod.POST)
	public String processEditProperty(@Valid @RequestParam("id") Long propertyId, BindingResult result, HttpServletRequest request, Model model) {
  		Property property = propertyService.fingPropertyById(propertyId);
  		model.addAttribute("property", property);
  		if(result.hasErrors()) {
			return "editProperty";
		}

   		try {
			propertyService.save(property);
		} catch (Exception up) {
	      System.out.println("Transaction Failed!!!");
 
		}
		
	   	return "redirect:/properties/list";
	}
	
  	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddProperty(@ModelAttribute("newProperty") Property newProperty) {
	   return "addProperty";
	}
	   
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddProperty(@ModelAttribute("newProperty") @Valid Property newProperty, BindingResult result, HttpServletRequest request) {
		if(result.hasErrors()) {
			return "addProperty";
		}

   		try {
			propertyService.save(newProperty);
		} catch (Exception up) {
	      System.out.println("Transaction Failed!!!");
 
		}
		
	   	return "redirect:/properties/list";
	}
	
//	@RequestMapping(value = "/doUpload", method = RequestMethod.POST)
//    public String handleFileUpload(HttpServletRequest request,
//            @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
//         
//        if (fileUpload != null && fileUpload.length > 0) {
//            for (CommonsMultipartFile aFile : fileUpload){
//                 
//                System.out.println("Saving file: " + aFile.getOriginalFilename());
//                
//                UploadFile uploadFile = new UploadFile();
//                uploadFile.setFileName(aFile.getOriginalFilename());
//                uploadFile.setData(aFile.getBytes());
//                fileUploadDao.save(uploadFile);                
//            }
//        }
// 
//        return "Success";
//    }
	
	@ModelAttribute("LoggedInUser")
	public Boolean CheckLoggedIn() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName().toString();
		if(username =="anonymousUser" ||username==null) {
			return false;
		}
		
		return true;
	}
	
}
