package com.carmanager.webapp.test.service.impl;

import com.carmanager.webapp.test.bean.User;
import com.carmanager.webapp.test.dao.UserDao;
import com.carmanager.webapp.test.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/3/27.
 */
@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    @Override
    public User getUserById(int id) {
        return this.dao.selectByPrimaryKey(id);
    }

}
