package com.kingdee.carmanager.test.service.impl;

import com.kingdee.carmanager.test.IDao.UserMapper;
import com.kingdee.carmanager.test.bean.User;
import com.kingdee.carmanager.test.service.UserService;
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
<<<<<<< HEAD
    public User getUserById(int id) {
        return this.mapper.selectByPrimaryKey(id);
    }

    public static void main(String[] args) {
        System.out.println(new UserServiceImpl().getUserById(2).getFname());
    }
=======
	public User getUserById(int id) {
		return this.mapper.selectByPrimaryKey(id);
	}
>>>>>>> origin/master
}
