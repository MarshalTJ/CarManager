package com.carmanager.webapp.basedata.dao;

import com.carmanager.webapp.basedata.bean.Customer;

public interface CustomerDao {
    int deleteByPrimaryKey(String id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
}