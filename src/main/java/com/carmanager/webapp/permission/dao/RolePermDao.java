package com.carmanager.webapp.permission.dao;

import com.carmanager.webapp.permission.bean.RolePerm;

public interface RolePermDao {
    int deleteByPrimaryKey(String id);

    int insert(RolePerm record);

    int insertSelective(RolePerm record);

    RolePerm selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RolePerm record);

    int updateByPrimaryKey(RolePerm record);
}