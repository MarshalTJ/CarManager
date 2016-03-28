package com.kingdee.carmanager.test.service.impl;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kingdee.carmanager.test.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class UserServiceImplTest extends TestCase {

    private UserService service;


    @Test
    public void testGetUserById() throws Exception {
        System.out.println(service);
    }
}