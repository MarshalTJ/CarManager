package com.carmanager.webapp.basedata.service.impl;

import com.carmanager.webapp.basedata.bean.Shop;
import com.carmanager.webapp.basedata.dao.ShopDao;
import com.carmanager.webapp.basedata.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by jiangnenghua on 16/4/23.
 */
public class ShopServiceImpl implements ShopService {
    @Autowired
    public ShopDao dao;

    @Override
    public Shop getByPrimaryKey(String id) {
        return dao.selectByPrimaryKey(id);
    }
}
