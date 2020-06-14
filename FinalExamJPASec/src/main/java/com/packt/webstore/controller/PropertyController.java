package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PropertyController {

	@RequestMapping("/test")
	public String getTest() {
		return "properties";
	}
}
