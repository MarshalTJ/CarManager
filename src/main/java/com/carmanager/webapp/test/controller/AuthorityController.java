package com.carmanager.webapp.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller("AuthorityController")
@RequestMapping("/authority")
public class AuthorityController {
	
	private static final Logger logger = Logger.getLogger(AuthorityController.class.getSimpleName());
	
	@RequestMapping("/login")
	public String toIndex(HttpServletRequest request,
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model) {
    	logger.debug("Received request to show login page");  
    	
    	if(error == true){
    		model.put("error", "You have entered an invalid username or password!");
    	}else{
    		model.put("error", "");
    	}
    	
    	return "loginpage";
	}
	
	
	@RequestMapping("/denied")
	public String denied(){
		logger.debug("Received request to show denied page");
		
		return "deniedpage";
	}
}
