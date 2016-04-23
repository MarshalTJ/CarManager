package com.carmanager.webapp.basedata.dao;

import com.carmanager.webapp.basedata.bean.Product;

public interface ProductDao {
    int deleteByPrimaryKey(String id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}