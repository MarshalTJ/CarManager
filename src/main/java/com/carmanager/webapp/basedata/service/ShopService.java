package com.carmanager.webapp.basedata.service;

import com.carmanager.webapp.basedata.bean.Shop;

/**
 * Created by jiangnenghua on 16/4/23.
 */
public interface ShopService {
    public Shop getByPrimaryKey(String id);
}
