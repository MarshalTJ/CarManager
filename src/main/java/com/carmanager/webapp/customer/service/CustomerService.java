package com.carmanager.webapp.customer.service;

import com.carmanager.webapp.customer.bean.Customer;

public interface CustomerService {
    public Customer findCustomerByOpenid(String openid);
}
