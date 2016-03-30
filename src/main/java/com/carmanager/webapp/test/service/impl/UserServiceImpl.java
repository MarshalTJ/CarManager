package com.carmanager.webapp.test.service.impl;

import com.carmanager.webapp.test.bean.User;
import com.carmanager.webapp.test.iDao.UserMapper;
import com.carmanager.webapp.test.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;

import sun.applet.Main;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/3/27.
 */
@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper mapper;

    @Override
    public User getUserById(int id) {
        return this.mapper.selectByPrimaryKey(id);
    }

}
