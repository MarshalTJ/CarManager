package com.carmanager.webapp.basedata.dao;

import com.carmanager.webapp.basedata.bean.Supplier;

public interface SupplierDao {
    int deleteByPrimaryKey(String id);

    int insert(Supplier record);

    int insertSelective(Supplier record);

    Supplier selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Supplier record);

    int updateByPrimaryKey(Supplier record);
}