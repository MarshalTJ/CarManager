package com.carmanager.webapp.wechat.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carmanager.webapp.wechat.bean.WeixinInfo;
import com.carmanager.webapp.wechat.dao.WeixinDao;
import com.carmanager.webapp.wechat.service.WeixinService;
@Service
public class WeixinServiceImpl implements WeixinService {
	@Autowired
	private WeixinDao weixinDao;

	@Override
	public WeixinInfo findWeixinInfoByAppid(Map<String, String> paraMap) {
		return weixinDao.findWeixinInfoByAppid(paraMap);
	}

}
