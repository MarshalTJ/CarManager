package com.carmanager.webapp.wechat.dao;

import java.util.Map;

import com.carmanager.webapp.wechat.bean.WeixinInfo;

public interface WeixinDao {
	WeixinInfo findWeixinInfoByAppid(Map<String,Object> paraMap);
}
