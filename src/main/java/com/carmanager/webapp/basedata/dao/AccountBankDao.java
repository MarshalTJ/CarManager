package com.carmanager.webapp.basedata.dao;

import com.carmanager.webapp.basedata.bean.AccountBank;

public interface AccountBankDao {
    int deleteByPrimaryKey(String id);

    int insert(AccountBank record);

    int insertSelective(AccountBank record);

    AccountBank selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(AccountBank record);

    int updateByPrimaryKey(AccountBank record);
}