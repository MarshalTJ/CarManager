package com.carmanager.webapp.permission.dao;

import com.carmanager.webapp.permission.bean.userrole;

public interface UserRoleDao {
    int deleteByPrimaryKey(String id);

    int insert(userrole record);

    int insertSelective(userrole record);

    userrole selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(userrole record);

    int updateByPrimaryKey(userrole record);
}