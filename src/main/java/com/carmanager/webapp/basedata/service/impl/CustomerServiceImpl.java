package com.carmanager.webapp.basedata.service.impl;

import com.carmanager.webapp.basedata.bean.Customer;
import com.carmanager.webapp.basedata.dao.CustomerDao;
import com.carmanager.webapp.basedata.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by jiangnenghua on 16/4/23.
 */
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    public CustomerDao dao;


    @Override
    public Customer getByPrimaryKey(String id) {
        return dao.selectByPrimaryKey(id);
    }
}
