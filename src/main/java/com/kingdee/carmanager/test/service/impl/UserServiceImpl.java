package com.kingdee.carmanager.test.service.impl;

import com.kingdee.carmanager.test.IDao.UserMapper;
import com.kingdee.carmanager.test.bean.User;
import com.kingdee.carmanager.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
