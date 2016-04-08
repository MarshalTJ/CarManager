package com.carmanager.webapp.wechat.service;

import java.util.Map;

import com.carmanager.webapp.wechat.bean.WeixinInfo;

public interface WeixinService {
	public WeixinInfo findWeixinInfoByAppid(Map<String,String> paraMap);

}
