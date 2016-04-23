package com.carmanager.webapp.basedata.dao;

import com.carmanager.webapp.basedata.bean.Possession;

public interface PossessionDao {
    int deleteByPrimaryKey(String id);

    int insert(Possession record);

    int insertSelective(Possession record);

    Possession selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Possession record);

    int updateByPrimaryKey(Possession record);
}