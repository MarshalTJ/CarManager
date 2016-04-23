package com.carmanager.webapp.basedata.service;

import com.carmanager.webapp.basedata.bean.Customer;

public interface CustomerService {
    public Customer getByPrimaryKey(String id);
}
