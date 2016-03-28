package com.kingdee.carmanager.test.service.impl;

<<<<<<< HEAD
import com.kingdee.carmanager.test.IDao.UserMapper;
import com.kingdee.carmanager.test.bean.User;
import com.kingdee.carmanager.test.service.UserService;
import junit.framework.TestCase;
import org.apache.ibatis.annotations.Select;
import org.junit.After;
=======
import junit.framework.TestCase;

>>>>>>> origin/master
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import com.kingdee.carmanager.test.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@TransactionConfiguration(transactionManager = "transactionManager",defaultRollback = true)
@Transactional
public class UserServiceImplTest extends TestCase {

    @Autowired
    private UserService service;

    @Resource
    private UserMapper mapper;


    @Test
    @Rollback(true)
    public void testGetUserById() throws Exception {
        User user = new User();
        user.setFname("lixin");
        user.setFage(15);
        user.setFpassword("lixin");
        mapper.insertSelective(user);
        System.out.println(user.getFid());
    }
}