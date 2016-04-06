package com.carmanager.webapp.test.controller;

import com.carmanager.webapp.test.bean.User;
import com.carmanager.webapp.test.service.UserService;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/3/29.
 */

@Controller("UserController")
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = Logger.getLogger(UserController.class.getSimpleName()); 
	
    @RequestMapping("/common")
	public String toCommonPage(HttpServletRequest request, ModelMap model) {
    	logger.debug("Received request to show common page");  
    	return "commonpage";
	}
    
    @RequestMapping("/admin")
    public String toAdminPage(HttpServletRequest request, ModelMap model){
    	logger.debug("Received request to show admin page");
    	return "adminpage";
    }
}
