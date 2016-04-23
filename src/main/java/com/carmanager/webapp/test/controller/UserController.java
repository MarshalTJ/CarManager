package com.carmanager.webapp.test.controller;

import java.util.Arrays;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carmanager.webapp.permission.Permission;
import com.carmanager.webapp.permission.PermissionInterceptor;
import com.carmanager.webapp.test.bean.User;

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
    
    @RequestMapping("/login")  
    @ResponseBody  
    public boolean login(HttpSession session,User user){  
        boolean result=false;  
        //模拟从数据库查出存在这样的用户  
        Integer userId=user.getFid();  
        if(userId!=null&&userId>0){  
            session.setAttribute(PermissionInterceptor.SESSION_USERID, userId);  
            session.setAttribute(PermissionInterceptor.SESSION_AUTHS, new HashSet<String>(Arrays.asList("user_list", "user_query", "user_save")));  
            result=true;  
        }  
        return result;  
    }  
    @Permission("user_queryXXXX")  
    @RequestMapping("/query")  
    @ResponseBody  
    public String query(){  
        System.out.println("query");  
        return getClass().toString();  
    }  
    @Permission("user_list")  
    @RequestMapping("/list")  
    @ResponseBody  
    public String list(){  
        System.out.println("list");  
        return getClass().toString();  
    }  
    @Permission("user_save")  
    @RequestMapping("/add")  
    public String add(User user){  
        System.out.println("add:"+user);  
        return "user/add";  
    }  
}
