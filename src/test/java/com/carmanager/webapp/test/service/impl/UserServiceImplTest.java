package com.carmanager.webapp.test.service.impl;


import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.carmanager.webapp.test.iDao.UserMapper;
import com.carmanager.webapp.test.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@TransactionConfiguration(transactionManager = "transactionManager",defaultRollback = true)
@Transactional
public class UserServiceImplTest extends TestCase {

    @Autowired
    private UserService service;

    @Autowired
    private UserMapper mapper;


    @Test
    @Rollback(true)
    public void testGetUserById() throws Exception {
        System.out.println( service);
    }
}