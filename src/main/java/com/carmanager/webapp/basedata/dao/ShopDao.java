package com.carmanager.webapp.basedata.dao;

import com.carmanager.webapp.basedata.bean.Shop;

public interface ShopDao {
    int deleteByPrimaryKey(String id);

    int insert(Shop record);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Shop record);

    int updateByPrimaryKey(Shop record);
}