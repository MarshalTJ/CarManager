package com.carmanager.webapp.permission.dao;

import com.carmanager.webapp.permission.bean.PermItem;

public interface PermItemDao {
    int deleteByPrimaryKey(String id);

    int insert(PermItem record);

    int insertSelective(PermItem record);

    PermItem selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(PermItem record);

    int updateByPrimaryKey(PermItem record);
}