package com.kingdee.carmanager.test.controller;

import com.kingdee.carmanager.test.bean.User;
import com.kingdee.carmanager.test.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/3/29.
 */

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserService service;

    @RequestMapping("/showUser")
    public String toIndex(HttpServletRequest request,Model model){
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.service.getUserById(userId);
        model.addAttribute("user", user);
        return "showUser";
    }
}
