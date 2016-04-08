package com.carmanager.webapp.security.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.carmanager.webapp.common.Constant;
import com.carmanager.webapp.security.bean.SecurityUser;
import com.carmanager.webapp.security.service.SecurityUserService;

@RestController
public class SecurityController {
	@Autowired
	private SecurityUserService securityUserService;
	
	
	
	@RequestMapping(value="/security/login",method=RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
		Enumeration<String> names=request.getSession().getAttributeNames();
		while(names.hasMoreElements()){
			String naes=names.nextElement();
			System.out.println(naes);
			System.out.println(request.getSession().getAttribute(naes));
			System.out.println("-------------");
		}
		UserDetails u=(UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		System.out.println(u.getUsername()+"/"+u.getPassword()+"/"+u.isEnabled());
		System.out.println(u.getAuthorities());
		System.out.println("login");
		SecurityUser findByUsername = securityUserService.findByUsername(u.getUsername());
		request.getSession().setAttribute(Constant.SESSION_COMPANY_USER, findByUsername);
		
		ModelAndView mav = new ModelAndView("jsp/pc/pcindex");
		return mav;
	}

}
